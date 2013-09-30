




String s= "";


var a;



String calculate(int table, int number){
  
  
  
  for(int i = 0; i<= number; i++){
    
  
    a= table *i;
    
    s= s+" "+ a.toString();
    
  }
  
  
  return s;
  
}





void main(){
  
  String x = calculate( 12, 20);
  
  
  print(x);
  
}