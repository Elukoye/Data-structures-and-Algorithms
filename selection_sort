### Steps for implementation
1.Determine the size of the array
1.loop thru the range from 0 to size of the array
1.Set min to be first element in the first loop
1.loop again thru the array starting from 2nd element (i + 1) to size of the array
1.If 2nd element is less than the first element assign 2nd element to a temp varialble 
1.Replace elemeent at index j with index i 
1.Replace element at index i with temp variable 
1.Return array

## Efficiency
### contains 2 types of steps comparison and swaps
### compare each element with the lowest element we have encountered
### swap lowest element to its correct position
### although selection sort runs at  big O of (n^2/2) meaning it is faster than bubble sort 
### it is still described as Big O(N^2) because Big O notation ignores constants.
### therefore selection sort is twice as fast as bubble sort.


### Algorithmic implementation
def selection_sort(arr)
 arr_length = arr.length - 1
 
  for i in (0..arr_length)
   min = i 
    for j in (i + 1)..arr_length
      if arr[j] < arr[i]
        min_var = arr[j]
        arr[j]= arr[i]
        arr[i]= min_var
      end
    end
  end
  arr
end
arr = [1,45,10,35,100,13,147,500,80]
selection_sort(arr)
