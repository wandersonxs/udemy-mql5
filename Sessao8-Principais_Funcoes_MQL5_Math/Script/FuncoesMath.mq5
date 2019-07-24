//+------------------------------------------------------------------+
//|                                                  FuncoesMath.mq5 |
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

      // -- MathAbs

      double abs_valor = -5.0;
      Print( MathAbs(abs_valor));
      
      // -- MathCeil & MathFloor
      
      Print(MathCeil(5.1));
      Print(MathCeil(5.5));
      Print(MathCeil(5.9));

      Print(MathFloor(5.1));
      Print(MathFloor(6.5));
      Print(MathFloor(7.9));

      // -- MathMax & MathMin
      
      Print(MathMax(10.5, 20.5));
      Print(MathMin(10.5, 20.5));
      
      // -- MathMod
      
      Print(MathMod(10,3));
      
      // -- MathPow
      Print(MathPow(2,2));
      
      
     // MathSrand & MathRand
     
     
      MathSrand(1);
      
      for(int i= 0; i < 10 ; i ++ ){
         Print(MathRand());
      }
      
      MathSrand(1);
      
      for(int i= 0; i < 10 ; i ++ ){
         Print("* ", MathRand());
      }
      
      //MathRound
      
      Print(MathRound(5.5));
      Print(MathRound(5.9));
      Print(MathRound(5.4));
      
      // MathSqrt
      
      Print(MathSqrt(4));
      
      
      
      
      
   
      
   
  }
//+------------------------------------------------------------------+
