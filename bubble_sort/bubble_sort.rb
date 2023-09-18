def bubble(a)
  n = a.count
  i = 1

  while i < n
    a = a.each_index do |i| 
      next if a[i+1] == nil 
      a[i], a[i+1] = a[i+1], a[i] if a[i+1] < a[i]
    end
    i += 1
  end
  a
end

p bubble([9,8,7,6,5,9,0,2,8,7,4,1,3,0,4,6,5,1])