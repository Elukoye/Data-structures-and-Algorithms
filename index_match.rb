# frozen_string_literal: true

# Solution in O(n) time
def index_match(array)
  # write your code here
  array.each_with_index do |index, val|
    return val if array[index] == val
  end
  - 1
end

# Solution in O(log n) time

# def index_match(array,target)
#   high = array.length - 1
#   low = 0
#   array.length.times do |index|
#     mid = (high + low) / 2
#     if array[mid] == target
#       return mid
#     elsif array[mid] > target
#     high = mid - 1
#     else
#       low = mid + 1
#     end
#   end
#   return -1
# end

puts index_match([0, 2, 3, 7, 9, 11])
# => 0
