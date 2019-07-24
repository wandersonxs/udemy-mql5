//+------------------------------------------------------------------+
//|                                               TestSymbolInfo.mq5 |
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

      //SymbolInfoInteger
      Print("SYMBOL_CHART_MODE"," = ",SymbolInfoInteger(_Symbol,SYMBOL_CHART_MODE));
      Print("SYMBOL_DIGITS"," = ",SymbolInfoInteger(_Symbol,SYMBOL_DIGITS));
      Print("SYMBOL_TIME"," = ", (datetime) SymbolInfoInteger(_Symbol,SYMBOL_TIME));
      Print("SYMBOL_SPREAD"," = ",SymbolInfoInteger(_Symbol,SYMBOL_SPREAD));
      Print("SYMBOL_TRADE_MODE"," = ",SymbolInfoInteger(_Symbol,SYMBOL_TRADE_MODE));

      //SymbolInfoDouble
      Print("SYMBOL_BID"," = ",SymbolInfoDouble(_Symbol,SYMBOL_BID));
      Print("SYMBOL_BIDHIGH"," = ",SymbolInfoDouble(_Symbol,SYMBOL_BIDHIGH));
      Print("SYMBOL_ASK"," = ",SymbolInfoDouble(_Symbol,SYMBOL_ASK));
      Print("SYMBOL_ASKHIGH"," = ",SymbolInfoDouble(_Symbol,SYMBOL_ASKHIGH));
      Print("SYMBOL_LAST"," = ",SymbolInfoDouble(_Symbol,SYMBOL_LAST));
      Print("SYMBOL_POINT"," = ",SymbolInfoDouble(_Symbol,SYMBOL_POINT));
      Print("SYMBOL_VOLUME_MAX"," = ",SymbolInfoDouble(_Symbol,SYMBOL_VOLUME_MAX));
      Print("SYMBOL_VOLUME_MIN"," = ",SymbolInfoDouble(_Symbol,SYMBOL_VOLUME_MIN));
  
      //SymbolInfoString
      Print("SYMBOL_CURRENCY_BASE"," = ",SymbolInfoString(_Symbol,SYMBOL_CURRENCY_BASE));
      Print("SYMBOL_CURRENCY_PROFIT"," = ",SymbolInfoString(_Symbol,SYMBOL_CURRENCY_PROFIT));
      Print("SYMBOL_DESCRIPTION"," = ",SymbolInfoString(_Symbol,SYMBOL_DESCRIPTION));
   
   
  }
//+------------------------------------------------------------------+
