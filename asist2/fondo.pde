//class fondo{
 PImage img; 
color morado= color(255, 165, 150);

void cargarFondo(String rutaFondo){

  img= loadImage(rutaFondo);
}
void dibujarFondo(){
  background(255);
  image(img, 0, 0, width, height);
  tint(morado);
}
