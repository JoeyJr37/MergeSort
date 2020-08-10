# Build a method #merge_sort that takes in an array and returns a sorted array, using a recursive merge sort methodology.
# Merge Sort
# sort the left half of the array
# sort the right half of the array
# merge the two halves together



def merge_sort(array)
    #split array in half
    split_here = array.length / 2
    left_half = array.slice(0, split_here)
    right_half = array.slice(split_here, array.length)
    if left_half.length > 1
         merge_sort(left_half)
    else


    # left_half
        # is length == 1?
        # if not: merge_sort#
        # if so: push to sorted array
        # 

    # right_half
        # is length == 1?
        # if not: merge_sort
        # if so: push to sorted array
        # look at sorted array
      
end

# merge_sort([3,7,8,1,9,35])
#     # => [1, 3, 7, 8, 9, 35]

#     def merge(array_1, array_2)
#         return_array = []
#         if array_1 == [] || array_2 == []
#             p "Array 1 top is: #{array_1}"
#             p "Array 2 top is: #{array_2}"
#         else
#             answer_length = array_1.length + array_2.length
#             p "Array 1 is #{array_1}"
#             p "Array 2 is #{array_2}"
#         end
#         p "Array 1 looks like: #{array_1}"
#         p "Array 2 looks like: #{array_2}"
#         return_array
#     end
    
#     def merge_sort(array)
#         if array.length > 1
#             split_here = array.length / 2
#             left_half = array.slice(0, split_here)
#             right_half = array.slice(split_here, array.length)
#             b_array = merge_sort(left_half)
#             c_array = merge_sort(right_half)
#             sorted_array = merge(b_array, c_array) unless b_array == nil && c_array == nil
#             p "Sorted array is #{sorted_array}"
#             sorted_array
#         else
#             array
#         end
#     end
    
#     p merge_sort([2,9,1,3,8,7])