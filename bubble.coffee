

bubble = (a) ->
  loop
    swapped = false
    for item, i in a
      if a[i] > a[i+1]
        temp = a[i]
        a[i] = a[i+1]
        a[i+1] = temp
        swapped = true
    break unless swapped

bubbleSort = (a)->
  bubble(a)
  return a

exports.bubbleSort = bubbleSort
