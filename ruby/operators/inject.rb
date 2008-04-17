class Container

  def initialize
    @storage = []
  end

  def << (val)
    @storage << val
  end

  def list
    for item in @storage
      puts "#{item [:action]} --> #{item [:value]}"
    end
  end

end

bank = Container.new
bank << { :action => :buy, :value => 25 }
bank << { :action => :sell, :value => 50 }
bank << { :action => :hold, :value => 75 }

bank.list

