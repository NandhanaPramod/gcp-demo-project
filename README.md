# Simple Calculator Demo App

A simple Python calculator application designed for SonarQube code quality analysis demonstration.

## Features

- Basic arithmetic operations (add, subtract, multiply, divide, power)
- Calculation history tracking
- Division by zero handling

## Intentional Code Quality Issues

This application contains intentional code quality issues for SonarQube analysis:

1. **Global variables** - `global_var` (bad practice)
2. **Missing type hints** - Function parameters lack type annotations
3. **Unused functions** - `unused_function()` is never called
4. **Unused variables** - `unused_var` in `function_with_issues()`
5. **Hardcoded credentials** - Password in plain text
6. **Magic numbers** - Hardcoded values without constants
7. **Code duplication** - Repeated expressions
8. **Complex functions** - Overly nested loops
9. **Potential security issues** - Division by zero handling

## Running the Application

```bash
python main.py
```

## Running Tests

```bash
pytest test_main.py
```

## SonarQube Analysis

This application is designed to demonstrate various SonarQube code quality checks:

- **Code Smells**: Unused variables, functions, and imports
- **Bugs**: Potential division by zero
- **Vulnerabilities**: Hardcoded passwords
- **Code Coverage**: Test coverage analysis
- **Duplications**: Code duplication detection
- **Complexity**: Cyclomatic complexity analysis

## Expected SonarQube Findings

- Multiple code smells (unused code, magic numbers)
- Security hotspots (hardcoded password)
- Potential bugs (division by zero)
- Code duplications
- High complexity in some functions 