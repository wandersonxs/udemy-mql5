//+------------------------------------------------------------------+
//|                                         OperacoesAritmeticas.mq5 |
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

   // Soma  +   
   Print("Soma: ", 10 + 15);
   Print("Subtração: ", 10 - 15);
   Print("Divisão: ", 100 / 2);
   Print("Multiplicação: ", 10 * 2);
   Print("Resto de uma divisão: ", 10 % 3);
   
   int var = 10;
   Print("var: ", var--);
   
   int var2 = 10;
   var2 = var2 + 1;   
   Print("var: ", var2);
  
   
   
   
   
   
   
    


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
