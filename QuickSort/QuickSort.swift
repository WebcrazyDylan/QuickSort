//
//  QuickSort.swift
//  QuickSort
//
//  Created by Dylan Park on 2021-08-04.
//

import Foundation

// * Quick Sort (sorts in-place)
// Time Complexity: O(N lgN) -> technically O(N^2) in the worst case
// Space Complexity: O(1)
func quickSort<T: Comparable>(_ arr: inout [T], _ start: Int, _ end: Int) {
  if start < end {
    let pivotIndex = partition(&arr, start, end)
    quickSort(&arr, start, pivotIndex - 1)
    quickSort(&arr, pivotIndex + 1, end)
  }
    print(arr)
}

/// Returns the index of the pivot
/// - Parameters:
///   - arr: the array
///   - start: the start index
///   - end: the end index
/// - Returns: the index of the pivot after partitioning
func partition<T: Comparable>(_ arr: inout [T], _ start: Int, _ end: Int) -> Int {
  var pivotIndex = start
  let pivot = arr[end]
  for i in start..<end {
    if arr[i] < pivot {
      arr.swapAt(pivotIndex, i)
      pivotIndex += 1
    }
  }
  arr.swapAt(pivotIndex, end)
  return pivotIndex
}
