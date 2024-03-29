//+------------------------------------------------------------------+
//|                                                   MessageBox.mq5 |
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
   int click = MessageBox("Deseja adicionar a ordem?", "Adição de ordem", MB_YESNOCANCEL);
   
   if( click == IDYES ){
      MessageBox("Ordem adicionada!","Adição de ordem", MB_ICONINFORMATION );
   }
   
   if( click == IDNO ){
      MessageBox("Ordem não adicionada!","Adição de ordem", MB_ICONWARNING );
   }
   
   if( click == IDCANCEL ){
      MessageBox("Ordem cancelada!","Adição de ordem", MB_ICONERROR );
   }
   
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
