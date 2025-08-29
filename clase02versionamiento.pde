// Variables para la posición y velocidad de la pelota
float x;
float y;
float velX;
float velY;

// comentario para commit 

// Variables para el tamaño de la pelota
float diametro = 50;

// Variables para el cuadrado
float xCuadrado = 200; // Posición X fija
float yCuadrado = 400; // Posición Y fija
float ladoCuadrado = 70;

void setup() {
  // Configura el tamaño del lienzo
  size(800, 600);
  
  // Inicializa la posición de la pelota en el centro
  x = width / 2;
  y = height / 2;
  
  // Inicializa la velocidad aleatoriamente
  velX = random(3, 6);
  velY = random(3, 6);
}

void draw() {
  // Pinta el fondo en cada frame para borrar el rastro
  background(220);
  
  // --- Lógica de la Pelota ---
  // Mueve la pelota
  x = x + velX;
  y = y + velY;
  
  // Lógica de rebote en los bordes horizontales
  if (x + diametro/2 > width || x - diametro/2 < 0) {
    velX = velX * -1;
  }
  
  // Lógica de rebote en los bordes verticales
  if (y + diametro/2 > height || y - diametro/2 < 0) {
    velY = velY * -1;
  }
  
  // Dibuja la pelota
  fill(255, 0, 0); // Color rojo para la pelota
  ellipse(x, y, diametro, diametro);
  
  // --- Lógica del Cuadrado (sin movimiento) ---
  // Dibuja el cuadrado en su posición fija
  fill(0, 0, 255); // Color azul para el cuadrado
  rect(xCuadrado, yCuadrado, ladoCuadrado, ladoCuadrado);
}
