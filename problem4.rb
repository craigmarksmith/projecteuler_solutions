class Integer
  def is_palindrome?
    self.to_s.reverse == self.to_s
  end
end

products = []

(100..999).each do |x|
  (100..999).each do |y|
    products << x * y
  end
end

products.sort.reverse.each do |i|
  if i.is_palindrome?
    p i
    break
  end
end
