//+------------------------------------------------------------------+
//|                                                  TypeCasting.mq5 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//---

   char var_char = 100;
   int var_int = var_char;
   
   var_char = (char) var_int;
   
   Print(" var_char => var_int " ,var_int);
   
   Print(" var_int => var_char ", var_char);
   
   double var_double = var_int;
   
   Print(" var_int => var_double ", var_double); 
   
   var_int = (int) var_double;
   
   Print(" var_double => var_int ", var_double);
   
   double resultado =  1.0 / 2.0; 
   
   Print("Resultado : ", resultado);
   
   string var_string = (string) resultado;
   
   Print("Resultado : ", var_string);
   
   //var_string = 2;
   
   string teste = (string) ((double) var_string + 1);
   
   Print("teste : ", teste);
   
   
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
