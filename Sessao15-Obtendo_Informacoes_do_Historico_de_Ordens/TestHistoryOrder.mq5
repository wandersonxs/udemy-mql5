//+------------------------------------------------------------------+
//|                                             TestHistoryOrder.mq5 |
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

   ulong ticket=0;
   datetime de = D'2019.07.08 14:00:00';
   datetime ate = TimeCurrent();
   
   HistorySelect(de,ate);
   
   for(uint i = 0; i < HistoryOrdersTotal(); i++)
   {
      ticket = HistoryOrderGetTicket(i);
      // HistoryOrderSelect(ticket);
      if( ticket > 0)
      {
         string order_symbol = HistoryOrderGetString(ticket, ORDER_SYMBOL);
         int order_ticket = HistoryOrderGetInteger(ticket, ORDER_TICKET);
         int order_type = HistoryOrderGetInteger(ticket, ORDER_TYPE);
         int order_position_id = HistoryOrderGetInteger(ticket, ORDER_POSITION_ID);
         
         string order_type_desc = "OUTRO";
         
         switch(order_type)
           {
            case ORDER_TYPE_BUY:
               order_type_desc="COMPRA";
               break;
            case ORDER_TYPE_SELL:
               order_type_desc="VENDA";
               break;
            case ORDER_TYPE_BUY_STOP:
               order_type_desc="BUY STOP";
               break;
            case ORDER_TYPE_SELL_STOP:
               order_type_desc="SELL STOP";
               break;
            case ORDER_TYPE_BUY_LIMIT:
               order_type_desc="BUY LIMIT";
               break;
            case ORDER_TYPE_SELL_LIMIT:
               order_type_desc="SELL LIMIT";
               break;
           }
         
         double order_volume= HistoryOrderGetDouble(ticket,ORDER_VOLUME_INITIAL);
         double order_price_open = HistoryOrderGetDouble(ticket,ORDER_PRICE_OPEN);
         double order_sl= HistoryOrderGetDouble(ticket,ORDER_SL);
         double order_tp= HistoryOrderGetDouble(ticket,ORDER_TP);
         
         Print("Symbol = ",order_symbol,
               " - Order = ",order_ticket,
               " - Order Position ID = ",order_position_id,
               " - Order Type = ",order_type,
               " - Order Type DESC = ",order_type_desc,
               " - Price = ",order_price_open,
               " - Volume = ",order_volume,
               " - Order SL = ",order_sl,
               " - Order TP = ",order_tp
               );
         
      }
   }
   
   
  }
//+------------------------------------------------------------------+
