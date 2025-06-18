#!/usr/bin/env python3
"""
Simple Calculator Application for SonarQube Demo
This application has intentional code quality issues for demonstration purposes.
"""

import os
import sys
import math
from typing import Union, List, Dict, Any

# Global variable (bad practice)
global_var = 42

class Calculator:
    """A simple calculator class with some intentional issues."""
    
    def __init__(self):
        self.result = 0
        self.history = []
    
    def add(self, a, b):
        """Add two numbers."""
        # Missing type hints
        result = a + b
        self.history.append(f"Added {a} + {b} = {result}")
        return result
    
    def subtract(self, a, b):
        """Subtract two numbers."""
        result = a - b
        self.history.append(f"Subtracted {a} - {b} = {result}")
        return result
    
    def multiply(self, a, b):
        """Multiply two numbers."""
        result = a * b
        self.history.append(f"Multiplied {a} * {b} = {result}")
        return result
    
    def divide(self, a, b):
        """Divide two numbers."""
        # Potential division by zero issue
        if b == 0:
            print("Error: Division by zero!")
            return None
        result = a / b
        self.history.append(f"Divided {a} / {b} = {result}")
        return result
    
    def power(self, base, exponent):
        """Calculate power."""
        result = math.pow(base, exponent)
        self.history.append(f"Power {base} ^ {exponent} = {result}")
        return result

def unused_function():
    """This function is never called (dead code)."""
    return "I'm never used!"

def function_with_issues():
    """Function with various code quality issues."""
    # Unused variable
    unused_var = "I'm not used"
    
    # Hardcoded password (security issue)
    password = "admin123"
    
    # Magic number
    if len("test") > 3:
        print("String is longer than 3")
    
    # Duplicate code
    x = 1 + 1
    y = 1 + 1
    
    # Complex function (too many lines)
    for i in range(10):
        for j in range(10):
            for k in range(10):
                print(f"Complex nested loop: {i}, {j}, {k}")
    
    return "Done"

def main():
    """Main function to demonstrate the calculator."""
    print("=== Simple Calculator Demo ===")
    
    calc = Calculator()
    
    # Test basic operations
    print(f"5 + 3 = {calc.add(5, 3)}")
    print(f"10 - 4 = {calc.subtract(10, 4)}")
    print(f"6 * 7 = {calc.multiply(6, 7)}")
    print(f"15 / 3 = {calc.divide(15, 3)}")
    print(f"2 ^ 8 = {calc.power(2, 8)}")
    
    # Test division by zero
    print(f"10 / 0 = {calc.divide(10, 0)}")
    
    # Show history
    print("\nCalculation History:")
    for entry in calc.history:
        print(f"  - {entry}")

if __name__ == "__main__":
    main() # Trigger SonarCloud scan


