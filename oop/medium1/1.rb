class Machine

  def initialize
    stop
  end

  def start
    flip_switch(:on)
  end

  def stop
    flip_switch(:off)
  end

  def show
    switch
  end

  private

  attr_accessor:switch

  def flip_switch(desired_state)
    self.switch = desired_state
  end


end


m = Machine.new()
p m.show
m.start
p m.show
m.stop
p m.show