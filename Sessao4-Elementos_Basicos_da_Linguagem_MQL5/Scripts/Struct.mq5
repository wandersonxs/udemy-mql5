//+------------------------------------------------------------------+
//|                                                       Struct.mq5 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"

struct ordem {
   int id;
   double preco;
   double take_profit;
   double stop_loss;
   
   ordem(){
      id = 1000;
      preco = 900.00;
      take_profit = 500.00;
      stop_loss = 1500.00;
   }
   
   ~ordem(){
      Print("Saindo .... ");
   }
   
};

struct ordem_complemento : ordem {
   string comentario;
};

ordem minha_ordem;

ordem minha_ordem2;

ordem_complemento ordem_comp;

//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---

   Print("minha_ordem.id = ", minha_ordem.id,
         " minha_ordem.preco = ", minha_ordem.preco,
         " minha_ordem.stop_loss = ", minha_ordem.stop_loss,
         " minha_ordem.take_profit = " , minha_ordem.take_profit
   );
   
   minha_ordem.id = 1;
   minha_ordem.preco = 100.00;
   minha_ordem.stop_loss = 90.00;
   minha_ordem.take_profit = 110.00;
   
   Print("minha_ordem.id = ", minha_ordem.id,
         " minha_ordem.preco = ", minha_ordem.preco,
         " minha_ordem.stop_loss = ", minha_ordem.stop_loss,
         " minha_ordem.take_profit = " , minha_ordem.take_profit
   );
   
   minha_ordem2 = minha_ordem;
   
      Print("minha_ordem2.id = ", minha_ordem2.id,
         " minha_ordem2.preco = ", minha_ordem2.preco,
         " minha_ordem2.stop_loss = ", minha_ordem2.stop_loss,
         " minha_ordem2.take_profit = " , minha_ordem2.take_profit
   );
   
   minha_ordem2.take_profit = 200.00;
   
      Print("minha_ordem2.id = ", minha_ordem2.id,
         " minha_ordem2.preco = ", minha_ordem2.preco,
         " minha_ordem2.stop_loss = ", minha_ordem2.stop_loss,
         " minha_ordem2.take_profit = " , minha_ordem2.take_profit
   );

   Print("minha_ordem.id = ", minha_ordem.id,
         " minha_ordem.preco = ", minha_ordem.preco,
         " minha_ordem.stop_loss = ", minha_ordem.stop_loss,
         " minha_ordem.take_profit = " , minha_ordem.take_profit
   );
   
    Print("ordem_comp.id = ", ordem_comp.id,
         " ordem_comp.preco = ", ordem_comp.preco,
         " ordem_comp.stop_loss = ", ordem_comp.stop_loss,
         " ordem_comp.take_profit = " , ordem_comp.take_profit,
         " ordem_comp.comentario = " , ordem_comp.comentario
   );
   
   ordem_comp = minha_ordem2;
   
   ordem_comp.comentario = "Filha da struct ordem";
   
    Print("ordem_comp.id = ", ordem_comp.id,
         " ordem_comp.preco = ", ordem_comp.preco,
         " ordem_comp.stop_loss = ", ordem_comp.stop_loss,
         " ordem_comp.take_profit = " , ordem_comp.take_profit,
         " ordem_comp.comentario = " , ordem_comp.comentario
   );
   
   ordem_comp.stop_loss = 80.00;
   
   minha_ordem = ordem_comp;
   
   
   Print("minha_ordem.id = ", minha_ordem.id,
         " minha_ordem.preco = ", minha_ordem.preco,
         " minha_ordem.stop_loss = ", minha_ordem.stop_loss,
         " minha_ordem.take_profit = " , minha_ordem.take_profit
   );
   
  }
//+------------------------------------------------------------------+
