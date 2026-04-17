/* Mi nombre es Abigail Rodriguez Paez, este es mi elección de mural de florecitas y soy de la comisión 3*/

PImage foto;

void setup() {
  size(800, 400);
  foto = loadImage("mural1.jpg");
}

void draw() {
  fill(230, 230, 230);
  rect(0, 0, 800, 400);

  stroke(0, 0, 0, 0);
  strokeWeight(0);
  fill(20, 30, 40);
  rect(0, 0, 400, 400);
  if (foto != null) image(foto, 0, 0, 400, 400);

  stroke(0, 0, 0, 120);
  strokeWeight(3);
  line(400, 0, 400, 400);

  strokeWeight(0);
  stroke(0, 0, 0, 0);
  fill(120, 205, 210);
  rect(400, 0, 400, 400);

  stroke(0, 0, 0, 130);
  strokeWeight(2);
  fill(0, 0, 0, 0);
  int px = 16;
  int py = 18;
  while (py < 320) {
    px = 16;
    while (px < 390) {
      ellipse(400 + px, py, 3, 3);
      px += 22;
    }
    py += 22;
  }

  stroke(0, 0, 0, 200);
  strokeWeight(4);
  fill(70, 200, 170);

  // hoja 1
  beginShape();
  vertex(400 + 30, 80);
  bezierVertex(400 + 60, 30, 400 + 140, 30, 400 + 170, 80);
  bezierVertex(400 + 140, 140, 400 + 60, 140, 400 + 30, 80);
  endShape();

  // hoja 2
  beginShape();
  vertex(400 + 110, 40);
  bezierVertex(400 + 150, 10, 400 + 230, 15, 400 + 260, 70);
  bezierVertex(400 + 230, 135, 400 + 150, 120, 400 + 110, 40);
  endShape();

  // hoja 3
  beginShape();
  vertex(400 + 235, 70);
  bezierVertex(400 + 270, 20, 400 + 350, 25, 400 + 375, 90);
  bezierVertex(400 + 345, 150, 400 + 270, 140, 400 + 235, 70);
  endShape();

  // hoja 4
  beginShape();
  vertex(400 + 60, 170);
  bezierVertex(400 + 110, 130, 400 + 190, 140, 400 + 215, 210);
  bezierVertex(400 + 175, 270, 400 + 95, 255, 400 + 60, 170);
  endShape();

  // hoja 5
  beginShape();
  vertex(400 + 210, 175);
  bezierVertex(400 + 260, 130, 400 + 350, 150, 400 + 370, 230);
  bezierVertex(400 + 330, 295, 400 + 250, 270, 400 + 210, 175);
  endShape();

  stroke(0, 0, 0, 120);
  strokeWeight(3);
  bezier(400 + 55, 85, 400 + 85, 70, 400 + 120, 70, 400 + 150, 85);
  bezier(400 + 135, 55, 400 + 165, 45, 400 + 205, 50, 400 + 240, 75);
  bezier(400 + 255, 90, 400 + 290, 75, 400 + 330, 80, 400 + 360, 105);

  stroke(0, 0, 0, 220);
  strokeWeight(4);
  fill(40, 150, 120);
  rect(400 + 0, 330, 400, 70);

  stroke(0, 0, 0, 210);
  strokeWeight(3);
  int i = 0;
  while (i < 18) {
    float x = 18 + i * 21;
    bezier(400 + x, 400, 400 + x - 10, 372, 400 + x + 10, 350, 400 + x, 330);
    i++;
  }

  stroke(0, 0, 0, 230);
  strokeWeight(4);
  fill(245, 190, 45);
  triangle(400 + 110, 95, 400 + 95, 25, 400 + 125, 25);
  triangle(400 + 110, 95, 400 + 145, 32, 400 + 170, 55);
  triangle(400 + 110, 95, 400 + 180, 85, 400 + 180, 110);
  triangle(400 + 110, 95, 400 + 170, 140, 400 + 145, 160);
  triangle(400 + 110, 95, 400 + 125, 170, 400 + 95, 170);
  triangle(400 + 110, 95, 400 + 55, 160, 400 + 40, 140);
  triangle(400 + 110, 95, 400 + 35, 110, 400 + 35, 85);
  triangle(400 + 110, 95, 400 + 40, 55, 400 + 55, 35);
  fill(240, 120, 60);
  ellipse(400 + 110, 95, 55, 55);
  strokeWeight(3);
  fill(0, 0, 0, 0);
  arc(400 + 110, 95, 48, 48, 0, PI);

  stroke(0, 0, 0, 230);
  strokeWeight(4);
  fill(245, 190, 45);
  triangle(400 + 255, 90, 400 + 240, 20, 400 + 270, 20);
  triangle(400 + 255, 90, 400 + 290, 27, 400 + 315, 50);
  triangle(400 + 255, 90, 400 + 325, 80, 400 + 325, 105);
  triangle(400 + 255, 90, 400 + 315, 135, 400 + 290, 155);
  triangle(400 + 255, 90, 400 + 270, 165, 400 + 240, 165);
  triangle(400 + 255, 90, 400 + 200, 155, 400 + 185, 135);
  triangle(400 + 255, 90, 400 + 180, 105, 400 + 180, 80);
  triangle(400 + 255, 90, 400 + 185, 50, 400 + 200, 30);
  fill(240, 120, 60);
  ellipse(400 + 255, 90, 60, 60);
  strokeWeight(3);
  fill(0, 0, 0, 0);
  arc(400 + 255, 90, 52, 52, PI, TWO_PI);

  stroke(0, 0, 0, 240);
  strokeWeight(4);
  fill(205, 55, 55);
  ellipse(400 + 60, 95, 45, 45);
  ellipse(400 + 90, 120, 45, 45);
  ellipse(400 + 75, 155, 45, 45);
  ellipse(400 + 45, 155, 45, 45);
  ellipse(400 + 30, 120, 45, 45);
  fill(245, 205, 70);
  ellipse(400 + 60, 125, 28, 28);

  stroke(0, 0, 0, 240);
  strokeWeight(4);
  fill(205, 55, 55);
  ellipse(400 + 330, 62, 42, 42);
  ellipse(400 + 360, 87, 42, 42);
  ellipse(400 + 345, 122, 42, 42);
  ellipse(400 + 315, 122, 42, 42);
  ellipse(400 + 300, 87, 42, 42);
  fill(245, 205, 70);
  ellipse(400 + 330, 92, 26, 26);

  stroke(0, 0, 0, 230);
  strokeWeight(4);
  fill(245, 190, 45);
  triangle(400 + 170, 215, 400 + 155, 150, 400 + 185, 150);
  triangle(400 + 170, 215, 400 + 205, 160, 400 + 225, 185);
  triangle(400 + 170, 215, 400 + 235, 210, 400 + 235, 235);
  triangle(400 + 170, 215, 400 + 225, 260, 400 + 205, 280);
  triangle(400 + 170, 215, 400 + 185, 290, 400 + 155, 290);
  triangle(400 + 170, 215, 400 + 115, 280, 400 + 100, 260);
  triangle(400 + 170, 215, 400 + 95, 235, 400 + 95, 210);
  triangle(400 + 170, 215, 400 + 100, 185, 400 + 115, 165);
  fill(240, 120, 60);
  ellipse(400 + 170, 215, 62, 62);

  stroke(0, 0, 0, 240);
  strokeWeight(4);
  fill(205, 55, 55);
  ellipse(400 + 300, 255, 45, 45);
  ellipse(400 + 330, 280, 45, 45);
  ellipse(400 + 315, 315, 45, 45);
  ellipse(400 + 285, 315, 45, 45);
  ellipse(400 + 270, 280, 45, 45);
  fill(245, 205, 70);
  ellipse(400 + 300, 285, 28, 28);

  stroke(0, 0, 0, 255);
  strokeWeight(6);
  fill(0, 0, 0, 0);
  rect(400 + 3, 3, 394, 394);
}

void mousePressed() {
  foto = loadImage("mural1.jpg");
}
