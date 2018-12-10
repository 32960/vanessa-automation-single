﻿//начало текста модуля

#Область Служебные_функции_и_процедуры

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
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯУказалПервоеСлагаемое(Парам01)","ЯУказалПервоеСлагаемое","Когда Я указал первое слагаемое 5");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯУказалВтороеСлагаемое(Парам01)","ЯУказалВтороеСлагаемое","И Я указал второе слагаемое 10");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯПолучуСумму(Парам01)","ЯПолучуСумму","Тогда я получу сумму 15");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВывожуНаЭкранЗначениеСтруктуры(Парам01)","ЯВывожуНаЭкранЗначениеСтруктуры","И я вывожу на экран значение структуры ""КонтекстСохраняемый""");

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

#КонецОбласти



#Область Работа_со_сценариями

&НаКлиенте
// Процедура выполняется перед началом каждого сценария
Процедура ПередНачаломСценария() Экспорт
	
КонецПроцедуры

&НаКлиенте
// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт
	
КонецПроцедуры

#КонецОбласти


///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

&НаКлиенте
//Когда Я указал первое слагаемое 5
//@ЯУказалПервоеСлагаемое(Парам01)
Процедура ЯУказалПервоеСлагаемое(Парам01) Экспорт
	Контекст.Вставить("ПервоеСлагаемое",Парам01);
	КонтекстСохраняемый.Вставить("ПервоеСлагаемое",Парам01);
	
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	//ВызватьИсключение "Не реализовано.";
КонецПроцедуры

&НаКлиенте
//И Я указал второе слагаемое 10
//@ЯУказалВтороеСлагаемое(Парам01)
Процедура ЯУказалВтороеСлагаемое(Парам01) Экспорт
	Контекст.Вставить("ВтороеСлагаемое",Парам01);
	КонтекстСохраняемый.Вставить("ВтороеСлагаемое",Парам01);
	
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	//ВызватьИсключение "Не реализовано.";
КонецПроцедуры

&НаКлиенте
//Тогда я получу сумму 15
//@ЯПолучуСумму(Парам01)
Процедура ЯПолучуСумму(Парам01) Экспорт
	Сумма = Контекст.ПервоеСлагаемое + Контекст.ВтороеСлагаемое;
	Если Сумма <> Парам01 Тогда
		ТекстСообщения = "Ошибка. Ожидали сумму = %1, а получили %2";
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",Парам01);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",Сумма);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;
	
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	//ВызватьИсключение "Не реализовано.";
КонецПроцедуры

&НаКлиенте
//И я вывожу на экран значение структуры "КонтекстСохраняемый"
//@ЯВывожуНаЭкранЗначениеСтруктуры(Парам01)
Процедура ЯВывожуНаЭкранЗначениеСтруктуры(Парам01) Экспорт
	Ванесса.ВывестиНаЭкранЗначениеСтруктуры(Вычислить(Парам01));
	
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	//ВызватьИсключение "Не реализовано.";
КонецПроцедуры

//окончание текста модуля
