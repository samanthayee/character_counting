# def count_letters(list)
#   letters = Hash.new(0)
#   list.each do |word|
#     word.split("").each_with_index { |x| letters [x]+= 1}
#   end
#   letters
# end

list1 = ["lighthouse labs", "devhub"]

 # puts count_letters(list1)

 def count_indices(list)
  letters = {}
  list.each do |word|
    word.split("").each_with_index do |char, index|
      if letters[char]
        letters[char] << index
      else
        letters[char] = [index]
      end
    end
  end
  return letters
 end

 puts count_indices(list1)