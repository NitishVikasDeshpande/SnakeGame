PImage img;
float x=30,y=60,changex=0,changey=10,l,m,t;
int b,c,n=5;
float arrx[]={30,30,30,30,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
float arry[]={10,20,30,40,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
int count=0;
   int flag=0;
int flagup=0;
int flagright=0;
int eat=0;
int d,e,f;
int colour;
float i,j;
int multiplier,score;
void setup(){
  frameRate(10);
  size(1000,700);
  img = loadImage("prism.jpg");
  
   /* arrx[0]=30;
    arrx[1]=30;
    arrx[2]=30;
    arrx[3]=30;
    arrx[4]=30;
  
  arry[0]=10;
  arry[1]=20;
  arry[2]=30;
  arry[3]=40;
  arry[4]=50;*/

}
void draw(){
   background(255,255,255);
     image(img, i,j);
   text("score",10,10);
   
   text("Prism of Possibilities",200,10);
   text(score,50,10);
    x=x+changex;
  y=y+changey;
 
 for(count=0;count<=n-1;count++){
 /* fill(255,0,0);
  ellipse(arrx[0],arry[0],10,10);//tail
  fill(255,0,0);
  ellipse(arrx[1],arry[1],10,10);//mid
   fill(255,0,0);
  ellipse(arrx[2],arry[2],10,10);//mid
   fill(255,0,0);
  ellipse(arrx[3],arry[3],10,10);//mid
   fill(255,0,0);
  ellipse(arrx[4],arry[4],10,10);//mid*/
   fill(d,e,f);
  ellipse(arrx[count],arry[count],10,10);
  fill(d,e,f);
  ellipse(x,y,10,10);}// head
  

//  while(!keyPressed){}
  
   
 
   if(x<=l+6&&x>=l-6&&y>=m-6&&y<=m+6){n++;
 eat=1;
score= score+multiplier;}
   
    for(count=0;count<=n-2;count++){
  arrx[count]=arrx[count+1];
  arry[count]=arry[count+1];
    }
    arrx[n-1]=x;
    arry[n-1]=y;
 
    if(x>1000){x=0;}
    if(x<0){x=1000;}
     if(y>700){y=0;}
    if(y<0){y=700;}
   if((millis()-t)>=10000||eat==1) {c=0;b=255;
  t=millis();
 l=random(0,1000);
  m=random(0,700);
  i=random(0,1000);
  j=random(0,700);
eat=0;}
  noStroke();
    fill(0,b,c);
    ellipse(l,m,10,10);
    b=0;
    c=255;
    
     for(count=0;count<=n-5;count++){
       if(x==arrx[count]&&y==arry[count]){flag=1;}}
       if(flag==1){background(0,255,0);
     text("gameover",250,250);
   text("your total score is :",250,270);
   text(score,250,290);}
   if(x>=i&&x<=i+200&&y>=j&&y<=j+200){
     colour=(int)random(0,6);
   col(colour);}

   
}
 void col(int colour){  
   if(colour==0) {d=255 ;e= 0; f=0 ;multiplier=1;}
    if(colour==1) {d= 255;e=127 ; f=0 ;multiplier=2;}
     if(colour==2) {d= 255;e=255 ; f=0 ;multiplier=3;}
      if(colour==3) {d= 0;e=255 ; f=0 ;multiplier=4;}
       if(colour==4) {d= 0;e=255 ; f=0 ;multiplier=5;}
        if(colour==5) {d=75 ;e=0 ; f=130 ;multiplier=6;}
         if(colour==6) {d= 139;e=0 ; f= 255;multiplier=7;}}
   

void right(){ 
 
 changey=0;
 changex=10;
 flagright=1;
  flagup=0;
 }
 void left(){ 
  changey=0;
 changex=-10;
 flagright=1;
  flagup=0;
 }
 void up(){
  changey=-10;
 changex=0;
 flagup=1;
  flagright=0;

  }
 void down(){ 
  changey=10;
 changex=0;
 flagup=1;
  flagright=0;
 }
 void keyPressed(){
 if(key==CODED){
 if(keyCode==UP&&flagup==0){up();}
    if(keyCode==DOWN&&flagup==0){down();}
    if(keyCode==RIGHT&flagright==0){right();}
    if(keyCode==LEFT&&flagright==0){left();}}}
