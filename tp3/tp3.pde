//https://youtu.be/I0mBaF41E4M


PImage foto;
float distX= 70;
float distY= 70;
float posX, posY, tamX, tamY;

void setup() {
  size (800, 400);
  foto=loadImage("OpArt.png");
  textSize(18);
  posX = 35;
  posY = 30;
  tamX = 35;
  tamY = 30;
  strokeWeight(2);
}

void draw () {
  background (0);
  image(foto,0,0,400,400);
  for (int y=0; y<13; y++) {
    for (int x=0; x<6; x++) {

      if (y % 2 != 0) {
        distX = 90;
      } else if (y % 2 == 0) {
        distX=70;
      }

      if (x == 0) {
        println(map(mouseX, 0, width, 0, 1));

        if (y % 2 != 0) {
          distX = 90;
          rect(distX * 0.18 + width/2, posY *y, tamX, tamY);
        } else if (y % 2 == 0) {
          distX=70;
          rect(distX * 0 + width/2, posY *y, tamX, tamY);
        }
      } else {

        rect(distX * x + width/2, posY *y, tamX, tamY);
      }
      // rect ((distX * x + width/2) + 50, distY*y, 35, 30);
    }
  }
  if (mousePressed == true) {
    if (mouseButton == LEFT){
    stroke (247,15,131);
    } else {
      stroke (42,192, 245);
  
  }
  }
}
