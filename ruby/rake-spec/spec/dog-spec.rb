require 'dog'

describe Dog do

  before(:each) do
    @dog = Dog.new
  end

  it 'can run' do
    @dog.run
  end

end
