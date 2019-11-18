#USES THE RUBY UNIQ METHOD
def has_duplicates(arr)
  unique_arr = arr.uniq
  if arr.length != unique_arr.length 
    puts "has duplicates"
  else
    puts " no duplicates found" 
  end
end

#VARYING IMPLEMENTATION WITHOUT UNIQ METHOD
def has_duplicates?(arr)
  arr.each_with_object([]) do |e,dup|
    dup << e unless dup.include?(e)  
  end
end

def has_duplicates?(arr)
  result = []
  arr.each do |val|
    result << val unless result.include?(val)
  end
  result.size != arr.size ? true : false
end

has_duplicates?([1,2,3,3,4,5,6,7,9,9,8,6,6,4,6])
