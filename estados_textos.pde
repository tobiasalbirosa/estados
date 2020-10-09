int estado = 0;
String textosA[] = {"Texto A pantalla 1", "Texto A pantalla 2", "Texto Apantalla 3", "Texto A pantalla 4"};
String textosB[] = {"Texto B pantalla 1", "Texto B pantalla 2", "Texto B pantalla 3", "Texto B pantalla 4"};
String textoA;
String textoB;
void esccribir() {
}
void setup(){
  size(444,444);
}
void draw() {
  background(0);
  posicionDelMouse(mouseX, mouseY);
}
void escribir(String textoA, String textoB, int x, int y) {
  text(textoA, x, y);
  text(textoB, x, y+height/10);
}
void posicionDelMouse(int x, int y) {
  for (int i = 0; i < 4; i++) {
    if (i == estado) {
      textoA = textosA[estado];
      textoB = textosB[estado];
      escribir(textoA, textoB, x, y);
    }
  }
}
void mousePressed() {
  estado = estado+1;
  if (estado == 4) {
    estado = 0;
  }
  println("Clickeaste, el esatdo es: ", estado);
}
