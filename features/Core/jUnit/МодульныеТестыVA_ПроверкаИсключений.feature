# language: ru
#parent uf:
@UF5_формирование_результатов_выполнения_сценариев
#parent ua:
@UA21_формировать_отчет_jUnit

@IgnoreOn82Builds
@IgnoreOn836
@IgnoreOnOFBuilds
@IgnoreOnWeb
@IgnoreOnUFSovm82Builds

Функционал: Проверка формирования отчета jUnit при работе из EDT. Проверка исключений.


Контекст: 
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	
	

Сценарий: Тест_ЧислоОшибка
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "Тест_ЧислоОшибка"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И я перехожу к закладке с именем "СтраницаОтчетыОЗапуске"
	И я разворачиваю группу с именем "ГруппаОтчеты"
	И я перехожу к закладке с именем "ГруппаjUnit"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеjUnit'
	И     в поле каталог отчета jUnit я указываю путь к относительному каталогу "tools\jUnit"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге jUnit появился 1 файл xml	

	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"

	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"
	
	Тогда таблица "ДеревоТестов" стала равной:
		| 'Статус' | 'Снипет'                                          |
		| ''       | ''                                                |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(ТабПарам)' |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(ТабПарам)' |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(ТабПарам)' |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(ТабПарам)' |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(ТабПарам)' |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(ТабПарам)' |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(ТабПарам)'          |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(ТабПарам)'          |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(ТабПарам)'          |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(ТабПарам)'          |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(ТабПарам)'          |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(ТабПарам)'          |
		| ''       | ''                                                |



	
	
Сценарий: Тест_ТипУспехОшибка
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "Тест_ТипУспехОшибка"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И я перехожу к закладке с именем "СтраницаОтчетыОЗапуске"
	И я разворачиваю группу с именем "ГруппаОтчеты"
	И я перехожу к закладке с именем "ГруппаjUnit"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеjUnit'
	И     в поле каталог отчета jUnit я указываю путь к относительному каталогу "tools\jUnit"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге jUnit появился 1 файл xml	
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"
	
	Тогда таблица "ДеревоТестов" стала равной:
		| 'Статус' | 'Снипет'                                          |
		| ''       | ''                                                |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(ТабПарам)' |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(ТабПарам)'          |
		| ''       | ''                                                |






Сценарий: Тест_СтрокаОшибка
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "Тест_СтрокаОшибка"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И я перехожу к закладке с именем "СтраницаОтчетыОЗапуске"
	И я разворачиваю группу с именем "ГруппаОтчеты"
	И я перехожу к закладке с именем "ГруппаjUnit"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеjUnit'
	И     в поле каталог отчета jUnit я указываю путь к относительному каталогу "tools\jUnit"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге jUnit появился 1 файл xml	
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"
	
	Тогда таблица "ДеревоТестов" стала равной:
		| 'Статус' | 'Снипет'                                          |
		| ''       | ''                                                |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(ТабПарам)' |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(ТабПарам)' |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(ТабПарам)' |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(ТабПарам)'          |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(ТабПарам)'          |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(ТабПарам)'          |
		| ''       | ''                                                |





Сценарий: Тест_КоллекцииОшибка
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "Тест_КоллекцииОшибка"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И я перехожу к закладке с именем "СтраницаОтчетыОЗапуске"
	И я разворачиваю группу с именем "ГруппаОтчеты"
	И я перехожу к закладке с именем "ГруппаjUnit"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеjUnit'
	И     в поле каталог отчета jUnit я указываю путь к относительному каталогу "tools\jUnit"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге jUnit появился 1 файл xml	
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"
	
	Тогда таблица "ДеревоТестов" стала равной:
		| 'Статус' | 'Снипет'                                          |
		| ''       | ''                                                |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(ТабПарам)' |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(ТабПарам)' |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(ТабПарам)'          |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(ТабПарам)'          |
		| ''       | ''                                                |




Сценарий: Тест_ЗначениеЗаполненоОшибка
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "Тест_ЗначениеЗаполненоОшибка"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И я перехожу к закладке с именем "СтраницаОтчетыОЗапуске"
	И я разворачиваю группу с именем "ГруппаОтчеты"
	И я перехожу к закладке с именем "ГруппаjUnit"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеjUnit'
	И     в поле каталог отчета jUnit я указываю путь к относительному каталогу "tools\jUnit"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге jUnit появился 1 файл xml	
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"
	
	Тогда таблица "ДеревоТестов" стала равной:
		| 'Статус' | 'Снипет'                                          |
		| ''       | ''                                                |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(ТабПарам)' |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(ТабПарам)' |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(ТабПарам)'          |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(ТабПарам)'          |
		| ''       | ''                                                |




Сценарий: Тест_ДатаОшибка
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "Тест_ДатаОшибка"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И я перехожу к закладке с именем "СтраницаОтчетыОЗапуске"
	И я разворачиваю группу с именем "ГруппаОтчеты"
	И я перехожу к закладке с именем "ГруппаjUnit"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеjUnit'
	И     в поле каталог отчета jUnit я указываю путь к относительному каталогу "tools\jUnit"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге jUnit появился 1 файл xml	
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"
	
	Тогда таблица "ДеревоТестов" стала равной:
		| 'Статус' | 'Снипет'                                          |
		| ''       | ''                                                |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(ТабПарам)' |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(ТабПарам)' |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(ТабПарам)'          |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(ТабПарам)'          |
		| ''       | ''                                                |






Сценарий: Тест_ВыполнитьОшибка
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "Тест_ВыполнитьОшибка"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И я перехожу к закладке с именем "СтраницаОтчетыОЗапуске"
	И я разворачиваю группу с именем "ГруппаОтчеты"
	И я перехожу к закладке с именем "ГруппаjUnit"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеjUnit'
	И     в поле каталог отчета jUnit я указываю путь к относительному каталогу "tools\jUnit"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге jUnit появился 1 файл xml	
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"
	
	Тогда таблица "ДеревоТестов" стала равной:
		| 'Статус' | 'Снипет'                                          |
		| ''       | ''                                                |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(ТабПарам)' |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(ТабПарам)' |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(ТабПарам)' |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(ТабПарам)' |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(ТабПарам)'          |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(ТабПарам)'          |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(ТабПарам)'          |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(ТабПарам)'          |
		| ''       | ''                                                |









Сценарий: Тест_ВызватьИсключение
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "Тест_ВызватьИсключение"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И я перехожу к закладке с именем "СтраницаОтчетыОЗапуске"
	И я разворачиваю группу с именем "ГруппаОтчеты"
	И я перехожу к закладке с именем "ГруппаjUnit"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеjUnit'
	И     в поле каталог отчета jUnit я указываю путь к относительному каталогу "tools\jUnit"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге jUnit появился 1 файл xml	
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"
	
	Тогда таблица "ДеревоТестов" стала равной:
		| 'Статус' | 'Снипет'                                          |
		| ''       | ''                                                |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(ТабПарам)' |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(ТабПарам)' |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(ТабПарам)'          |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(ТабПарам)'          |
		| ''       | ''                                                |



Сценарий: Тест_БулевоОшибка
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "Тест_БулевоОшибка"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И я перехожу к закладке с именем "СтраницаОтчетыОЗапуске"
	И я разворачиваю группу с именем "ГруппаОтчеты"
	И я перехожу к закладке с именем "ГруппаjUnit"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеjUnit'
	И     в поле каталог отчета jUnit я указываю путь к относительному каталогу "tools\jUnit"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге jUnit появился 1 файл xml	
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"
	
	Тогда таблица "ДеревоТестов" стала равной:
		| 'Статус' | 'Снипет'                                          |
		| ''       | ''                                                |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(ТабПарам)' |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(ТабПарам)' |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(ТабПарам)'          |
		| ''       | ''                                                |
		| 'Failed' | ''                                                |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(ТабПарам)'          |
		| ''       | ''                                                |




	
Сценарий: Тест_АсинхронныеВызовыКлиент
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "Тест_АсинхронныеВызовыКлиент"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И я перехожу к закладке с именем "СтраницаОтчетыОЗапуске"
	И я разворачиваю группу с именем "ГруппаОтчеты"
	И я перехожу к закладке с именем "ГруппаjUnit"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеjUnit'
	И     в поле каталог отчета jUnit я указываю путь к относительному каталогу "tools\jUnit"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге jUnit появился 1 файл xml	
	
	И файл "$НайденноеИмяФайлаxml$" содержит строки
				|'<expected>Файл3</expected>'|
				|'Не нашли элемент &lt;Файл3&gt; в коллекции, а хотели, чтобы он был в коллекции.'|
				|'&lt;Файл ошибочно непередан.&gt;'|
	
		
	