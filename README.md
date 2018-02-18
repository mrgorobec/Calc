# Calculator App
It is a workspace that contains project Calc.
Calc builds an iOS app and CalculatorKit. App use
CalculatorKit, which is a framework, to process user input and perform related arithmetic operations.

## Build Requirements
+ Xcode 8.3 or later
+ iOS 10.3 SDK or later
+ macOS 10.11 SDK or later

## Runtime Requirements
+ iOS 9.3 or later
+ mac OS 10.11 or later

The Calc project defines two schemes:
Calc
Builds the Calc app and performs its UI tests.

CalculatorKit
Builds the CalculatorKit framework. Performs unit tests on the Calculator class.


# Test Cases to implement:
##  Description:
Below are test cases that would cover an application functionality.
It must be implemented separately for the Calc app itself and for CalculatorKit
framework that is a part of an application.

---- General Requirements ----

"Calc UI Tests" must be implmented inside of CalcUITests.swift and must be UI tests
based on default methods of XCTest\XCUitest functionality

"CalculatorKit Tests" are about to test a functional part and must be implemented inside of
CalculatorKitTests.swift

---- Advanced requirements ----
Additionally all or some of that tests can be implemented using KIF framework or XCTest_Gherkin framework
than can be found at:
https://github.com/kif-framework/KIF
https://github.com/net-a-porter-mobile/XCTest-Gherkin

PS: Actually it is a best way, because most of the actual work on this position supposed to be done using frameworks above.

//========================= Calc UI Tests =========================

///
Perform a chained addition test. The test has two parts:
1. Enter in the calculator and check: 6 + 2 = 8.
2. Check: display value + 2 = 10.
///

/// Perform a substraction test. Enter in the calculator and check: 6 - 2 = 4.

/// Perform a division test. Enter in the calculator and check: 25 / 4 = 6.25.

/// Perform a multiplication test. Enter in the calculator and check: 19 x 8 = 152.

///

Test the functionality of the D (Delete) key.
1. Enter the number 2018 into the calculator.
2. Delete each digit, and test the display to ensure
the correct display contains the expected value after each D tap.

///

Test the functionality of the C (Clear) key.
1. Clear the display.
- Enter the calculation 25 / 4.
- Tap C.
- Ensure the display contains the value 0.
2. Perform corrected computation.
- Tap 5, =.
- Ensure the display contains the value 5.
3. Ensure tapping C twice clears all.
- Enter the calculation 19 x 8.
- Tap C (clears the display).
- Tap C (clears the operand).
- Tap +, 2, =.
- Ensure the display contains the value 2.




//========================= CalculatorKit Tests =========================


/// Perform a simple addition test: 6 + 3 = 9.

/// Perform a simple subtraction test: 19 - 6 = 13.

/// Perform a simple division test: 23 / 5 = 4.6.

/// Perform a simple multiplication test: 6 * 2 = 12.

/// Perform a simple subtraction test with a negative result: 6 - 24 = -18.

/// Test that the clear (C) key clears the last entry when used once.

/// Test that the clear (C) key clears the computation when used twice.

///

Tests that the input: method throws an exception in three situations:
1. The argument contains more than one character.
2. The argument contains an invalid character.
3. The argument is nil.

///
