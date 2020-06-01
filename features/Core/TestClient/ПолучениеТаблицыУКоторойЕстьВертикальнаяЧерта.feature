# language: ru
# encoding: utf-8
#parent uf:
@UF11_Прочее
#parent ua:
@UA44_Прочая_активность_по_проверке

@IgnoreOn82Builds
@IgnoreOn836
@IgnoreOnOFBuilds
@IgnoreOnWeb

@tree


Функциональность: Проверка получения текста таблицы, когда в ячейке есть вертикальная черта


Сценарий: Проверка получения текста таблицы, когда в ячейке есть вертикальная черта
	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	Когда я запускаю служебный сеанс TestClient с ключом TestManager в той же базе
	Дано    Я закрыл все окна клиентского приложения

	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И я загружаю служебную фичу и устанавливаю настройки
			И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиПолученияТаблицыСВертикальнойЧертой"
			И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
			И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
			
	И я перехожу к закладке "Работа с UI"
	И я нажимаю на кнопку 'Получить состояние текущего элемента формы'
	И пауза 3
	Тогда значение поля с именем "СгенерированныйСценарий" содержит текст "\'1\\|1\'"
	
	


	
Сценарий: Закрыть TestClient, который был открыт из второго TestManager. Проверка получения текста таблицы, когда в ячейке есть вертикальная черта
	Когда я запускаю служебный сеанс TestClient с ключом TestManager в той же базе
	Дано Я закрыл все окна клиентского приложения кроме "*Vanessa Automation"
	И я загружаю служебную фичу и устанавливаю настройки
			И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ЗакрытьПодключенныйTestClient/ЗакрытьПодключенныйTestClient"
			И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
			И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
			И у элемента "Сценарии выполнены" я жду значения "Да" в течение 20 секунд
	И я закрываю TestClient "TM"	
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'