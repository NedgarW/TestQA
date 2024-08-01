﻿#language: ru

@tree

Функционал: тестирование Расход Товара
Как Тестировщик я хочу
проверить весь функционал документа Расход Товара
чтобы документ Расход Товара правильно записывался 

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: тестирование документа Расход Товара
* Создание документа расход товара
	И я закрываю все окна клиентского приложения
	И я открываю навигационную ссылку "e1cib/list/ЖурналДокументов.ДокументыПродаж"
	И я нажимаю на кнопку с именем 'ФормаСоздатьПоПараметруРасходТовара'
* Заполнение шапки документа	
	И из выпадающего списка с именем 'Организация' я выбираю точное значение 'ООО "Все для дома"'
	И я нажимаю кнопку выбора у поля с именем 'Покупатель'
	И в таблице 'Список' я перехожу к строке:
		| "Наименование" |
		| "Поставщики"   |	
	И в таблице 'Список' я выбираю текущую строку
	И в таблице 'Список' я перехожу к строке:
		| "Наименование"        |
		| "Животноводство ООО " |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И из выпадающего списка с именем 'Склад' я выбираю точное значение "Склад отдела продаж"
	И из выпадающего списка с именем 'ВидЦен' я выбираю точное значение "Мелкооптовая"
	И из выпадающего списка с именем 'Валюта' я выбираю точное значение "Рубли"
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Проверка поля Склад
	И из выпадающего списка с именем 'Склад' я выбираю точное значение "Строящийся склад"
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И из выпадающего списка с именем 'Склад' я выбираю точное значение "Малый"
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И из выпадающего списка с именем 'Склад' я выбираю точное значение "Большой"
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И из выпадающего списка с именем 'Склад' я выбираю точное значение "Средний"
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Проверка поля Вид цен
	И из выпадающего списка с именем 'ВидЦен' я выбираю точное значение "Закупочная"
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И из выпадающего списка с именем 'ВидЦен' я выбираю точное значение "Оптовая"
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И из выпадающего списка с именем 'ВидЦен' я выбираю точное значение "Розничная"
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Проверка поля Валюта
	И из выпадающего списка с именем 'Валюта' я выбираю точное значение "EUR"
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И из выпадающего списка с именем 'Валюта' я выбираю точное значение "USD"
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И из выпадающего списка с именем 'Валюта' я выбираю точное значение "Рубли"
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Проверка заполнения табличной части
	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
	И в таблице 'Список' я перехожу к строке:
		| "Наименование" |
		| "Продукты"     |
	И в таблице 'Список' я выбираю текущую строку
	И в таблице 'Список' я перехожу к строке:
		| "Наименование" |
		| "Хлеб"         |
	И в таблице 'Список' я выбираю текущую строку
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "5,00"
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыЦена'
	И в таблице 'Товары' в поле с именем 'ТоварыЦена' я ввожу текст "40,00"
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыНомерСтроки'
	И я выбираю пункт контекстного меню с именем 'ТоварыКонтекстноеМенюСкопировать' на элементе формы с именем 'Товары'
	Тогда таблица 'Товары' стала равной:
		| 'Цена'  | 'Количество' | 'Сумма'  |
		| '40,00' | '5,00'       | '200,00' |
		| '40,00' | '5,00'       | '200,00' |
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И я нажимаю на кнопку с именем 'ФормаПровести'
*Проверка формирование регистра
	И В текущем окне я нажимаю кнопку командного интерфейса "Регистр взаиморасчетов с контрагентами"
	Тогда таблица 'Список' стала равной:
	| 'Контрагент'          | 'Сумма'  | 'Валюта' |
	| 'Животноводство ООО ' | '400,00' | 'Рубли'  |
* Переход к печатной форме Расход товара
	И В текущем окне я нажимаю кнопку командного интерфейса "Основное"
	И я нажимаю на кнопку с именем 'ФормаДокументРасходТовараПечатьРасходнойНакладной'
	И в табличном документе 'SpreadsheetDocument' я перехожу к ячейке "R7C3"
	И я жду когда в табличном документе 'SpreadsheetDocument' заполнится ячейка 'R7C3' в течение 20 секунд
* Проверка печатной формы	
	Тогда табличный документ 'SpreadsheetDocument' равен:
		| 'Расход товара' | ''                              | ''           | ''      |
		| ''              | ''                              | ''           | ''      |
		| 'Номер'         | '*'                             | ''           | ''      |
		| 'Дата'          | '*'                             | ''           | ''      |
		| 'Покупатель'    | 'Животноводство ООО '           | ''           | ''      |
		| 'Склад'         | 'Средний'                       | ''           | ''      |
		| 'Сумма'         | '400 рублей (Четыреста рублей)' | ''           | ''      |
		| 'Вес'           | ''                              | ''           | ''      |
		| ''              | ''                              | ''           | ''      |
		| 'Товар'         | 'Цена'                          | 'Количество' | 'Сумма' |
		| 'Хлеб'          | '40'                            | '5'          | '200'   |
		| 'Хлеб'          | '40'                            | '5'          | '200'   |
 *Закрытие печатной формы	
	И я закрываю все окна клиентского приложения
		








	
			

			
	
		
		
	
		



		

			

		
		
			
		
			

	
		






