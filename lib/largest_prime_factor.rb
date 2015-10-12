def largest_prime_factor(n)
  candidate = n / 2
  candidate -= 1 if candidate.even?

  while candidate > 1
    return candidate if factor?(n, candidate) && prime?(candidate)
    candidate -= 2
  end
end

def prime?(n)
  (3..n / 2).step(2).none? { |i| n % i == 0 }
end

def factor?(n, candidate)
  n % candidate == 0
end
