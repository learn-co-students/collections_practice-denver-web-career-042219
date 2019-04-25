# Build a method sort_array_asc that takes in an array of integers and
# returns a copy of the array with the integers in ascending order.

require "pry"

def sort_array_asc(array)
  array.sort!
end

def sort_array_desc(array)
  array.sort.reverse!
end

def sort_array_char_count(array)  #spaceship FTW
  array.sort do |f, s|
    f.length <=> s.length
  end
end

def swap_elements(array)
  array[0], array[1], array[2] = array[0], array[2], array[1]
end

#.first .last





# Advanced: Try building a method swap_elements_from_to that takes in three arguments,
# array, index, destination_index, that will allow you to specify the index of the
# element you would like to move to a new index. So:
#
# swap_elements_from_to(["a", "b", "c"],0,2) #=> ["c", "b", "a"]
# swap_elements_from_to(["a", "b", "c"],2,1) #=> ["a", "c", "b"]

# def swap_elements_from_to(array, index, destination_index)
#
#
# end

# this isnot how I should be doing
def reverse_array(array)
  array.reverse
end


def kesha_maker(array)
  kesha_array = Array.new

  array.each do |string|
    string[2] = "$"
    kesha_array << string
  end
  kesha_array
end


def find_a(array)
  a_words = Array.new
  array.each do |word|
    if word.start_with?("a" || "A")
      a_words << word
    end
  end
  a_words
end



def sum_array(array)
  array.inject do |sum, num|
    sum + num
  end
end


def add_s(array)
  array.each_with_index.collect do |element, index|
    if element != "feet"
      element + "s"
    else
      element
    end
  end
end
