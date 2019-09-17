float zRotation = 0;
float zInitialRotationSpeed = 0.03;
float zRotationSpeed = zInitialRotationSpeed;

float yRotation = 0;
float yInitialRotationSpeed = 0.01;
float yRotationSpeed = yInitialRotationSpeed;

float boxMaxSize = 0;
float boxDefaultMaxSize = 0;

void setup() {
  fullScreen(P3D);
  boxDefaultMaxSize = height/2; 
  boxMaxSize = boxDefaultMaxSize;
}

void draw() {
  background(100);
  noFill();
  strokeWeight(5);
  
  translate(width/2, height/2);
  rotateZ(zRotation);
  rotateY(yRotation);
  
  box(250);
  
  zRotation += zRotationSpeed;
  yRotation += yRotationSpeed;
}

void resetSpeed(){
  zRotationSpeed = zInitialRotationSpeed;
  yRotationSpeed = yInitialRotationSpeed; 
}

void increaseSpeed(){
  zRotationSpeed += .01;
  yRotationSpeed += 0.005;
}

void reduceSpeed(){
  zRotationSpeed -= .01;
  yRotationSpeed -= 0.005;
}

void mousePressed() {
  if (mouseY > height/2) 
    resetSpeed();
  else 
    if(mouseX > width/2)
      increaseSpeed();
    else 
      reduceSpeed();
}