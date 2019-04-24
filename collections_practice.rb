require 'pry'

def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort.reverse
end

def sort_array_char_count(array)
  array = array.sort_by {|x| x.length}
end

def swap_elements(array)
  array[1], array[2] = array[2], array[1]
  array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  array.each_with_index do |x, y|
    x[2] = "$"
  end
end

def find_a(array)
  array_new = []
  array.each do |x|
    if x.start_with?("a")
      array_new << x
    end
  end
  array_new
end

def sum_array(array)
  array.inject(0) do |sum,x|
    sum + x
  end
end

def add_s(array)
  array.each_with_index.collect{|element, index|
    if index != 1
      element + "s"
    else element
    end
  }
#  binding.pry
end
