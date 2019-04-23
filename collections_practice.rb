# Question 1
#describe '#sort_array_asc' do
#  it 'should return an array sorted in ascending order' do
#    expect(sort_array_asc([25, 7, 1])).to eq([1,7,25])
#  end
#end

def sort_array_asc(arr)
  arr.sort
end

def sort_array_desc(arr)
  arr.sort { |x,y| y <=> x }
end

def sort_array_char_count(arr)
#should return an array in ascentding order sorted by
#number of characters in each string
  arr.sort_by { |word| word.length }
end

def swap_elements(arr)
  # should swap the second and third elements of an array
  arr[1], arr[2] = arr[2], arr[1]
  arr
end

def reverse_array(arr)
  arr.reverse!
end

def kesha_maker(arr)
#turn third character of each element to a dollar sign.
# DO NOT USE .collect or .map. use .each to build a new array,
# like in the "my_each" lab!
arr.map { |string|
  string[2] = '$'
  string
}
end

def find_a(arr)
  arr.select { |word| word[0] == 'a' }
end

def sum_array(arr)
  arr.reduce { |sum, number| sum += number }
end

def add_s(arr)
  arr.each_with_index.map { |word, index|
    if (index != 1)
      word = word + "s"
    end
    word
  }
end
