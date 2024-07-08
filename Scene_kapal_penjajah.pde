import processing.sound.*;

class Scene4 {
  float Xawn1 = 0; // variabel awan
  float Xawn2 = 0;
  float Xobk1 = 0; // variabel ombak
  float Xobk2 = 0;
  float Xobk3 = 0;
  float Xobk4 = 0;
  float Xobk5 = 0;
  float Xobk6 = 0;
  float Xobk7 = 0;
  float Xobk8 = 0;

  float startTime; // Waktu mulai animasi
  float xPosition; // Posisi horizontal kapal
  float yoff = 0.0; // 2nd dimension of perlin noise

  SoundFile file;
  PApplet parent;

  Scene4(PApplet parent) {
    this.parent = parent;
    //String audioName = "Scene 4.mp3";
    //String path = parent.sketchPath(audioName);
    //file = new SoundFile(parent, path);
    //file.play();
    xPosition = parent.width; // Mulai dari kanan layar
    startTime = parent.millis(); // Catat waktu mulai
  }

  void draw() {
    float totalDuration = 30.0; // Durasi total dalam detik
    float stopDuration = 10.0; // Durasi berhenti di tengah dalam detik
    float time = parent.millis() / 1000.0; // Waktu dalam detik
    float phaseTime = time % totalDuration; // Waktu dalam fase 30 detik

    parent.background(100, 200, 255);

    if (phaseTime < 10.0) {
      // Fase pertama: bergerak dari kiri ke tengah selama 10 detik
      xPosition = (phaseTime * parent.width / 20);
    } else if (phaseTime < 20.0) {
      // Fase kedua: berhenti di tengah selama 10 detik
      xPosition = parent.width / 2;
    } else {
      // Fase ketiga: bergerak dari tengah ke kanan selama 10 detik
      xPosition = (parent.width / 2) + ((phaseTime - 20.0) * parent.width / 20);
    }

    parent.pushMatrix();
    parent.translate(xPosition - 100, parent.height / 12); // Translasi berdasarkan posisi x dan tinggi relatif
    parent.fill(255, 155, 5);
    parent.stroke(255, 255, 0);
    parent.ellipse(100, 100, 200, 200);
    parent.noStroke();
    parent.popMatrix();

    Xawn1 += 0.5 + 1;
    Xawn2 += 2 + 1;

    // awan
    if (Xawn1 >= 1920) {
      Xawn1 = -250;
    }
    parent.fill(255, 255, 255);
    parent.ellipse(124 + Xawn1, 132, 60, 40);
    parent.ellipse(156 + Xawn1, 110, 70, 60);
    parent.ellipse(200 + Xawn1, 105, 70, 60);
    parent.ellipse(210 + Xawn1, 130, 90, 50);

    if (Xawn2 >= 1920) {
      Xawn2 = -250;
    }
    parent.fill(255, 255, 255);
    parent.ellipse(24 + Xawn2, 302, 60, 40);
    parent.ellipse(56 + Xawn2, 280, 70, 60);
    parent.ellipse(100 + Xawn2, 285, 70, 40);
    parent.ellipse(130 + Xawn2, 300, 60, 30);

    if (phaseTime < 10.0) {
      // Fase pertama: bergerak dari kanan ke tengah selama 10 detik
      xPosition = parent.width - (phaseTime * parent.width / 20);
    } else if (phaseTime < 20.0) {
      // Fase kedua: berhenti di tengah selama 10 detik
      xPosition = parent.width / 2;
    } else {
      // Fase ketiga: bergerak dari tengah ke kiri selama 10 detik
      xPosition = parent.width / 2 - ((phaseTime - 20.0) * parent.width / 20);
    }

    parent.pushMatrix();
    parent.translate(xPosition - 960, 0); // Translasi berdasarkan posisi x dengan penyesuaian untuk menggambar kapal di tengah layar
    parent.beginShape();
    parent.noStroke();
    parent.fill(180, 75, 0); // Lambung merah
    parent.arc(960, 540, 310, 100, 0, PApplet.PI); // Lambung kapal
    parent.fill(150, 75, 0); // Badan kapal
    parent.rect(810, 490, 100, 50, 0, 6, 0, 0);
    parent.rect(910, 515, 100, 25, 0);
    parent.quad(1010, 515, 1060, 475, 1060, 540, 1010, 540);
    parent.rect(1060, 475, 50, 65, 0);

    parent.rect(860, 415, 5, 75, 6, 6, 0, 0); // Tiang depan
    parent.rect(960, 375, 8, 150, 6, 6, 0, 0); // Tiang tengah
    parent.fill(150, 105, 0); // Coklat muda
    parent.rect(760, 490, 50, 3, 72, 0, 0, 72); // Tiang depan ujung

    parent.fill(230);
    parent.triangle(862.5, 475, 862.5, 415, 910, 475); // Layar depan
    parent.fill(215);
    parent.triangle(962.5, 475, 962.5, 375, 1015, 475); // Layar tengah
    parent.fill(240);
    parent.triangle(962.5, 495, 962.5, 395, 1015, 495); // Layar tengah

    // Jendela detail
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
    float xoff = 0; // Option #1: 2D Noise

    // Iterate over horizontal pixels
    for (float x = 0; x <= parent.width; x += 10) {
      // Calculate a y value according to noise, map to
      float y = parent.map(parent.noise(xoff, yoff), 0, 1, 470, 640); // Option #1: 2D Noise

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
  }

  void stop() {
    if (file != null) {
      file.stop();
    }
  }
}
