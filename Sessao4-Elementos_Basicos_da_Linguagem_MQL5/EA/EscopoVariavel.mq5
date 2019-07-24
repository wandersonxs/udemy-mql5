//+------------------------------------------------------------------+
//|                                               EscopoVariavel.mq5 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"

int var_global = 1000;


//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {

   funcaoTeste();
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

   int minha_variavel = 50;
   Print(minha_variavel);
  }

void funcaoTeste(){
   int minha_variavel = 100;
   Print(minha_variavel);
   
   if( minha_variavel == 100){
      string imprime = "Variavel Bloco";
      Print(imprime);
   }
   
}