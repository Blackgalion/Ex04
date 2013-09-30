

int a = 0;
int b= 1;
int c;
String s = "";

String fib(int x){
 
  for( var i=0; i<x; i++){
    c= a;
    
   s= s+ " " + a.toString();
    a=a+b;
    b=c;
    
    
    
  }
  
  return s;
}


void main() {
  
  String fibon= fib(11);
  
  print(fibon);

}