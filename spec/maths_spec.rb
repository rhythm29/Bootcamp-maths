require "spec_helper"

describe Maths::Number do
  describe "#number" do
    it "a number should be readable" do
      number = Maths::Number.new(778)
      expect(number.number).to eq(778)
    end

    it "a number should not be writable and raises NoMethodError" do
      number = Maths::Number.new(778)
      expect{
        number.number = 800
      }.to raise_error(NoMethodError)
      expect(number.number).to eq(778)
    end
  end

  describe "#factorial" do
    it "should return 1 when given 0" do
      number = Maths::Number.new(0)
      expect(number.n!).to eq(1)
    end

    it "should return 1 when given 1" do
      number = Maths::Number.new(1)
      expect(number.n!).to eq(1)
    end

    it "should return 2 when given 2" do
      number = Maths::Number.new(2)
      expect(number.n!).to eq(2)
    end

    it "should return 120 when given 5" do
      number = Maths::Number.new(5)
      expect(number.n!).to eq(120)
    end

    it "should return 24 when given 4" do
      number = Maths::Number.new(4)
      expect(number.n!).to eq(24)
    end

    it "should return Infinity when given -1" do
      number = Maths::Number.new(-1)
      expect(number.n!).to eq(Float::INFINITY)
    end
  end

  describe "#sum_to_1" do
    it "should return 1 when given 1" do
      number = Maths::Number.new(1)
      expect(number.sum_to_1).to eq(1)
    end

    it "should return 0 when given -2" do
      number = Maths::Number.new(-2)
      expect(number.sum_to_1).to eq(0)
    end

    it "should return 0 when given 0" do
      number = Maths::Number.new(0)
      expect(number.sum_to_1).to eq(0)
    end

    it "should return 3 when given 2" do
      number = Maths::Number.new(2)
      expect(number.sum_to_1).to eq(3)
    end

    it "should return 15 when given 5" do
      number = Maths::Number.new(5)
      expect(number.sum_to_1).to eq(15)
    end
  end

  describe "#collatz_conjecture" do
    it "should return 0 when given 0" do
      number = Maths::Number.new(0)
      expect(number.collatz_conjecture(number.number)).to eq(0)
    end

    it "should return 1 when given 2" do
      number = Maths::Number.new(2)
      expect(number.collatz_conjecture(number.number)).to eq(1)
    end

    it "should return 8 when given 16" do
      number = Maths::Number.new(16)
      expect(number.collatz_conjecture(number.number)).to eq(8)
    end

    it "should return 16 when given 5" do
      number = Maths::Number.new(5)
      expect(number.collatz_conjecture(number.number)).to eq(16)
    end

    it "should return 172 when given 57" do
      number = Maths::Number.new(57)
      expect(number.collatz_conjecture(number.number)).to eq(172)
    end
  end

  describe "#collatz_cycle_count" do
    it "should return 0 when given 1" do
      number = Maths::Number.new(1)
      expect(number.collatz_cycle_count).to eq(0)
    end

    it "should return 1 when given 2" do
      number = Maths::Number.new(2)
      expect(number.collatz_cycle_count).to eq(1)
    end

    it "should return 16 when given 7" do
      number = Maths::Number.new(7)
      expect(number.collatz_cycle_count).to eq(16)
    end

    it "should return 0 when given 0" do
      number = Maths::Number.new(0)
      expect(number.collatz_cycle_count).to eq(0)
    end

    it "should return 0 when given -1" do
      number = Maths::Number.new(-1)
      expect(number.collatz_cycle_count).to eq(0)
    end
  end
end
