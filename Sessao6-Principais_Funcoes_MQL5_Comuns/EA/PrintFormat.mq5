//+------------------------------------------------------------------+
//|                                                  PrintFormat.mq5 |
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
   
   string nome_conta = AccountInfoString(ACCOUNT_NAME);
   
   PrintFormat("Nome da Conta: %s", nome_conta);
   
   int numero_conta = AccountInfoInteger(ACCOUNT_LOGIN);
   
   PrintFormat("LOGIN: %d", numero_conta);
   
   double valor_double = -123.456789;
   
   PrintFormat("Valor Double: %+.2f" , valor_double);
   
   
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
