class BeanProducer

  attr_reader :storage

  def initialize
    @storage = []
  end

  def fill_can(can)
    can.put_object('beans')
    can.close
    @storage << can
  end

end
