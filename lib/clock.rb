class Clock
  def initialize(hours:, minutes: 0)
    @hours = hours
    @minutes = minutes
  end

  def calculate_angle
    angle_object = Angle.find_by(hours: @hours, minutes: @minutes)
    
    if angle_object.present?
      return angle_object.angle
    end

    angle = (hours_angle - minutes_angle).abs
    angle = 360 - angle if angle > 180
    Angle.create!(hours: @hours, minutes: @minutes, angle: angle)
    angle
  end

  private

  def hours_angle
    (@hours % 12) * 30 + @minutes * 0.5
  end

  def minutes_angle
    @minutes * 6
  end
end