﻿
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
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,ОписаниеШага,ТипШага,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТаблицеСтрок(Парам01,Парам02)","ВТаблицеСтрок","И     в таблице ""ИмяТаблицы"" 0 строк","Проверяет количество строк в таблице","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТаблицеСтроки(Парам01,Парам02)","ВТаблицеСтроки","И     в таблице ""ИмяТаблицы"" 2 строки","Проверяет количество строк в таблице","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТаблицеСтрока(Парам01,Парам02)","ВТаблицеСтрока","И     в таблице ""ИмяТаблицы"" 2 строка","Проверяет количество строк в таблице","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТаблицеБольшеИлиРавноСтрок(Парам01,Парам02)","ВТаблицеБольшеИлиРавноСтрок","И     в таблице ""ИмяТаблицы"" больше или равно 2 строк","Проверяет количество строк в таблице","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТаблицеБольшеИлиРавноСтроки(Парам01,Парам02)","ВТаблицеБольшеИлиРавноСтроки","И     в таблице ""ИмяТаблицы"" больше или равно 1 строки","Проверяет количество строк в таблице","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТаблицеБольшеСтроки(Парам01,Парам02)","ВТаблицеБольшеСтроки","И     в таблице ""ИмяТаблицы"" больше 1 строки","Проверяет количество строк в таблице","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТаблицеБольшеСтрок(Парам01,Парам02)","ВТаблицеБольшеСтрок","И     в таблице ""ИмяТаблицы"" больше 0 строк","Проверяет количество строк в таблице","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТаблицеМеньшеСтрок(Парам01,Парам02)","ВТаблицеМеньшеСтрок","И     в таблице ""ИмяТаблицы"" меньше 3 строк","Проверяет количество строк в таблице","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТаблицеМеньшеСтроки(Парам01,Парам02)","ВТаблицеМеньшеСтроки","И     в таблице ""ИмяТаблицы"" меньше 3 строки","Проверяет количество строк в таблице","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТаблицеМеньшеИлиРавноСтрок(Парам01,Парам02)","ВТаблицеМеньшеИлиРавноСтрок","И     в таблице ""ИмяТаблицы"" меньше или равно 2 строк","Проверяет количество строк в таблице","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТаблицеМеньшеИлиРавноСтроки(Парам01,Парам02)","ВТаблицеМеньшеИлиРавноСтроки","И     в таблице ""ИмяТаблицы"" меньше или равно 2 строки","Проверяет количество строк в таблице","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТаблицеКоличествоСтрокТогда(Парам01,Парам02,Парам03)","ВТаблицеКоличествоСтрокТогда","Если в таблице ""ИмяТаблицы"" количество строк ""меньше или равно"" 2 Тогда","Условие. Проверяет количество строк в таблице","UI.Таблицы.Количество строк","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТаблицеКоличествоСтрок(Парам01,Парам02,Парам03)","ВТаблицеКоличествоСтрок","Тогда в таблице ""ИмяТаблицы"" количество строк ""меньше или равно"" 2","Проверка на количество строк в таблице","UI.Таблицы.Количество строк");

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
//И     в таблице "ТабличнаяЧасть1" 2 строки
//@ВТаблицеСтроки(Парам01,Парам02)
Процедура ВТаблицеСтроки(ИмяТаблицы,КоличествоСтрок) Экспорт
	ТЧ      = Ванесса.НайтиТЧПоИмени(ИмяТаблицы);
	Таблица = Ванесса.ПолучитьЗначениеТестируемаяТаблицаФормы(ТЧ);
	Если Таблица = Неопределено Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не смог получить строки ТЧ <%1>");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяТаблицы);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
	
	Если Таблица.Количество() <> КоличествоСтрок Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("В таблице <%1> ожидали получить <%2> строк, а получили <%3> строк.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяТаблицы);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",КоличествоСтрок);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%3",Таблица.Количество());
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
//И     в таблице "ТабличнаяЧасть1" 10 строк
//@ВТаблицеСтрок(Парам01,Парам02)
Процедура ВТаблицеСтрок(ИмяТаблицы,КоличествоСтрок) Экспорт
	ВТаблицеСтроки(ИмяТаблицы,КоличествоСтрок);
КонецПроцедуры

&НаКлиенте
//И     в таблице "ТабличнаяЧасть1" 1 строка
//@ВТаблицеСтрока(Парам01,Парам02)
Процедура ВТаблицеСтрока(ИмяТаблицы,КоличествоСтрок) Экспорт
	ВТаблицеСтроки(ИмяТаблицы,КоличествоСтрок);
КонецПроцедуры

&НаКлиенте
//И     в таблице "ТабличнаяЧасть1" больше или равно 2 строк
//@ВТаблицеБольшеИлиРавноСтрок(Парам01,Парам02)
Процедура ВТаблицеБольшеИлиРавноСтрок(ИмяТаблицы,КоличествоСтрок) Экспорт
	ТЧ      = Ванесса.НайтиТЧПоИмени(ИмяТаблицы);
	Таблица = Ванесса.ПолучитьЗначениеТестируемаяТаблицаФормы(ТЧ);
	Если Таблица = Неопределено Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не смог получить строки ТЧ <%1>");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяТаблицы);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
	
	Если Таблица.Количество() < КоличествоСтрок Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("В таблице <%1> ожидали получить больше или равно <%2> строк, а получили <%3> строк.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяТаблицы);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",КоличествоСтрок);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%3",Таблица.Количество());
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
//И     в таблице "ТабличнаяЧасть1" больше или равно 1 строки
//@ВТаблицеБольшеИлиРавноСтроки(Парам01,Парам02)
Процедура ВТаблицеБольшеИлиРавноСтроки(ИмяТаблицы,КоличествоСтрок) Экспорт
	ВТаблицеБольшеИлиРавноСтрок(ИмяТаблицы,КоличествоСтрок);
КонецПроцедуры

&НаКлиенте
//И     в таблице "ТабличнаяЧасть1" больше 1 строки
//@ВТаблицеБольшеСтроки(Парам01,Парам02)
Процедура ВТаблицеБольшеСтроки(ИмяТаблицы,КоличествоСтрок) Экспорт
	ТЧ      = Ванесса.НайтиТЧПоИмени(ИмяТаблицы);
	Таблица = Ванесса.ПолучитьЗначениеТестируемаяТаблицаФормы(ТЧ);
	Если Таблица = Неопределено Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не смог получить строки ТЧ <%1>");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяТаблицы);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
	
	Если Таблица.Количество() <= КоличествоСтрок Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("В таблице <%1> ожидали получить больше <%2> строк, а получили <%3> строк.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяТаблицы);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",КоличествоСтрок);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%3",Таблица.Количество());
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
//И     в таблице "ТабличнаяЧасть1" больше 0 строк
//@ВТаблицеБольшеСтрок(Парам01,Парам02)
Процедура ВТаблицеБольшеСтрок(ИмяТаблицы,КоличествоСтрок) Экспорт
	ВТаблицеБольшеСтроки(ИмяТаблицы,КоличествоСтрок);
КонецПроцедуры

&НаКлиенте
//И     в таблице "ТабличнаяЧасть1" меньше 3 строк
//@ВТаблицеМеньшеСтрок(Парам01,Парам02)
Процедура ВТаблицеМеньшеСтрок(ИмяТаблицы,КоличествоСтрок) Экспорт
	ТЧ      = Ванесса.НайтиТЧПоИмени(ИмяТаблицы);
	Таблица = Ванесса.ПолучитьЗначениеТестируемаяТаблицаФормы(ТЧ);
	Если Таблица = Неопределено Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не смог получить строки ТЧ <%1>");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяТаблицы);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
	
	Если Таблица.Количество() >= КоличествоСтрок Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("В таблице <%1> ожидали получить меньше <%2> строк, а получили <%3> строк.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяТаблицы);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",КоличествоСтрок);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%3",Таблица.Количество());
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
//И     в таблице "ТабличнаяЧасть1" меньше 3 строки
//@ВТаблицеМеньшеСтроки(Парам01,Парам02)
Процедура ВТаблицеМеньшеСтроки(ИмяТаблицы,КоличествоСтрок) Экспорт
	ВТаблицеМеньшеСтрок(ИмяТаблицы,КоличествоСтрок);
КонецПроцедуры

&НаКлиенте
//И     в таблице "ТабличнаяЧасть1" меньше или равно 2 строк
//@ВТаблицеМеньшеИлиРавноСтрок(Парам01,Парам02)
Процедура ВТаблицеМеньшеИлиРавноСтрок(ИмяТаблицы,КоличествоСтрок) Экспорт
	ТЧ      = Ванесса.НайтиТЧПоИмени(ИмяТаблицы);
	Таблица = Ванесса.ПолучитьЗначениеТестируемаяТаблицаФормы(ТЧ);
	Если Таблица = Неопределено Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не смог получить строки ТЧ <%1>");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяТаблицы);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
	
	Если Таблица.Количество() < КоличествоСтрок Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("В таблице <%1> ожидали получить меньше или равно <%2> строк, а получили <%3> строк.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяТаблицы);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",КоличествоСтрок);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%3",Таблица.Количество());
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
//И     в таблице "ТабличнаяЧасть1" меньше или равно 1 строки
//@ВТаблицеМеньшеИлиРавноСтроки(Парам01,Парам02)
Процедура ВТаблицеМеньшеИлиРавноСтроки(ИмяТаблицы,КоличествоСтрок) Экспорт
	ВТаблицеМеньшеИлиРавноСтрок(ИмяТаблицы,КоличествоСтрок);
КонецПроцедуры

&НаКлиенте
//Если в таблице "ТабличнаяЧасть1" количество строк "меньше или равно" 2 Тогда
//@ВТаблицеКоличествоСтрокТогда(Парам01,Парам02,Парам03)
Процедура ВТаблицеКоличествоСтрокТогда(ИмяТаблицы,Знач Сравнение,КоличествоСтрок) Экспорт
	ТЧ      = Ванесса.НайтиТЧПоИмени(ИмяТаблицы);
	Таблица = Ванесса.ПолучитьЗначениеТестируемаяТаблицаФормы(ТЧ);
	Если Таблица = Неопределено Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не смог получить строки ТЧ <%1>");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяТаблицы);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
	
	Сравнение = Ванесса.ПолучитьОператорПоТексту(Сравнение);
	Выражение = "Таблица.Количество() " + Сравнение +  " " + XMLСтрока(КоличествоСтрок);
	Результат = Вычислить(Выражение);
	Если Результат Тогда
		Ванесса.УстановитьРезультатУсловия(Истина);
	Иначе	
		Ванесса.УстановитьРезультатУсловия(Ложь);
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
//Тогда в таблице "ТабличнаяЧасть1" количество строк "меньше или равно" 2
//@ВТаблицеКоличествоСтрок(Парам01,Парам02,Парам03)
Процедура ВТаблицеКоличествоСтрок(ИмяТаблицы,Знач Сравнение,КоличествоСтрок) Экспорт
	СравнениеОригинал = Сравнение;
	
	ТЧ      = Ванесса.НайтиТЧПоИмени(ИмяТаблицы);
	Таблица = Ванесса.ПолучитьЗначениеТестируемаяТаблицаФормы(ТЧ);
	Если Таблица = Неопределено Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не смог получить строки ТЧ <%1>");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяТаблицы);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
	
	
	Сравнение = Ванесса.ПолучитьОператорПоТексту(Сравнение);
	Выражение = "Таблица.Количество() " + Сравнение +  " " + XMLСтрока(КоличествоСтрок);
	Результат = Вычислить(Выражение);
	Если НЕ Результат Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("В таблице <%1> ожидали получить %2 %3 строк, а получили <%4> строк.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяТаблицы);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",СравнениеОригинал);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%3",КоличествоСтрок);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%4",Таблица.Количество());
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецПроцедуры
