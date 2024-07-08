import processing.sound.*;

Scene1 scene1;
Scene2 scene2;
Scene3 scene3;
Scene4 scene4;
Scene5 scene5;
Scene6 scene6;
SoundFile soundFile;
int currentScene;
int sceneStartTime;

void setup() {
  size(1920, 1080);
  currentScene = 1;
  sceneStartTime = millis();
  scene1 = new Scene1(this);
  soundFile = new SoundFile(this, "audio final.MP3");
  soundFile.play();
}

void draw() {
  if (currentScene == 1) {
    scene1.draw();
    if (millis() - sceneStartTime > 34000) { // Assuming scene 1 lasts 30 seconds
      scene1.stop();
      scene2 = new Scene2(this); // Start scene 2
      currentScene = 2;
      sceneStartTime = millis();
    }
  } else if (currentScene == 2) {
    scene2.draw();
    if (millis() - sceneStartTime > 38000) { // Assuming scene 2 lasts 30 seconds
      scene2.stop();
      scene3 = new Scene3(this); // Start scene 3
      currentScene = 3;
      sceneStartTime = millis();
    }
  } else if (currentScene == 3) {
    scene3.draw();
    if (millis() - sceneStartTime > 32000) { // Assuming scene 3 lasts 30 seconds
      scene3.stop();
      scene4 = new Scene4(this); // Start scene 4
      currentScene = 4;
      sceneStartTime = millis();
    }
  } else if (currentScene == 4) {
    scene4.draw();
    if (millis() - sceneStartTime > 49000) { // Assuming scene 4 lasts 30 seconds
      scene4.stop();
      scene5 = new Scene5(this); // Start scene 5
      currentScene = 5;
      sceneStartTime = millis();
    }
  } else if (currentScene == 5) {
    scene5.draw();
    if (millis() - sceneStartTime > 26000) { // Assuming scene 5 lasts 30 seconds
      scene5.stop();
      scene6 = new Scene6(this); // Start scene 6
      currentScene = 6;
      sceneStartTime = millis();
    }
  } else if (currentScene == 6) {
    scene6.draw();
  }
}

void stop() {
  if (currentScene == 1) {
    scene1.stop();
  } else if (currentScene == 2) {
    scene2.stop();
  } else if (currentScene == 3) {
    scene3.stop();
  } else if (currentScene == 4) {
    scene4.stop();
  } else if (currentScene == 5) {
    scene5.stop();
  } else if (currentScene == 6) {
    scene6.stop();
  }
  super.stop();
}
