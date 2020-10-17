def best_two_sum?(arr, target_sum)
  #hash using a loop
#   count = Hash.new{|h,k| h[k] = []}

#   (0...arr.length).each do |i|
#     left = arr[0...i]
#     right = arr[i+1..-1]
#     excluded = left + right
#     count[arr[i]] += excluded
#   end
  
#   count.each do |k,v|
#     count[k].each do |v|
#         return true if k + v == target_sum
#     end
#   end
#   false

  hash = Hash.new

  arr.each do |ele|
    return true if hash[target - ele]
    hash[ele] = true
  end
  false
end

# arr = [0, 1, 5, 7]
# p best_two_sum?(arr, 6) # => should be true
# p best_two_sum?(arr, 10) # => should be false

def okay_two_sum?(arr, target_sum)
    mid_idx = arr.length/2
    middle = arr[mid_idx]

    # return true if middle == target_sum 

    # left =  arr[0...mid_idx]
    # right = arr[mid_idx+1..-1]
 
    # if target_sum < middle
    #   result = okay_two_sum?(left, target_sum)
    #   if result != nil
    #     return true
    #   else
    #     return false
    #   end
    # elsif target_sum > middle
    #   result = okay_two_sum?(right, target_sum)
    #   if result != nil
    #     return true
    #   else
    #     return false
    #   end
    end
end

arr = [0, 1, 5, 5, 7]
p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false

def bad_two_sum?(arr, target_sum) #O(n^2)
  (0...arr.length).each do |i|
    (i+1...arr.length).each do |j|
      return true if arr[i] + arr[j] == target_sum
    end
  end
  false
end

arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false