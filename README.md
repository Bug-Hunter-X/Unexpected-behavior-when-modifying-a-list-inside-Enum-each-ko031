# Elixir Enum.each List Modification Bug

This repository demonstrates an unexpected behavior when trying to modify a list within an `Enum.each` loop in Elixir.  Directly modifying the list within the loop doesn't affect the original list because Elixir's immutability creates a new list for each change.  The solution showcases how to properly achieve list modification within an `Enum.each` context.

## Bug

The provided Elixir code attempts to remove the element `3` from the list during iteration using `List.delete`. However, due to Elixir's immutable nature, the original list remains unchanged.

## Solution

The solution demonstrates correct methods of manipulating lists in Elixir including using `Enum.filter` for removing elements or creating a new list with changes.