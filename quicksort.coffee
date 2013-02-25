
quicksort = (arr)->
  return []  if arr.length is 0
  node = arr[0]
  # midpoint = Math.floor(arr.length/2)
  # node = arr[midpoint]
  greater = []
  lesser = []
  for i in [1...arr.length]
    if arr[i] < node
      lesser.push(arr[i])
    else
      greater.push(arr[i])
  return quicksort(lesser).concat(node, quicksort(greater))


exports.quicksort = quicksort
