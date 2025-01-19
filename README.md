# Dart Type Casting Error: Converting JSON Array to List<int>

This repository demonstrates a common error in Dart when dealing with JSON data and type casting.  The `cast` method can throw exceptions if the data doesn't precisely match the target type.  This example shows how to safely convert a dynamic JSON array to a `List<int>` without causing runtime errors.

## Bug Description
The bug involves attempting to directly cast a `List<dynamic>` to a `List<int>` using the `cast` method. If the `List<dynamic>` contains any elements that aren't integers, a runtime exception will occur.  The provided code shows the incorrect and correct ways to achieve this conversion.

## Solution
The solution uses the `map` method to iterate through each element of the `List<dynamic>` and perform explicit type conversion to `int` before creating the `List<int>`. This handles potential errors gracefully and avoids runtime exceptions.