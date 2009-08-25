class Integer
  def is_prime?
    return false if self%2==0
    (2..(Math.sqrt(self).ceil)).each do |i|
      return false if self%i==0
    end
    return true
  end
end

product = 600851475143

start = 2
factors = (start..(Math.sqrt(product))).inject([]) do |acc, i|
  if product%i == 0
    acc << i
    acc << product/i
  end
  acc
end.sort{|x,y| y <=> x }

p factors.select{|i| i.is_prime?}.max