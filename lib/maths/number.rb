class Maths::Number
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def factorial
    if (self.number < 0)
      Float::INFINITY
    elsif (self.number == 0)
      1
    else
      # HACK: Should be simplified
      number = self.number
      self.number = self.number - 1
      number * self.factorial
    end
  end

  def sum_to_1
    if number < 0
      0
    else
      number * (number+1)/2
    end
  end

  def collatz_conjecture(num)
    if num%2 == 0
      num/2
    else
      (num*3)+1
    end
  end

  def collatz_cycle_count
    count = 0
    if number <= 0
      return count
    end
    while number != 1 do
      self.number = collatz_conjecture(number)
      count += 1
    end
    count
  end

  alias_method :n!, :factorial
  private

  attr_writer :number
end
