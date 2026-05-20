
float theta = 0;
float r = 75*theta;
float a = 0.001;

void setup() {
    size(640,360);
    background(255);
}
void draw() {
    float x = r * cos(theta);
    float y = r * sin(theta);

    noStroke();
    fill(0);
    ellipse(x+ width/2, y+height/2, 6, 6);

    theta += 0.01;
    a+=0.001;
    r = 75*a;

}
