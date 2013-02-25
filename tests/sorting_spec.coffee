bubble = require './../bubble.coffee'
qs = require './../quicksort.coffee'


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
    sortedArr = qs.quicksort(arr)
    expect(sortedArr).toEqual([1,4,7])
  )
)

