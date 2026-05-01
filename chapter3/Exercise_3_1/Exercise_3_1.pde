PVector ballOne;
PVector ballTwo;
float angle = 0;


void setup() {

    size(640, 360);
    ballOne = new PVector(0, -50);
    ballTwo = new PVector(0, 50);

}

void draw() {
    background(255);
    fill(175);
    strokeWeight(2);
    pushMatrix();
    translate(width/2, height/2);
    rotate(angle);
    circle(ballOne.x, ballOne.y, 20);
    circle(ballTwo.x, ballTwo.y, 20);
    line(ballOne.x, ballOne.y+10, ballTwo.x, ballTwo.y-10);
    popMatrix();
    angle += 0.1;
}