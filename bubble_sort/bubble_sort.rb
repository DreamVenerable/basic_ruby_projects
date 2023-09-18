# frozen_string_literal: true

def bubble_sort(arr)
  i = 1

  while i < arr.count
    arr = arr.each_index { |i| (arr[i], arr[i + 1] = arr[i + 1], arr[i]) if !arr[i + 1].nil && arr[i + 1] < arr[i] }
    i += 1
  end
  arr
end

bubble_sort([7, 5, 9, 0, 2, 8, 4, 1, 6, 5, 1])
