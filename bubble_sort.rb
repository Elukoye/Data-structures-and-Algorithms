### Sorting Algorithm - Bubble sort
### Big(O) notation -O(N^2) O of N squared {quadratic time}
### As data increases , the no of steps increases exponenyially.

def bubble_sort(arr)
 return arr if arr.size <= 1
 swapped = true 

  while swapped  
   swapped = false 
   (arr.length - 1).times do |i|
      if arr[i] > arr[ i + 1]
       arr[i],arr[i + 1] = arr[i + 1],arr[i]
       swapped = true 
      end
   end
  end
  arr
end


bubble_sort([7,65,4,3,2,1])
