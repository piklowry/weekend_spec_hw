require 'rspec'


class BrewingCoffee 
	attr_accessor :name, :switchon, :start

	def initialize
		@barista = Baristas.new
		@coffeepot = CoffeePot.new
		@brewing_process = (1..100).to_a
		@start = 0 
		@finish = 100
    @name = 'coffee pot'
    @switchon = true
	end

	def start_brewing
	    @brewing_process.each do |brew|
	  	@start + 1 
	  	if @start >= finish
      puts "Coffee's Ready!"
	  	end

	  	end
  end 

	def finish_brewing
		@finish = 100
  end


end



class Baristas 
	attr_accessor :name, :coffee, :height, :alive, :hands, :position

	def initialize
		@brewing = 0
		@name = 'patrick'
		@coffee = 1
		@height = 6
		@alive = true
		@hands = 2

	end

	def thirsty?
		true
	end

	def add (a,b)
		a+b
	end

end

class CoffeePot

	attr_reader :switchoff, :pot, :switchon

	def initialize
		@switchoff = false
		@pot = 1
	end
end




brewingcoffee = BrewingCoffee.new

describe BrewingCoffee do
	let(:brewingcoffee) {BrewingCoffee.new}

	it 'should have a name' do
		brewingcoffee.name.should == 'coffee pot'
	end

	it 'should have a start' do
		brewingcoffee.start.should eq(0)
	end

	it 'should have a finish' do
		brewingcoffee.finish_brewing.should eq(100)
	end

	it 'should have a switchon' do
		brewingcoffee.switchon.should eq(true)
	end

end




describe Baristas do 
	let(:barista) { Baristas.new }

	it 'should have a name' do
		barista.name.should == 'patrick'
  end

  it 'should have two hands' do
  	barista.hands.should eq(2)
  end

	it 'should have coffee' do
	  barista.coffee.should >= 1
	end

	it 'should be alive' do
	  barista.alive.should eq(true)
  end

	it 'should be tall enough to reach counter' do
	  barista.height.should > 5
  end

  it 'should be thirsty' do
  	barista.should be_thirsty
  end

  it 'should add two numbers' do
  	barista.add(1,5).should eq(6)
  end

end


describe CoffeePot do 
	let(:coffeepot) { CoffeePot.new }

	it 'should be off before start' do
		coffeepot.switchoff.should eq(false)
	end

	it 'should have a coffee pot' do
		coffeepot.pot.should eq(1)
	end
end