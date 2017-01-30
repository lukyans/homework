


#We creat an array that contains ["3", "2", "0", "1"]
#we are going to run the program until all numbers are sorted
#create 2 variables to store elemetns in swaping process 
#creat loop to run through array
#Take first element of array compare it with the next element in array
 #if first element is bigger then the next element of array 
        #we swap them 
        #add number (counter) to proceed to second element of the array
        #run this block until array element is less or equal to length of array 
        #(length of array is 4. We will compare counter with the length of array)

    # stop program when there is nothing to sort


class BubbleSort
 def sort(h)
        
    swap = true        
        
        until swap == false

            previous_index = 0
            current_index = 1
            swap = false

                    while current_index <= h.length - 1  #[3,2,0,1]
                    
                        if h[previous_index] > h[current_index]#previous_index(0) 3 > current_index(1) 2 
                            c_value = h[previous_index] #c_value = previous_index(0) 3
                            p_value = h[current_index] #p_value = current_index (1) 2
                    
                            h[previous_index] = p_value #previous_index(0) = 2
                            h[current_index] = c_value #current_indexx(1) = 3
                            swap = true
                        end    
                     previous_index += 1 # Increment previous_index
                     current_index += 1 # Increment current_index 
                    end                      
      end
        h
  end
end
 sorting = BubbleSort.new
 puts sorting.sort([3, 2, 0, 1]).inspect





