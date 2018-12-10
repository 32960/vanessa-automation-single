﻿//начало текста модуля

///////////////////////////////////////////////////
//Служебные функции и процедуры
///////////////////////////////////////////////////

&НаКлиенте
// контекст фреймворка Vanessa-Behavior
Перем Ванесса;
 
&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
Перем КонтекстСохраняемый Экспорт;

&НаКлиенте
// Служебная функция.
Функция ДобавитьШагВМассивТестов(МассивТестов,Снипет,ИмяПроцедуры,ПредставлениеТеста = Неопределено,Транзакция = Неопределено,Параметр = Неопределено)
	Структура = Новый Структура;
	Структура.Вставить("Снипет",Снипет);
	Структура.Вставить("ИмяПроцедуры",ИмяПроцедуры);
	Структура.Вставить("ИмяПроцедуры",ИмяПроцедуры);
	Структура.Вставить("ПредставлениеТеста",ПредставлениеТеста);
	Структура.Вставить("Транзакция",Транзакция);
	Структура.Вставить("Параметр",Параметр);
	МассивТестов.Добавить(Структура);
КонецФункции

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,Транзакция,Параметр);

	ДобавитьШагВМассивТестов(ВсеТесты,"ЯНажимаюНаКнопкуДиалогаВыбораФайлов()","ЯНажимаюНаКнопкуДиалогаВыбораФайлов","Когда Я нажимаю на кнопку диалога выбора файлов");
	ДобавитьШагВМассивТестов(ВсеТесты,"ВОткрывшемсяОкнеЯУказываюПутьКОбработкеVanessa_behaviorepf()","ВОткрывшемсяОкнеЯУказываюПутьКОбработкеVanessa_behaviorepf","И в открывшемся окне я указываю путь к обработке Vanessa-behavior.epf");
	ДобавитьШагВМассивТестов(ВсеТесты,"ЯНабираюТекст(Парам01)","ЯНабираюТекст","И я набираю текст ""текст""");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯПрижимаюАктивноеОкноВлево()","ЯПрижимаюАктивноеОкноВлево","И я прижимаю активное окно влево");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯПрижимаюАктивноеОкноВправо()","ЯПрижимаюАктивноеОкноВправо","И я прижимаю активное окно вправо");
	

	Возврат ВсеТесты;
КонецФункции
	
&НаСервере
// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет(ИмяМакета);
КонецФункции
	
&НаКлиенте
// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции



///////////////////////////////////////////////////
//Работа со сценариями
///////////////////////////////////////////////////

&НаКлиенте
// Процедура выполняется перед началом каждого сценария
Процедура ПередНачаломСценария() Экспорт
	
КонецПроцедуры

&НаКлиенте
// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт
	
КонецПроцедуры



///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

&НаКлиенте
//Когда Я нажимаю на кнопку диалога выбора файлов
//@ЯНажимаюНаКнопкуДиалогаВыбораФайлов()
Процедура ЯНажимаюНаКнопкуДиалогаВыбораФайлов() Экспорт
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\OpenDialog.sikuli");
	Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <OpenDialog>");
	
	Ванесса.СделатьДействияПриЗаписиИнструкции("толькоскриншот");
	
	Ванесса.Шаг("И я набираю текст ""#enter""");
	//Ванесса.sleep(2);
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\OpenDialogClick.sikuli");
	Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <OpenDialogClick>");
КонецПроцедуры

&НаКлиенте
//И в открывшемся окне я указываю путь к обработке Vanessa-behavior.epf
//@ВОткрывшемсяОкнеЯУказываюПутьКОбработкеVanessa_behaviorepf()
Процедура ВОткрывшемсяОкнеЯУказываюПутьКОбработкеVanessa_behaviorepf() Экспорт
	Путь = Ванесса.Объект.КаталогИнструментов + "\vanessa-behavior.epf";
	
	Ванесса.Шаг("И я набираю текст""" + Путь + """");
	
	Ванесса.СделатьДействияПриЗаписиИнструкции();
	Ванесса.Шаг("И я набираю текст ""#enter""");
КонецПроцедуры


&НаКлиенте
//И я набираю текст "текст"
//@ЯНабираюТекст(Парам01)
Процедура ЯНабираюТекст(Знач Текст) Экспорт
	
	Если ТипЗнч(Текст) = Тип("Массив") Тогда
		СобранныйТекст = "";
		Для Каждого Элем Из Текст Цикл
			Если СобранныйТекст <> "" Тогда
				СобранныйТекст = СобранныйТекст + Символы.ПС;
			КонецЕсли;	 
			СобранныйТекст = СобранныйТекст + Элем.Кол1;
		КонецЦикла;	
		
		Текст = СобранныйТекст;
	КонецЕсли;	 
	
	Если Текст = "#enter" Тогда
		ВременыйФайл = ПолучитьИмяВременногоФайла("txt");
		ЗТ = Новый ЗаписьТекста(ВременыйФайл,"UTF-8",,Истина); 
		ЗТ.Записать(Текст); 
		//ЗТ.Записать("#enter"); 
		ЗТ.Закрыть();
		
		Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\TypeText.sikuli --args " + ВременыйФайл);
		Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <TypeText>");
		
		Возврат;
	КонецЕсли;	 
	
	
	ИмяФайла = ПолучитьИмяВременногоФайла("txt");
	ЗТ = Новый ЗаписьТекста(ИмяФайла,"windows-1251",,Ложь); 
	ЗТ.Записать(Текст); 
	ЗТ.Закрыть();
	
	KeyboardType = Ванесса.Объект.КаталогИнструментов + "\tools\VideoTools\KeyboardType.exe";
	Если Не Ванесса.ФайлСуществуетКомандаСистемы(KeyboardType) Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Файл <%1> не найден.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",KeyboardType);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
	
	Команда   = KeyboardType + " typespeed=100 ""filename=" + ИмяФайла + """";
	
	Результат = Ванесса.ВыполнитьКомандуОСБезПоказаЧерногоОкна(Команда);
	Ванесса.ПроверитьРавенство(Результат, 0 , "Выполнен шаг ЯЭмулируюНаборТекстаИзФайла <" + ИмяФайла + ">");
	
	
КонецПроцедуры


&НаКлиенте
//И я прижимаю активное окно влево
//@ЯПрижимаюАктивноеОкноВлево()
Процедура ЯПрижимаюАктивноеОкноВлево() Экспорт
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\MoveActiveWindowLeft.sikuli");
	Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <MoveActiveWindowLeft>");
КонецПроцедуры

&НаКлиенте
//И я прижимаю активное окно вправо
//@ЯПрижимаюАктивноеОкноВправо()
Процедура ЯПрижимаюАктивноеОкноВправо() Экспорт
	Результат = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\MoveActiveWindowRight.sikuli");
	Ванесса.ПроверитьРавенство(Результат, 0 , "Произошло выполнение скрипта <MoveActiveWindowRight>");
КонецПроцедуры


//окончание текста модуля
