require 'spec_helper'
require 'look_and_say'

describe LookAndSay do
	subject {LookAndSay.new(1)}
  
	describe "#validate" do
		new_digit_passing_hash = LookAndSay.new(Hash.new)
		new_digit_passing_int = LookAndSay.new(25)
		it "Number must be an Integer" do
			expect(subject.validate).to be_truthy
		end
		it "Number must be between 1 and 9" do
			expect(subject.validate).to be_truthy
		end
		it "Return false if it's a non-integer" do
			expect(new_digit_passing_hash.validate).to be_falsy
		end
		it "Return false if it's a integer that's not in 1 to 9"do
			expect(new_digit_passing_int.validate).to be_falsy
		end
	end

	describe "#get_sequence" do
		it "Getting sequence of the third element" do
			expect(subject.get_sequence(1)).to eq "11"
		end

		it "Getting sequence of the fifth element" do
			expect(subject.get_sequence(5)).to eq "312211"
		end
	end

	describe "#get_sum_of_element_digits" do
		it "Getting the sum of the third element digits" do
			expect(subject.get_sum_of_element_digits(3)).to eq 5
		end

		it "Getting the sum of the fifth element digits" doi
			expect(subject.get_sum_of_element_digits(50)).to eq 1970964
		end
	end

end
