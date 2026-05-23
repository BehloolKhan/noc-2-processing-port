// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

class Oscillator {
  PVector angle, angleVelocity, amplitude;
  
  public Oscillator(int index) {
    this.angle = new PVector();
    this.amplitude = new PVector(
      50, 50
    );
    if (index <= 5) {
      this.angleVelocity = new PVector(0.05, 0.05);
      this.angleVelocity.rotate(-22.5*index);
    }
    else {
      this.angleVelocity = new PVector(-0.05, 0.05);
      this.angleVelocity.rotate(22.5*index);
    }

  }

  void update() {
    this.angle.add(this.angleVelocity);
  }

  void show() {
    float x = sin(this.angle.x) * this.amplitude.x;
    float y = sin(this.angle.y) * this.amplitude.y;

    push();
    translate(width / 2, height / 2);
    stroke(0);
    strokeWeight(2);
    fill(127);
    line(0, 0, x, y);
    circle(x, y, 32);
    pop();
  }
}
