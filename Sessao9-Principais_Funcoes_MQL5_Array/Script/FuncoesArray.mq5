//+------------------------------------------------------------------+
//|                                                 FuncoesArray.mq5 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"

int array_int[]={ 1,2,3,5,6,7,8,9};
int array_int_desorder[]={9,4,8,0,100,5,10,2};
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//ArraySize
Print("Tamanho Array : ",ArraySize(array_int));
   for(int i=0; i<ArraySize(array_int); i++)
     {
      Print(array_int[i]);
     }


// ArraySort  
Print("Resultado ArraySort: ",ArraySort(array_int_desorder));
print_array(array_int_desorder);

   // ArrayBsearch
   Print("Posição elemento Array 1: ",ArrayBsearch(array_int,8));
   Print("Resultado ArraySort: ",ArraySort(array_int_desorder));
   print_array(array_int_desorder);
   Print("Posição elemento Array 2: ",ArrayBsearch(array_int_desorder,5));
   
   // ArrayPrint
   MqlRates rates[];
   CopyRates(_Symbol,_Period, 0,10,rates);   
   ArrayPrint(rates);  
    
   // ArrayRange
   int array_multidimensional[][8][20];
   Print(ArrayRange(array_multidimensional, 0));
   Print(ArrayRange(array_multidimensional, 1));
   Print(ArrayRange(array_multidimensional, 2));
   Print(ArrayRange(array_int,0));
   
   //ArraySize
   int array_size[] = {0,3,5};
   Print(ArraySize(array_size));
   Print(ArrayRange(array_size,0));
   
   //ArrayResize
   Print(ArrayResize(array_int,10));
   int array_resize[];   
   int result = ArrayResize(array_resize, 2);
   
   array_resize[0] = 10;
   array_resize[1] = 20;
   
   Print(ArraySize(array_resize));
   ArrayResize(array_resize,1000,1000); 
   for(int i=1;i<3000;i++) {
      ArrayResize(array_resize,i,1000);
   }
   
   // ArrayMaximum e ArrayMinimum
   Print(ArrayMinimum(array_int_desorder));
   Print(ArrayMaximum(array_int_desorder)); 
  
   //ArrayReverse
   
   ArrayPrint(array_int);
   ArrayReverse(array_int);
   ArrayPrint(array_int);
   ArrayReverse(array_int,3);
   ArrayPrint(array_int);
   
   //ArrayCopy
   string array_copy_dest[];
   string array_copy_src[]= {"a", "b","c"};
   ArrayPrint(array_copy_dest);
   ArrayCopy(array_copy_dest,array_copy_src);
   ArrayPrint(array_copy_dest);
   string array_copy_dest2[];
   ArrayResize(array_copy_dest2, 10);
   ArrayCopy(array_copy_dest2,array_copy_src,5,1);
   ArrayPrint(array_copy_dest2);
   
   //ArrayCompare
   
   int array_compare1[] = {4,2,9};
   int array_compare2[] = {5,2};
   
   //Print(ArrayCompare(array_compare1, array_compare2));
   
   // ArrayFree
   
   string array_free[];
   ArrayResize(array_free,5);
   Print(ArraySize(array_free));
   
   //ArrayFree(array_free);
   Print(ArraySize(array_free));
   
   array_free[0] = "Teste";
   
   //ArrayInitialize
   int array_initialize[];
   ArrayResize(array_initialize,5,5);
   ArrayPrint( array_initialize);

   ArrayInitialize(array_initialize, 9);
   ArrayPrint( array_initialize);

   for(int i=0; i < 10; i++)
   {
      ArrayResize(array_initialize,i,5);
   }

   ArrayPrint( array_initialize);
   
   ArrayInitialize(array_initialize, 8);
   ArrayFill(  array_initialize,5,4,8); 
   ArrayPrint( array_initialize);
   
   //ArrayRemove
   int array_remove[] = {0,1,2,3,4,5}; 
   
   Print(ArraySize(array_remove));
   
   bool resultado_remove = ArrayRemove(array_remove,6,1);
  
   Print("Erro: ", GetLastError(), " Result: ", resultado_remove);
   
   Print(ArraySize(array_remove));
   
   ArrayPrint(array_remove);
   
   //ArrayInsert
   
   int array_insert_src[]= {0,1,2,3,4,5};
   int array_insert_dest[];
   ArrayInsert(array_insert_dest,array_insert_src,0,2);
   ArrayPrint(array_insert_dest);
   
   //ArraySwap
   
   int array_swap_1[];
   int array_swap_2[];
   
   ArrayResize(array_swap_1,5);   
   ArrayResize(array_swap_2,5);   

   ArrayInitialize(array_swap_1, 1);
   ArrayInitialize(array_swap_2, 2);
   
   ArrayPrint(array_swap_1);
   ArrayPrint(array_swap_2);
   
   ArraySwap(array_swap_1,array_swap_2);

   ArrayPrint(array_swap_1);
   ArrayPrint(array_swap_2);
   
   //ArrayIsDynamic
   
   int array_dinamico[];
   int array_estatico[10];
   
   Print(ArrayIsDynamic(array_dinamico));
   Print(ArrayIsDynamic(array_estatico));
   
  
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void print_array(int &array[])
  {
   for(int i=0; i<ArraySize(array); i++)
     {
      Print(array[i]);
     }
  }

//+------------------------------------------------------------------+
