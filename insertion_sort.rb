### Insertion Sort Algorithm

*Insertion Sort Mental Model*
1.In the first iteration, remove element in the first index(second cell) and store it in a temporary variable.
2.Take the element to the left of the gap compare it to the element stored in the temporary variable 
3.If the value to the left is greater than the one in the temporary variable ,shift it to the right 
4. The more we shift the values to the right , the more the gap moves to th left.
5. When we encounter a value lesser than our element in the temp variable or we reach the left end of the array,shifting stops.
6.Insert temp variable in the current gap.
7.Repeat till array is fully sorted.
