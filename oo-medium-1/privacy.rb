# Modify this class so both flip_switch and the setter method switch= are private methods.
require 'pry'

class Machine
  attr_reader :switch

  def start
    flip_switch(:on)
  end

  def stop
    flip_switch(:off)
  end

  private

  attr_writer :switch

  def flip_switch(desired_state)
    self.switch = desired_state
  end
end

binding.pry

# The trickier part is the call to the setter method: unlike all other private method calls, you must specify the receiver when calling a setter method. If you try to remove the receiver, ruby will create a local variable named switch.