class Clock
  def initialize(hours:, minutes: 0)
    @hours = hours
    @minutes = minutes
  end

  def calculate_angle
    angle = (hours_angle - minutes_angle).abs

    angle > 180 ? 360 - angle : angle
  end

  private

  def hours_angle
    (@hours % 12) * 30 + @minutes * 0.5
  end

  def minutes_angle
    @minutes * 6
  end
end