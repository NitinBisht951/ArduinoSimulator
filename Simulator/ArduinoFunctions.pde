//MAIN FUNCTIONS OF ARDUINO

// Digital I/O

// - Configures the specified pin to behave either as an input or an output.
public void pinMode(int pin, String mode) {
  println("pinMode("+pin+","+mode+")");
  myArduino.pinMode(pin, mode);
}

// - Write a HIGH or a LOW value to a digital pin.
public void digitalWrite(int pin, boolean value) {
  println("digitalWrite("+pin+","+value+")");
  myArduino.digitalWrite(pin, value);
}

// - Reads the value from a specified digital pin, either HIGH or LOW.
public void digitalRead(int pin) {
}



// Analog I/O

// - Reads the value from the specified analog pin.
public void analogRead(int pin) {
}  

// - Writes an analog value (PWM wave) to a pin.
public void analogWrite(int pin, int value) {
}
