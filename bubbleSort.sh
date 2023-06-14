#!/bin/bash

#function of bubble sort
bubble_sort() {
#array that contains all possitional parameters
array=("$@")
#number of indexes
numOfInd=${#array[@]}
#c style for loop
for ((i=0; i<numOfInd-1; i++));
do
        #c style for loop for that iterates as many times as the unsorted number
        #numOfInd-i-1 determines the number of elements that have not yet been sorted
        for ((j=0; j<numOfInd-i-1; j++));
        do
                #if the element's value in the first index is greater than the next swap them
                if [[ ${array[j]} -gt ${array[j+1]} ]];
                then
                        #swap them
                        temp=${array[j]}
                        array[j]=${array[j+1]}
                        array[j+1]=$temp
                fi
        done
done

echo "${array[@]}"


}


#Main

main_Array=(91 32 92 13 73 14)
sorted_Array=($(bubble_sort "${main_Array[@]}"))
echo "***************************"
echo "Sorted Array: ${sorted_Array[@]}"
echo "***************************"
