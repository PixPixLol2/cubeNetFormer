void drawCubeNet(color c, int[] numbers, String filename) {
  float squareSize = 100;
  textAlign(CENTER, CENTER);
  textSize(50);
  fill(c);
  
  int[] xPos = {1, 1, 1, 0, 1, 2};
  int[] yPos = {0, 1, 2, 1, 3, 1};
  
  for (int i = 0; i < 6; i++) {
    rect(xPos[i] * squareSize, yPos[i] * squareSize, squareSize, squareSize);
    fill(255);
    text(numbers[i], xPos[i] * squareSize + squareSize / 2, yPos[i] * squareSize + squareSize / 2);
    fill(c);
  }
  
  save(filename);
}

void setup() {
  size(800, 800);
  background(255, 255, 255, 0);
  drawCubeNet(color(0, 255, 0), new int[] {0, 4, 4, 0, 4, 4}, "greenCube.png");
}
