class Robot

  attr_reader :arm

  def initialize
    @arm = :lowered
  end

  def raise_arm
    @arm = :raised
  end

  def lower_arm
    @arm = :lowered
  end

end
