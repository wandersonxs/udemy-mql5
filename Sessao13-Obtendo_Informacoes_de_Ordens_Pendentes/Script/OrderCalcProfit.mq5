//+------------------------------------------------------------------+
//|                                              OrderCalcProfit.mq5 |
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

      double profit_value;
      
      bool resultado = OrderCalcProfit(ORDER_TYPE_BUY,_Symbol, 0.01,
      SymbolInfoDouble(_Symbol,SYMBOL_BID),SymbolInfoDouble(_Symbol,SYMBOL_ASK) + (10 *_Point), profit_value);

      if(resultado)
      {
         Print("ENTRADA: ", SymbolInfoDouble(_Symbol,SYMBOL_BID) , 
         "SAIDA : ",  SymbolInfoDouble(_Symbol,SYMBOL_ASK) + (10 *_Point), 
         " LUCRO CALCULADO = ", profit_value);
      }else
      {
         int error = GetLastError();
         Print("ERROR CÓDIGO : ", error);
      }
   
  }
//+------------------------------------------------------------------+
