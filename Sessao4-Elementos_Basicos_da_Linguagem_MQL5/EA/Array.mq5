//+------------------------------------------------------------------+
//|                                                        Array.mq5 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"

double preco[3] = { 100.00 , 200.00 , 300.00 };

double precoDinamico[];

//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//---
   ArrayResize(precoDinamico, 3);

   precoDinamico[0] = 500.00;
   precoDinamico[1] = 500.00;
   precoDinamico[2] = 500.00;
   
   ArrayResize(precoDinamico, 4);
   
   precoDinamico[3] = 700.00;
   
   ArrayResize(preco,5);
   
   
   Print("precoDinamico 0 = ", precoDinamico[0], "precoDinamico 1 ", precoDinamico[1], "precoDinamico 2 ", precoDinamico[2] );
   
   Print("precoDinamico 3 = ", precoDinamico[3]);
   
   Print("Indice 0 = ", preco[0], " Indice 1 = ", preco[1] , " Indice 2 = " , preco[2]);

   preco[0] = 10.00;
   preco[1] = 11.00;
   preco[2] = 12.00;


   Print("Indice 0 = ", preco[0], " Indice 1 = ", preco[1] , " Indice 2 = " , preco[2]);

   preco[0] = 50.00;

   Print("Indice 0 = ", preco[0], " Indice 1 = ", preco[1] , " Indice 2 = " , preco[2]);

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
