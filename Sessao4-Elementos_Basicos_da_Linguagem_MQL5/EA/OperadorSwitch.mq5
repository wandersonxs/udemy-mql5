//+------------------------------------------------------------------+
//|                                               OperadorSwitch.mq5 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+

enum moeda {
   real,
   dolar,
   ien
};

moeda minha_moeda = ien;

int OnInit()
  {

   switch(minha_moeda) 
   { 
      case 0: 
         Print("real");
         break;
      case 1: 
          Print("dolar");
          break;
      default: 
         Print("Ien");
  }
   
   
   

   int a  = 2;
   
   switch(a) 
   { 
      case 1: 
         Print("a == 1");
         break;
      case 2: 
          Print("a == 2");
          break;
      default: 
         Print("a == outro valor");
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
