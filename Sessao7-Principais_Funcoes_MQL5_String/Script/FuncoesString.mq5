//+------------------------------------------------------------------+
//|                                                FuncoesString.mq5 |
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
      string mql5 = "MQL5 é ";
      
      bool result = StringAdd(mql5, "uma linguagem de programação poderosa!");
      
      Print(result);
      Print(mql5);
      
      //-----
      
      string var1 = "Dolar";
      string var2 = "Dolar";
      
      if( StringCompare(var1, var2, true) == 0 ){
         Print( " var1 == var2");
      }
      
      var2 = "dolar";
      
      if( StringCompare(var1, var2, true) == 1 ){
         Print( " var1 > var2");
      }
      
      var1 = "Do";
      
      if( StringCompare(var1, var2, true) == -1 ){
         Print( " var1 < var2");
      }
      
      // -----
   
      string texto = "O MSQL5 me possibilita programar robôs.";
      
      int pos_inicial = StringFind(texto, "programar", 0);
   
      Print(pos_inicial);
      
      // --- StringLen
      
      string qtd_chars = "MQL5 é bacana!";
      
      Print(StringLen(qtd_chars));
      
      // --- StringReplace
      
      string replace_texto = "MQL5 é uma linguagem de programação poderosa! Por isso desenvolvo meus robôs com MQL5.";

      int qtd_replace = StringReplace(replace_texto,"MQL5", "C++");
      
      Print (qtd_replace);
      Print (replace_texto);
      
      // -- StringSplit
      
      string split_texto = "Wanderson;42;Rua Osasco;02/08/1977";
      
      string array[];
      
      StringSplit(split_texto,';', array);
      
      for( int i = 0 ; i < ArraySize(array); i++)
      {
         Print(array[i]);
      }
      
      // ---- StringSubstr
      
      string substr_texto = "Meu nome é Wanderson";
      
      string resultado_substr = StringSubstr(substr_texto,11,9);
  
      Print(resultado_substr);
      
      // StringToLower & StringToUpper
      
      string carro = "Volkswagen Fusca";
      
      StringToLower(carro);
      
      Print(carro);
      
      StringToUpper(carro);
      
      Print(carro);
      
      // StringTrimLeft & StringTrimRight
      
      string trim_texto = "      Remoção de Texto     ";
      
      Print(trim_texto);
      
      StringTrimLeft(trim_texto);
      Print(trim_texto);
      
      StringTrimRight(trim_texto);
      Print(trim_texto);
            
      
  
      
      
         
  }
