# language: ru
#parent uf:
@UF5_формирование_результатов_выполнения_сценариев
#parent ua:
@UA20_формировать_прочие_отчеты

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb



Функционал: Проверка формирования отчета HTML

Как разработчик
Я хочу чтобы корректно формировался отчет HTML
Чтобы я мог видеть результат работы сценариев

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Проверка отчета HTML. Снятие скриншотов компонентой.
	//HTML с помощью компоненты можно формировать только в синхронными вызовами, т.к. снятие скриншота может происходить
	//в середине выполнения шага.
	Если 'НЕ Ванесса.ЗапрещеныСинхронныеВызовы' Тогда
		Когда Я открываю VanessaAutomation в режиме TestClient
		И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиОтчетаHTML"
		И в открытой форме я перехожу к закладке с заголовком "Сервис"
		И я перехожу к закладке с именем "СтраницаАвтоИнструкции"
		И я перехожу к закладке с именем "ГруппаSikuliXServer"
		И я разворачиваю группу с именем "HTMLИMarkdown"
		И я устанавливаю флаг с именем 'СоздаватьИнструкциюHTML'
		И я перехожу к закладке с именем "СтраницаСервисОсновные"
		И я перехожу к закладке с именем "СтраницаСкриншоты"
		
		И я устанавливаю флаг с именем 'ИспользоватьКомпонентуVanessaExt1'
		И я устанавливаю флаг с именем 'ИспользоватьВнешнююКомпонентуДляСкриншотов'
		И из выпадающего списка с именем "СпособСнятияСкриншотовВнешнейКомпонентой" я выбираю точное значение 'Весь экран'
		
		И в поле каталог отчета HTML я указываю путь к относительному каталогу "tools\HTML"
		И я перехожу к закладке с именем "СтраницаАвтоИнструкции"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
		И в каталоге HTML появился 1 файл html
		И в Файле инструкции "Instr_Тестовая фича, проверяющая генерацию отчета HTML.HTML" нет строки  "я выполняю простой шаг контекста"
		И в Файле инструкции "Instr_Тестовая фича, проверяющая генерацию отчета HTML.HTML" есть строка "Другой текст первого шага"
		И в Файле инструкции "Instr_Тестовая фича, проверяющая генерацию отчета HTML.HTML" есть строка "Другой текст второго шага Параметр2 и Параметр1"
		И в Файле инструкции "Instr_Тестовая фича, проверяющая генерацию отчета HTML.HTML" нет строки  "И этот шаг должен быть проигнориорован в автоинструкции"
		И в Файле инструкции "Instr_Тестовая фича, проверяющая генерацию отчета HTML.HTML" нет строки  "<b>004</b>. И я выполняю ещё простой шаг"
		И в Файле инструкции "Instr_Тестовая фича, проверяющая генерацию отчета HTML.HTML" нет строки  "<b>004</b>.И я выполняю ещё простой шаг"
		И в Файле инструкции "Instr_Тестовая фича, проверяющая генерацию отчета HTML.HTML" нет строки  "Когда я выполняю простой шаг в группе один"
		И в Файле инструкции "Instr_Тестовая фича, проверяющая генерацию отчета HTML.HTML" нет строки  "Когда я выполняю простой шаг в группе два"
		И в Файле инструкции "Instr_Тестовая фича, проверяющая генерацию отчета HTML.HTML" есть строка "И группа шагов один"
		И в Файле инструкции "Instr_Тестовая фича, проверяющая генерацию отчета HTML.HTML" нет строки  "И группа шагов два"
		И в Файле инструкции "Instr_Тестовая фича, проверяющая генерацию отчета HTML.HTML" есть строка "И группа другой текст"
		И в Файле инструкции "Instr_Тестовая фича, проверяющая генерацию отчета HTML.HTML" нет строки  "И группа шагов три"
		И в Файле инструкции "Instr_Тестовая фича, проверяющая генерацию отчета HTML.HTML" нет строки  "И группа шагов четыре"
		И в Файле инструкции "Instr_Тестовая фича, проверяющая генерацию отчета HTML.HTML" нет строки  "Когда я выполняю простой шаг в группе пять"
		И в Файле инструкции "Instr_Тестовая фича, проверяющая генерацию отчета HTML.HTML" нет строки  "Когда я выполняю простой шаг в группе шесть"
	
	
Сценарий: Проверка отчета HTML. Снятие скриншотов внешней прграммой.
	Когда Я открываю VanessaAutomation в режиме TestClient
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиОтчетаHTML"
	И в открытой форме я перехожу к закладке с заголовком "Сервис"
	И я перехожу к закладке с именем "СтраницаАвтоИнструкции"
	И я перехожу к закладке с именем "ГруппаSikuliXServer"
	И я разворачиваю группу с именем "HTMLИMarkdown"
	И я устанавливаю флаг с именем 'СоздаватьИнструкциюHTML'
	И я перехожу к закладке с именем "СтраницаСервисОсновные"
	И я перехожу к закладке с именем "СтраницаСкриншоты"
	И В открытой форме в поле "Команда создания скриншотов" я ввожу команду для IrfanView 
	И в поле каталог отчета HTML я указываю путь к относительному каталогу "tools\HTML"
	И я перехожу к закладке с именем "СтраницаАвтоИнструкции"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге HTML появился 1 файл html
	И в Файле инструкции "Instr_Тестовая фича, проверяющая генерацию отчета HTML.HTML" нет строки  "я выполняю простой шаг контекста"
	И в Файле инструкции "Instr_Тестовая фича, проверяющая генерацию отчета HTML.HTML" есть строка "Другой текст первого шага"
	И в Файле инструкции "Instr_Тестовая фича, проверяющая генерацию отчета HTML.HTML" есть строка "Другой текст второго шага Параметр2 и Параметр1"
	И в Файле инструкции "Instr_Тестовая фича, проверяющая генерацию отчета HTML.HTML" нет строки  "И этот шаг должен быть проигнориорован в автоинструкции"
	И в Файле инструкции "Instr_Тестовая фича, проверяющая генерацию отчета HTML.HTML" нет строки  "<b>004</b>. И я выполняю ещё простой шаг"
	И в Файле инструкции "Instr_Тестовая фича, проверяющая генерацию отчета HTML.HTML" нет строки  "<b>004</b>.И я выполняю ещё простой шаг"
	И в Файле инструкции "Instr_Тестовая фича, проверяющая генерацию отчета HTML.HTML" нет строки  "Когда я выполняю простой шаг в группе один"
	И в Файле инструкции "Instr_Тестовая фича, проверяющая генерацию отчета HTML.HTML" нет строки  "Когда я выполняю простой шаг в группе два"
	И в Файле инструкции "Instr_Тестовая фича, проверяющая генерацию отчета HTML.HTML" есть строка "И группа шагов один"
	И в Файле инструкции "Instr_Тестовая фича, проверяющая генерацию отчета HTML.HTML" нет строки  "И группа шагов два"
	И в Файле инструкции "Instr_Тестовая фича, проверяющая генерацию отчета HTML.HTML" есть строка "И группа другой текст"
	И в Файле инструкции "Instr_Тестовая фича, проверяющая генерацию отчета HTML.HTML" нет строки  "И группа шагов три"
	И в Файле инструкции "Instr_Тестовая фича, проверяющая генерацию отчета HTML.HTML" нет строки  "И группа шагов четыре"
	И в Файле инструкции "Instr_Тестовая фича, проверяющая генерацию отчета HTML.HTML" нет строки  "Когда я выполняю простой шаг в группе пять"
	И в Файле инструкции "Instr_Тестовая фича, проверяющая генерацию отчета HTML.HTML" нет строки  "Когда я выполняю простой шаг в группе шесть"