#Использовать "../../../internal"

Перем ВнутренняяКарта;  // Оригинальная карта
Перем Блокировка;       // Блокировка для синхронизации доступа

Функция СодержитКлюч(Ключ) Экспорт

	Блокировка.Заблокировать();

	Попытка
		Результат = ВнутренняяКарта.СодержитКлюч(Ключ);
	Исключение
		Блокировка.Разблокировать();
		ВызватьИсключение;
	КонецПопытки;
	
	Блокировка.Разблокировать();

	Возврат Результат;

КонецФункции

Функция СодержитЗначение(Значение) Экспорт

	Блокировка.Заблокировать();

	Попытка
		Результат = ВнутренняяКарта.СодержитЗначение(Значение);
	Исключение
		Блокировка.Разблокировать();
		ВызватьИсключение;
	КонецПопытки;
	
	Блокировка.Разблокировать();

	Возврат Результат;

КонецФункции

Процедура ДляКаждого(Алгоритм, Контекст = Неопределено) Экспорт

	Блокировка.Заблокировать();

	Попытка
		ВнутренняяКарта.ДляКаждого(Алгоритм, Контекст);
	Исключение
		Блокировка.Разблокировать();
		ВызватьИсключение;
	КонецПопытки;

	Блокировка.Разблокировать();

КонецПроцедуры

Функция Получить(Ключ) Экспорт

	Блокировка.Заблокировать();

	Попытка
		Результат = ВнутренняяКарта.Получить(Ключ);
	Исключение
		Блокировка.Разблокировать();
		ВызватьИсключение;
	КонецПопытки;
	
	Блокировка.Разблокировать();

	Возврат Результат;

КонецФункции

Функция ПолучитьИлиУмолчание(Ключ, ЗначениеПоУмолчанию) Экспорт

	Блокировка.Заблокировать();

	Попытка
		Результат = ВнутренняяКарта.ПолучитьИлиУмолчание(Ключ, ЗначениеПоУмолчанию);
	Исключение
		Блокировка.Разблокировать();
		ВызватьИсключение;
	КонецПопытки;
	
	Блокировка.Разблокировать();

	Возврат Результат;

КонецФункции

Функция Пусто() Экспорт

	Блокировка.Заблокировать();

	Попытка
		Результат = ВнутренняяКарта.Пусто();
	Исключение
		Блокировка.Разблокировать();
		ВызватьИсключение;
	КонецПопытки;
	
	Блокировка.Разблокировать();

	Возврат Результат;

КонецФункции

Функция Ключи() Экспорт

	Блокировка.Заблокировать();

	Попытка
		Результат = ВнутренняяКарта.Ключи();
	Исключение
		Блокировка.Разблокировать();
		ВызватьИсключение;
	КонецПопытки;
	
	Блокировка.Разблокировать();

	Возврат Результат;

КонецФункции

Функция Значения() Экспорт

	Блокировка.Заблокировать();

	Попытка
		Результат = ВнутренняяКарта.Значения();
	Исключение
		Блокировка.Разблокировать();
		ВызватьИсключение;
	КонецПопытки;
	
	Блокировка.Разблокировать();

	Возврат Результат;

КонецФункции

Функция КлючиИЗначения() Экспорт

	Блокировка.Заблокировать();

	Попытка
		Результат = ВнутренняяКарта.КлючиИЗначения();
	Исключение
		Блокировка.Разблокировать();
		ВызватьИсключение;
	КонецПопытки;
	
	Блокировка.Разблокировать();

	Возврат Результат;

КонецФункции

Функция Количество() Экспорт

	Блокировка.Заблокировать();

	Попытка
		Результат = ВнутренняяКарта.Количество();
	Исключение
		Блокировка.Разблокировать();
		ВызватьИсключение;
	КонецПопытки;
	
	Блокировка.Разблокировать();

	Возврат Результат;

КонецФункции

Процедура Очистить() Экспорт

	Блокировка.Заблокировать();

	Попытка
		ВнутренняяКарта.Очистить();
	Исключение
		Блокировка.Разблокировать();
		ВызватьИсключение;
	КонецПопытки;

	Блокировка.Разблокировать();

КонецПроцедуры

Функция Вставить(Ключ, Значение) Экспорт

	Блокировка.Заблокировать();

	Попытка
		Результат = ВнутренняяКарта.Вставить(Ключ, Значение);
	Исключение
		Блокировка.Разблокировать();
		ВызватьИсключение;
	КонецПопытки;
	
	Блокировка.Разблокировать();

	Возврат Результат;

КонецФункции

Процедура ВставитьВсе(Карта) Экспорт

	Блокировка.Заблокировать();

	Попытка
		ВнутренняяКарта.ВставитьВсе(Карта);
	Исключение
		Блокировка.Разблокировать();
		ВызватьИсключение;
	КонецПопытки;

	Блокировка.Разблокировать();

КонецПроцедуры

Функция ВставитьЕслиОтсутствует(Ключ, Значение) Экспорт

	Блокировка.Заблокировать();

	Попытка
		Результат = ВнутренняяКарта.ВставитьЕслиОтсутствует(Ключ, Значение);
	Исключение
		Блокировка.Разблокировать();
		ВызватьИсключение;
	КонецПопытки;
	
	Блокировка.Разблокировать();

	Возврат Результат;

КонецФункции

Функция ВычислитьБезусловно(Ключ, ФункцияПереназначения, Контекст = Неопределено) Экспорт

	Блокировка.Заблокировать();

	Попытка
		Результат = ВнутренняяКарта.ВычислитьБезусловно(Ключ, ФункцияПереназначения, Контекст);
	Исключение
		Блокировка.Разблокировать();
		ВызватьИсключение;
	КонецПопытки;
	
	Блокировка.Разблокировать();

	Возврат Результат;

КонецФункции

Функция ВычислитьЕслиОтсутствует(Ключ, ФункцияНазначения, Контекст = Неопределено) Экспорт

	Блокировка.Заблокировать();

	Попытка
		Результат = ВнутренняяКарта.ВычислитьЕслиОтсутствует(Ключ, ФункцияНазначения, Контекст);
	Исключение
		Блокировка.Разблокировать();
		ВызватьИсключение;
	КонецПопытки;
	
	Блокировка.Разблокировать();

	Возврат Результат;

КонецФункции

Функция ВычислитьЕслиПрисутствует(Ключ, ФункцияПереназначения, Контекст = Неопределено) Экспорт

	Блокировка.Заблокировать();

	Попытка
		Результат = ВнутренняяКарта.ВычислитьЕслиПрисутствует(Ключ, ФункцияПереназначения, Контекст);
	Исключение
		Блокировка.Разблокировать();
		ВызватьИсключение;
	КонецПопытки;
	
	Блокировка.Разблокировать();

	Возврат Результат;

КонецФункции

Функция Слить(Ключ, Значение, ФункцияПереназначения, Контекст = Неопределено) Экспорт

	Блокировка.Заблокировать();

	Попытка
		Результат = ВнутренняяКарта.Слить(Ключ, Значение, ФункцияПереназначения, Контекст);
	Исключение
		Блокировка.Разблокировать();
		ВызватьИсключение;
	КонецПопытки;
	
	Блокировка.Разблокировать();

	Возврат Результат;

КонецФункции

Функция Заменить(Ключ, Значение) Экспорт

	Блокировка.Заблокировать();

	Попытка
		Результат = ВнутренняяКарта.Заменить(Ключ, Значение);
	Исключение
		Блокировка.Разблокировать();
		ВызватьИсключение;
	КонецПопытки;
	
	Блокировка.Разблокировать();

	Возврат Результат;

КонецФункции

Функция ЗаменитьЕслиЗначение(Ключ, ПрошлоеЗначение, Значение) Экспорт

	Блокировка.Заблокировать();

	Попытка
		Результат = ВнутренняяКарта.ЗаменитьЕслиЗначение(Ключ, ПрошлоеЗначение, Значение);
	Исключение
		Блокировка.Разблокировать();
		ВызватьИсключение;
	КонецПопытки;
	
	Блокировка.Разблокировать();

	Возврат Результат;

КонецФункции

Процедура ЗаменитьВсе(ФункцияПереназначения, Контекст = Неопределено) Экспорт

	Блокировка.Заблокировать();

	Попытка
		ВнутренняяКарта.ЗаменитьВсе(ФункцияПереназначения, Контекст);
	Исключение
		Блокировка.Разблокировать();
		ВызватьИсключение;
	КонецПопытки;

	Блокировка.Разблокировать();

КонецПроцедуры

Функция Удалить(Ключ) Экспорт

	Блокировка.Заблокировать();

	Попытка
		Результат = ВнутренняяКарта.Удалить(Ключ);
	Исключение
		Блокировка.Разблокировать();
		ВызватьИсключение;
	КонецПопытки;
	
	Блокировка.Разблокировать();

	Возврат Результат;

КонецФункции

Процедура ОбработкаПолученияПредставления(Представление, СтандартнаяОбработка) // BSLLS:UnusedLocalMethod-off
	КартыСлужебный.ОбработчикПолученияПредставленияКарты(ЭтотОбъект, Представление, СтандартнаяОбработка);
КонецПроцедуры

&Реализует("Карта")
Процедура ПриСозданииОбъекта(Карта)
	
	ВнутренняяКарта = Карта;
	Блокировка      = Новый БлокировкаРесурса(ЭтотОбъект);

КонецПроцедуры
