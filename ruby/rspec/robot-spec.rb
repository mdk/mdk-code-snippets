require 'robot'

describe Robot do
  before(:each) do
    @robot = Robot.new
  end

  it "should have raised arm after arm was raised" do
    @robot.raise_arm
    @robot.arm.should == :raised
  end

  it "should have lowered arm after arm was lowered" do
    @robot.lower_arm
    @robot.arm.should == :lowered
  end

  it "should have lowered by default" do
    @robot.arm.should == :lowered
  end

end
