
#Region ОбработчикиСобытийЭлементовФормы
&AtClient
Procedure ТоварыКоличествоOnChange(Item)
	CalculateAmount();
EndProcedure

&AtClient
Procedure ТоварыЦенаOnChange(Item)
	CalculateAmount();
EndProcedure

&AtClient
Procedure CalculateAmount()
	
	TableТовары			= Items["Товары"];
	CurrentTableData	= TableТовары["CurrentData"];
	
	CurrentTableData["Сумма"] = CurrentTableData["Цена"] * CurrentTableData["Количество"];
	
EndProcedure
#EndRegion