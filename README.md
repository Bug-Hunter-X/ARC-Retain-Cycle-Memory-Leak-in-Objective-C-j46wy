# Objective-C ARC Retain Cycle Memory Leak

This repository demonstrates a common Objective-C memory management issue: a retain cycle caused by improper use of strong references in Automatic Reference Counting (ARC).  The example shows how a retain cycle can lead to a memory leak and how to fix it.

## Bug Description:

A retain cycle occurs when two or more objects hold strong references to each other, preventing them from being deallocated even when they are no longer needed. This results in a memory leak, where memory is consumed but never released, potentially leading to application instability or crashes.

## Bug Solution:

The solution involves carefully considering object ownership and using `weak` references where appropriate. By breaking the retain cycle, the objects can be properly deallocated when they are no longer needed.

## How to reproduce:

1. Clone this repository.
2. Compile and run the `bug.m` file. You will see the issue. 
3. Next, compare it with  `bugSolution.m` for fix.