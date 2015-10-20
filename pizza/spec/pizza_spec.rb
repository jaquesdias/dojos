require 'spec_helper'
require 'pizza'

describe ApuradorPizza do
  subject{
    ApuradorPizza.new([["Bottas", "Napolitana", 1], ["Brunao","Calabresa",5],["Belinho","Napolitana",4],["Mendes","Calabresa",4],["Bottas","4 Queijos", 2]])
  }

  describe "#valid_vote" do
    it "false data" do
      expect(subject.valid_vote).to be_truthy
    end
  end

  describe "#get_likely_taste" do 
    it "getting votes of the same taste" do
      expect(subject.get_likely_taste("Calabresa")).to be_an(Array)
    end
    it "checking return of flavours" do
      expect(subject.get_likely_taste("Napolitanas")).to eq []
      expect(subject.get_likely_taste("4 Queijos")).to eq [["Bottas", "4 Queijos", 2]]
    end
  end

end
