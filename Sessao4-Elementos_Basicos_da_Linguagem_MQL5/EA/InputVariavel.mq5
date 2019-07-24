//+------------------------------------------------------------------+
//|                                                InputVariavel.mq5 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"

input int MVPeriodo = 10;
input ENUM_MA_METHOD MA_metodo = MODE_SMA;
input ENUM_CHART_MODE CHART_mode = CHART_CANDLES;

//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {

   
   

   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---
   
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
  
      Print(MVPeriodo);
      Print(CHART_mode);
   
  }
//+------------------------------------------------------------------+
