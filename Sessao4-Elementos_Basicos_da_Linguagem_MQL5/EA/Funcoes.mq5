//+------------------------------------------------------------------+
//|                                                      Funcoes.mq5 |
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
      
   int resultado = somar(20,70);
   imprimir((string) resultado);
   
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {

   int resultado = somar(50);
   imprimir((string) resultado);
   
   
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
//---
   
  }
//+------------------------------------------------------------------+

// Faz a soma dos valores passados.
int somar(int var1, int var2 = 100){
   return var1 + var2;
}

// Imprimi valor
void imprimir(string resultado){
   Print("Resultado: ", resultado);
}