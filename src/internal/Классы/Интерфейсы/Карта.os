// BSLLS:FunctionShouldHaveReturn-off

// Удаляет все элементы карты
//
Процедура Очистить() Экспорт
КонецПроцедуры

// Вставляет в карту переданную пару ключ и значение
//
// Параметры:
//   Ключ - Произвольный - Вставляемый ключ
//   Значение - Произвольный - Вставляемое значение
//
//  Возвращаемое значение:
//   Опциональный<Произвольный> - Значение, ранее было связанное с ключом
//
Функция Вставить(Ключ, Значение) Экспорт
КонецФункции

// Вставляет все значения из переданной карты
//
// Параметры:
//   Карта - Карта - Карта, значения из которой вставляются
//
Процедура ВставитьВсе(Карта) Экспорт
КонецПроцедуры

// Вставляет в карту переданную пару ключ и значение, если карта не содержит переданного ключа 
//
// Параметры:
//   Ключ - Произвольный - Вставляемый ключ
//   Значение - Произвольный - Вставляемое значение
//
//  Возвращаемое значение:
//   Опциональный<Произвольный> - Значение, связанное с ключом, пустой если карта не содержала ключа
//
Функция ВставитьЕслиОтсутствует(Ключ, Значение) Экспорт
КонецФункции

// Вычисляет значение для переданного ключа через функцию переназначения, если функция вернёт значение
//  то оно будет вставлено по указанному ключу, если функция вернёт Неопределено, то из карты будет удалён
//  переданный ключ, если ранее карта его содержала
//
// Параметры:
//   Ключ - Произвольный - Ключ, для которого вычисляется значение
//   ФункцияПереназначения - Действие - Делегат на функцию с двумя параметрами, в которую передаются ключ
//    и Опциональный от текущего значения ключа (пустой если ключа нет)
//                         - Строка - Лямбда выражение с двумя параметрами в которую будут переданы ключ
//    и Опциональный от текущего значения ключа (пустой если ключа нет)
//   Контекст - Структура - Контекст добавляемый в лямбда выражение, значения будут доступны по обращению
//    к ключу как к переменной.
//    При передачи действия во втором параметре, этот параметр игнорируется
//            - Сценарий - Экземпляр объекта, который будет захвачен в лямбда выражение, в лямбда выражении
//    будет доступен контекст (публичные и приватные поля, публичные методы) объекта.
//    При передачи действия во втором параметре, этот параметр игнорируется
//
// Пример:
//    Карта.ВычислитьБезусловно("Ключ", "(Ключ, Значение) -> ?(Значение.Пустой(), Истина, Ложь)")
//
//    Карта.ВычислитьБезусловно(
//        "Ключ",
//        "(Ключ, Значение) -> ?(Значение.Пустой() И ВернутьИстину, Истина, Ложь)",
//        Новый Структура("ВернутьИстину", Истина)
//    );
//
//  Возвращаемое значение:
//   Опциональный<Произвольный> - Новое значение ключа
//
Функция ВычислитьБезусловно(Ключ, ФункцияПереназначения, Контекст) Экспорт
КонецФункции

// Вычисляет значение для переданного ключа, если текущая карта не содержит переданного ключа,
//  через функцию назначения, функция будет вызвана только если карта не содержит ключа,
//  если функция вернёт значение, оно будет вставлено в карту по указанному ключу,
//  если функция вернёт Неопределенно, то значение вставлено не будет
//
// Параметры:
//   Ключ - Произвольный - Ключ, для которого вычисляется значение
//   ФункцияНазначения - Действие - Делегат на функцию с одним параметром, в которую передаётся переданный ключ
//                     - Строка - Лямбда выражение с одним параметром в который будет передан переданный ключ
//   Контекст - Структура - Контекст добавляемый в лямбда выражение, значения будут доступны по обращению
//    к ключу как к переменной.
//    При передачи действия во втором параметре, этот параметр игнорируется
//            - Сценарий - Экземпляр объекта, который будет захвачен в лямбда выражение, в лямбда выражении
//    будет доступен контекст (публичные и приватные поля, публичные методы) объекта.
//    При передачи действия во втором параметре, этот параметр игнорируется
//
// Пример:
//    Карта.ВычислитьЕслиОтсутствует("Ключ", "(Ключ) -> СтрДлина(Ключ)")
//
//    Карта.ВычислитьЕслиОтсутствует("Ключ", "(Ключ) -> СтрДлина(Ключ) + Соль", Новый Структура("Соль", 123))
//
//  Возвращаемое значение:
//   Опциональный<Произвольный> - Новое значение ключа если оно было вычислено, или текущее значение ключа
//    если карта уже содержала переданный ключ
//
Функция ВычислитьЕслиОтсутствует(Ключ, ФункцияНазначения, Контекст) Экспорт
КонецФункции

// Вычисляет значение для переданного ключа, если текущая карта содержит переданный ключ,
//  через функцию переназначения, функция будет вызвана только если карта содержит ключ,
//  если функция вернёт значение, оно будет вставлено в карту по указанному ключу,
//  если функция вернёт Неопределенно, то ключ будет удалён из карты
//
// Параметры:
//   Ключ - Произвольный - Ключ, для которого вычисляется значение
//   ФункцияПереназначения - Действие - Делегат на функцию с двумя параметрами, в которую передаются ключ
//    и текущее значение ключа
//                         - Строка - Лямбда выражение с двумя параметрами, в которые передаются ключ и текущее
//    значение ключа
//   Контекст - Структура - Контекст добавляемый в лямбда выражение, значения будут доступны по обращению
//    к ключу как к переменной.
//    При передачи действия во втором параметре, этот параметр игнорируется
//            - Сценарий - Экземпляр объекта, который будет захвачен в лямбда выражение, в лямбда выражении
//    будет доступен контекст (публичные и приватные поля, публичные методы) объекта.
//    При передачи действия во втором параметре, этот параметр игнорируется
//
// Пример:
//    Карта.ВычислитьЕслиПрисутствует("Ключ", "(Ключ, Значение) -> {
//        |   Если Ключ = ""Ключ"" Тогда
//        |       Возврат СтрДлина(Значение.Получить());
//        |   Иначе
//        |       Возврат Неопределенно;
//        |   КонецЕсли;
//        |}"
//    );
//
//    Карта.ВычислитьЕслиПрисутствует("Ключ", "(Ключ, Значение) -> {
//        |   Если Ключ = ""Ключ"" Тогда
//        |       Возврат СтрДлина(Значение.Получить()) + Соль;
//        |   Иначе
//        |       Возврат Соль;
//        |   КонецЕсли;
//        |}",
//        Новый Структура("Соль", 123);
//    );
//
//  Возвращаемое значение:
//   Опциональный<Произвольный> - Новое значение ключа
//
Функция ВычислитьЕслиПрисутствует(Ключ, ФункцияПереназначения, Контекст) Экспорт
КонецФункции

// Объединяет текущее и переданное значение по указанному ключу через функцию переназначения,
//  функция будет вызвана только если существует текущее значение ключа, в ином случае будет вставлено значение
//  если функция вернёт значение, оно будет вставлено в карту по указанному ключу,
//  если функция вернёт Неопределенно, то ключ будет удалён из карты
//
// Параметры:
//   Ключ - Произвольный - Ключ, значения для которого требуется объединить
//   Значение - Произвольный - Новое значение ключа
//   ФункцияПереназначения - Действие - Делегат на функцию с двумя параметрами в которые передаются
//    существующее и новое значение ключа
//                         - Строка - Лямбда выражение с двумя параметрами в которые передаются
//    существующее и новое значение ключа
//   Контекст - Структура - Контекст добавляемый в лямбда выражение, значения будут доступны по обращению
//    к ключу как к переменной.
//    При передачи действия в третьем параметре, этот параметр игнорируется
//            - Сценарий - Экземпляр объекта, который будет захвачен в лямбда выражение, в лямбда выражении
//    будет доступен контекст (публичные и приватные поля, публичные методы) объекта.
//    При передачи действия в третьем параметре, этот параметр игнорируется
//
// Пример:
//    Карта.Слить("Ключ", 4, "(СуществующееЗначение, НовоеЗначение) ->
//        | Возврат ?(НовоеЗначение > СуществующееЗначение,
//        |     НовоеЗначение,
//        |     СуществующееЗначение
//        | );"
//    );
//
//    Карта.Слить("Ключ", 4, "(СуществующееЗначение, НовоеЗначение) ->
//        | Возврат ?(НовоеЗначение > СуществующееЗначение,
//        |     НовоеЗначение,
//        |     СуществующееЗначение
//        | ) + Соль;",
//        Новый Структура("Соль", 123);
//    );
//
//  Возвращаемое значение:
//   Опциональный<Произвольный> - Новое значение ключа
//
Функция Слить(Ключ, Значение, ФункцияПереназначения, Контекст) Экспорт
КонецФункции

// Заменяет значение по переданному ключу, если ключа в карте нет, то замена не происходит
//
// Параметры:
//   Ключ - Произвольный - Ключ, значение которого требуется заменить
//   Значение - Произвольный - Новое значение ключа
//
//  Возвращаемое значение:
//   Опциональный<Произвольный> - Прошлое значение ключа, или пустой, если ключа не было
//
Функция Заменить(Ключ, Значение) Экспорт
КонецФункции

// Заменяет значение по переданному ключу с проверкой текущего значения,
//  если ключа в карте нет, то замена не происходит
//
// Параметры:
//   Ключ - Произвольный - Ключ, значение которого требуется заменить
//   ПрошлоеЗначение - Произвольный - Значение, которое должно быть связано с ключом для замены
//   Значение - Произвольный - Новое значение ключа
//
//  Возвращаемое значение:
//   Булево - Истина, если замена была произведена
//
Функция ЗаменитьЕслиЗначение(Ключ, ПрошлоеЗначение, Значение) Экспорт
КонецФункции

// Заменяет значение для всех ключей карты, через функцию переназначения
//
// Параметры:
//   ФункцияПереназначения - Действие - Делегат на функцию с двумя параметрами, в которую
//    передаются ключ и значение ключа
//                         - Строка - Лямбда выражение с двумя параметрами, в которые передаются
//    ключ и значение ключа
//   Контекст - Структура - Контекст добавляемый в лямбда выражение, значения будут доступны по обращению
//    к ключу как к переменной.
//    При передачи действия в первом параметре, этот параметр игнорируется
//            - Сценарий - Экземпляр объекта, который будет захвачен в лямбда выражение, в лямбда выражении
//    будет доступен контекст (публичные и приватные поля, публичные методы) объекта.
//    При передачи действия в первом параметре, этот параметр игнорируется
//
// Пример:
//    Карта.ЗаменитьВсе("(Ключ, Значение) -> Значение + 1")
//
//    Карта.ЗаменитьВсе("(Ключ, Значение) -> Значение + Соль", Новый Структура("Соль", 123));
//
Процедура ЗаменитьВсе(ФункцияПереназначения, Контекст) Экспорт
КонецПроцедуры

// Удаляет переданный ключ из карты
//
// Параметры:
//   Ключ - Произвольный - Удаляемый ключ
//
//  Возвращаемое значение:
//   Опциональный<Произвольный> - Значение, ранее было связанное с ключом
//
Функция Удалить(Ключ) Экспорт
КонецФункции

&Интерфейс
&Наследует("ЧитаемаяКарта")
Процедура ПриСозданииОбъекта()
	ВызватьИсключение "Нельзя создать экземпляр интерфейса";
КонецПроцедуры
