#http://dojopuzzles.com/problemas/exibe/analisando-a-conjectura-de-collatz/
class Collatz
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def validate
    @number.is_a?(Integer) && @number >= 1 && @number <= 1_000_000
  end

  def get_terms(value,amount=false)
    terms = 1
    sequence = [value]
    while value > 1
      terms += 1
      if value.even?
        value = value/2
      else
        value = 3*value + 1
      end
      sequence << value
    end
    amount ? terms : sequence
  end

  def get_biggest_term(limit)
    i = 1
    biggest = []
    for i in 0..limit
      biggest[i] = get_terms(i, true)
    end
    biggest.each_with_index.max
  end

end
