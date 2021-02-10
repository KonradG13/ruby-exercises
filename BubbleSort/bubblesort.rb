def bubblesort(array)
  modified_array = array
  max_range = modified_array.length()-1
  switches_counter = 1
  until switches_counter == 0 do
    switches_counter = 0
    for item in 0...max_range do
      first_item = modified_array[item]
      counter = modified_array.index(first_item)
      if counter < modified_array.length()-1
        second_counter = counter+1
      else
        second_counter = counter  
      end
      second_item = modified_array[second_counter]
      if first_item > second_item 
        modified_array[counter] = second_item
        modified_array[second_counter] = first_item
        switches_counter +=1
      end
    end
  end
  p modified_array
  return modified_array
end

bubblesort([4,3,78,2,0,5,18,85])