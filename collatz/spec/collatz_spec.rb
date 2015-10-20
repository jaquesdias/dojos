require 'spec_helper'
require 'collatz'

describe Collatz do
  subject {Collatz.new(10)}

  describe "#validate" do
    new_array_value = Collatz.new([])
    new_no_int_value = Collatz.new(123.25)
    it "Number must be an Integer" do
      expect(subject.validate).to be_truthy
    end

    it "Number must be between 1 and 1.000.000" do
      expect(subject.validate).to be_truthy
    end

    it "Return false with a no-integer" do
      expect(new_array_value.validate).to be_falsy
    end

    it "Return false with an integer that's not between 1 and 1.000.000" do
      expect(new_no_int_value.validate).to be_falsy
    end
  end

  describe "#get_terms" do 
    it "Build Collatz sequence of number 10" do
      expect(subject.get_terms(10)).to eq [10,5,16,8,4,2,1]
    end
    it "Build Collatz sequence of number 13" do
      expect(subject.get_terms(13)).to eq [13,40,20,10,5,16,8,4,2,1]
    end
  end

  describe "#get_biggest_term" do
    it "Get the biggest term from elements bettween 1 and 10" do
      expect(subject.get_biggest_term(10)).to eq [20,9]
    end
    it "Get the biggest term from elements bettween 1 and 20" do
      expect(subject.get_biggest_term(20)).to eq [21,19]
    end
  end

end
