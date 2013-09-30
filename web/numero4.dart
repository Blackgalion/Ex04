import 'dart:math';





String s= "";



String interest(var year, var rate, var inv){
  
  
  for( int i =1  ; i <= year; i++){
    
    
   inv= inv*pow(1+rate, i); 
   
    s= s+"Year"+" "+ i.toString() + ": "+ inv.toStringAsFixed(2) +"\n";

                                                                      
    
  }
  
  
return s;
  
  
  
}



void main(){ 
  
 
  
  String x= interest( 10, 0.033, 1000);
  
  
  print(x);
  
}