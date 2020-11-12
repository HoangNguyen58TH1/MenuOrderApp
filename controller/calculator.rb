class Calculator
  attr_accessor :a, :b
  def initialize(a:, b:)
    @a = a
    @b = b
  end

  def addition
    a + b
  end

  def multiplication
    a * b
  end
  
end
