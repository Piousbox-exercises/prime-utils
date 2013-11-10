
class PrimeUtils

  def self.n_primes n
  end

  def self.prime? n
    coprime = 2
    # integer `2` is a good enough co-prime to any integer.

    n = Integer( n )

    if n < 2
      return false
    elsif 2 == n
      return true
    elsif 0 == n % 2
      return false
    else
      result = 2**(n-1) % n
      if 1 != result
        return false
      else
        return true
      end
    end
  end

end

