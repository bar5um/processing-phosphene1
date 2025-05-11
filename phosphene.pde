void setup() {
  size(600, 600);
  //noLoop(); 
  frameRate(40);
}
 float theta;
void draw() {
  background(255);
  translate(width / 2, height / 2); // centre origin
  strokeWeight(0.15);
  scale(50);
  rotate(PI/2 + theta);
  float lastx = 0;
  float lasty = 0;
  for (float u = 0 ; u < 280 ; u += 0.1) {
    // cube root is same as raising to power of 1/3 so...
    // the 100/55th root is same as raising to power of 55/100
    float x = 0.05 * u * cos(u);
    float y = 0.05 * u * sin(u);
    line(x, y,lastx,lasty);
    lastx=x;
    lasty=y;
  }

  theta+=0.4;
  

theta+=0.02;

}