def first_anagram?(str1, str2) #O(n!)
  possible_anagrams = str1.split('').permutation.to_a
  check_anagram = str2.split('')
  possible_anagrams.include?(check_anagram)
end

# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true

def second_anagram?(str1, str2) #O(n^2) better than first
    split2 = str2.split("")

    str1.each_char do |char|
        if split2.index(char) != nil
            split2.delete_at(split2.index(char))
        end
    end

    split2.empty?
end

# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")

def third_anagram?(str1, str2) #O(n log n) better than second
  str1.split('').sort == str2.split('').sort
end

# p third_anagram?("gizmo", "sally")    #=> false
# p third_anagram?("elvis", "lives")

def fourth_anagram?(str1, str2)
  count1 = Hash.new(0)
  count2 = Hash.new(0)

  str1.each_char { |char| count1[char] += 1 }
  str2.each_char { |char| count2[char] += 1 }

  count1 == count2
end


def fourth_anagram?(str1, str2) #O(n) better than third
  count1 = Hash.new(0)

  str1.each_char { |char| count1[char] += 1 } #O(n)
  str2.each_char { |char| count1[char] -= 1 }

  count1.values.all?{|val| val == 0}
end

p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")