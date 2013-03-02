bubble = require './../bubble.coffee'
qs = require './../quicksort.coffee'
merge = require './../merge.coffee'


describe("a bubble sorting algorithm", ->
  it("should return a sorted array", ->
    arr = [4,1,7]
    sortedArr = bubble.bubbleSort(arr)
    expect(sortedArr).toEqual([1,4,7])
  )
)

describe("a quicksort sorting algorithm", ->
  it("should return a sorted array", ->
    arr = [4,1,7]
    sortedArr = qs.quickSort(arr)
    expect(sortedArr).toEqual([1,4,7])
  )
)

describe("a mergesort sorting algorithm", ->
  it("should return a sorted array", ->
    arr = [4,1,7]
    sortedArr = merge.mergeSort(arr)
    expect(sortedArr).toEqual([1,4,7])
  )
)
