//
//  main.swift
//  QuickSort
//
//  Created by Dylan Park on 2021-08-04.
//

import Foundation



var list = [ 10, 0, 3, 9, 2, 14, 8, 27, 1, 5, 8, -1, 26 ]
quickSort(&list, 0, list.count-1)

var list1 = [ 100, 120, 50, 0, 8, 3, 9, 2, -13, 14, 8, 27, 0, 1, 3, 5, 71, 8, -1, 26 ]
quickSort(&list1, 0, list1.count-1)
