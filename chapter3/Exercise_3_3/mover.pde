class Mover {

    PVector location;
    PVector acceleration;
    PVector velocity;
    double mass;

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

        acceleration.mult(0);

    }

    public void draw() {
        fill(175);
        strokeWeight(1);
        pushMatrix();
        translate(location.x, location.y);
        rectMode(CENTER);
        rect(0, 0, 20, 20);
        fill(0);
        strokeWeight(2);
        line(0, 0, 4*velocity.x, 4*velocity.y);
        popMatrix();
    }

    public double getMass() {
        return mass;
    }

}