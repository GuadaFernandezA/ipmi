//tp2
//COMISION 5
//Guadalupe Fernandez Abdón
//Legajo: 119025/2

//creación
PImage fondo1, fondo2, fondo3, fondo4;
PFont fuente, fuente2;
String texto1, texto2, texto3;
int pantalla, animacion, opacidad, finanimacion;
color boton1color = color (255);
int boton1PosX = 60;
int boton1PosY = 330;
int boton1Ancho = 100;
int boton1Alto = 30;


//asignación
void setup(){
  size(640,480);
  fondo1 = loadImage("mafalda1D.jpg");
  fondo2 = loadImage("MafaldaD2.jpg");
  fondo3 = loadImage("MafaldaD3.jpg");
  fondo4 = loadImage("MafaldaD4.jpg");
  fuente = loadFont("PalatinoLinotype-BoldItalic-48.vlw");
  texto1 = "Mafalda, la chica de pelo negro que odia la sopa y está en contradicción\ncon los adultos. Creada por Joaquin Salvador QUINO, \nse publicó por primera vez el 29 de septiembre 1964 \nen el semanario Primera Plana de Buenos Aires.";
  texto2 = "Mafalda es una niña idealista que representa la aspiración utópica \nde un mundo mejor y sus pensamientos y reflexiones son un reflejo \nde las inquietudes sociales y políticas de los años sesenta, \nmuchas de ellas aún vigentes.";
  texto3 = "El personaje forma parte de una típica familia de clase media argentina de esa época, \ny sus amigos también representan ideas y personajes que uno podía encontrar \nen cualquier barrio de la ciudad.";
  textFont(fuente);
  boton1color = color (58, 183, 203);
  frameCount= 0;
  pantalla = 0;
  opacidad = 0;
  animacion = 0;
  

}

//uso
void draw() {
  animacion++;
  
  if (pantalla == 0) {
  image(fondo1,0,0, width, height);
  push();
  fill(255);
  rect(10,300,600,100);
  fill(0, opacidad);
  textSize(16); 
  if (animacion < 255) {
      opacidad = animacion;
  }
  text(texto1, 50, 325, 100);
  pop();
  
}
  if (pantalla == 1) {
    image(fondo2,0,0,width, height);
    push();
    fill(255);
    rect(10,70,600,120);
    fill(0, opacidad);
    textSize(18);
    if (animacion < 255) {
      opacidad = animacion;

    }
    text(texto2, 40, 100, 100);
    pop();
  }
  
  if (pantalla == 2) {
    image(fondo3,0,0, width, height);
    push();
    fill(255);
    rect(10,300,600,70);
    if (animacion < 255) {
      opacidad = animacion;
    }
    fill(0, opacidad);
    textSize(15);
    text(texto3, 20, 322, 325);
    pop();
  }  
  
  if (pantalla == 3) {
    image(fondo4,0,0, width, height);
    push();
    fill (boton1color);
    rect(60, 330, 100, 30);
    fill(0);
    textSize(24);
    text("Reiniciar", 63, 335, 100, 30);
    pop();
    
  }

   if(frameCount%(60*4) == 0 && pantalla != 3) {
   pantalla = pantalla +1;
   animacion = 0;
   opacidad = 0;
  }
   
   println(mouseX,mouseY);
   println(pantalla, frameCount, animacion);
  
}

 void mousePressed(){
    if (mouseX > 60 && mouseX < 160 && mouseY > 330 && mouseY < 360) {
     boton1color = color (58, 183, 203);
     pantalla = 0;
     frameCount = 0;
   }
  }
 
