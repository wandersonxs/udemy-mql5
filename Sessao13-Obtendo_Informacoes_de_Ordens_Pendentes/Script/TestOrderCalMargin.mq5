//+------------------------------------------------------------------+
//|                                           TestOrderCalMargin.mq5 |
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
      double margem;
      
      bool resultado = OrderCalcMargin(ORDER_TYPE_BUY,_Symbol, 0.01, SymbolInfoDouble(_Symbol,SYMBOL_BID),margem);

      if(resultado){
         Print("Margem: ", margem);
      }else
      {
         int error = GetLastError();
         
         Print("Error codigo: ", error);
      }
      
  }
//+------------------------------------------------------------------+
