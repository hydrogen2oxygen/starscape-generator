int width = 800;
int height = 600;

void setup() {
  size(800, 400);
  drawStarScape();
}

void mouseClicked() {
  drawStarScape();
}

void drawStarScape() {
  
  background(0);
  
  // Fog layer
  drawStars(10, 10, 100,1,1,300);
  drawStars(20, 25, 100,1,1,200);
  drawStars(30, 50, 100,1,1,100);
  drawStars(10, 10, 100,1,1,300);
  drawStars(40, 100, 100,20,1,50);
  drawStars(43, 500, 100,20,1,30);
  drawStars(45, 1000, 100,20,1,20);
  
  drawStars(40, 100, 100,20,1,50);
  drawStars(50, 5000, 100,20,1,10);
  drawStars(10, 20, 100,1,1,300);
  filter(BLUR, 7);
  
  drawStarsLayer();
}

void drawStarsLayer() {
  // Stars layer
  //drawStars(10, 10000, 100,98,1,1);
  //drawStars(25, 5000, 100,98,1,1);
  drawStars(50, 5000, 100,98,1,1);
  drawStars(75, 3000, 100,98,1,1);
  drawStars(100, 2000, 100,98,1,1);
  drawStars(125, 1000, 100,98,1,2);
  drawStars(175, 500, 100,98,1,2);
  drawStars(200, 250, 100,98,1,3);
  drawStars(225, 150, 100,98,1,4);
  drawStars(255, 50, 100,90,1,5);
}

void drawStars(int strokeColor, int maxStars, int maxThreshold, int threshold, int defaultSize, int maxSize) {
  
  for (int i=0; i<maxStars; i++) {
    
    // random position
    float x = random(width);
    float y = random(height);
    
    // random size stars
    float s = getRandomSize(maxThreshold,threshold,defaultSize,maxSize);
    
    stroke(strokeColor);
    fill(strokeColor);
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