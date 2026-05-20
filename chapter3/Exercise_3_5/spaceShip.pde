class SpaceShip {

    PVector location;
    PVector acceleration;
    PVector velocity;

    double mass;
    float angle;

    public SpaceShip(PVector location_, double mass_) {
        this.location = location_;
        this.acceleration = new PVector (0, 0);
        this.velocity = new PVector(0.5, -0.25);
        this.mass = mass_;
        angle = 0.0;
    }

    public void applyForce(PVector force) {
        PVector copyForce = PVector.mult(force, 1);
        copyForce.div((float) mass); //resultant acceleration
        acceleration.add(copyForce);
    }

    public void update() {
        velocity.add(acceleration);
        location.add(velocity);

        acceleration.mult(0);

    }

    public void draw() {

        fill(175);
        pushMatrix();
        translate(location.x, location.y);
        rectMode(CENTER);
        rotate(angle);
        rect(0, 0, 20, 20);
        popMatrix();

    }

    public double getMass() {
        return mass;
    }

    public PVector getVelocity() {
        return velocity;
    }

    public void rotateClockwise() {
        angle += 0.1;
        velocity.rotate(angle);
    }

    public void rotateAntiClockwise() {
        angle -= 0.1;
        velocity.rotate(angle);
    }

}