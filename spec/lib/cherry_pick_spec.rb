require 'cherry_pick'
module Mark
  def valueable_method
    "I am so worth having!"
  end

  def other_valueable_method
    "I am even better!"
  end

  def rubbish_method
    "I am not useful at all!"
  end

  def self.valueable_class_method
    "I am so worth having, at a class level!!"
  end

  def self.other_valueable_class_method
    "I am even better, at a class level!!"
  end

  def self.rubbish_class_method
    "I am not useful at all, at a class level!!"
  end
end

class TestClass
  extend CherryPick

  cherry_pick(:valueable_method, :other_valueable_method, Mark)
  class_cherry_pick(:valueable_class_method, :other_valueable_class_method, Mark)
end

describe TestClass do
  context "instance methods" do
    it "has valueable_method available" do
      expect(subject.valueable_method).to eq("I am so worth having!")
    end

    it "has other_valueable_method" do
      expect(subject.other_valueable_method).to eq("I am even better!")
    end

    it "does not have rubbish_method available" do
      expect { subject.rubbish_method }.to raise_error(NoMethodError)
    end
  end

  context "class methods" do
    it "has valueable_class_method available" do
      expect(described_class.valueable_class_method).to eq("I am so worth having, at a class level!!")
    end

    it "has other_valueable_class_method" do
      expect(described_class.other_valueable_class_method).to eq("I am even better, at a class level!!")
    end

    it "does not have rubbish_class_method available" do
      expect { described_class.rubbish_class_method }.to raise_error(NoMethodError)
    end
  end
end
