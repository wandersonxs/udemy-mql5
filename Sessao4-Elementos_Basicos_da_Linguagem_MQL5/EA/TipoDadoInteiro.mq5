//+------------------------------------------------------------------+
//|                                              TipoDadoInteiro.mq5 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"

char var_char=50;
char var_char_neg=-129;

int var_int=1000;
int var_int_neg=-30000;

long var_long=40000000;
long var_long_neg=-40000000;

uint var_uint=1000;
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//---
   Print("var_char ",var_char,"var_char_neg ",var_char_neg);
   Print("var_int ",var_int,"var_int_neg ",var_int_neg);
   Print("var_long ",var_long,"var_long_neg ",var_long_neg);
   Print("var_uint ",var_uint);
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

  }
//+------------------------------------------------------------------+
