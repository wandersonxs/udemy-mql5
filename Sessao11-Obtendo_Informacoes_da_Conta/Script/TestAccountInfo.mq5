//+------------------------------------------------------------------+
//|                                              TestAccountInfo.mq5 |
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
//---
   
   // AccountInfoInteger
   Print("ACCOUNT_LOGIN" , " = " , AccountInfoInteger(ACCOUNT_LOGIN));
   Print("ACCOUNT_TRADE_MODE", " = ",  AccountInfoInteger(ACCOUNT_TRADE_MODE));
   Print("ACCOUNT_LIMIT_ORDERS", " = ",  AccountInfoInteger(ACCOUNT_LIMIT_ORDERS));
   Print("ACCOUNT_TRADE_ALLOWED", " = ",  AccountInfoInteger(ACCOUNT_TRADE_ALLOWED));
   Print("ACCOUNT_TRADE_EXPERT", " = ",  AccountInfoInteger(ACCOUNT_TRADE_EXPERT));
   Print("ACCOUNT_CURRENCY_DIGITS  ", " = ",  AccountInfoInteger(ACCOUNT_CURRENCY_DIGITS));
   
   // AccountInfoDouble
   Print("ACCOUNT_BALANCE" , " = " , AccountInfoDouble(ACCOUNT_BALANCE));
   Print("ACCOUNT_PROFIT", " = ",  AccountInfoDouble(ACCOUNT_CREDIT));
   Print("ACCOUNT_EQUITY", " = ",  AccountInfoDouble(ACCOUNT_EQUITY));
   Print("ACCOUNT_MARGIN", " = ",  AccountInfoDouble(ACCOUNT_MARGIN));
   Print("ACCOUNT_MARGIN_FREE", " = ",  AccountInfoDouble(ACCOUNT_MARGIN_FREE));
   Print("ACCOUNT_MARGIN_LEVEL", " = ",  AccountInfoDouble(ACCOUNT_MARGIN_LEVEL));
   Print("ACCOUNT_ASSETS", " = ",  AccountInfoDouble(ACCOUNT_ASSETS));
   Print("ACCOUNT_COMMISSION_BLOCKED", " = ",  AccountInfoDouble(ACCOUNT_COMMISSION_BLOCKED));
   
   // AccountInfoString
   Print("ACCOUNT_NAME" , " = " , AccountInfoString(ACCOUNT_NAME));
   Print("ACCOUNT_SERVER", " = ",  AccountInfoString(ACCOUNT_SERVER));
   Print("ACCOUNT_CURRENCY", " = ",  AccountInfoString(ACCOUNT_CURRENCY));
   Print("ACCOUNT_COMPANY", " = ",  AccountInfoString(ACCOUNT_COMPANY));
   
  }
//+------------------------------------------------------------------+
