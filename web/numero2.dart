
import 'dart:math';



String s= "";
var x;
var y;

var posx;

var posy;





String calcul( var width, var height, var hyp, var angle){
  
  
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







void main() {
  
  String finale = calcul(  980, 660, 120, 33);
  
  print(finale);

}