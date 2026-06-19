//https://youtu.be/zoSkHexCBUE

PImage foto;

color[][] fondo;
color[][] formas;
int[][] tipo;
boolean negroBlanco = false;

color[] paleta = {
  color(220, 30, 30),
  color(30, 60, 220),
  color(240, 220, 20),
  color(40, 180, 60),
  color(240, 120, 20),
  color(140, 40, 180),
  color(240, 100, 160),
  color(40, 200, 230),
  color(0, 0, 0)
};

void setup() {
  size(800, 400);
  foto = loadImage("19.jpg");

  fondo = new color[10][10];
  formas = new color[10][10];
  tipo = new int[10][10];

  randomSeed(123);

  for (int fila = 0; fila < 10; fila++) {
    for (int columna = 0; columna < 10; columna++) {
      int uno = (int)random(paleta.length);
      fondo[fila][columna] = paleta[uno];

      int dos = (int)random(paleta.length);
      while (dos == uno) {
        dos = (int)random(paleta.length);
      }
      formas[fila][columna] = paleta[dos];

      if (fila >= 2 && fila <= 7 && columna >= 2 && columna <= 7 && random(1) < 0.55) {
        tipo[fila][columna] = 1;
      } else {
        tipo[fila][columna] = 0;
      }
    }
  }
}

void draw() {
  background(245);

  if (foto != null) {
    image(foto, 0, 0, 400, 400);
  }

  float tam = 40;
  float inicioX = 400;

  for (int fila = 0; fila < 10; fila++) {
    for (int columna = 0; columna < 10; columna++) {
      float x = inicioX + columna * tam + tam / 2;
      float y = fila * tam + tam / 2;
      dibujar(x, y, fila, columna, tam);
    }
  }
}

void dibujar(float x, float y, int fila, int columna, float tam) {
  pushMatrix();
  translate(x, y);

  float distancia = dist(mouseX, mouseY, x, y);
  float escala = tamanio(distancia);

  if (negroBlanco) {
    fill(0);
  } else {
    fill(fondo[fila][columna]);
  }
  noStroke();
  rectMode(CENTER);
  rect(0, 0, tam, tam);

  pushMatrix();
  rotate(radians((fila + columna) * 4));

  float tamForma = tam * 0.65 * escala;

  if (negroBlanco) {
    fill(255);
  } else {
    fill(formas[fila][columna]);
  }

  if (tipo[fila][columna] == 0) {
    ellipse(0, 0, tamForma, tamForma);
  } else {
    rect(0, 0, tamForma, tamForma);
  }

  popMatrix();
  popMatrix();
}

float tamanio(float distancia) {
  if (distancia < 70) {
    return map(distancia, 0, 70, 1.6, 0.75);
  } else {
    return 0.75;
  }
}

void mousePressed() {
  negroBlanco = !negroBlanco;
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    negroBlanco = false;
    randomSeed(123);

    for (int fila = 0; fila < 10; fila++) {
      for (int columna = 0; columna < 10; columna++) {
        int uno = (int)random(paleta.length);
        fondo[fila][columna] = paleta[uno];

        int dos = (int)random(paleta.length);
        while (dos == uno) {
          dos = (int)random(paleta.length);
        }
        formas[fila][columna] = paleta[dos];

        if (fila >= 2 && fila <= 7 && columna >= 2 && columna <= 7 && random(1) < 0.55) {
          tipo[fila][columna] = 1;
        } else {
          tipo[fila][columna] = 0;
        }
      }
    }
  }
}
