//+------------------------------------------------------------------+
//|                                                 TestPosition.mq5 |
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

   //for(int i=0; i<PositionsTotal(); i++)
    // {
      
     // ulong ticket=PositionGetTicket(i);

      //PositionSelect(PositionGetSymbol(i));

      PositionSelectByTicket(418207011);

      Print("POSITION_TICKET  = ",PositionGetInteger(POSITION_TICKET));

      datetime postion_time=(datetime) PositionGetInteger(POSITION_TIME);
      Print("POSITION_TIME"," = ",postion_time);

      long postion_time_msc=PositionGetInteger(POSITION_TIME_MSC);
      Print("POSITION_TIME_MSC"," = ",postion_time_msc);

      datetime postion_time_update=(datetime) PositionGetInteger(POSITION_TIME_UPDATE);
      Print("POSITION_TIME_UPDATE"," = ",postion_time_update);

      long postion_time_update_msc=PositionGetInteger(POSITION_TIME_UPDATE_MSC);
      Print("POSITION_TIME_UPDATE_MSC"," = ",postion_time_update_msc);

      Print("POSITION_TYPE"," = ",PositionGetInteger(POSITION_TYPE));

      string position_type_desc="";

      if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_BUY)
        {
         position_type_desc="COMPRA";
        }
      else
        {
         position_type_desc="VENDA";
        }

      Print("POSITION_IDENTIFIER"," = ",PositionGetInteger(POSITION_IDENTIFIER));
      Print("POSITION_REASON"," = ",PositionGetInteger(POSITION_REASON));

      Print("POSITION_VOLUME"," = ",PositionGetDouble(POSITION_VOLUME));
      Print("POSITION_PRICE_OPEN"," = ",PositionGetDouble(POSITION_PRICE_OPEN));
      Print("POSITION_SL"," = ",PositionGetDouble(POSITION_SL));
      Print("POSITION_TP"," = ",PositionGetDouble(POSITION_TP));
      Print("POSITION_PRICE_CURRENT"," = ",PositionGetDouble(POSITION_PRICE_CURRENT));
      Print("POSITION_SWAP"," = ",PositionGetDouble(POSITION_SWAP));
      Print("POSITION_PROFIT"," = ",PositionGetDouble(POSITION_PROFIT));

      Print("POSITION_SYMBOL"," = ",PositionGetString(POSITION_SYMBOL));
      
      //Print("POSITION_SYMBOL BY INDEX"," = ", PositionGetSymbol(i));
      
      Print("POSITION_COMMENT"," = ",PositionGetString(POSITION_COMMENT));
      Print("POSITION_EXTERNAL_ID"," = ",PositionGetString(POSITION_EXTERNAL_ID));

    // }

  }
//+------------------------------------------------------------------+
