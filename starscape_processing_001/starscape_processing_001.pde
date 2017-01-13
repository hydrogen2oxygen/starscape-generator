int width = 800;
int height = 600;
PShader blur;

void setup() {
  size(800, 400);
  blur = loadShader("blur.glsl");
  drawStarScape();
}

void mouseClicked() {
  drawStarScape();
}

void drawStarScape() {
  
  background(0);
  noStroke();
  drawStars(10, 10000, 100,98,1,1);
  drawStars(25, 10000, 100,98,1,1);
  drawStars(50, 5000, 100,98,1,1);
  drawStars(125, 1000, 100,98,1,2);
  drawStars(200, 250, 100,98,1,4);
  drawStars(255, 250, 100,98,1,10);
  
}

void drawStars(int strokeColor, int maxStars, int maxThreshold, int threshold, int defaultSize, int maxSize) {
  
  for (int i=0; i<maxStars; i++) {
    
    // random position
    float x = random(width);
    float y = random(height);
    
    // random size stars
    float s = getRandomSize(maxThreshold,threshold,defaultSize,maxSize);
    
    stroke(strokeColor);
    ellipse(x, y, s, s);
  }
}

float getRandomSize(int max, int threshold, int defaultSize, int maxSize) {
  
  if (random(max) < threshold) {
    return defaultSize;
  }
  
  return random(maxSize);
}

void draw() {
  
}