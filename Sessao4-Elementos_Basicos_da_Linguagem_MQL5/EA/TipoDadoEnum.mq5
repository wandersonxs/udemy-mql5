//+------------------------------------------------------------------+
//|                                                 TipoDadoEnum.mq5 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"

input ENUM_ORDER_TYPE order_type;

enum mes {
   Janeiro = 1000,
   Fevereiro,
   Marco,
   Abril,
   Maio = 2000,
   Junho = 2069,
   Julho = 4000,
   Agosto = 900,
   Setembro,
   Outubro,
   Novembro,
   Dezembro = 1
};

mes mes_posterior = Junho;

mes mes_atual = Maio;

mes mes_anterior = Abril;

mes mes_natal = Dezembro;

//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//---
   Print("Mês atual : ", mes_atual);
   Print("Mês anterior : ", mes_anterior);
   Print("Mês posterior : ", mes_posterior);
   Print("Mês Natal : ", mes_natal);   
   Print("Tipo de ordem : ", order_type);
      
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
