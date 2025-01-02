# Silent Failure in Dart Asynchronous Operations

This repository demonstrates a common error in Dart asynchronous programming: neglecting to rethrow exceptions caught in `catch` blocks. This leads to silent failures, making debugging difficult.

## The Bug
The `bug.dart` file contains a function `fetchData` that fetches data from an API.  The `catch` block handles exceptions but fails to rethrow them, resulting in a silent failure if the API request fails. 

## The Solution
The `bugSolution.dart` file demonstrates the correct approach. By rethrowing the exception using `rethrow`, the error is propagated up the call stack, allowing for proper error handling at a higher level. 

## How to Reproduce
1. Clone this repository.
2. Run `bug.dart` and observe the lack of explicit error indication despite a potential API failure. 
3. Run `bugSolution.dart` and observe the proper error handling and propagation. 