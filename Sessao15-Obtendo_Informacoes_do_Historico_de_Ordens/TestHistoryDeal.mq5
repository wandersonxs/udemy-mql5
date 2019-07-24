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
   datetime ate= TimeCurrent();

   HistorySelect(de,ate);

   for(uint i=0; i<HistoryDealsTotal(); i++)
     {
      ticket=HistoryDealGetTicket(i);
      //HistoryDealSelect(ticket);
      if(ticket>0)
        {
         string deal_symbol=HistoryDealGetString(ticket,DEAL_SYMBOL);
         int deal_order= HistoryDealGetInteger(ticket,DEAL_ORDER);
         int deal_type = HistoryDealGetInteger(ticket,DEAL_TYPE);
         int deal_position_id=HistoryDealGetInteger(ticket,DEAL_POSITION_ID);

         string deal_type_desc="OUTRO";

         switch(deal_type)
           {
            case DEAL_TYPE_BUY:
               deal_type_desc="COMPRA";
               break;
            case DEAL_TYPE_SELL:
               deal_type_desc="VENDA";
               break;
           }

         double deal_volume=HistoryDealGetDouble(ticket,DEAL_VOLUME);
         double deal_price=HistoryDealGetDouble(ticket,DEAL_PRICE);
         double deal_profit = HistoryDealGetDouble(ticket,DEAL_PROFIT);

         Print("Symbol = ", deal_symbol , 
                  " - Order = ",deal_order, 
                   " - Position ID = ",deal_position_id, 
                  " - Deal Type = ",deal_type, 
                  " - Deal Type DESC = ",deal_type_desc,
                  " - Price = ", deal_price,
                  " - Profit = ", deal_profit
                   );

        }
     }

  }
//+------------------------------------------------------------------+
