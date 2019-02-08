int x=100;
int y=290;
int ancho=40;
int alto=40;
int time;
int puntaje =0;
PImage fondo,Vampy;
PFont texto;
int vel=10;
float distancia=10;

float posX[];
float posY[];

int estado[];

void setup()
{
size(612,344);
texto= loadFont("AlbertusMT-Italic-18.vlw");
fondo = loadImage("fondo.jpg");
Vampy = loadImage("MURCIELAGO.png");

posX=new float[50];
posY=new float[50];

estado = new int[50];

  for(int i=0; i<50; i++)
  {
  posX[i]=random(600);
  //posY[i]=random(100);
  
  estado[i]=1;
  }

}

void draw()
{
 image(fondo,0,0);
  
strokeWeight(5);
stroke(100,5,2);
fill(22,221,20);
rect(x,y,ancho,alto);

for(int i=0; i<50; i++)
{
posY[i]=posY [i] + random(1,5);}

 
fill(#93109B);
for(int i=0; i<50; i++)
{
  if(estado[i]== 1){
  ellipse(posX[i],posY[i],20,20);
}

}

for(int i =0; i<50; i++)
{
  if(mousePressed);{
   distancia = dist(x, y, posX[i], posY[i]);
     if(distancia <=30){
     estado[i]=0;
     }
  }
} 
interaccionteclado();
  
fill(#FFFFFF);
text("Score: "+puntaje,30,40);

puntaje =0;
for(int i =0; i<50;i++){
    if(estado[i]==0){
    puntaje = puntaje+1;
    }
}
println(puntaje);

//tiempo
time =millis()/1000;
text("Tiempo: "+time,500,30);

}

void interaccionteclado(){
if(keyPressed == true){
  if(key =='a')
  {
    x = x -vel;
  }
  if(key =='d')
  {
    x = x +vel;
  }
 
}
}
