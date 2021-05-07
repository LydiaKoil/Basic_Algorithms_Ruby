# frozen_string_literal: false

# get string and split into array ["hello","my","friend"]
# create another another storing the size of string ["5,2,6"]
# sort number array, and simultaneously move corresponding elements around in word array
# loop through sorted array again; if words have same number of letters, sort aplphabetically and move.and

# get first word and put into empty array
# get next word; compare with length of words in array and slot into ; if words have same length, check alphabetically

def sort(string)
  arr = string.split(' ')
  arr.sort_by!(&:length)
  sorted = []
  n = 0
  while n < arr.length - 1
    if arr[n].length != arr[n + 1].length
      print 'diff length'
      puts n
      sorted << arr[n]
      n += 1
    else
      alph = []
      while  n + 1 < arr.length && arr[n].length == arr[n + 1].length
        alph << arr[n] if alph.empty?
        alph << arr[n + 1]
        n += 1
      end
      alph.sort_by!(&:downcase)
      sorted.push(*alph)
      print 'ALPH:'
      print alph
    end
    print 'Sorted:'
    print sorted
  end
end

sort('I hello how are you doing')
#how are you hello doing