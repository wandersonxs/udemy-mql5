//+------------------------------------------------------------------+
//|                                          FuncoesPreDefinidas.mq5 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+

#include <Trade/Trade.mqh>

CTrade trade;

void OnStart()
  {

      // _Digits
      Print("Quantidade de digitos: ", _Digits);
      
      // _Point
      Print("Valor mínimo deslocamento do preço: ", _Point);
      
      // _LastError
      double preco = SymbolInfoDouble(_Symbol,SYMBOL_ASK);
      trade.BuyLimit(1.0, preco, _Symbol);
      int error = _LastError;
      Print(error);      
      
      // _Symbol
      
      Print("Ativo é " , _Symbol);
      
      // _Period
      
      int timeframe = _Period;
      
      if( timeframe == PERIOD_M15){
         Print("GRAFICO 15 MINUTOS");
      }
    
      if( timeframe == PERIOD_H1){
         Print("GRAFICO 1 HORA");
      }
      
      
      
      
      
      
      
      
   
  }
//+------------------------------------------------------------------+
