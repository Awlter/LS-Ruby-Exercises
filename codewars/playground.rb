class Dog
  def self.barf
    woof
  end

  def woof
    puts 'WOOOF'
  end

  def self.woof
    puts 'woooof'
  end
end

class Cat
  def act
    puts 'meuwww'
  end

  def meuw
    self.act
  end
end

cat = Cat.new
cat.meuw