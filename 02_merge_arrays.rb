# frozen_string_literal: true
def merge_arrays(arr1, arr2)
  # get smallest array length
  # Remove values from both consecutively for i in range (0..len(smallest array))
  # and add to new array
  # push remaining values from remaining array

  len = arr1.size < arr2.size ? arr1.size : arr2.size # get smallest array length
  merged = []

  (0..len - 1).each do
    merged << arr1[0]
    arr1.shift
    merged << arr2[0]
    arr2.shift
  end
  merged.push(arr1)
  merged.push(arr2)
end

# merge_arrays(['a', 'b', 'c', 'd', 'e'], [1, 2, 3, 4, 5])
# merge_arrays([1, 2, 3], ['a', 'b', 'c', 'd', 'e', 'f'])
merge_arrays(['f', 'd', 'w', 't'], [5, 3, 7, 8])
