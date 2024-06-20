PImage foto;
float distX=70;
float distY = 70;
float posX, posY, tamX, tamY;
void setup() {
  size (800, 400);
  textSize(18);
  posX = 35;
  posY = 30;
  tamX = 35;
  tamY = 30;
}

void draw () {
  background (0);
  for (int y=0; y<7; y++) {
    for (int x=0; x<7; x++) {

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
}
