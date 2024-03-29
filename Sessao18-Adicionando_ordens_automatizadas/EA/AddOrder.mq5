//+------------------------------------------------------------------+
//|                                                     AddOrder.mq5 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"

#define EXPERT_MAGIC 123456

input ENUM_ORDER_TYPE order_type=ORDER_TYPE_BUY;
input ENUM_TRADE_REQUEST_ACTIONS trade_request_actions=TRADE_ACTION_DEAL;
input double input_volume=0.01;
input ulong input_position_ticket;
input double input_sl = 100.0;
input double input_tp = 100.0;

input int input_pending_deslocamento=50;

input int input_pending_deslocamento_stop_limit=2;

input ulong input_position_ticket_oposta;

MqlTradeRequest request={0};
MqlTradeResult result={0};
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//---
   order_send();
   ExpertRemove();

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

void order_send()
  {

// -- Parametros Globais
   request.action = trade_request_actions;
   request.symbol = Symbol();
   request.magic=EXPERT_MAGIC;
//

   switch(trade_request_actions)
     {
      case TRADE_ACTION_DEAL:
         //Chamar Funcao preencher request para TRADE_ACTION_DEAL
         if(!fill_request_trade_action_deal())
           {
            MessageBox("Código erro: "+GetLastError(),"ERRO",MB_ICONERROR);
            return;
           }
         break;
      case TRADE_ACTION_SLTP:
         if(!fill_request_trade_action_sltp())
           {
            MessageBox("Posição não locatizada: "+input_position_ticket+"!","ERRO",MB_ICONERROR);
            return;
           }
         break;
      case TRADE_ACTION_PENDING:
         if(!fill_request_trade_action_pending())
           {
            return;
           }
         break;
      case TRADE_ACTION_MODIFY:
         if(!fill_request_trade_action_modify())
           {
            return;
           }
         break;

      case TRADE_ACTION_REMOVE:
         if(!fill_request_trade_action_remove())
           {
            return;
           }
         break;

      case TRADE_ACTION_CLOSE_BY:
         if(!fill_request_trade_action_close_by())
           {
            return;
           }
         break;

      default:
         MessageBox("Tipo ENUM_TRADE_REQUEST_ACTIONS ainda não implementado","ERROR",MB_ICONERROR);
         return;
     }

// -- Enviar Ordem

   if(!OrderSend(request,result))
     {
      mostrar_erro();
     }
   else
     {
      MessageBox("Ordem executada com sucesso! Código Retorno : "+result.retcode+" Mensagem: "+result.comment,"SUCESSO",MB_ICONINFORMATION);
     }
// ---
  }
//+------------------------------------------------------------------+
//| Preenche o request do tipo TRADE_ACTION_DEAL                     |
//+------------------------------------------------------------------+
bool fill_request_trade_action_deal()
  {
   request.volume=input_volume;
   request.type=order_type;

   if(input_position_ticket>0)
     {
      request.position=input_position_ticket;
     }

   if(order_type==ORDER_TYPE_BUY)
     {
      request.price=SymbolInfoDouble(_Symbol,SYMBOL_ASK);
      ordem_sl_tp(true);
     }
   else if(order_type==ORDER_TYPE_SELL)
     {
      request.price=SymbolInfoDouble(_Symbol,SYMBOL_BID);
      ordem_sl_tp(false);

     }
   else
     {
      MessageBox("order_type somente é permitido ORDER_TYPE_BUY e ORDER_TYPE_SELL","ERROR",MB_ICONERROR);
      return false;
     }
   return true;
  }
//+------------------------------------------------------------------+
//| Preenche o request do tipo TRADE_ACTION_SLTP                     |
//+------------------------------------------------------------------+
bool fill_request_trade_action_sltp()
  {

   if(input_position_ticket<=0)
     {
      return false;
     }

   request.position=input_position_ticket;

   for(int i=0; i<PositionsTotal(); i++)
     {
      string symbol=PositionGetSymbol(i);

      if(symbol==Symbol())
        {

         if(PositionGetInteger(POSITION_TICKET)==input_position_ticket)
           {
            if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_BUY)
              {
               request.sl =  PositionGetDouble(POSITION_PRICE_OPEN) - (input_sl *_Point);
               request.tp = PositionGetDouble(POSITION_PRICE_OPEN) + (input_tp *_Point);
              }

            if(PositionGetInteger(POSITION_TYPE)==POSITION_TYPE_SELL)
              {
               request.sl =  PositionGetDouble(POSITION_PRICE_OPEN) + (input_sl *_Point);
               request.tp = PositionGetDouble(POSITION_PRICE_OPEN) - (input_tp *_Point);
              }
            break;
           }
        }
     }

   if(request.sl>0 && request.tp>0)
     {
      return true;
     }
   return false;
  }
//+------------------------------------------------------------------+
//| Preenche o request do tipo TRADE_ACTION_PENDING                  |
//+------------------------------------------------------------------+
bool fill_request_trade_action_pending()
  {
   request.volume=input_volume;
   request.type=order_type;
   return fill_request_pending_by_order_type();

  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void mostrar_erro()
  {
   MessageBox("Código erro: "+GetLastError()+" - Código Retorno Erro:"+result.retcode+" - Mensagem erro: "+result.comment,"ERRO",MB_ICONERROR);
  }
//+------------------------------------------------------------------+
void ordem_sl_tp(bool is_buy)
  {
   if(is_buy)
     {
      if(input_sl>0 && input_tp>0)
        {
         double sl = request.price - (input_sl * _Point);
         double tp = request.price + (input_tp * _Point);
         request.sl = sl;
         request.tp = tp;
        }
        }else{
      if(input_sl>0 && input_tp>0)
        {
         double sl = request.price + (input_sl * _Point);
         double tp = request.price - (input_tp * _Point);
         request.sl = sl;
         request.tp = tp;
        }
     }
  }
//+------------------------------------------------------------------+
bool fill_request_pending_by_order_type()
  {
   int deslocamento=input_pending_deslocamento;
   int deslocamento_stop_limit=input_pending_deslocamento_stop_limit;

   double point= SymbolInfoDouble(_Symbol,SYMBOL_POINT);
   int digitos = SymbolInfoInteger(_Symbol,SYMBOL_DIGITS);

   double preco;
   double preco_stop_limit;

   if(order_type==ORDER_TYPE_BUY_LIMIT)
     {
      preco=SymbolInfoDouble(Symbol(),SYMBOL_BID)-deslocamento*point;
      request.price=preco;
      ordem_sl_tp(true);
     }
   else if(order_type==ORDER_TYPE_BUY_STOP)
     {
      preco=SymbolInfoDouble(Symbol(),SYMBOL_BID)+deslocamento*point;
      request.price=preco;
      ordem_sl_tp(true);

     }
   else if(order_type==ORDER_TYPE_SELL_LIMIT)
     {
      preco=SymbolInfoDouble(Symbol(),SYMBOL_ASK)+deslocamento*point;
      request.price=preco;
      ordem_sl_tp(false);

     }
   else if(order_type==ORDER_TYPE_SELL_STOP)
     {
      preco=SymbolInfoDouble(Symbol(),SYMBOL_ASK)-deslocamento*point;
      request.price=preco;
      ordem_sl_tp(false);
     }
   else if(order_type==ORDER_TYPE_SELL_STOP)
     {
      preco=SymbolInfoDouble(Symbol(),SYMBOL_ASK)-deslocamento*point;
      request.price=preco;
      ordem_sl_tp(false);
     }
   else if(order_type==ORDER_TYPE_SELL_STOP_LIMIT)
     {
      preco_stop_limit=SymbolInfoDouble(Symbol(),SYMBOL_ASK)-deslocamento_stop_limit*point;
      request.stoplimit=preco_stop_limit;

      preco=SymbolInfoDouble(Symbol(),SYMBOL_ASK)-deslocamento*point;
      request.price=preco;

      ordem_sl_tp(false);
     }
   else if(order_type==ORDER_TYPE_BUY_STOP_LIMIT)
     {
      preco_stop_limit=SymbolInfoDouble(Symbol(),SYMBOL_BID)+deslocamento_stop_limit*point;
      request.stoplimit=preco_stop_limit;

      preco=SymbolInfoDouble(Symbol(),SYMBOL_ASK)+deslocamento*point;
      request.price=preco;

      ordem_sl_tp(true);
     }
   else
     {
      MessageBox("Para ordens pendentes selecionar: ORDER_TYPE_BUY_LIMIT, ORDER_TYPE_SELL_LIMIT, ORDER_TYPE_BUY_STOP ou ORDER_TYPE_BUY_SELL","ERROR",MB_ICONERROR);
      return false;
     }
   return true;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool fill_request_trade_action_modify()
  {
   if(input_position_ticket<=0)
     {
      MessageBox("Favor informar o ticket da ordem!","ERROR",MB_ICONERROR);
      return false;
     }

   for(int i=0; i<OrdersTotal(); i++)
     {

      uint order_ticket=OrderGetTicket(i);

      if(order_ticket==input_position_ticket)
        {
         request.order=input_position_ticket;
         return fill_request_pending_by_order_type();
        }
     }

   MessageBox("Ordem não localizada! Num.: "+input_position_ticket,"ERROR",MB_ICONERROR);
   return false;
  }
//+------------------------------------------------------------------+

bool fill_request_trade_action_remove()
  {
   if(input_position_ticket<=0)
     {
      MessageBox("Favor informar o ticket da ordem!","ERROR",MB_ICONERROR);
      return false;
     }

   for(int i=0; i<OrdersTotal(); i++)
     {

      uint order_ticket=OrderGetTicket(i);

      if(order_ticket==input_position_ticket)
        {
         request.order=input_position_ticket;
         return true;
        }
     }

   MessageBox("Ordem não localizada! Num.: "+input_position_ticket,"ERROR",MB_ICONERROR);
   return false;
  }
//+------------------------------------------------------------------+

bool fill_request_trade_action_close_by()
  {

   if(input_position_ticket<=0 && input_position_ticket_oposta<=0)
     {
      MessageBox("Favor informar o ticket da posição e/ou posição oposta!","ERROR",MB_ICONERROR);
      return false;
     }

   for(int i=0; i<PositionsTotal(); i++)
     {

      uint position_ticket=PositionGetTicket(i);

      if(position_ticket==input_position_ticket)
        {
         request.position=input_position_ticket;
         request.position_by=input_position_ticket_oposta;
         return true;
        }
     }
   MessageBox("Posição ou Posição oposta não localizada! Num.: "+input_position_ticket+"Num. Pos. Oposta: "+input_position_ticket_oposta,"ERROR",MB_ICONERROR);
   return false;
  }
//+------------------------------------------------------------------+
