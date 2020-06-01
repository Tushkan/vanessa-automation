# language: ru
# encoding: utf-8
#parent uf:
@UF11_Прочее
#parent ua:
@UA45_Прочая_активность_вообще

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb

@tree


Функционал: Редактирование таблицы Gherkin

	Как Разработчик я хочу
	Чтобы у меня был функционал для редактирования таблицы Gherkin
	Для того чтобы я мог быстрее редактировать и создавать шаги




	
Сценарий: Редактирование таблицы Gherkin
	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	
	Когда я запускаю служебный сеанс TestClient с ключом TestManager в той же базе

	Дано    Я закрыл все окна клиентского приложения
	
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И я загружаю служебную фичу и устанавливаю настройки
			И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиРедактораТаблицыGherkin"
			И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient

	Затем я записываю действия пользователя чтобы там была таблица
#			И     я нажимаю на кнопку "Начать запись поведения"
			И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
			И у элемента "Сценарии выполнены" я жду значения "Да" в течение 20 секунд
			И     элемент формы с именем "Статистика" стал равен '1/1/17, 17/0/0'
#			И     я нажимаю на кнопку "Закончить запись поведения"
			И Пауза 1
			И     я нажимаю на кнопку "Получить состояние всей формы"
			И Пауза 1
	Затем я вызываю редактор таблицы
			И я перехожу к закладке "Служебная"
			И я перехожу к закладке "Выполнить код"
			И     в поле "Произвольный код" я ввожу текст
				| МассивСтрок =  РазложитьСтрокуВМассивПодстрокКлиент(Объект.СгенерированныйСценарий, Символы.ПС);  |
				| НомерСтроки = 0;                                                                          |
				| Для Каждого Стр Из МассивСтрок Цикл                                                         |
				|  НомерСтроки = НомерСтроки + 1;                                                            |
				| //  Сообщить(Стр);                                                                        |
				| Если Лев(СокрЛП(Стр),1) = "\|" Тогда                                                       |
				|    Элементы.СгенерированныйСценарий.УстановитьГраницыВыделения(НомерСтроки,1,НомерСтроки,1);     |
				|    Прервать;                                                                             |
				|  КонецЕсли;                                                                              |
				| КонецЦикла;                                                                              |
			
			И     я нажимаю на кнопку "Выполнить произвольный код"

			
	И я редактирую таблицу Gherkin
			И     у поля "СгенерированныйСценарий" я выбираю пункт контекстного меню "Редактировать таблицу"
			И     в ТЧ "СписокКолонок" я нажимаю на кнопку "Снять все"
			И     В форме "*Vanessa Automation*" в таблице "СписокКолонок" я перехожу к строке:
				| 'Значение'       |
				| 'N'              |
			И     в ТЧ "СписокКолонок" я устанавливаю флаг "Пометка"
			
			И     я нажимаю на кнопку "ОК"
			#откроем ещё раз редактор таблиц
			И     я нажимаю на кнопку "Выполнить произвольный код"			
			И     у поля "СгенерированныйСценарий" я выбираю пункт контекстного меню "Редактировать таблицу"
			
				
			
	Тогда в тексте значение таблицы стало правильным
			И     таблица формы с именем "СписокКолонок" стала равной:
				| 'Пометка' | 'Значение' |
				| 'Да'      | 'N'        |
				
	Снять и установить все пометки			
			И в таблице "СписокКолонок" я нажимаю на кнопку с именем 'СписокКолонокСнятьВсе'	
			Тогда таблица "СписокКолонок" стала равной:
				| 'Пометка' | 'Значение' |
				| 'Нет'     | 'N'        |

			И в таблице "СписокКолонок" я нажимаю на кнопку с именем 'СписокКолонокПометитьВсе'		
			Тогда таблица "СписокКолонок" стала равной:
				| 'Пометка' | 'Значение' |
				| 'Да'      | 'N'        |

			И в таблице "СписокКолонок" я активизирую поле с именем "СписокКолонокПометка"
			И в таблице "СписокКолонок" я снимаю флаг с именем 'СписокКолонокПометка'
			И пауза 1
			Тогда таблица "СписокКолонок" стала равной:
				| 'Пометка' | 'Значение' |
				| 'Нет'     | 'N'        |
			И в таблице "СписокКолонок" я устанавливаю флаг с именем 'СписокКолонокПометка'
			И пауза 1
			
			Тогда таблица "СписокКолонок" стала равной:
				| 'Пометка' | 'Значение' |
				| 'Да'      | 'N'        |
			
				
	И     я нажимаю на кнопку "ОК"

				
Сценарий: Закрыть TestClient, который был открыт из второго TestManager. Редактирование таблицы Gherkin
	Дано Я закрыл все окна клиентского приложения кроме "*Vanessa Automation"
	И я загружаю служебную фичу и устанавливаю настройки
			И я перехожу к закладке "Служебная"
			И я перехожу к закладке "Служебное основное"
			И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ЗакрытьПодключенныйTestClient/ЗакрытьПодключенныйTestClient"
			И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
			И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
			И у элемента "Сценарии выполнены" я жду значения "Да" в течение 20 секунд
	И я закрываю TestClient "TM"
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'