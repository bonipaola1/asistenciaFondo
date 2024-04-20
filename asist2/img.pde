
PImage img2;
float imgX;
float imgY;
float speed;


void setupImagenMoverRebote(String rutaRebote, float imgYalto, float velocidad) {
    img2 = loadImage(rutaRebote);
    img2.resize(250, 250);

    imgX = width / 2 - img2.width / 2;
    

    imgY = imgYalto;
    

    speed = velocidad;
}


void drawImagenMoverRebote() {

    image(img2, imgX, -50);
    
    imgX += speed*4;
    
 
    if (imgX <= -50) {
        imgX = -50;
        speed = abs(speed);
    } else if (imgX + img2.width >= 900) {
     
        imgX = width - img2.width;
        speed = -abs(speed);
    }
}
