//+------------------------------------------------------------------+
//|                                                    TestOrder.mq5 |
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

   for(int i=0; i<OrdersTotal(); i++)
     {

      ulong ticket=OrderGetTicket(i);
      
      //OrderSelect(416583223);

      Print("ORDER_TICKET"," = ",OrderGetInteger(ORDER_TICKET));      
      datetime order_time_setup = (datetime) OrderGetInteger(ORDER_TIME_SETUP);      
      Print("ORDER_TIME_SETUP"," = ",order_time_setup);
      Print("ORDER_TYPE"," = ",OrderGetInteger(ORDER_TYPE));
      
      Print("ORDER_STATE"," = ",OrderGetInteger(ORDER_STATE));
      
      datetime order_time_expiration = (datetime) OrderGetInteger(ORDER_TIME_EXPIRATION);
      Print("ORDER_TIME_EXPIRATION"," = ",order_time_expiration);
      
      datetime order_time_done = (datetime) OrderGetInteger(ORDER_TIME_DONE);
      Print("ORDER_TIME_DONE"," = ",order_time_done);

      Print("ORDER_TIME_SETUP_MSC"," = ",OrderGetInteger(ORDER_TIME_SETUP_MSC));
  
      Print("ORDER_TIME_DONE_MSC"," = ",OrderGetInteger(ORDER_TIME_DONE_MSC));
      
      Print("ORDER_TYPE_FILLING"," = ",OrderGetInteger(ORDER_TYPE_FILLING));
      Print("ORDER_TYPE_TIME"," = ",OrderGetInteger(ORDER_TYPE_TIME));
      
      Print("ORDER_MAGIC"," = ",OrderGetInteger(ORDER_MAGIC));
      Print("ORDER_REASON"," = ",OrderGetInteger(ORDER_REASON));
      Print("ORDER_POSITION_ID"," = ",OrderGetInteger(ORDER_POSITION_ID));
      Print("ORDER_POSITION_BY_ID"," = ",OrderGetInteger(ORDER_POSITION_BY_ID));

      Print("ORDER_VOLUME_INITIAL"," = ",OrderGetDouble(ORDER_VOLUME_INITIAL));
      Print("ORDER_VOLUME_CURRENT"," = ",OrderGetDouble(ORDER_VOLUME_CURRENT));
      Print("ORDER_PRICE_OPEN"," = ",OrderGetDouble(ORDER_PRICE_OPEN));
      Print("ORDER_SL"," = ",OrderGetDouble(ORDER_SL));
      Print("ORDER_TP"," = ",OrderGetDouble(ORDER_TP));
      Print("ORDER_PRICE_CURRENT"," = ",OrderGetDouble(ORDER_PRICE_CURRENT));
      Print("ORDER_PRICE_STOPLIMIT"," = ",OrderGetDouble(ORDER_PRICE_STOPLIMIT));      
      
      Print("ORDER_SYMBOL"," = ",OrderGetString(ORDER_SYMBOL));
      Print("ORDER_COMMENT"," = ",OrderGetString(ORDER_COMMENT));
      Print("ORDER_EXTERNAL_ID"," = ",OrderGetString(ORDER_EXTERNAL_ID));

     }

  }
//+------------------------------------------------------------------+
