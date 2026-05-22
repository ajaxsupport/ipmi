PImage logoLimp, fondo, imgFred, imgWes, imgDj, imgJohn, imgBanda;
PFont fuenteLimp, fuenteChica;

boolean tituloYBoton, cuadroPos;
int posX, posY, velX, velY, frameDelCuadro, caracter, pantalla;
String descripcion;
String nombreCuadro;

int ESPERA_PARA_LEER = 240;
int CADA_CUANTOS_FRAMES_LETRA = 2;

void setup() {
  size(640, 480);

  logoLimp = loadImage("Logo Limp Bizkit.jpg");
  fondo = loadImage("Fondo Limp.jpg");
  imgFred = loadImage("Cuadro1.jpg");
  imgWes = loadImage("Cuadro2.jpg");
  imgDj = loadImage("Cuadro3.jpg");
  imgJohn = loadImage("Cuadro4.jpg");
  imgBanda = loadImage("Cuadro5.jpg");

  fuenteLimp = createFont("Impact", 38);
  fuenteChica = createFont("Impact", 20);

  tituloYBoton = true;
  cuadroPos = false;
  velY = 18;
  velX = 18;
  posY = 480;
  posX = -256;
  frameDelCuadro = 0;
  caracter = 0;
  descripcion = "";
  nombreCuadro = "";
  pantalla = 1;
}

void draw() {
  if (fondo != null) {
    image(fondo, 0, 0, 640, 480);
  } else {
    background(20);
  }

  if (tituloYBoton) {
    avilamejorDibujarTitulo();
    avilamejorDibujarBoton();
  } else {
    tartagliaRectanguloInfo();

    if (pantalla == 1) {
      avilamejorPantallaBanda();
    } else if (pantalla == 2) {
      avilamejorPantallaFred();
    } else if (pantalla == 3) {
      avilamejorPantallaWes();
    } else if (pantalla == 4) {
      avilamejorPantallaDj();
    } else if (pantalla == 5) {
      avilamejorPantallaJohn();
    } else if (pantalla == 6) {
      avilamejorPantallaSam();
    } else if (pantalla == 7) {
      avilamejorPantallaFinal();
    }
  }
}

void mousePressed() {
  if (tituloYBoton) {
    if (mouseX >= 270 && mouseX <= 370 && mouseY >= 400 && mouseY <= 450) {
      tituloYBoton = false;
      pantalla = 1;
      tartagliaResetearPantalla();
    }
  } else if (pantalla == 7) {
    if (mouseX >= 270 && mouseX <= 370 && mouseY >= 400 && mouseY <= 450) {
      avilamejorReiniciar();
    }
  }
}

void tartagliaResetearPantalla() {
  cuadroPos = false;
  posX = -256;
  caracter = 0;
  descripcion = "";
  frameDelCuadro = 0;
  posY = 480;
}

void avilamejorDibujarTitulo() {
  textFont(fuenteLimp);
  fill(0, 180);
  rect(120, 50, 400, 200, 20);

  if (logoLimp != null) {
    image(logoLimp, 160, 80, 320, 100);
  }

  fill(220, 0, 0);
  textSize(34);
  textAlign(CENTER, CENTER);
  text("LIMP BIZKIT", 320, 200);

  textFont(fuenteChica);
  textSize(20);
  fill(200);
  text("Nu-metal / Rap-rock", 320, 238);
  text("Click en PLAY", 320, 262);
}

void avilamejorDibujarBoton() {
  textFont(fuenteLimp);
  fill(120, 0, 0);
  rect(270, 400, 100, 50, 8);
  fill(255);
  textSize(24);
  textAlign(CENTER, CENTER);
  text("PLAY", 320, 425);
}

void avilamejorPantallaBanda() {
  if (logoLimp != null) {
    image(logoLimp, posX, 100, 256, 256);
  }
  nombreCuadro = "Limp Bizkit";
  tartagliaDibujarNombreCuadro();
  tartagliaAnimarCuadroYTexto();

  if (cuadroPos == false) {
    posX = posX + velX;
    if (posX >= 30) {
      cuadroPos = true;
      frameDelCuadro = 0;
      descripcion = "Limp Bizkit: nu-metal y rap-rock.\nFormada en 1994 en Florida.\n\nMezclan metal, rap y DJ.\nVendieron millones de discos.\n\nAlbumes: Significant Other\ny Chocolate Starfish.\n\nHits: Nookie, Break Stuff,\nRollin y My Generation.";
      caracter = 0;
    }
  }
}

void avilamejorPantallaFred() {
  if (imgFred != null) {
    image(imgFred, posX, 100, 256, 256);
  }
  nombreCuadro = "Fred Durst";
  tartagliaDibujarNombreCuadro();
  tartagliaAnimarCuadroYTexto();

  if (cuadroPos == false) {
    posX = posX + velX;
    if (posX >= 30) {
      cuadroPos = true;
      frameDelCuadro = 0;
      descripcion = "Fred Durst: vocalista y lider.\nNacio en 1970 en EE.UU.\n\nCanta, rapea y lidera el show.\nDirigio videos y peliculas.\n\nEs la cara de la banda.\nCofundador y letrista.";
      caracter = 0;
    }
  }
}

void avilamejorPantallaWes() {
  if (imgWes != null) {
    image(imgWes, posX, 100, 256, 256);
  }
  nombreCuadro = "Wes Borland";
  tartagliaDibujarNombreCuadro();
  tartagliaAnimarCuadroYTexto();

  if (cuadroPos == false) {
    posX = posX + velX;
    if (posX >= 30) {
      cuadroPos = true;
      frameDelCuadro = 0;
      descripcion = "Wes Borland: guitarrista.\nMaquillaje y shows unicos.\n\nGuitarras de 7 cuerdas.\nSonidos raros y creativos.\n\nProyecto: Black Light Burns.\nEstilo muy reconocible.";
      caracter = 0;
    }
  }
}

void avilamejorPantallaDj() {
  if (imgDj != null) {
    image(imgDj, posX, 100, 256, 256);
  }
  nombreCuadro = "DJ Lethal";
  tartagliaDibujarNombreCuadro();
  tartagliaAnimarCuadroYTexto();

  if (cuadroPos == false) {
    posX = posX + velX;
    if (posX >= 30) {
      cuadroPos = true;
      frameDelCuadro = 0;
      descripcion = "DJ Lethal: turntables.\nNombre: Leor Dimant.\n\nSamples y scratches.\nAntes en House of Pain.\n\nEntro en 1996.\nUne rap con rock pesado.";
      caracter = 0;
    }
  }
}

void avilamejorPantallaJohn() {
  if (imgJohn != null) {
    image(imgJohn, posX, 100, 256, 256);
  }
  nombreCuadro = "John Otto";
  tartagliaDibujarNombreCuadro();
  tartagliaAnimarCuadroYTexto();

  if (cuadroPos == false) {
    posX = posX + velX;
    if (posX >= 30) {
      cuadroPos = true;
      frameDelCuadro = 0;
      descripcion = "John Otto: baterista.\nCofundador de la banda.\n\nBateria funk y rock.\nRitmo de Nookie y Rollin.\n\nBase de todo el sonido.\nMuy fuerte en vivo.";
      caracter = 0;
    }
  }
}

void avilamejorPantallaSam() {
  if (imgBanda != null) {
    image(imgBanda, posX, 100, 256, 256);
  }
  nombreCuadro = "Sam Rivers";
  tartagliaDibujarNombreCuadro();
  tartagliaAnimarCuadroYTexto();

  if (cuadroPos == false) {
    posX = posX + velX;
    if (posX >= 30) {
      cuadroPos = true;
      frameDelCuadro = 0;
      descripcion = "Sam Rivers: bajo.\nCofundador del grupo.\n\nGroove del nu-metal.\nCon John Otto en el ritmo.\n\nSonido pesado y marcado.\nPilar de la banda.";
      caracter = 0;
    }
  }
}

void avilamejorPantallaFinal() {
  textFont(fuenteLimp);
  if (imgBanda != null) {
    image(imgBanda, 80, 60, 480, 260);
  }
  fill(0, 180);
  rect(120, 330, 400, 60, 15);
  fill(220, 0, 0);
  textSize(26);
  textAlign(CENTER, CENTER);
  text("FIN - Gracias", 320, 360);

  fill(120, 0, 0);
  rect(270, 400, 100, 50, 8);
  fill(255);
  textSize(22);
  text("RESET", 320, 425);
}

void avilamejorReiniciar() {
  tituloYBoton = true;
  pantalla = 1;
  tartagliaResetearPantalla();
}

void tartagliaDibujarNombreCuadro() {
  fill(0, 180);
  rect(posX, 360, 256, 50, 10);
  fill(220, 0, 0);
  textFont(fuenteChica);
  textSize(18);
  textAlign(CENTER, CENTER);
  text(nombreCuadro, posX + 128, 385);
}

void tartagliaRectanguloInfo() {
  fill(0, 180);
  rect(288, posY, 342, 302, 20);

  if (posY > 80) {
    posY = posY - velY;
  } else {
    textFont(fuenteChica);
    fill(255, 55, 55);
    textSize(20);
    textAlign(LEFT, TOP);

    int largo = descripcion.length();
    int hasta = caracter;
    if (hasta > largo) {
      hasta = largo;
    }
    String textoAnimado = descripcion.substring(0, hasta);
    text(textoAnimado, 302, 92, 315);
  }
}

void tartagliaAnimarCuadroYTexto() {
  if (cuadroPos) {
    if (frameDelCuadro > 0 && frameCount > frameDelCuadro) {
      if (posX > -300) {
        posX = posX - velX;
      }
      if (posX <= -256 && caracter == 0) {
        pantalla = pantalla + 1;
        tartagliaResetearPantalla();
      }
      if (frameCount % CADA_CUANTOS_FRAMES_LETRA == 0 && caracter > 0) {
        if (caracter > 4) {
          caracter = caracter - 4;
        } else {
          caracter = caracter - 1;
        }
      }
    } else {
      if (caracter < descripcion.length()) {
        if (frameCount % CADA_CUANTOS_FRAMES_LETRA == 0) {
          caracter = caracter + 1;
        }
      } else if (frameDelCuadro == 0) {
        frameDelCuadro = frameCount + ESPERA_PARA_LEER;
      }
    }
  }
}
