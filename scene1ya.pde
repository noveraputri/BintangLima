import processing.sound.*;

class Scene1 {
  PFont font;
  PImage gambar;
  float[] sackOffsets = new float[3]; // Array untuk menyimpan offset vertikal setiap karung
  SoundFile file;
  PApplet parent;
  int startTime;
  SoundFile backgroundSound;

  Scene1(PApplet parent) {
    this.parent = parent;
    font = parent.createFont("Comic Sans MS", 25); // Font ukuran lebih kecil
    parent.textFont(font);
    gambar = parent.loadImage("Scene 1.png");
    //file = new SoundFile(parent, "Scene 1.mp3");
    //file.play();
    backgroundSound = new SoundFile(parent, "audio final.MP3"); // Ganti dengan nama file audio Anda
    backgroundSound.loop();
    startTime = parent.millis();
  }

  void draw() {
    parent.background(155); // Redraw background to clear previous frames
    parent.image(gambar, 0, 0);

    int elapsedTime = (parent.millis() - startTime) / 1000; // Calculate elapsed time in seconds

    if (elapsedTime >= 10) {
      drawBurlapSack(50, parent.height - 450 + sackOffsets[0], 200, 300, "cengkeh"); // Draw first sack at 10 seconds
      sackOffsets[0] = 20 * PApplet.sin(parent.millis() / 500.0); // Mengatur gerakan karung pertama
      drawBurlapSack(parent.width - 250, parent.height - 450 + sackOffsets[0], 200, 300, "cengkeh"); // Mirror of the first sack
    }
    if (elapsedTime >= 15) {
      drawBurlapSack(300, parent.height - 450 + sackOffsets[1], 200, 300, "pala"); // Draw second sack at 15 seconds
      sackOffsets[1] = 20 * PApplet.sin(parent.millis() / 500.0 + PApplet.PI / 2); // Mengatur gerakan karung kedua
      drawBurlapSack(parent.width - 500, parent.height - 450 + sackOffsets[1], 200, 300, "pala"); // Mirror of the second sack
    }
    if (elapsedTime >= 20) {
      drawBurlapSack(550, parent.height - 450 + sackOffsets[2], 200, 300, "lada"); // Draw third sack at 20 seconds
      sackOffsets[2] = 20 * PApplet.sin(parent.millis() / 500.0 + PApplet.PI); // Mengatur gerakan karung ketiga
      drawBurlapSack(parent.width - 750, parent.height - 450 + sackOffsets[2], 200, 300, "lada"); // Mirror of the third sack
    }
  }

  void drawBurlapSack(int x, float y, int sackWidth, int sackHeight, String label) {
    int trapezoidHeight = 20;

    parent.fill(210, 180, 140); // Coklat muda
    parent.beginShape();
    parent.vertex(x + 25, y); // Top left
    parent.vertex(x + sackWidth - 25, y); // Top right
    parent.vertex(x + sackWidth, y + trapezoidHeight); // Right curve
    parent.vertex(x + sackWidth, y + sackHeight - trapezoidHeight); // Bottom right curve
    parent.vertex(x + sackWidth - 25, y + sackHeight); // Bottom right
    parent.vertex(x + 25, y + sackHeight); // Bottom left
    parent.vertex(x, y + sackHeight - trapezoidHeight); // Bottom left curve
    parent.vertex(x, y + trapezoidHeight); // Top left curve
    parent.endShape(PApplet.CLOSE);

    parent.stroke(120, 100, 80);
    parent.bezier(x + 25, y + trapezoidHeight / 2, x + 50, y + trapezoidHeight, x + 150, y + trapezoidHeight, x + 175, y + trapezoidHeight / 2);
    parent.bezier(x + 25, y + sackHeight - trapezoidHeight / 2, x + 50, y + sackHeight - trapezoidHeight, x + 150, y + sackHeight - trapezoidHeight, x + 175, y + sackHeight - trapezoidHeight / 2);

    parent.fill(0); // Warna hitam untuk teks
    parent.textAlign(PApplet.CENTER, PApplet.CENTER);
    parent.textSize(25);
    parent.text(label, x + sackWidth / 2, y + sackHeight / 2);
  }

  void stop() {
    if (file != null) {
      file.stop();
      backgroundSound.stop();
    }
  }
}
