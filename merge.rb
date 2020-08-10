# Build a method #merge_sort that takes in an array and returns a sorted array, using a recursive merge sort methodology.
# Merge Sort
# sort the left half of the array
# sort the right half of the array
# merge the two halves together

    def merge(array_1, array_2, return_array)
        if array_1 == [] && array_2.length > 0
            array_2.each {|element| return_array.push(element)}
        elsif array_2 == [] && array_1.length > 0
            array_1.each {|element| return_array.push(element)}
        else
            if array_1[0] < array_2[0]
                return_array.push(array_1[0])
                array_1.delete(array_1[0])
                merge(array_1, array_2, return_array)
           elsif array_2[0] < array_1[0]
               return_array.push(array_2[0])
               array_2.delete(array_2[0])
               merge(array_1, array_2, return_array)
           else
                p "Something went wrong"
           end
        end
        return_array
    end
    
    
    def merge_sort(array)
        if array.length > 1
            split_here = array.length / 2
            left_half = array.slice(0, split_here)
            right_half = array.slice(split_here, array.length)
            b_array = merge_sort(left_half)
            c_array = merge_sort(right_half)
            sorted_array = merge(b_array, c_array, [])
            # p "Sorted array is #{sorted_array}"
            sorted_array
        else
            array
        end
    end
    
    p merge_sort([3,7,8,1,9,35])
    # => [1, 3, 7, 8, 9, 35]