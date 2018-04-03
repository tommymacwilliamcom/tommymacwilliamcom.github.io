def merge_sort list
  if list.length < 2
    return list
  end

  left = merge_sort list[0 ... list.length / 2]
  right = merge_sort list[list.length / 2 ... list.length]
  return merge left, right
end

def merge left, right
  result = []
  i = 0
  j = 0

  while i < left.length and j < right.length
    if left[i] <= right[j]
      result.push left[i]
      i += 1
    else
      result.push right[j]
      j += 1
    end
  end

  result.concat left[i ... left.length]
  result.concat right[j ... right.length]
  return result
end

puts merge_sort [1, 4, 3, 27, 10, 14, 0]
                                                    
