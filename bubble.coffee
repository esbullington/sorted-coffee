

bubble = (arr) ->
  loop
    swapped = false
    for item, i in arr
      if arr[i] > arr[i+1]
        temp = arr[i]
        arr[i] = arr[i+1]
        arr[i+1] = temp
        swapped = true
    break unless swapped

bubbleSort = (arr)->
  bubble(arr)
  return arr


exports.bubbleSort = bubbleSort

