# Ruby Algorithm Practice

These exercises are designed to help you become comfortable with Ruby syntax while solving common algorithmic problems. Unless otherwise stated, **do not use built-in methods that directly solve the problem** (e.g., `Array#reverse`, `Array#flatten`).

---

# 1. Two Sum

## Difficulty
Easy

## Problem

Given an array of integers `nums` and an integer `target`, return the indices of the two numbers whose sum equals `target`.

You may assume:

- Exactly one valid solution exists.
- You may not use the same element twice.
- The order of the returned indices does not matter.

## Method Signature

```ruby
def two_sum(nums, target)
end
```

## Example 1

```ruby
Input:
nums = [2, 7, 11, 15]
target = 9

Output:
[0, 1]
```

## Example 2

```ruby
Input:
nums = [3, 2, 4]
target = 6

Output:
[1, 2]
```

## Constraints

- `2 <= nums.length <= 10^5`
- `-10^9 <= nums[i] <= 10^9`

## Follow-up

Can you solve it in **O(n)** time?

---

# 2. Reverse a String

## Difficulty

Easy

## Problem

Write a function that returns the reverse of a string **without using** `String#reverse`.

## Method Signature

```ruby
def reverse_string(str)
end
```

## Example

```ruby
Input:
"hello"

Output:
"olleh"
```

## Constraints

- The string may contain spaces.
- Preserve capitalization and punctuation.

## Follow-up

Can you do it in-place if given an array of characters?

---

# 3. Character Frequency

## Difficulty

Easy

## Problem

Return a hash where each key is a character in the string and the value is the number of times that character appears.

Spaces should be ignored.

## Method Signature

```ruby
def character_frequency(str)
end
```

## Example

```ruby
Input:
"banana"

Output:
{
  "b" => 1,
  "a" => 3,
  "n" => 2
}
```

## Bonus

Return the characters sorted by decreasing frequency.

---

# 4. Move Zeroes

## Difficulty

Easy

## Problem

Move all zeroes to the end of the array while maintaining the relative order of the non-zero elements.

Modify the array in-place if possible.

## Method Signature

```ruby
def move_zeroes(nums)
end
```

## Example

```ruby
Input:
[0, 1, 0, 3, 12]

Output:
[1, 3, 12, 0, 0]
```

## Constraints

- Minimize the number of operations.

---

# 5. Group Anagrams

## Difficulty

Medium

## Problem

Given an array of strings, group together words that are anagrams.

Two words are anagrams if they contain the same letters with the same frequencies.

## Method Signature

```ruby
def group_anagrams(words)
end
```

## Example

```ruby
Input:
["eat", "tea", "tan", "ate", "nat", "bat"]

Output:
[
  ["eat", "tea", "ate"],
  ["tan", "nat"],
  ["bat"]
]
```

## Follow-up

Can you avoid sorting every string?

---

# 6. First Non-Repeating Character

## Difficulty

Easy

## Problem

Return the first character that appears exactly once.

If every character repeats, return `nil`.

## Method Signature

```ruby
def first_unique_character(str)
end
```

## Example

```ruby
Input:
"swiss"

Output:
"w"
```

---

# 7. Merge Intervals

## Difficulty

Medium

## Problem

Given an array of intervals where each interval is represented as `[start, end]`, merge all overlapping intervals.

## Method Signature

```ruby
def merge_intervals(intervals)
end
```

## Example

```ruby
Input:
[[1,3],[2,6],[8,10],[15,18]]

Output:
[[1,6],[8,10],[15,18]]
```

## Constraints

- Intervals are not guaranteed to be sorted.

---

# 8. Longest Substring Without Repeating Characters

## Difficulty

Medium

## Problem

Find the length of the longest substring that contains no repeated characters.

## Method Signature

```ruby
def longest_unique_substring(str)
end
```

## Example

```ruby
Input:
"abcabcbb"

Output:
3
```

Explanation:

The longest substring is `"abc"`.

---

# 9. Product of Array Except Self

## Difficulty

Medium

## Problem

Return an array where each element is the product of every other element.

Do **not** use division.

## Method Signature

```ruby
def product_except_self(nums)
end
```

## Example

```ruby
Input:
[1,2,3,4]

Output:
[24,12,8,6]
```

## Constraints

- O(n) time
- O(1) extra space (excluding the output array)

---

# 10. Binary Search

## Difficulty

Easy

## Problem

Given a sorted array of integers and a target value, return the index of the target.

Return `-1` if the target does not exist.

## Method Signature

```ruby
def binary_search(nums, target)
end
```

## Example

```ruby
Input:
nums = [1,3,5,7,9]
target = 7

Output:
3
```

---

# 11. Flatten Nested Arrays

## Difficulty

Medium

## Problem

Flatten an arbitrarily nested array into a one-dimensional array.

Do **not** use `Array#flatten`.

## Method Signature

```ruby
def flatten(array)
end
```

## Example

```ruby
Input:
[1, [2, [3, 4], 5], 6]

Output:
[1,2,3,4,5,6]
```

## Bonus

Solve it both:

- Recursively
- Iteratively using a stack

---

# 12. Coin Change

## Difficulty

Medium

## Problem

Given an array of coin denominations and a target amount, return the minimum number of coins needed to make that amount.

Return `-1` if it cannot be made.

## Method Signature

```ruby
def coin_change(coins, amount)
end
```

## Example 1

```ruby
Input:
coins = [1,2,5]
amount = 11

Output:
3

Explanation:
5 + 5 + 1
```

## Example 2

```ruby
Input:
coins = [2]
amount = 3

Output:
-1
```

---

# 13. Implement Your Own `map`

## Difficulty

Easy

## Problem

Implement your own version of Ruby's `Array#map` using blocks.

Do not call the built-in `map`.

## Method Signature

```ruby
def my_map(array)
end
```

## Example

```ruby
my_map([1,2,3]) { |n| n * 2 }

# => [2,4,6]
```

---

# 14. Implement Your Own `select`

## Difficulty

Easy

## Problem

Implement your own version of `Array#select`.

Do not call `select`.

## Method Signature

```ruby
def my_select(array)
end
```

## Example

```ruby
my_select([1,2,3,4]) { |n| n.even? }

# => [2,4]
```

---

# 15. Breadth-First Search

## Difficulty

Medium

## Problem

Given a graph represented as an adjacency list, find the shortest path (in number of edges) from a starting node to a target node.

Return the path as an array.

If no path exists, return an empty array.

## Example

```ruby
graph = {
  "A" => ["B", "C"],
  "B" => ["D"],
  "C" => ["E"],
  "D" => ["F"],
  "E" => ["F"],
  "F" => []
}

shortest_path(graph, "A", "F")

# => ["A", "B", "D", "F"]
```

---

# Ruby Tips

While solving these problems, try to use:

- `each`
- `each_with_index`
- `times`
- `upto`
- `downto`
- `while`
- `until`
- `Hash.new(0)`
- Blocks (`yield`)
- Symbols
- Multiple assignment
- Ranges
- Custom classes
- Modules when appropriate

Avoid relying on Enumerable methods until you've implemented them yourself.
