//+------------------------------------------------------------------+
//|                                        OperacoesCondicionais.mq5 |
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
      
      bool var1 =  true;
      bool var2 =  true;
      
      
      if ( var1 == var2)
      {
         Print("Valores iguais");   
      }

      var2 = false;
      
      if ( var1 != var2)
      {
         Print("Valores diferentes");   
      }
      
      int a = 30;
      int b = 20;
      
      if( a > b ){
         Print("a maior que b");
      }
      
      b = 50;
      
      if( a < b ){
         Print("a menor que b");
      }
      
      b = 30; 
      
      if( a <= b ){
         Print("a menor ou igual a b");
      }
      
      if( a >= b ){
         Print("a maior ou igual a b");
      }
      
      //! && ||
      var1 = false;
      
      if(!var1)
      {
         Print("False");
      }
      
      var1 = true;
      var2 = true;
      
      if(var1 == true && var2 == true ) 
      {
         Print("var1 igual var2");
      }
      
      var1 = false;
      var2 = false;
      
      if(var1 == true || var2 == true ) 
      {
         Print("var1 ou var2 é true");
      } else {
         Print("entrei no else");
      }
      
      
      if(var1 == true && var2 == true ) {
          Print("Entrada 1");
      }
      else if ( var1 == true || var2 == true && a > b )
      {
         Print("Entrada 2");
      }
      else
      {
         Print("Entrada 3 - Else");
      }


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
