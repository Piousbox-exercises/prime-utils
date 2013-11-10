
require 'spec_helper'
require 'prime_utils'

describe PrimeUtils do

  describe '#prime?' do
    it 'should have #prime? defined.' do
      PrimeUtils.methods.include?( :prime? ).should eql true
    end

    it 'some examples' do
      [ [1, false], [2,true], [3,true], [4,false], [5, true], [6,false], [7,true], [8,false], [100,false] ].each do |i|
        PrimeUtils.prime?( i[0] ).should eql i[1]
      end
    end
  end

  # describe '#succ' do
  #   it 'is defined' do
  #      PrimeUtils.methods.include?( :succ ).should eql true
  #   end
  # end

  describe '#n_primes' do
    before :each do
      @prime_list = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101]
    end

    it 'is defined' do
      PrimeUtils.methods.include?( :n_primes ).should eql true
    end

    it 'computes with small ulimit' do
      utils = PrimeUtils.new
      utils.ulimit = 10
      answer = utils.n_primes( @prime_list.length )
      answer.should eql @prime_list
    end

    it 'test against an existing list of primes' do
      answer = PrimeUtils.n_primes( @prime_list.length )
      answer.should eql @prime_list
    end
    
  end

  describe '#compute' do
    it 'is defined' do
      PrimeUtils.instance_methods.include?( :compute ).should eql true
    end
  end

end
