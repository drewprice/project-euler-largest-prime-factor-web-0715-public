class LargestPrimeFactor
  attr_reader :number, :input

  def initialize(input)
    @input = input
    @number = find_lpf
  end

  def find_lpf
    2.upto(input) do |n|
      next unless input % n == 0
      return input / n if prime?(input / n)
    end
  end

  private

  def prime?(n)
    (2..n / 2).none? { |i| n % i == 0 }
  end
end
