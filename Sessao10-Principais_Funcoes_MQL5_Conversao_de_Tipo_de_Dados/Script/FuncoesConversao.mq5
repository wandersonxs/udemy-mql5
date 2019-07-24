//+------------------------------------------------------------------+
//|                                             FuncoesConversao.mq5 |
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
      double valor_double = 1234.012345667;
      int valor_int = 1234;
      
      Print("DoubleToString Default= ",  DoubleToString(valor_double));
      Print("DoubleToString 3 digitos= ",  DoubleToString(valor_double, 3));
      
      Print("IntegerToString = ",  IntegerToString(valor_int));
      Print("IntegerToString = ",  IntegerToString(valor_int,10,'-'));

      datetime data_hora_atual = TimeCurrent();
      
      Print("data_hora_atual = ",data_hora_atual);
      
      Print("TimeToString data_hora_atual = ", TimeToString(data_hora_atual, TIME_SECONDS));

      string valor_string_double = "100.98";
      double vl_double = StringToDouble(valor_string_double);
      Print("StringToDouble = ",  vl_double);
      
      string valor_string_int = "12345";
      long vl_int  = StringToInteger(valor_string_int);
      Print("StringToInteger = ",  vl_int);
      
      
      string string_d1 = "2019/01/01";
      datetime d1 = StringToTime(string_d1);
      Print("StringToTime d1 = ",  d1);
      
      
      string string_d2 = "2019.01.01 12:00:11";
      datetime d2 = StringToTime(string_d2);
      Print("StringToTime d2 = ",  d2);
      
      
  }
//+------------------------------------------------------------------+
