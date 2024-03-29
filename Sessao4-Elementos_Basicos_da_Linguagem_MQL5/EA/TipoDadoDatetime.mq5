//+------------------------------------------------------------------+
//|                                             TipoDadoDatetime.mq5 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"

datetime data = D'2019.05.23';
datetime dataHora = D'2019.05.23 17:23:55';

datetime dataHoraCompilacao = __DATETIME__;

datetime datalocal = TimeLocal();

//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//---
   Print("Data Atual :", data);
   Print("Data Hora Atual :", dataHora);
   Print("Data Hora Compilacao :", dataHoraCompilacao);
//---
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
//---
      datalocal = TimeLocal();
      Print("Hora Local é ", datalocal);
  }
//+------------------------------------------------------------------+
