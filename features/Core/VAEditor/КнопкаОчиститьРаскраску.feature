﻿# language: ru


@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnUFSovm82Builds
@IgnoreOnWeb

@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@IgnoreOn8310
@IgnoreOn8311
@IgnoreOn8312
@IgnoreOn8313
@IgnoreOn8314
@IgnoreOn8315
@IgnoreOn8316

@ServerCodeCoverage


Функциональность: Кнопка сбросить раскраску строк

    Как разработчик
    Я хочу чтобы в редакторе была возможность сбросить раскраску строк
    Чтобы я мог управлять раскраской строк

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой 'VAEditor'




Сценарий: Работа с кнопками поиска

	
	И я нажимаю на кнопку с именем 'ФормаПерейтиВVanessaEditor'
	И я нажимаю на кнопку с именем 'VanessaEditorОчиститьРаскраскуСтрок'
	Тогда не появилось окно предупреждения системы
	


