class SuperTest

end

class Test < SuperTest
  attr_reader :test_var
  CONSTANTS = '1'

  def initialize
    @test_var = []
    p   self::CONSTANTS
  end
end

test = Test.new

test.test_var << 1

p test.test_var