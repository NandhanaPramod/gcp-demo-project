#!/usr/bin/env python3
"""
Demo runner script for the calculator application.
"""

from main import Calculator, function_with_issues

def run_demo():
    """Run the calculator demo with various test cases."""
    print("🚀 Starting Calculator Demo")
    print("=" * 40)
    
    # Create calculator instance
    calc = Calculator()
    
    # Test basic operations
    print("📊 Basic Operations:")
    print(f"  5 + 3 = {calc.add(5, 3)}")
    print(f"  10 - 4 = {calc.subtract(10, 4)}")
    print(f"  6 × 7 = {calc.multiply(6, 7)}")
    print(f"  15 ÷ 3 = {calc.divide(15, 3)}")
    print(f"  2^8 = {calc.power(2, 8)}")
    
    print("\n⚠️  Error Handling:")
    print(f"  10 ÷ 0 = {calc.divide(10, 0)}")
    
    print("\n📈 Calculation History:")
    for i, entry in enumerate(calc.history, 1):
        print(f"  {i}. {entry}")
    
    print("\n🔍 Testing Function with Issues:")
    result = function_with_issues()
    print(f"  Result: {result}")
    
    print("\n✅ Demo completed successfully!")
    print("\n📋 Next Steps:")
    print("  1. Upload this code to SonarQube")
    print("  2. Run code quality analysis")
    print("  3. Review the findings and issues")

if __name__ == "__main__":
    run_demo() 