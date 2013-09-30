



int q;
int a= 0;
int lp=0;

int m;

int y;
int d=0;

String s = "";

 String temps(var year, var month, var day){
  
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







void main(){
 
  String s= temps(1989,9,12);
  print(s);
  
}