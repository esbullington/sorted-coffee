## I couldn't figure out mergesort (yet)
## So algorithm is from http://www.nczonline.net/blog/2012/10/02/computer-science-and-javascript-merge-sort/

arr = [2,1,8,4,9,6,4,7,2]

merge = (left, right) ->
  result = []
  il = 0
  ir = 0
  while il < left.length and ir < right.length
    if left[il] < right[ir]
      result.push left[il++]
    else
      result.push right[ir++]
  result.concat(left.slice(il)).concat right.slice(ir)


mergeSort = (items) ->
  
  # Terminal case: 0 or 1 item arrays don't need sorting
  return items  if items.length < 2
  middle = Math.floor(items.length / 2)
  left = items.slice(0, middle)
  right = items.slice(middle)
  merge mergeSort(left), mergeSort(right)


exports.mergeSort = mergeSort

console.log mergeSort(arr)