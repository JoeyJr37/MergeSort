# Build a method #merge_sort that takes in an array and returns a sorted array, using a recursive merge sort methodology.

def merge_sort(array)
    # split the array in half
    # is there a single element in one of the halves?
        # if so: great
        # if not: split again then check to see if there is a single element
        
    temp_first_array = []
    temp_second_array = []
    split_here = array.length / 2
    split_here.times do |i|
        temp_first_array << array[i]
    end
    temp_second_array =  array.slice(split_here, array.length)
    if temp_first_array.length <= 2
        if (temp_first_array[0] <=> temp_first_array[1]) == 1
            value_1 = temp_first_array[0]
            value_2 = temp_first_array[1]
            temp_first_array[0] = value_2
            temp_first_array[1] = value_1
        end
    else
        merge_sort(temp_first_array)
    end
    if temp_second_array.length <= 2
        if (temp_first_array[0] <=> temp_first_array[1]) == 1
            value_1 = temp_first_array[0]
            value_2 = temp_first_array[1]
            temp_first_array[0] = value_2
            temp_first_array[1] = value_1
        end
    else
        merge_sort(temp_first_array)
    end
    if temp_first_array.length > temp_second_array.length
        temp_first_array.length.times do |i|
            if (temp_first_array[i] <=> temp_second_array[i]) == 1
                value_1 = temp_first_array[i]
                value_2 = temp_second_array[i]
                temp_first_array[i] = value_2
                temp_first_array[i] = value_1
            end
        end
    else
        temp_second_array.length.times do |i|
            if (temp_first_array[i] <=> temp_second_array[i]) == 1
                value_1 = temp_first_array[i]
                value_2 = temp_second_array[i]
                temp_first_array[i] = value_2
                temp_first_array[i] = value_1
            end
        end
    end        
end

p merge_sort([3,7,8,1,9,35])
    # => [1, 3, 7, 8, 9, 35]