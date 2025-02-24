

# This method will return an array of arrays.
# Each subarray will have strings which are anagrams of each other
# Time Complexity: O(n)
# Space Complexity: O(n)

def grouped_anagrams(strings)
  return strings if strings.length == 0
  hash = Hash.new()
  strings.each do |word|
    word_array = word.split("").sort
    if hash.include?(word_array)
      hash[word_array] << word
    else
      hash[word_array] = [word]
    end
  end

  result = []
  hash.each do |key, value|
    result << value
  end
  return result
end

# This method will return the k most common elements
# in the case of a tie it will select the first occuring element.
# Time Complexity: O(n)
# Space Complexity: O(n)
def top_k_frequent_elements(list, k)
  hash = Hash.new

  list.each do |element|
    if hash.include?(element)
      hash[element] += 1
    else
      hash[element] = 1
    end
  end

  hash.sort_by { |k, v| v }
  top_k = []

  hash.each do |k, v|
    top_k << k
  end

  return top_k[0..(k - 1)]
end

# This method will return the true if the table is still
#   a valid sudoku table.
#   Each element can either be a ".", or a digit 1-9
#   The same digit cannot appear twice or more in the same
#   row, column or 3x3 subgrid
# Time Complexity: ?
# Space Complexity: ?
def valid_sudoku(table)
  raise NotImplementedError, "Method hasn't been implemented yet!"
end
