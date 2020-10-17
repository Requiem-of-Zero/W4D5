#n^2 nested for loop

def my_min(arr)
  (0...arr.length).each do |i|
    num = arr[i]
    left = arr[0...i]
    right = arr[i+1..-1]
    new_arr = left + right
    return num if new_arr.all?{|ele| ele > num}
  end
end

# p list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]                                                        
                                                                                                       
# p my_min(list)  # =>  -5

#O(n)
#Space Complexity: O(1)

def my_min(arr)
  min = arr[0]
  (1...arr.length).each do |i|
    if arr[i] < min
      min = arr[i]
    end
  end
  min
end

def largest_continguous_subsum(arr) 
    list = []

    (0...arr.length).each do |i|
        (i...arr.length).each do |j|
            list << arr[i..j]
        end
    end

    sum = 0

    list.each{ |subarr| sum = subarr.sum if subarr.sum > sum }

    sum
end

# p largest_continguous_subsum([5, 3, -7])
#0 => [5]
# current = arr[i]
# current_sum += current + i 8
#loop (0..end) |i|
# if i skip
# idx 1
# idx 2
# 8 + -7 => is this greater than curent? if it's not next if it is then replace?
#-----
# largest_sum
# (loop)
# current_sum
# #------
# largest_sum = arr[i] if arr[i] > largest_sum 
# arr.first - i 2

#n^2 for time
#2^n

def largest_continguous_subsum(arr)
    largest_sum = arr.first
    current_sum = arr.first
    
    (1...arr.length).each do |i|
        current_sum += arr[i]
      if current_sum > largest_sum
        largest_sum = current_sum
      elsif current_sum < 0
        current_sum = 0
      end
    end
    largest_sum
end

# p largest_continguous_subsum([5, 3, -7])
list = [2, 3, -6, 7, -6, 7]

p largest_continguous_subsum(list)

list = [-5, -1, -3]