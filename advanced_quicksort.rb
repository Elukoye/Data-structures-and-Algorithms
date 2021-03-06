______________________________________________

SIMPLE IMPLEMENTATION OF QUICKSORT
___________________________________________

1. This is an improvement form the brute force quick sort implementation where 
   a) Partition array such that elements to the left are less than a chosen pivot and elements to 
      the right are greater than th pivot.
   b) Sort the left than subarray and right subarray recursively.
   c) Join LEFT SUBARRAY,PIVOT & RIGHT SUBARRAY
   
  2. It is a divide and conquer algorithm where problem is sub- divided into smaller problems until no more 
  division can occur then solved.
  
  3. The Brute force approach has a tome complexity of O(n) 
   but poor space complexity( that is the amount of storage an algo needs).
   
   
 __________________________________________  
 
 BRUTE FORCE IMPLEMENTATION OF QUICKSORT.
 __________________________________________
  def partition(array)
  return array if array.length < 2 
  
  pivot = array[0]
  left = []
  right = [] 
  
 for i in 1..(array.length - 1)
    pivot > array[i] ? left << array[i] :  right <<  array[i]
 end
  left = partition(left)
  right = partition(right)
  result = left + [pivot] + right
  puts result.join(" ")
  result
end
def simple_quicksort(array)
  partition(array)
end

simple_quicksort([5, 8, 1, 3, 7, 10, 2])
# => 2 3
#    1 2 3
#    7 8 10
#    1 2 3 5 7 8 10


________________________________________________________

ADVANCED QUICKSORT IMPLEMENTATION
________________________________________________________
1.This improved version uses in-place sorting which eliminates the need for auxillary arrays
2.There are two canonical algorithms for partitioning an array: Hoare and Lomuto partition schemes. Hoare’s algorithm is generally faster,
3.This  implementation uses Lomuto's algorithm,its easier to implement and understand.

# LOMUTO'S MENTAL MODEL
# Partition method steps
# 1.Pick the pivot as the last element of the array.
# 2.Place all elements lesser than pivot to left side of pivot.
# 3. Place al elements greater than pivot to right of the pivot.
# 4.Place pivot in its correct position in the sorted array.

# Partition algorithm implemementation
# 1.select pivot as the last array element
   pivot = [array.length - 1]
# 2. assign i to zero to iterate over the base array, assign j to zero which keeps track of the pivot index
   i = 0 
   j = 0
# 3.iterate over the array selecting element at index i , if element is > than pivot increment i by one.
#   if the element at index i is less than pivot , swap element at index i (arr[i]) with element at index j (arr[j]) increment j
#    if arr[i] > pivot
#       i += 1
#    else 
#      arr[j],arr[i] = arr[i],arr[j]
#      j += 1
#    end
# 4. When the iteration is complete , swap pivot with element at index j
#               arr[j],pivot = pivot,arr[j]
              
# 5.Return element at index j
_________________________________________________
 
 IMPLEMENTING PARTITION METHOD
________________________________________________

def partition(array, begin_index, end_index)
  # take the last element as the pivot
  pivot = array[end_index]
  # use another index for holding the greater value
  # use the first element as the initial greater value
  j = begin_index
  for i in begin_index...end_index
    if array[i] < pivot
      # swap the current element with the memorized greater element
      array[i], array[j] = array[j], array[i]
      # increment the greater index
      j += 1
    end
  end
  # the current placement will be [smaller elements, greater elements, pivot]
  # then you need to swap the pivot with the last element of the greater group
  array[end_index], array[j] = array[j], array[end_index]
  # return the index of the pivot
  j
end
_________________________________________________

ADVANCED QUUICKSORT ALGO IMPLEMENTATION
_________________________________________________
def advanced_quicksort(array, begin_index = 0, end_index = array.length - 1)
  # divide the problem until there's a sub-array between the begin and end indices
  if begin_index < end_index
    # partition the array
    pivot = partition(array, begin_index, end_index)
    # print the resulting array after each partition
    puts "#{array}"
    # solve the sub-problem that includes the elements smaller than the pivot
    advanced_quicksort(array, begin_index, pivot - 1)
    advanced_quicksort(array, pivot + 1, end_index)
  end
end


   
