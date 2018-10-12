class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def seconds= seconds
    @hours = seconds / 3600
    seconds = seconds % 3600
    @minutes = seconds / 60
    @seconds = seconds % 60
  end

  def time_string
    @hours.to_s.rjust(2, '0') +":"+ @minutes.to_s.rjust(2, '0') +":"+ @seconds.to_s.rjust(2, '0')
  end
end
