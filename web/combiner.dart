import 'dart:math';



String fib(int x){

int a = 0;
int b= 1;
int c;
String s = "";


  for( var i=0; i<x; i++){
    c= a;
    
   s= s+ " " + a.toString();
    a=a+b;
    b=c;
    
  }
  
  return s;
}




String calcul( var width, var height, var hyp, var angle){
  

String s= "";
var x;
var y;

var posx;

var posy;

   y= height / 2;
   x= width /2 ;
  

   angle = angle * 0.01745329252 ;
  
  posx= hyp *cos(angle);
  
  posy=hyp * sin(angle);
  
  
  
  
  x =x + posx;
  y= y + posy;
  
  s = x.toStringAsFixed(2) + " "+y.toStringAsFixed(2);
  
  return s;
  
  
}









 String temps(var year, var month, var day){

int q;
int a= 0;
int lp=0;

int m;

int y;
int d=0;

String s = "";

  DateTime birthday = new DateTime(year, month, day);
  
  DateTime thisday = new DateTime.now();

  
  
  Duration difference = thisday.difference(birthday);
  a= difference.inDays;
  
  
  
  lp= thisday.year;
  
  lp=lp-lp%4;
  
  y= birthday.year;
   
 
   
   
  while( y <= lp  ){
      
  
    
  d=d+1;
  
 
  if(y == lp ){
    
    DateTime leap = new DateTime(lp, 02, 29);
    
    if (birthday.isAfter(leap)){
      
      d=d-1;
    }
    
  }
    
    lp= lp-4;
    
    
      }
  
  
  
  
    q = a ~/ 365;
  
      a= a % 365 -d ;
    
  
     m= a~/30;
  
     a=a%30;
     //j'assume ici que la moyenne des mois contient 30 jour ce qui peut donner une réponse à 5 jours pres environ
     
     s=q.toString()+" ans; " + m.toString() + " mois; " +a.toString()+ " jours";
   
    return s;

}





String interest(var year, var rate, var inv){
  String s= "";

  
  for( int i =1  ; i <= year; i++){
    
    
   inv= inv*pow(1+rate, i); 
   
    s= s+"Year"+" "+ i.toString() + ": "+ inv.toStringAsFixed(2) +"\n";

                                                                      
    
  }
  
  
return s;
  
  
  
}




String calculate(int table, int number){
  


String s= "";


var a;


  
  for(int i = 0; i<= number; i++){
    
  
    a= table *i;
    
    s= s+" "+ a.toString();
    
  }
  
  
  return s;
  
}


void main() {

  String finale = fib(11)+ "\n\n" +calcul(  980, 660, 120, 33) + "\n\n" + temps(1989,9,12) + "\n\n" +interest( 10, 0.033, 1000) + "\n" +  calculate( 12, 20);
  
  
  print(finale);

}