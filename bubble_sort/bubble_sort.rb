def bubble_sort(a)
  i = 1

  while i < a.count
    a = a.each_index {|i| (a[i], a[i+1] = a[i+1], a[i]) if (a[i+1] != nil && a[i+1] < a[i])}
    i += 1
  end
  a
end

p bubble_sort([7,5,9,0,2,8,7,4,1,6,5,1])