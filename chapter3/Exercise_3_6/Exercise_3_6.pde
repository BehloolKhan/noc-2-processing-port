int frameCount = 0;
float period = 120;
float amplitude = 100;

void setup() {
    size(640,360);
}
void draw() {
    background(255);

    float y = cos(TWO_PI * frameCount / period);

    stroke(0);
    fill(175);

    pushMatrix();

    translate(width/2,height/2);
    float displacement = map(y, -1, 1, 0, amplitude);
    line(0,0,0,displacement);
    ellipse(0,displacement,20,20);

    popMatrix();
    frameCount+=1;
}