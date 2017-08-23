class Test
  attr_reader :test_var

  def initialize
    @test_var = []
  end
end

test = Test.new

test.test_var << 1

p test.test_var