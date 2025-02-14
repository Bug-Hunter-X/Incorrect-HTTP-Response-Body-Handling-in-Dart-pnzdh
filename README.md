# Incorrect HTTP Response Body Handling in Dart

This repository demonstrates a common error in Dart when handling HTTP responses: incorrectly treating the response body as a simple string instead of parsing it as a JSON object. This can lead to unexpected behavior and difficulty in accessing the actual data received from the server.

The `bug.dart` file contains the erroneous code, while `bugSolution.dart` provides a corrected version that properly parses the JSON response.

## How to Reproduce

1. Clone the repository.
2. Run `bug.dart`.
3. Observe the output; the response body will be printed as a raw string, making it difficult to extract specific data fields.
4. Run `bugSolution.dart`. The response body will now be parsed as a JSON object, allowing easy access to its members.
