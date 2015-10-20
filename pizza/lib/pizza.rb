class ApuradorPizza
  attr_reader :list

  def initialize(list)
    @list = list
  end

  def valid_vote
    @list.each do |name,flavour,rate|
      if (rate > 5 || rate < 1)
        puts "Dados inválidos! Nome: #{name} | Sabor: #{flavour} | Nota: #{rate}"
        return false
      end
    end
  end

  def get_likely_taste(taste)
    likely = []
    @list.each do |x|
      if x[1] == taste
        likely << x
      end	
    end
    likely
  end

end
