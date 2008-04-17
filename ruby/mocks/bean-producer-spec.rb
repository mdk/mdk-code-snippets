require 'bean-producer'

describe BeanProducer do
  before(:each) do
    @producer = BeanProducer.new
  end

  it 'should have an empty storage' do
    @producer.storage.length.should == 0
  end

  it 'should be able to can some beans' do
    can = mock('Test can')
    can.should_receive(:put_object).once.with("beans")
    can.should_receive(:close).once
    @producer.fill_can(can)
  end

  it 'should keep cans in storage' do
    for i in 1..10 do
      can = Object.new
      can.stub!(:put_object)
      can.stub!(:close)
      @producer.fill_can(can)
    end
    @producer.storage.length.should == 10
  end

  it 'keeps cans that contain actually packaged beans' do
    for i in 1..10 do
      can = Object.new
      can.stub!(:put_object)
      can.stub!(:close)
      can.stub!(:contents).and_return("beans")
      @producer.fill_can(can)
    end

    @producer.storage.each { |can|
      can.contents.should == 'beans'
    }
  end

end




