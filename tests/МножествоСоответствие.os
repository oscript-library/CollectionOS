#Использовать asserts

#Использовать ".."
#Использовать "./ТестМодуль"

Перем Рефлектор;               // Рефлектор
Перем ДляКаждогоВыполнилсяРаз; // Количество раз которое выполнился метод ДляКаждого
Перем МножествоФикстура;       // Кеш множества фикстуры

&Тест
Процедура МножествоСоответствиеСоздается() Экспорт
	
	// Дано

	// Когда

	Результат = Новый МножествоСоответствие;

	// Тогда

	Ожидаем.Что(Результат).ИмеетТип("МножествоСоответствие");

КонецПроцедуры

&Тест
Процедура Итератор() Экспорт

	// Дано
	
	МножествоСоответствие = Новый МножествоСоответствие;

	// Когда

	Результат = МножествоСоответствие.Итератор();

	// Тогда
	
	Ожидаем.Что(Результат).ИмеетТип("ИтераторКлючСоответствие");

КонецПроцедуры

&Тест
Процедура ДляКаждого() Экспорт

	// Дано

	ДляКаждогоВыполнилсяРаз = 0;

	Соответствие = Новый Соответствие;
	Соответствие.Вставить(1, Истина);
	Соответствие.Вставить(2, Истина);
	Соответствие.Вставить(3, Истина);

	МножествоСоответствие = Новый МножествоСоответствие;

	Рефлектор.УстановитьСвойство(
		МножествоСоответствие,
		"Соответствие",
		Соответствие
	);

	// Когда

	МножествоСоответствие.ДляКаждого(Новый Действие(ЭтотОбъект, "ДействиеДляКаждого"));

	// Тогда
	
	Ожидаем.Что(ДляКаждогоВыполнилсяРаз).Равно(3);

КонецПроцедуры

&Тест
Процедура ДляКаждогоЛямбда() Экспорт

	// Дано

	ТестМодуль.ДляКаждогоВыполнилсяРаз = 0;
	ТестМодуль.СуммаЭлементов          = 0;

	Соответствие = Новый Соответствие;
	Соответствие.Вставить(1, Истина);
	Соответствие.Вставить(2, Истина);
	Соответствие.Вставить(3, Истина);

	МножествоСоответствие = Новый МножествоСоответствие;

	Рефлектор.УстановитьСвойство(
		МножествоСоответствие,
		"Соответствие",
		Соответствие
	);

	// Когда

	МножествоСоответствие.ДляКаждого(
		"Элемент -> ТестМодуль.ДляКаждогоВыполнилсяРаз = ТестМодуль.ДляКаждогоВыполнилсяРаз + 1;
		|	ТестМодуль.СуммаЭлементов = ТестМодуль.СуммаЭлементов + Элемент;"
	);

	// Тогда
	
	Ожидаем.Что(ТестМодуль.ДляКаждогоВыполнилсяРаз).Равно(3);
	Ожидаем.Что(ТестМодуль.СуммаЭлементов).Равно(6);

КонецПроцедуры

&Тест
Процедура Содержит() Экспорт

	// Дано
	
	Соответствие = Новый Соответствие;
	Соответствие.Вставить(1, Истина);
	Соответствие.Вставить(2, Истина);
	Соответствие.Вставить(3, Истина);

	МножествоСоответствие = Новый МножествоСоответствие;

	Рефлектор.УстановитьСвойство(
		МножествоСоответствие,
		"Соответствие",
		Соответствие
	);

	// Когда

	Результат = МножествоСоответствие.Содержит(2);

	// Тогда
	
	Ожидаем.Что(Результат).ЭтоИстина();

КонецПроцедуры

&Тест
Процедура НеСодержит() Экспорт

	// Дано
	
	Соответствие = Новый Соответствие;
	Соответствие.Вставить(1, Истина);
	Соответствие.Вставить(2, Истина);
	Соответствие.Вставить(3, Истина);

	МножествоСоответствие = Новый МножествоСоответствие;

	Рефлектор.УстановитьСвойство(
		МножествоСоответствие,
		"Соответствие",
		Соответствие
	);

	// Когда

	Результат = МножествоСоответствие.Содержит(4);

	// Тогда
	
	Ожидаем.Что(Результат).ЭтоЛожь();

КонецПроцедуры

&Тест
Процедура СодержитВсе() Экспорт

	// Дано
	
	Соответствие = Новый Соответствие;
	Соответствие.Вставить(1, Истина);
	Соответствие.Вставить(2, Истина);
	Соответствие.Вставить(3, Истина);

	МножествоСоответствие = Новый МножествоСоответствие;

	Рефлектор.УстановитьСвойство(
		МножествоСоответствие,
		"Соответствие",
		Соответствие
	);

	// Когда

	Результат = МножествоСоответствие.СодержитВсе(
		МножествоФикстура()
	);

	// Тогда
	
	Ожидаем.Что(Результат).ЭтоИстина();

КонецПроцедуры

&Тест
Процедура СодержитНеВсе() Экспорт

	// Дано
	
	Соответствие = Новый Соответствие;
	Соответствие.Вставить(1, Истина);
	Соответствие.Вставить(2, Истина);

	МножествоСоответствие = Новый МножествоСоответствие;

	Рефлектор.УстановитьСвойство(
		МножествоСоответствие,
		"Соответствие",
		Соответствие
	);

	// Когда

	Результат = МножествоСоответствие.СодержитВсе(
		МножествоФикстура()
	);

	// Тогда
	
	Ожидаем.Что(Результат).ЭтоЛожь();

КонецПроцедуры

&Тест
Процедура Пусто() Экспорт

	// Дано

	МножествоСоответствие = Новый МножествоСоответствие;

	Рефлектор.УстановитьСвойство(
		МножествоСоответствие,
		"Соответствие",
		Новый Соответствие
	);

	// Когда

	Результат = МножествоСоответствие.Пусто();

	// Тогда
	
	Ожидаем.Что(Результат).ЭтоИстина();

КонецПроцедуры

&Тест
Процедура НеПусто() Экспорт

	// Дано

	Соответствие = Новый Соответствие;
	Соответствие.Вставить(1, Истина);

	МножествоСоответствие = Новый МножествоСоответствие;

	Рефлектор.УстановитьСвойство(
		МножествоСоответствие,
		"Соответствие",
		Соответствие
	);

	// Когда

	Результат = МножествоСоответствие.Пусто();

	// Тогда
	
	Ожидаем.Что(Результат).ЭтоЛожь();

КонецПроцедуры

&Тест
Процедура ПроцессорКоллекции() Экспорт
	
	// Дано

	МножествоСоответствие = Новый МножествоСоответствие;

	// Когда

	Результат = МножествоСоответствие.ПроцессорКоллекции();

	// Тогда

	Ожидаем.Что(Результат).ИмеетТип("ПроцессорКоллекций");

КонецПроцедуры

&Тест
Процедура Количество() Экспорт
	
	// Дано
	
	Соответствие = Новый Соответствие;
	Соответствие.Вставить(1, Истина);
	Соответствие.Вставить(2, Истина);
	Соответствие.Вставить(3, Истина);

	МножествоСоответствие = Новый МножествоСоответствие;

	Рефлектор.УстановитьСвойство(
		МножествоСоответствие,
		"Соответствие",
		Соответствие
	);

	// Когда

	Результат = МножествоСоответствие.Количество();

	// Тогда
	
	Ожидаем.Что(Результат).Равно(3);

КонецПроцедуры

&Тест
Процедура Добавить() Экспорт
	
	// Дано
	
	Соответствие = Новый Соответствие;
	Соответствие.Вставить(1, Истина);
	Соответствие.Вставить(2, Истина);
	Соответствие.Вставить(3, Истина);

	МножествоСоответствие = Новый МножествоСоответствие;

	Рефлектор.УстановитьСвойство(
		МножествоСоответствие,
		"Соответствие",
		Соответствие
	);

	// Когда

	Результат = МножествоСоответствие.Добавить(4);

	// Тогда
	
	Ожидаем.Что(Результат).ЭтоИстина();

	Ожидаем.Что(Соответствие).ИмеетДлину(4);
	Ожидаем.Что(Соответствие.Получить(1)).Не_().ЭтоНеопределено();
	Ожидаем.Что(Соответствие.Получить(2)).Не_().ЭтоНеопределено();
	Ожидаем.Что(Соответствие.Получить(3)).Не_().ЭтоНеопределено();
	Ожидаем.Что(Соответствие.Получить(4)).Не_().ЭтоНеопределено();

КонецПроцедуры

&Тест
Процедура НеДобавить() Экспорт
	
	// Дано
	
	Соответствие = Новый Соответствие;
	Соответствие.Вставить(1, Истина);
	Соответствие.Вставить(2, Истина);
	Соответствие.Вставить(3, Истина);

	МножествоСоответствие = Новый МножествоСоответствие;

	Рефлектор.УстановитьСвойство(
		МножествоСоответствие,
		"Соответствие",
		Соответствие
	);

	// Когда

	Результат = МножествоСоответствие.Добавить(2);

	// Тогда
	
	Ожидаем.Что(Результат).ЭтоЛожь();

	Ожидаем.Что(Соответствие).ИмеетДлину(3);
	Ожидаем.Что(Соответствие.Получить(1)).Не_().ЭтоНеопределено();
	Ожидаем.Что(Соответствие.Получить(2)).Не_().ЭтоНеопределено();
	Ожидаем.Что(Соответствие.Получить(3)).Не_().ЭтоНеопределено();

КонецПроцедуры

&Тест
Процедура ДобавитьВсе() Экспорт
	
	// Дано
	
	МножествоСоответствие = Новый МножествоСоответствие;

	// Когда

	Результат = МножествоСоответствие.ДобавитьВсе(
		МножествоФикстура()
	);

	// Тогда

	Ожидаем.Что(Результат).ЭтоИстина();

	Соответствие = Рефлектор.ПолучитьСвойство(МножествоСоответствие, "Соответствие");

	Ожидаем.Что(Соответствие).ИмеетДлину(3);
	Ожидаем.Что(Соответствие.Получить(1)).Не_().ЭтоНеопределено();
	Ожидаем.Что(Соответствие.Получить(2)).Не_().ЭтоНеопределено();
	Ожидаем.Что(Соответствие.Получить(3)).Не_().ЭтоНеопределено();

КонецПроцедуры

&Тест
Процедура НеДобавитьВсе() Экспорт
	
	// Дано
	
	Соответствие = Новый Соответствие;
	Соответствие.Вставить(1, Истина);
	Соответствие.Вставить(2, Истина);
	Соответствие.Вставить(3, Истина);

	МножествоСоответствие = Новый МножествоСоответствие;

	Рефлектор.УстановитьСвойство(
		МножествоСоответствие,
		"Соответствие",
		Соответствие
	);

	// Когда

	Результат = МножествоСоответствие.ДобавитьВсе(
		МножествоФикстура()
	);

	// Тогда
	
	Ожидаем.Что(Результат).ЭтоЛожь();
	
	Ожидаем.Что(Соответствие).ИмеетДлину(3);
	Ожидаем.Что(Соответствие.Получить(1)).Не_().ЭтоНеопределено();
	Ожидаем.Что(Соответствие.Получить(2)).Не_().ЭтоНеопределено();
	Ожидаем.Что(Соответствие.Получить(3)).Не_().ЭтоНеопределено();

КонецПроцедуры

&Тест
Процедура Очистить() Экспорт
	
	// Дано
	
	Соответствие = Новый Соответствие;
	Соответствие.Вставить(1, Истина);
	Соответствие.Вставить(2, Истина);
	Соответствие.Вставить(3, Истина);

	МножествоСоответствие = Новый МножествоСоответствие;

	Рефлектор.УстановитьСвойство(
		МножествоСоответствие,
		"Соответствие",
		Соответствие
	);

	// Когда

	МножествоСоответствие.Очистить();

	// Тогда
	
	Ожидаем.Что(Соответствие).ИмеетДлину(0);

КонецПроцедуры

&Тест
Процедура Удалить() Экспорт
	
	// Дано
	
	Соответствие = Новый Соответствие;
	Соответствие.Вставить(1, Истина);
	Соответствие.Вставить(2, Истина);
	Соответствие.Вставить(3, Истина);

	МножествоСоответствие = Новый МножествоСоответствие;

	Рефлектор.УстановитьСвойство(
		МножествоСоответствие,
		"Соответствие",
		Соответствие
	);

	// Когда

	Результат = МножествоСоответствие.Удалить(2);

	// Тогда
	
	Ожидаем.Что(Результат).ЭтоИстина();

	Ожидаем.Что(Соответствие).ИмеетДлину(2);
	Ожидаем.Что(Соответствие.Получить(1)).Не_().ЭтоНеопределено();
	Ожидаем.Что(Соответствие.Получить(2)).ЭтоНеопределено();
	Ожидаем.Что(Соответствие.Получить(3)).Не_().ЭтоНеопределено();

КонецПроцедуры

&Тест
Процедура НеУдалить() Экспорт
	
	// Дано
	
	Соответствие = Новый Соответствие;
	Соответствие.Вставить(1, Истина);
	Соответствие.Вставить(2, Истина);
	Соответствие.Вставить(3, Истина);

	МножествоСоответствие = Новый МножествоСоответствие;

	Рефлектор.УстановитьСвойство(
		МножествоСоответствие,
		"Соответствие",
		Соответствие
	);

	// Когда

	Результат = МножествоСоответствие.Удалить(4);

	// Тогда
	
	Ожидаем.Что(Результат).ЭтоЛожь();

	Ожидаем.Что(Соответствие).ИмеетДлину(3);
	Ожидаем.Что(Соответствие.Получить(1)).Не_().ЭтоНеопределено();
	Ожидаем.Что(Соответствие.Получить(2)).Не_().ЭтоНеопределено();
	Ожидаем.Что(Соответствие.Получить(3)).Не_().ЭтоНеопределено();

КонецПроцедуры

&Тест
Процедура УдалитьВсе() Экспорт
	
	// Дано
	
	Соответствие = Новый Соответствие;
	Соответствие.Вставить(1, Истина);
	Соответствие.Вставить(2, Истина);
	Соответствие.Вставить(4, Истина);

	МножествоСоответствие = Новый МножествоСоответствие;

	Рефлектор.УстановитьСвойство(
		МножествоСоответствие,
		"Соответствие",
		Соответствие
	);

	// Когда

	Результат = МножествоСоответствие.УдалитьВсе(МножествоФикстура());

	// Тогда
	
	Ожидаем.Что(Результат).ЭтоИстина();
	
	Ожидаем.Что(Соответствие).ИмеетДлину(1);
	Ожидаем.Что(Соответствие.Получить(4)).Не_().ЭтоНеопределено();

КонецПроцедуры

&Тест
Процедура НеУдалитьВсе() Экспорт
	
	// Дано
	
	Соответствие = Новый Соответствие;
	Соответствие.Вставить(4, Истина);
	Соответствие.Вставить(5, Истина);
	Соответствие.Вставить(6, Истина);

	МножествоСоответствие = Новый МножествоСоответствие;

	Рефлектор.УстановитьСвойство(
		МножествоСоответствие,
		"Соответствие",
		Соответствие
	);

	// Когда

	Результат = МножествоСоответствие.УдалитьВсе(МножествоФикстура());

	// Тогда
	
	Ожидаем.Что(Результат).ЭтоЛожь();

	Ожидаем.Что(Соответствие).ИмеетДлину(3);
	Ожидаем.Что(Соответствие.Получить(4)).Не_().ЭтоНеопределено();
	Ожидаем.Что(Соответствие.Получить(5)).Не_().ЭтоНеопределено();
	Ожидаем.Что(Соответствие.Получить(6)).Не_().ЭтоНеопределено();

КонецПроцедуры

&Тест
Процедура УдалитьЕсли() Экспорт
	
	// Дано
	
	Соответствие = Новый Соответствие;
	Соответствие.Вставить(1, Истина);
	Соответствие.Вставить(2, Истина);
	Соответствие.Вставить(3, Истина);

	МножествоСоответствие = Новый МножествоСоответствие;

	Рефлектор.УстановитьСвойство(
		МножествоСоответствие,
		"Соответствие",
		Соответствие
	);

	// Когда

	Результат = МножествоСоответствие.УдалитьЕсли(
		Новый Действие(ЭтотОбъект, "БольшеИлиРавноДвум")
	);

	// Тогда
	
	Ожидаем.Что(Результат).ЭтоИстина();

	Ожидаем.Что(Соответствие).ИмеетДлину(1);
	Ожидаем.Что(Соответствие.Получить(1)).Не_().ЭтоНеопределено();

КонецПроцедуры

&Тест
Процедура НеУдалитьЕсли() Экспорт
	
	// Дано
	
	Соответствие = Новый Соответствие;
	Соответствие.Вставить(0, Истина);
	Соответствие.Вставить(1, Истина);

	МножествоСоответствие = Новый МножествоСоответствие;

	Рефлектор.УстановитьСвойство(
		МножествоСоответствие,
		"Соответствие",
		Соответствие
	);

	// Когда

	Результат = МножествоСоответствие.УдалитьЕсли(
		Новый Действие(ЭтотОбъект, "БольшеИлиРавноДвум")
	);

	// Тогда
	
	Ожидаем.Что(Результат).ЭтоЛожь();

	Ожидаем.Что(Соответствие).ИмеетДлину(2);
	Ожидаем.Что(Соответствие.Получить(0)).Не_().ЭтоНеопределено();
	Ожидаем.Что(Соответствие.Получить(1)).Не_().ЭтоНеопределено();

КонецПроцедуры

&Тест
Процедура УдалитьЕслиЛямбда() Экспорт
	
	// Дано
	
	Соответствие = Новый Соответствие;
	Соответствие.Вставить(1, Истина);
	Соответствие.Вставить(2, Истина);
	Соответствие.Вставить(3, Истина);

	МножествоСоответствие = Новый МножествоСоответствие;

	Рефлектор.УстановитьСвойство(
		МножествоСоответствие,
		"Соответствие",
		Соответствие
	);

	// Когда

	Результат = МножествоСоответствие.УдалитьЕсли(
		"Элемент -> Элемент >= 2"
	);

	// Тогда
	
	Ожидаем.Что(Результат).ЭтоИстина();

	Ожидаем.Что(Соответствие).ИмеетДлину(1);
	Ожидаем.Что(Соответствие.Получить(1)).Не_().ЭтоНеопределено();

КонецПроцедуры

&Тест
Процедура СохранитьВсе() Экспорт
	
	// Дано
	
	Соответствие = Новый Соответствие;
	Соответствие.Вставить(0, Истина);
	Соответствие.Вставить(1, Истина);

	МножествоСоответствие = Новый МножествоСоответствие;

	Рефлектор.УстановитьСвойство(
		МножествоСоответствие,
		"Соответствие",
		Соответствие
	);

	// Когда

	Результат = МножествоСоответствие.СохранитьВсе(
		МножествоФикстура()
	);

	// Тогда
	
	Ожидаем.Что(Результат).ЭтоИстина();

	Ожидаем.Что(Соответствие).ИмеетДлину(1);
	Ожидаем.Что(Соответствие.Получить(1)).Не_().ЭтоНеопределено();

КонецПроцедуры

&Тест
Процедура НеСохранитьВсе() Экспорт
	
	// Дано
	
	Соответствие = Новый Соответствие;
	Соответствие.Вставить(1, Истина);
	Соответствие.Вставить(2, Истина);

	МножествоСоответствие = Новый МножествоСоответствие;

	Рефлектор.УстановитьСвойство(
		МножествоСоответствие,
		"Соответствие",
		Соответствие
	);

	// Когда

	Результат = МножествоСоответствие.СохранитьВсе(
		МножествоФикстура()
	);

	// Тогда
	
	Ожидаем.Что(Результат).ЭтоЛожь();

	Ожидаем.Что(Соответствие).ИмеетДлину(2);
	Ожидаем.Что(Соответствие.Получить(1)).Не_().ЭтоНеопределено();
	Ожидаем.Что(Соответствие.Получить(2)).Не_().ЭтоНеопределено();

КонецПроцедуры

&Тест
Процедура ВМассив() Экспорт
	
	// Дано

	Соответствие = Новый Соответствие;
	Соответствие.Вставить(1, Истина);
	Соответствие.Вставить(2, Истина);

	МножествоСоответствие = Новый МножествоСоответствие;

	Рефлектор.УстановитьСвойство(
		МножествоСоответствие,
		"Соответствие",
		Соответствие
	);

	// Когда

	Результат = МножествоСоответствие.ВМассив();

	// Тогда
	
	Ожидаем.Что(Результат)
		.ИмеетТип("Массив")
		.ИмеетДлину(2)
		.Содержит(1)
		.Содержит(2);

КонецПроцедуры

&Тест
Процедура МутацияИнвалидируетИтераторы() Экспорт
	
	// Дано

	Соответствие = Новый Соответствие;
	Соответствие.Вставить(1, Истина);
	Соответствие.Вставить(2, Истина);

	МножествоСоответствие = Новый МножествоСоответствие;

	Рефлектор.УстановитьСвойство(
		МножествоСоответствие,
		"Соответствие",
		Соответствие
	);
	
	Итератор = МножествоСоответствие.Итератор();

	// Когда

	МножествоСоответствие.Добавить(4);

	// Тогда

	Ожидаем.Что(Итератор)
		.Метод("Следующий")
		.ВыбрасываетИсключение("Коллекция была изменена в процессе обхода");

КонецПроцедуры

Функция БольшеИлиРавноДвум(Элемент) Экспорт
	Два = 2;
	Возврат Элемент >= Два;
КонецФункции

Процедура ДействиеДляКаждого(Элемент) Экспорт

	ДляКаждогоВыполнилсяРаз = ДляКаждогоВыполнилсяРаз + 1;

	Ожидаем.Что(Элемент).Равно(ДляКаждогоВыполнилсяРаз);

КонецПроцедуры

Функция МножествоФикстура()
	
	Если МножествоФикстура <> Неопределено Тогда
		Возврат МножествоФикстура;
	КонецЕсли;

	Коллекция = Новый Массив;
	Коллекция.Добавить(1);
	Коллекция.Добавить(2);
	Коллекция.Добавить(3);

	ПолеМассив = Новый Поле("Массив")
		.Публичное()
		.ЗначениеПоУмолчанию(Коллекция);

	МетодИтератор = Новый Метод("Итератор")
		.Публичный()
		.ТелоМетода("Возврат Новый ИтераторМассив(Массив, ЭтотОбъект);");

	МетодСодержит = Новый Метод("Содержит")
		.Публичный()
		.Параметр(Новый ПараметрМетода("Элемент"))
		.ТелоМетода("Возврат Массив.Найти(Элемент) <> Неопределено;");

	МножествоФикстура = Новый ПостроительДекоратора()
		.Поле(ПолеМассив)
		.Метод(МетодИтератор)
		.Метод(МетодСодержит)
		.Построить();

	Возврат МножествоФикстура;

КонецФункции

Рефлектор = Новый Рефлектор;
