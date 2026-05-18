class Mover {

    PVector location;
    PVector acceleration;
    PVector velocity;
    double mass;

    float angle;
    float aAcceleration;
    float aVelocity;

    public Mover(PVector location_, double mass_) {
        this.location = location_;
        this.acceleration = new PVector (0, 0);
        this.velocity = new PVector(0, 0);
        this.mass = mass_;
    }

    public void applyForce(PVector force) {
        PVector copyForce = PVector.mult(force, 1);
        copyForce.div((float) mass); //resultant acceleration
        acceleration.add(copyForce);
    }

    public void update() {
        velocity.add(acceleration);
        location.add(velocity);

        aAcceleration = acceleration.y;
        aVelocity += aAcceleration;

        acceleration.mult(0);

        angle += aVelocity;
    }

    public void draw() {
        fill(175);
        rectMode(CENTER);
        rect(location.x, location.y, 10, 10);
    }

    public double getMass() {
        return mass;
    }

}