
// An interface to be implemented by everyone interested in "Hello" events
public interface PinEventListener {
  void setDigitalValue(int pinId, boolean value);
}
