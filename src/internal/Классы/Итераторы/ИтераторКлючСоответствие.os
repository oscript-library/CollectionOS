#Использовать lambdas

Перем ВнутреннийИтератор; // Ссылка на итератор соответствия

Функция ЕстьСледующий() Экспорт
	Возврат ВнутреннийИтератор.ЕстьСледующий();
КонецФункции

Функция Следующий() Экспорт
	Возврат ВнутреннийИтератор.Следующий().Ключ;
КонецФункции

Процедура Удалить() Экспорт
	ВнутреннийИтератор.Удалить();
КонецПроцедуры

Процедура ДляКаждогоОставшегося(Знач Действие) Экспорт
	
	Если ТипЗнч(Действие) = Тип("Строка") Тогда

		Действие = Лямбда.Выражение(Действие)
			.Интерфейс(ФункциональныеИнтерфейсы.УниПроцедура())
			.ВДействие();

	КонецЕсли;

	Пока ЕстьСледующий() Цикл
		Действие.Выполнить(Следующий());
	КонецЦикла;

КонецПроцедуры

&Реализует("Итератор")
Процедура ПриСозданииОбъекта(Соответствие, Источник)
	ВнутреннийИтератор = Новый ИтераторСоответствие(Соответствие, Источник);
КонецПроцедуры
