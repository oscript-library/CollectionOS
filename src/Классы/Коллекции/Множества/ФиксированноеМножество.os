#Использовать "../../../internal"

Перем ВнутреннееМножество; // Ссылка на внутреннее множество

Функция Итератор() Экспорт

	Возврат Новый ФиксированныйИтератор(
		ВнутреннееМножество.Итератор()
	);

КонецФункции

Процедура ДляКаждого(Алгоритм) Экспорт
	ВнутреннееМножество.ДляКаждого(Алгоритм);
КонецПроцедуры

Функция Содержит(Элемент) Экспорт
	Возврат ВнутреннееМножество.Содержит(Элемент);
КонецФункции

Функция СодержитВсе(Коллекция) Экспорт
	Возврат ВнутреннееМножество.СодержитВсе(Коллекция);
КонецФункции

Функция Пусто() Экспорт
	Возврат ВнутреннееМножество.Пусто();
КонецФункции

Функция ПроцессорКоллекции() Экспорт
	Возврат ВнутреннееМножество.ПроцессорКоллекции();
КонецФункции

Функция Количество() Экспорт
	Возврат ВнутреннееМножество.Количество();
КонецФункции

Функция ВМассив() Экспорт
	Возврат ВнутреннееМножество.ВМассив();
КонецФункции

Процедура ОбработкаПолученияПредставления(Представление, СтандартнаяОбработка) // BSLLS:UnusedLocalMethod-off
	КоллекцииСлужебный.ОбработчикПолученияПредставленияКоллекции(ЭтотОбъект, Представление, СтандартнаяОбработка);
КонецПроцедуры

Функция ПолучитьИтератор() // BSLLS:UnusedLocalMethod-off
	Возврат Новый СлужебныйИтераторДляДвижка(Итератор());
КонецФункции

&Обходимое
&Реализует("ЧитаемоеМножество")
Процедура ПриСозданииОбъекта(Коллекция = Неопределено)

	Если Коллекция = Неопределено Тогда
		ВнутреннееМножество = Новый МножествоСоответствие();
	ИначеЕсли ТипЗнч(Коллекция) = Тип("Сценарий") Тогда
		ВнутреннееМножество = Новый МножествоСоответствие();
		ВнутреннееМножество.ДобавитьВсе(Коллекция);
	Иначе
		ВнутреннееМножество = Новый(ТипЗнч(Коллекция));
		ВнутреннееМножество.ДобавитьВсе(Коллекция);
	КонецЕсли;

КонецПроцедуры
