//+------------------------------------------------------------------+
//|                                        FuncaoNormalizeDouble.mq5 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---

   double valor = 100.125456;
   
   Print("Valor = ", valor);
   
   Print("Valor NormalizeDouble= ", NormalizeDouble(valor,2));

   Print("Valor NormalizeDouble DIGITS= ", NormalizeDouble(valor,_Digits));
   
   
   
   
   
  }
//+------------------------------------------------------------------+
