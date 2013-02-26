Quicksort algorithm, invented by Dr. Tony Hoare in 1960 while he was a visiting student at Moscow State University.  This simple implementation is based on the description at: http://en.wikipedia.org/wiki/Quicksort


    quicksort = (arr)->

If an array is length 0, then it is already sorted.  This is the recursive base condition.

      return []  if arr.length <=0

For the sake of simplicity, our pivot `node` here is simply the first element of the main array being sorted.  In more complex (and typically faster) implementations, the median or middle element (by index) is chosen.

      node = arr[0]

Here we initialize two arrays: one for the elements greater than the pivot node, and one for the elements less than the pivot node's value. Note that in JavaScript we must take care when initializing arrays; initializing `greater = lesser = []` will not work as it does in some other dynamic languages.

      greater = []
      lesser = []

Here we take advantage of coffeescript's list comprehensions to execute recursive loops over the ever-diminishing arrays.

      lesser = [arr[i] for i in arr[1...arr.length] if arr[i] < node]
      greater = [arr[i] for i in arr[1...arr.length] if arr[i] >= node]
      # for i in [1...arr.length]
      #   if arr[i] < node
      #     lesser.push(arr[i])
      #   else
      #     greater.push(arr[i])

Then we return the two sorted arrays, interposing the essential node element between them.

      # return lesser.concat(node, greater)
      return quicksort(lesser).concat(node, quicksort(greater))

Test out the quicksort using a test array.
Export the function for node.js access (for jasmine-node tests)

    arr = [9,3,7,2,4,1,9,5]
    console.log quicksort(arr)

    exports.quicksort = quicksort
