#http://dojopuzzles.com/problemas/exibe/sequencia-look-and-say/
class LookAndSay
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def validate
    @number.is_a?(Integer) && @number >=1 && @number <=9
  end

  def build_next_element(sequence)
    sequence.last.gsub!(/(.)\1*/){|s| s = s.size.to_s + s[0]}
  end

  def get_sequence(element)
    if validate
      sequence = [@number.to_s]
      (element).times do |k|
        sequence << build_next_element(sequence)
      end
      sequence[element]
    end
  end

  def get_sum_of_element_digits(element)
    if validate
      result = get_sequence(element)
      result.split("").map{|char| char = char.to_i}.inject(:+)
    end
  end
end
