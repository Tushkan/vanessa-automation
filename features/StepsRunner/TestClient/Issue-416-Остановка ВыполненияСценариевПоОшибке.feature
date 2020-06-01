# language: ru
#parent uf:
@UF2_запуск_сценариев_на_выполнение
#parent ua:
@UA14_Останавливать_выполнение_сценариев

#https://github.com/silverbulleters/vanessa-behavior/issues/416

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb

@tree

Функционал: Проверка работы остановки выполения шагов если установлен флаг ОстановкаПриВозникновенииОшибки
	Как Разработчик
	Я Хочу чтобы чтобы у меня была возможность остановить выполнение шагов если возникла ошибка в сценарии и установлен флаг ОстановкаПриВозникновенииОшибки
	Чтобы я мог использовать быстрее искать ошибки в сценариях
 


		
Сценарий: Проверка работы флага ОстановкаПриВозникновенииОшибки
		Когда Я открываю VanessaAutomation в режиме TestClient	

		И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ПроверкаРаботыФлагаОстановкаПриВозникновенииОшибки"
		Если поле с именем "ВерсияПоставки" имеет значение "standart" тогда
				И я перехожу к закладке с именем "ГруппаКаталогиБиблиотек"
				И В открытой форме я нажимаю на кнопку с именем "КаталогиБиблиотекДобавить"
				И я добавляю в библиотеки строку с стандартной библиотекой "Libraries"
		И я перехожу к закладке с именем "ГруппаНастройки"
		И я перехожу к закладке "Выполнение сценариев"
		И     я изменяю флаг "Остановка при возникновении ошибки"			
		И в VanessaBehavoir в TestClient я загружаю и выполняю сценарии
				И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
				
				И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

				
		Тогда в VanessaBehavoir в TestClient снипет заполнился верно
			И     таблица формы с именем "ДеревоТестов" стала равной:
				| 'Статус'  |
				| ''        |
				| ''        |
				| 'Failed'  |
				| 'Success' |
				| 'Failed'  |
				| ''        |
				| ''        |
					