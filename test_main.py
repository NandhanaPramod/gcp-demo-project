#!/usr/bin/env python3
"""
Test file for the calculator application.
"""

import pytest
from main import Calculator

def test_calculator_add():
    """Test addition functionality."""
    calc = Calculator()
    assert calc.add(2, 3) == 5
    assert calc.add(-1, 1) == 0

def test_calculator_subtract():
    """Test subtraction functionality."""
    calc = Calculator()
    assert calc.subtract(5, 3) == 2
    assert calc.subtract(1, 1) == 0

def test_calculator_multiply():
    """Test multiplication functionality."""
    calc = Calculator()
    assert calc.multiply(2, 3) == 6
    assert calc.multiply(0, 5) == 0

def test_calculator_divide():
    """Test division functionality."""
    calc = Calculator()
    assert calc.divide(6, 2) == 3.0
    assert calc.divide(5, 2) == 2.5
    assert calc.divide(10, 0) is None

def test_calculator_power():
    """Test power functionality."""
    calc = Calculator()
    assert calc.power(2, 3) == 8.0
    assert calc.power(5, 0) == 1.0 
