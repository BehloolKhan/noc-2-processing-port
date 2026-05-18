Mover ball;
float G = (float) 0.5;

void setup() {
    size(640, 360);
    ball = new Mover(new PVector(0, height/2), 0.5);
    ball.applyForce(new PVector(1, -1));
}

void draw() {
    background(255);
    //apply weight
    //
    float ball_mass = (float) ball.getMass();

    ball.applyForce(new PVector(0.0, G*ball_mass));
    ball.update();
    ball.draw();
}