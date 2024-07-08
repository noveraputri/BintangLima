import processing.sound.*;

class Scene6 {
  float yoff = 0.0;
  float angle = 0;
  float sunRadius = 199;
  float maxRayLength = 200;
  float minRayLength = 100;
  int centerX = 1757;
  int centerY = 140;
  SoundFile file;
  PApplet parent;

  Scene6(PApplet parent) {
    this.parent = parent;
    //String audioName = "Scene 3.mp3";
    //String path = parent.sketchPath(audioName);
    //file = new SoundFile(parent, path);
    //file.play();
  }

  void draw() {
    // Background
    parent.background(100, 200, 255);

    // Matahari
    parent.fill(255, 155, 5);
    parent.stroke(255, 255, 0);
    parent.ellipse(centerX, centerY, sunRadius, sunRadius);

    // Sinar Matahari
    parent.stroke(255, 255, 0);
    parent.strokeWeight(4);

    for (int i = 0; i < 360; i += 15) {
      float x1 = centerX + parent.cos(parent.radians(i)) * (sunRadius / 2);
      float y1 = centerY + parent.sin(parent.radians(i)) * (sunRadius / 2);
      float x2 = centerX + parent.cos(parent.radians(i)) * (minRayLength + (maxRayLength - minRayLength) * (0.5 + 0.5 * parent.sin(parent.radians(angle))));
      float y2 = centerY + parent.sin(parent.radians(i)) * (minRayLength + (maxRayLength - minRayLength) * (0.5 + 0.5 * parent.sin(parent.radians(angle))));
      parent.line(x1, y1, x2, y2);
    }

    angle += 2; // Mengubah sudut untuk animasi

    parent.pushMatrix();
    parent.beginShape();
    parent.translate(parent.width / 10, parent.height / 25);
    parent.noStroke();
    parent.fill(180, 75, 0); // lambung merah
    parent.arc(960, 540, 310, 100, 0, PApplet.PI); // lambung kapal
    parent.fill(150, 75, 0); // badan kapal
    parent.rect(810, 490, 100, 50, 0, 6, 0, 0);
    parent.rect(910, 515, 100, 25, 0);
    parent.quad(1010, 515, 1060, 475, 1060, 540, 1010, 540);
    parent.rect(1060, 475, 50, 65, 0);

    parent.rect(860, 415, 5, 75, 6, 6, 0, 0); // tiang depan
    parent.rect(960, 375, 8, 150, 6, 6, 0, 0); // tiang tengah
    parent.fill(150, 105, 0); // coklat muda
    parent.rect(760, 490, 50, 3, 72, 0, 0, 72); // tiang depan ujung

    parent.fill(230);
    parent.triangle(862.5, 475, 862.5, 415, 910, 475); // layar depan
    parent.fill(215);
    parent.triangle(962.5, 475, 962.5, 375, 1015, 475); // layar tengah
    parent.fill(240);
    parent.triangle(962.5, 495, 962.5, 395, 1015, 495); // layar tengah

    // jendela detail
    parent.fill(225);
    parent.circle(830, 510, 10);
    parent.circle(850, 510, 10);
    parent.circle(870, 510, 10);
    parent.circle(890, 510, 10);
    parent.circle(1080, 500, 30);
    parent.endShape();
    parent.popMatrix();

    // Efek noisewave pada laut
    parent.fill(17, 112, 183); // Warna biru laut
    parent.noStroke();
    parent.beginShape();
    float xoff = 0;

    // Iterate over horizontal pixels
    for (float x = 0; x <= parent.width; x += 10) {
      // Calculate a y value according to noise, map to
      float y = parent.map(parent.noise(xoff, yoff), 0, 1, 560, 640);

      // Set the vertex
      parent.vertex(x, y);
      // Increment x dimension for noise
      xoff += 0.02;
    }
    // increment y dimension for noise
    yoff += 0.005;
    parent.vertex(parent.width, parent.height);
    parent.vertex(0, parent.height);
    parent.endShape(PApplet.CLOSE);

    // Boat details
    parent.fill(99, 69, 43);
    parent.rect(416, 551, 600, 70);

    parent.fill(83, 59, 37);
    parent.rect(0, 551, 416, 529);

    parent.fill(61, 59, 59);
    parent.rect(559, 621, 22, 459);
    parent.rect(938, 621, 22, 459);
    parent.rect(749, 621, 22, 459);

    // Boat vertical lines
    parent.fill(61, 59, 59);
    parent.rect(513, 492, 4, 59);
    parent.rect(407, 492, 4, 59);
    parent.rect(460, 492, 4, 59);
    parent.rect(991, 492, 4, 59);
    parent.rect(938, 492, 4, 59);
    parent.rect(884, 492, 4, 59);
    parent.rect(831, 492, 4, 59);
    parent.rect(778, 492, 4, 59);
    parent.rect(725, 492, 4, 59);
    parent.rect(672, 492, 4, 59);
    parent.rect(619, 492, 4, 59);
    parent.rect(566, 492, 4, 59);

    // Boat outline
    parent.stroke(0);
    parent.line(407, 494, 995, 494);
    parent.noFill();

    parent.pushMatrix();
    parent.translate(0, 0);
    parent.noStroke();

    // Gray rectangles
    parent.fill(53, 52, 52); // #353434
    parent.rect(101, 615 - 71, 160, 10);

    parent.fill(109, 104, 104); // #6D6868
    parent.rect(100, 473 - 71, 160, 10);

    parent.fill(217, 217, 217); // #D9D9D9
    parent.rect(130, 571 - 71, 5, 50);
    parent.rect(225, 571 - 71, 5, 50);

    parent.fill(120, 95, 95); // #785F5F
    parent.rect(225, 511 - 71, 5, 50);
    parent.rect(130, 511 - 71, 5, 50);

    parent.fill(53, 52, 52); // #353434
    parent.rect(116, 561 - 71, 130, 10);

    parent.fill(242, 130, 130); // #F28282
    parent.rect(130, 571 - 71, 100, 44);

    parent.fill(255); // white
    parent.textSize(12);

    // White circles
    parent.fill(255); // white
    parent.ellipse(154, 546 - 71, 20, 20);
    parent.ellipse(209, 546 - 71, 20, 20);
    parent.ellipse(183, 546 - 71, 20, 20);

    // White lines
    parent.stroke(255); // white
    parent.line(100.468f, 478.177f - 71, 83.5045f, 523.079f - 71);
    parent.line(258.466f, 477.82f - 71, 275.766f, 522.594f - 71);

    // Gray rectangles
    parent.noStroke();
    parent.fill(217, 217, 217); // #D9D9D9
    parent.rect(100, 483 - 71, 161, 40);

    // Gray paths
    parent.fill(217, 217, 217); // #D9D9D9
    parent.beginShape();
    parent.vertex(260.5f, 483 - 71);
    parent.vertex(281.718f, 522.75f - 71);
    parent.vertex(239.282f, 522.75f - 71);
    parent.vertex(260.5f, 483 - 71);
    parent.endShape(PApplet.CLOSE);

    parent.beginShape();
    parent.vertex(101.5f, 483 - 71);
    parent.vertex(122.718f, 522.75f - 71);
    parent.vertex(80.2824f, 522.75f - 71);
    parent.vertex(101.5f, 483 - 71);
    parent.endShape(PApplet.CLOSE);
    parent.popMatrix();

    // Lingkaran-lingkaran putih (awan)
    parent.fill(255); // Warna putih
    parent.noStroke();

    float[][] circles = {
      {997, 204}, {1052, 232}, {1019, 229}, {1084, 204}, {1119, 193},
      {1119, 218}, {1094, 243}, {1044, 204}, {1019, 182}, {697, 118},
      {752, 146}, {719, 143}, {784, 118}, {760, 82}, {819, 107},
      {796, 88}, {819, 132}, {794, 157}, {744, 118}, {719, 96},
      {1695, 199}, {1750, 227}, {1717, 224}, {1782, 199}, {1817, 188},
      {1817, 213}, {1792, 238}, {1742, 199}, {1717, 177}, {1339, 99},
      {1394, 127}, {1361, 124}, {1419, 102}, {1436, 138}, {1394, 149},
      {1344, 149}, {1386, 99}, {1369, 74}, {347, 163}, {402, 191},
      {369, 188}, {427, 166}, {452, 168}, {419, 146}, {444, 202},
      {402, 213}, {352, 213}, {394, 163}, {377, 138}
    };

    for (int i = 0; i < circles.length; i++) {
      parent.ellipse(circles[i][0], circles[i][1], 50, 50);
    }
  }

  void stop() {
    if (file != null) {
      file.stop();
    }
  }
}
