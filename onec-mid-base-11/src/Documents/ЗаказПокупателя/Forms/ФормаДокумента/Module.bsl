
#Область ОбработчикиСобытийФормы

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	// СтандартныеПодсистемы.ПодключаемыеКоманды
	ПодключаемыеКоманды.ПриСозданииНаСервере(ЭтотОбъект);
	// Конец СтандартныеПодсистемы.ПодключаемыеКоманды
	//	//{{Kusakina O.A. Создание команды согласованная скидка
	КомандаСкидка = Команды.Добавить("ПрименитьСкидку");
	КомандаСкидка.Заголовок = "Применить скидку";
	КомандаСкидка.Действие = "КомандаСкидкаНажатие"; 
	Кнопка = Элементы.Добавить("КнопкаСкидки", Тип("КнопкаФормы"), Элементы.ГруппаКолонкиШапки);
	Кнопка.ИмяКоманды = "ПрименитьСкидку";
	Кнопка.Вид = ВидКнопкиФормы.ОбычнаяКнопка;
	//Kusakina O.A.}
		//{{Kusakina O.A. Добавление контактного лица
	ДобавляемыеРеквизиты=Neto_ДобавлениеКонтактногоЛица.ДобавлениеКонтактногоЛицаВДокумент(Элементы);
	ИзменитьРеквизиты(ДобавляемыеРеквизиты);
	Neto_ДобавлениеКонтактногоЛица.NetoПолеФормы(Элементы);
	
		//{{Kusakina O.A.Добавление реквизита согласованная скидка на форму
    ДобавляемыеРеквизиты=Neto_ДобавлениеКонтактногоЛица.ДобавлениеСогласованнаяСкидка(Элементы);
	ИзменитьРеквизиты(ДобавляемыеРеквизиты);
	Neto_ДобавлениеКонтактногоЛица.NetoПолеФормыСогласованнаяСкидка(Элементы);
	//СогласованнаяCкидкаПриИзменении(Элементы);
	
КонецПроцедуры

&НаКлиенте
Процедура ПриОткрытии(Отказ)
	
    // СтандартныеПодсистемы.ПодключаемыеКоманды
    ПодключаемыеКомандыКлиент.НачатьОбновлениеКоманд(ЭтотОбъект);
    // Конец СтандартныеПодсистемы.ПодключаемыеКоманды
	
КонецПроцедуры

&НаСервере
Процедура ПриЧтенииНаСервере(ТекущийОбъект)
	
    // СтандартныеПодсистемы.ПодключаемыеКоманды
    ПодключаемыеКомандыКлиентСервер.ОбновитьКоманды(ЭтотОбъект, Объект);
    // Конец СтандартныеПодсистемы.ПодключаемыеКоманды
	
КонецПроцедуры

&НаКлиенте
Процедура ПослеЗаписи(ПараметрыЗаписи)
    ПодключаемыеКомандыКлиент.ПослеЗаписи(ЭтотОбъект, Объект, ПараметрыЗаписи);
КонецПроцедуры

#КонецОбласти

#Область ОбработчикиСобытийЭлементовТаблицыФормыТовары

&НаКлиенте
Процедура ТоварыКоличествоПриИзменении(Элемент)
	
	ТекущиеДанные = Элементы.Товары.ТекущиеДанные;
	
	РассчитатьСуммуСтроки(ТекущиеДанные);
	
КонецПроцедуры

&НаКлиенте
Процедура ТоварыЦенаПриИзменении(Элемент)
	
	ТекущиеДанные = Элементы.Товары.ТекущиеДанные;
	
	РассчитатьСуммуСтроки(ТекущиеДанные);
	
КонецПроцедуры

&НаКлиенте
Процедура ТоварыСкидкаПриИзменении(Элемент)
	
	ТекущиеДанные = Элементы.Товары.ТекущиеДанные;
	
	РассчитатьСуммуСтроки(ТекущиеДанные);
	
КонецПроцедуры

&НаКлиенте
Процедура ТоварыПриИзменении(Элемент)
	
	РассчитатьСуммуДокумента();
	
КонецПроцедуры

#КонецОбласти

#Область ОбработчикиСобытийЭлементовТаблицыФормыУслуги

&НаКлиенте
Процедура УслугиКоличествоПриИзменении(Элемент)
	
	ТекущиеДанные = Элементы.Услуги.ТекущиеДанные;
	
	РассчитатьСуммуСтроки(ТекущиеДанные);
	
КонецПроцедуры

&НаКлиенте
Процедура УслугиЦенаПриИзменении(Элемент)
	
	ТекущиеДанные = Элементы.Услуги.ТекущиеДанные;
	
	РассчитатьСуммуСтроки(ТекущиеДанные);
	
КонецПроцедуры

&НаКлиенте
Процедура УслугиСкидкаПриИзменении(Элемент)
		
	ТекущиеДанные = Элементы.Услуги.ТекущиеДанные;
	
	РассчитатьСуммуСтроки(ТекущиеДанные);

КонецПроцедуры

&НаКлиенте
Процедура УслугиПриИзменении(Элемент)
	
	РассчитатьСуммуДокумента();

КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

&НаКлиенте
Процедура РассчитатьСуммуСтроки(ТекущиеДанные)
	
	КоэффициентСкидки = 1 - ТекущиеДанные.Скидка / 100;
	ТекущиеДанные.Сумма = ТекущиеДанные.Цена * ТекущиеДанные.Количество * КоэффициентСкидки;
	
КонецПроцедуры

&НаКлиенте
Процедура РассчитатьСуммуДокумента()
	
	Объект.СуммаДокумента = Объект.Товары.Итог("Сумма") + Объект.Услуги.Итог("Сумма");
	
КонецПроцедуры

#Область ПодключаемыеКоманды

//{{Kusakina O.A. Команда согласованная скидка

#Область ОбработчикиКомандыФормы 

 
//{{Kusakina O.A. Команда согласованная скидка
&НаКлиенте
Процедура КомандаСкидкаНажатие(Команда)
	//{{Kusakina O.A. Команда согласованная скидка
	КомандаСкидкаНажатиеЦикл(); 
	РассчитатьСуммуДокумента();

КонецПроцедуры

&НаСервере
Процедура КомандаСкидкаНажатиеЦикл()  
	//{{Kusakina O.A. Команда согласованная скидка
	СписокНоменклатуры = Новый Массив;
	Для Каждого СтрТовара из Объект.Товары Цикл 
		Если  ЗначениеЗаполнено(СтрТовара.Номенклатура) И СписокНоменклатуры.Найти(СтрТовара.Номенклатура) = Неопределено Тогда 
			СписокНоменклатуры.Добавить(СтрТовара.Номенклатура);
		КонецЕсли;
		Если ЗначениеЗаполнено(Объект.Neto_СогласованнаяСкидка) > 0 Тогда  
			Коэф1 = (СтрТовара.Цена * СтрТовара.Количество*СтрТовара.Скидка/100);
			Коэф2 = ((СтрТовара.Цена * СтрТовара.Количество-Коэф1)*Объект.Neto_СогласованнаяСкидка/100);
			СтрТовара.Сумма = (СтрТовара.Цена * СтрТовара.Количество) - Коэф1-Коэф2;
			Сообщить(СтрШаблон("Применена скидка %1%%  на товар %2", Объект.Neto_СогласованнаяСкидка, СтрТовара.Номенклатура));
		Иначе
			Коэф1 = (СтрТовара.Цена * СтрТовара.Количество*СтрТовара.Скидка/100);
			СтрТовара.Сумма = СтрТовара.Цена * СтрТовара.Количество-Коэф1;
		КонецЕсли; 
		
	КонецЦикла; 
	Для Каждого СтрТовара из Объект.Услуги Цикл 
		Если  ЗначениеЗаполнено(СтрТовара.Номенклатура) И СписокНоменклатуры.Найти(СтрТовара.Номенклатура) = Неопределено Тогда 
			СписокНоменклатуры.Добавить(СтрТовара.Номенклатура);
		КонецЕсли;
		Если ЗначениеЗаполнено(Объект.Neto_СогласованнаяСкидка) > 0 Тогда  
			Коэф1 = (СтрТовара.Цена * СтрТовара.Количество*СтрТовара.Скидка/100);
			Коэф2 = ((СтрТовара.Цена * СтрТовара.Количество-Коэф1)*Объект.Neto_СогласованнаяСкидка/100);
			СтрТовара.Сумма = (СтрТовара.Цена * СтрТовара.Количество) - Коэф1 - Коэф2;
			Сообщить(СтрШаблон("Применена скидка %1%%  на услугу %2", Объект.Neto_СогласованнаяСкидка, СтрТовара.Номенклатура));
		Иначе 
			Коэф1 = (СтрТовара.Цена * СтрТовара.Количество*СтрТовара.Скидка/100);
			СтрТовара.Сумма = СтрТовара.Цена * СтрТовара.Количество-Коэф1;
		КонецЕсли; 
		
	КонецЦикла;
	//Kusakina O.A.}}
	КонецПроцедуры
//Kusakina O.A.}}
#КонецОбласти

// СтандартныеПодсистемы.ПодключаемыеКоманды
&НаКлиенте
Процедура Подключаемый_ВыполнитьКоманду(Команда)
    ПодключаемыеКомандыКлиент.НачатьВыполнениеКоманды(ЭтотОбъект, Команда, Объект);
КонецПроцедуры

&НаКлиенте
Процедура Подключаемый_ПродолжитьВыполнениеКомандыНаСервере(ПараметрыВыполнения, ДополнительныеПараметры) Экспорт
    ВыполнитьКомандуНаСервере(ПараметрыВыполнения);
КонецПроцедуры

&НаСервере
Процедура ВыполнитьКомандуНаСервере(ПараметрыВыполнения)
    ПодключаемыеКоманды.ВыполнитьКоманду(ЭтотОбъект, ПараметрыВыполнения, Объект);
КонецПроцедуры

&НаКлиенте
Процедура Подключаемый_ОбновитьКоманды()
    ПодключаемыеКомандыКлиентСервер.ОбновитьКоманды(ЭтотОбъект, Объект);
КонецПроцедуры
// Конец СтандартныеПодсистемы.ПодключаемыеКоманды

#КонецОбласти

#КонецОбласти
