def stock_picker(array)
  array.combination(2).to_a.keep_if {|pair| pair[0] < pair[1]}.max_by(1) {|a, b| b - a}
end

p (stock_picker([17,3,6,9,15,8,6,1,10]))

