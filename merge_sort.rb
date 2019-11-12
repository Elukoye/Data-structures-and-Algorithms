________________________________

#1.Naive Solution
________________________________
def merge_sort(array1, array2)
  # write your code here
  result = array1
  result.concat(array2)
   result.sort
 end
_____________________________________

# Advanced Solution
____________________________________


def merge_sort(array1, array2)
  result = []
  if array1[0] < array2[0]
    result << array1.shift
  else 
    result << array2.shift
  end
  
  if array1.length == 0 
    return result + array2
  elsif array2.length == 0 
    return result + array1
  else 
    result + merge_sort(array1,array2)
  end
end
p merge_sort([1, 3, 9, 11], [2, 4, 6, 8])
# => [1, 2, 3, 4, 6, 8, 9, 11]
