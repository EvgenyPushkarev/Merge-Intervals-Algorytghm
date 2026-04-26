Merge Intervals Algorithm

A robust and efficient Swift implementation for merging overlapping intervals within a collection. This project demonstrates clean code principles, custom data structures, and algorithmic optimization.
📋 Problem Description

Given an array of intervals where intervals[i] = [start, end], the goal is to merge all overlapping intervals and return an array of the non-overlapping intervals that cover all the intervals in the input.

Example:

    Input: [[1, 3], [2, 6], [8, 10], [15, 18]]

    Output: [[1, 6], [8, 10], [15, 18]]

    Explanation: Since intervals [1, 3] and [2, 6] overlap, they are merged into [1, 6].

🛠 Approach

The solution employs a Sort and Merge strategy:

    Custom Structure: Uses a struct Interval instead of raw arrays to ensure type safety and improve readability.

    Sorting: The intervals are sorted based on their starting values. This ensures that overlapping intervals are adjacent.

    Linear Scan: A single pass through the sorted list compares the current interval with the next. If they overlap, they are merged using the max() of their end points.

📈 Complexity Analysis

    Time Complexity: O(nlogn)

        Sorting the intervals takes O(nlogn).

        The merging process takes O(n) as we iterate through the list once.

        Total: O(nlogn+n)=O(nlogn).

    Space Complexity: O(n)

        We store the results in a new array, which in the worst case (no overlaps) contains all n intervals.

💻 Tech Stack

    Language: Swift 6.0

    Paradigm: Object-Oriented & Functional

    Tooling: Xcode Playground
