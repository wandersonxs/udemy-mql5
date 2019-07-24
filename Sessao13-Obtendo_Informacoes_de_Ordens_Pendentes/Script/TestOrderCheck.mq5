//+------------------------------------------------------------------+
//|                                               TestOrderCheck.mq5 |
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

      MqlTradeRequest request={0};
      MqlTradeCheckResult result={0};

      request.symbol = Symbol();
      request.action = TRADE_ACTION_PENDING;
      request.type=ORDER_TYPE_BUY_STOP;
      request.volume=0.01;
      double preco=SymbolInfoDouble(Symbol(),SYMBOL_BID)+50*SymbolInfoDouble(_Symbol,SYMBOL_POINT);
      request.price=preco;
      
      bool resultado = OrderCheck(request,result);
      
      Print( "Ret. Code =" , result.retcode ,
             "Balance =" , result.balance ,
             "Equity =" , result.equity ,
             "Margin =" , result.margin ,
             "Margin Free =" , result.margin_free ,
             "Margil Level =" , result.margin_level ,
             "Profit =" , result.profit ,
             "Comment =" , result.comment 
      );
      
      


  }
//+------------------------------------------------------------------+
