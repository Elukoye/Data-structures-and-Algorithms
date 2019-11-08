### Insertion Sort Algorithm
-Good for when the data is nearly sorted or the data size is small.
-Steps that occur in insertion sort ; removal,comparisons,shifts,insertions
-Its worst case time complexity is O(N^2) where data is in descending order
-Its best case scenario is O(N) where data is nearly sorted in ascending order.
-Its average case scenario is O(N)
-for data that is mostly sorted insertion sort is a good option.
-for data that is mostly sorted in reverse order then selection sort is the better option.
-however, both are equal is the data is sorted randomly.

*Insertion Sort Mental Model*
1.In the first iteration, remove element in the first index(second cell) and store it in a temporary variable.
2.Take the element to the left of the gap compare it to the element stored in the temporary variable 
3.If the value to the left is greater than the one in the temporary variable ,shift it to the right 
4. The more we shift the values to the right , the more the gap moves to th left.
5. When we encounter a value lesser than our element in the temp variable or we reach the left end of the array,shifting stops.
6.Insert temp variable in the current gap.
7.Repeat till array is fully sorted.

  
IMPLENENTATION ALGO (method 1)
__________________________________
def insertion_sort(arr)
   for i in 1..arr.length - 1
      j = i 
      while j > 0 
        if arr[j -1] > arr[j]
          temp = arr[j]
          arr[j]= arr[j - 1]
          arr[j - 1] = temp
        else 
         break 
        end
        j -= 1
      end
   end
   arr
end
insertion_sort([3, 8 ,5, 1, 4, 2])


