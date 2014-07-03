ball[] array = new ball[4];
int[] x = new int[4];
int[] y = new int[4];
int[] spx = new int[4];
int[] spy = new int[4];
boolean move=false;


void setup () {
size (600, 600);
for (int a=0;a<4;a++) {
 array[a] = new ball(); 
 spx[a]=spy[a]=15;
}
 x[2]=25;
 y[2]=25;
 x[3]=575;
 y[3]=25;
 x[0]=y[1]=250;
 x[1]=y[0]=200;
 spx[3]=-15;
}

class ball {
  ball() {}
 void make(int c, int d) { 
  ellipse (c,d,50,50);
 }
}



void draw () {
  background(0);
  for(int a=0;a<4;a++) {
   array[a].make(x[a],y[a]);
  }
  
  
//movement
y[0]+=spy[0];
x[1]+=spx[1];
x[2]+=spx[2];
y[2]+=spy[2];
if(mousePressed)move=!move;
if(move){
  x[3]+=spx[3];
  y[3]+=spy[3];
  if(x[3]<20||x[3]>580)spx[3]*=-1; 
  if(y[3]<20||y[3]>580)spy[3]*=-1; 
}

for (int a=0;a<4;a++){
 if(x[a]<20||x[a]>580&&a!=3)
   spx[a]*=-1;
 if(y[a]<20||y[a]>580&&a!=3)
   spy[a]*=-1;
}
}
