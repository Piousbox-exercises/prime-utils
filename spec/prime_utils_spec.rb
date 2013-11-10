
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

end
