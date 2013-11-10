
class PrimeUtils

  def ulimit= n
    @ulimit = n
  end

  def initialize
    @memoized = {} # stores true if composite
    @ulimit = 150
    @primes = []
  end

  def self.n_primes n
    item = self.new
    return item.n_primes n
  end

  def n_primes n
    if @primes.length < n
      initialize()
      @ulimit = @ulimit * 2
      compute
      return n_primes n
    else
      return @primes.take( n )
    end
  end

  def compute current = 2
    # puts! current
    # puts! @memoized
    return if current > @ulimit
    
    if @memoized[current]
      # current is composite, switch to next
      return compute( current + 1 )
    else
      @primes << current
      ttt = current + current # ttt is steps of length current, up to @ulimit
      while ttt < @ulimit do
        @memoized[ ttt ] = true
        ttt = ttt + current
      end
      return compute( current + 1 )
    end
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

