def largest_prime_factor(n)
  2.upto(n) do |i|
    next unless n % i == 0
    return n / i if prime?(n / i)
  end
end

def prime?(n)
  (2..n / 2).none? { |i| n % i == 0 }
end
