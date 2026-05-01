PVector ballOne;
PVector ballTwo;


void setup() {

    size(640, 360);
    ballOne = new PVector(width/2, height/2 - 50);
    ballTwo = new PVector(width/2, height/2 + 50);

}

void draw() {
    background(255);
    circle(ballOne.x, ballOne.y, 5);
    circle(ballTwo.x, ballTwo.y, 5);
    line(ballOne.x, ballOne.y, ballTwo.x, ballTwo.y);
}