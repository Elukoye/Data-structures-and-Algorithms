THIS IS A METHOD FOR MERGING TWO ARRAYS IN MERGE SORT
#create an empty array e.g sorted = []
#until array 1 or array 2 is empty 
#make an if statement that compares first element in array 1 with first element in array 2
#if element in array one is less than or equal to first element in second array 
# shift that element and add it to the sorted array
#if the first element in array 2 is smaller
#shift that element and push it to the sorted array
#add all the three arrays and return the result.
  
________________________________

#1.Naive Implementation
________________________________
def merge_sort(array1, array2)
  # write your code here
  result = array1
  result.concat(array2)
   result.sort
 end
_____________________________________

# Better than the first
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

___________________________________

Alternative Solution
___________________________________
def merge_sort(array1,array2)
  sorted = []
  until array1.empty? || array2.empty?
     if array1.first <= array2.first
       sorted << array1.shift
     else
       sorted << array2.shift
     end
  end
  sorted + array1 + array2
end
p merge_sort([1, 3, 9, 11], [2, 4, 6, 8])
# => [1, 2, 3, 4, 6, 8, 9, 11]
