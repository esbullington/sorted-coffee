arr = [2,1,8,4,9,6,4,7,2]

compare = (item0, item1)->
  if item0 > item1
    return item0
  else
    return item1

sort = (arr)->
  for item in arr



mergesort = (arr)->
  len = arr.length
  half0 = arr[0...len/2]
  half1 = arr[len/2..]
