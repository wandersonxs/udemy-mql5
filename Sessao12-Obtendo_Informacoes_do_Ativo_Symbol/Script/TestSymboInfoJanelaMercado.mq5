//+------------------------------------------------------------------+
//|                                   TestSymboInfoJanelaMercado.mq5 |
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

   for(int i=0; i<SymbolsTotal(true); i++)
     {
      string symbol=SymbolName(i,true);
      
      Print("SYMBOL_DESCRIPTION"," = ",SymbolInfoString(symbol,SYMBOL_DESCRIPTION),
      "SYMBOL_ASK"," = ",SymbolInfoDouble(symbol,SYMBOL_ASK)
      
      );
     }

  }
//+------------------------------------------------------------------+
