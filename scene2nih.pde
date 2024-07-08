import processing.sound.*;

class Scene2 {
  PFont font;
  int startTime;
  int farmer1X, farmer2X, farmer3X;
  boolean farmer1ReachedMiddle, farmer2ReachedMiddle, farmer3ReachedMiddle;
  int step;
  SoundFile file;
  PApplet parent;

  Scene2(PApplet parent) {
    this.parent = parent;
    font = parent.createFont("Comic Sans MS", 50);
    parent.textFont(font);

    startTime = parent.millis();
    farmer1X = -150;
    farmer2X = -150;
    farmer3X = -150;
    farmer1ReachedMiddle = false;
    farmer2ReachedMiddle = false;
    farmer3ReachedMiddle = false;
    step = 0;

    //file = new SoundFile(parent, "Scene 2.mp3");
    //file.play();
  }

  void draw() {
    parent.background(135, 206, 235); // Redraw the sky blue background to clear previous frames

    int currentTime = parent.millis();

    // Farmer 1 appears after 3 seconds
    if (currentTime - startTime >= 3000) {
      if (farmer1X < parent.width / 2 - 300) {
        farmer1X += 5;
      } else {
        farmer1ReachedMiddle = true;
      }
      drawFarmer(farmer1X, parent.height / 2, farmer1ReachedMiddle && farmer2ReachedMiddle && farmer3ReachedMiddle, farmer1ReachedMiddle, "cengk");
    }

    // Farmer 2 appears after 6 seconds
    if (currentTime - startTime >= 6000) {
      if (farmer2X < parent.width / 2) {
        farmer2X += 5;
      } else {
        farmer2ReachedMiddle = true;
      }
      drawFarmer(farmer2X, parent.height / 2, farmer1ReachedMiddle && farmer2ReachedMiddle && farmer3ReachedMiddle, farmer2ReachedMiddle, "pala");
    }

    // Farmer 3 appears after 9 seconds
    if (currentTime - startTime >= 9000) {
      if (farmer3X < parent.width / 2 + 300) {
        farmer3X += 5;
      } else {
        farmer3ReachedMiddle = true;
      }
      drawFarmer(farmer3X, parent.height / 2, farmer1ReachedMiddle && farmer2ReachedMiddle && farmer3ReachedMiddle, farmer3ReachedMiddle, "lada");
    }

    step++;
  }

  void drawFarmer(int x, int y, boolean wave, boolean stopLegs, String sackName) {
    int farmerHeight = 450; // Total height of the farmer
    int legOffset = (int)(10 * parent.sin(parent.radians(step * 5)));
    boolean moving = !stopLegs;
    
    // Draw the face
    parent.fill(255, 224, 189);
    parent.ellipse(x, y, 100, 120);

    // Draw the eyes
    parent.fill(255);
    parent.ellipse(x - 20, y - 20, 20, 20);
    parent.fill(0);
    parent.ellipse(x - 20, y - 20, 10, 10);
    parent.fill(255);
    parent.ellipse(x + 20, y - 20, 20, 20);
    parent.fill(0);
    parent.ellipse(x + 20, y - 20, 10, 10);

    // Draw the mouth
    parent.fill(255, 0, 0);
    parent.arc(x, y + 20, 50, 20, 0, PApplet.PI);

    // Draw the body
    parent.fill(34, 139, 34);
    parent.rect(x - 50, y + 60, 100, 150, 20);

    // Draw the arms
    parent.fill(34, 139, 34);
    parent.rect(x - 80, y + 60, 30, 100, 20);
    parent.rect(x + 50, y + 60, 30, 100, 20);

    // Draw the hands
    parent.fill(255, 224, 189);
    parent.ellipse(x - 65, y + 160, 30, 30);
    parent.ellipse(x + 65, y + (wave ? 10 : 160), 30, 30);

    // Draw the waving arm
    if (wave) {
      parent.fill(34, 139, 34);
      parent.rect(x + 50, y + 10, 30, 150, 20);
      parent.fill(255, 224, 189);
      parent.ellipse(x + 65, y + 10, 30, 30);
    }

    // Draw the legs with movement
    parent.fill(139, 69, 19);
    parent.rect(x - 50 + (moving ? legOffset : 0), y + 210, 45, 150, 10);
    parent.rect(x + 5 - (moving ? legOffset : 0), y + 210, 45, 150, 10);

    // Draw the sandals
    parent.fill(205, 133, 63);
    parent.rect(x - 50 + (moving ? legOffset : 0), y + 360, 45, 10, 10);
    parent.rect(x + 5 - (moving ? legOffset : 0), y + 360, 45, 10, 10);

    // Draw the hat (caping) after drawing the face, so it covers part of the head
    parent.fill(139, 69, 19);
    parent.triangle(x - 70, y - 40, x + 70, y - 40, x, y - 120);

    // Draw the burlap sack next to the farmer
    drawBurlapSack(x + 80, y + 150, farmerHeight / 2, sackName);
  }

  void drawBurlapSack(int x, int y, int sackHeight, String sackName) {
    // Sack color
    int sackColor = parent.color(210, 180, 140); // Light brown

    // Sack dimensions
    int sackWidth = 60;
    
    // Draw sack
    parent.fill(sackColor);
    parent.rect(x - 30, y, sackWidth, sackHeight, 10);

    // Draw text on the sack
    parent.fill(0);
    parent.textAlign(PApplet.CENTER, PApplet.CENTER);
    parent.textSize(20);
    parent.text(sackName, x, y + sackHeight / 2);
  }

  void stop() {
    if (file != null) {
      file.stop();
    }
  }
}
