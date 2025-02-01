```elixir
list = [1, 2, 3, 4, 5]

# Correct way to modify a list during enumeration: Use Enum.filter
new_list = Enum.filter(list, fn x -> x != 3 end)
IO.inspect(new_list) # Output: [1, 2, 4, 5]

# Alternative: Create a new list with the desired changes
new_list2 = list -- [3] #List subtraction operator
IO.inspect(new_list2) # Output: [1, 2, 4, 5]

#Another alternative (less efficient): Using Enum.reduce
new_list3 = Enum.reduce(list, [], fn x, acc -> 
if x != 3 do
  [x | acc]
else
  acc
end
end)
IO.inspect(Enum.reverse(new_list3)) # Output: [1, 2, 4, 5] 
```