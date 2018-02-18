import XCTest
@testable import CalculatorKit

class CalculatorKitTests: XCTestCase {
    // MARK: - Properties
    
    var calculator: Calculator?
    
    
    // MARK: - Setup and Teardown
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        calculator = Calculator()
        XCTAssertNotNil(calculator, "Cannot create Calculator instance.")
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    func testSimpleAdd(){
        do {
            try calculator?.input("6")
            try calculator?.input("+")
            try calculator?.input("3")
            try calculator?.input("=")
            XCTAssertEqual(Int(calculator!.displayValue)!, 9 )
        }catch {
            print(error)
        }
    }
    
    func testSubtraction(){
        do {
            try calculator?.input("1")
            try calculator?.input("9")
            try calculator?.input("-")
            try calculator?.input("6")
            try calculator?.input("=")
            XCTAssertEqual(Int(calculator!.displayValue)!, 13)
        }catch {
            print(error)
        }
    }
    

    func testDivision(){
        do {
            try calculator?.input("2")
            try calculator?.input("3")
            try calculator?.input("/")
            try calculator?.input("5")
            try calculator?.input("=")
            XCTAssertEqual(Float(calculator!.displayValue)!, 4.6)
        }catch {
            print(error)
        }
    }
    
    func testMultiplication(){
        do {
            try calculator?.input("6")
            try calculator?.input("*")
            try calculator?.input("2")
            try calculator?.input("=")
            XCTAssertEqual(Int(calculator!.displayValue)!, 12)
            
        }catch {
            print(error)
        }
    }

    func testNegativeSubtraction(){
        do {
            try calculator?.input("6")
            try calculator?.input("-")
            try calculator?.input("2")
            try calculator?.input("4")
            try calculator?.input("=")
            XCTAssertEqual(Int(calculator!.displayValue)!, -18)
        }catch {
            print(error)
        }
    }
    
    func testClearDisplay(){
        do {
            try calculator?.input("1")
            try calculator?.input("3")
            try calculator?.input("/")
            try calculator?.input("5")
            try calculator?.input("C")
            XCTAssertEqual(Int(calculator!.displayValue)!, 0)
        }catch {
            print(error)
        }
    }
    
    func testClearTwice(){
        do {
            try calculator?.input("1")
            try calculator?.input("0")
            try calculator?.input("*")
            try calculator?.input("6")
            try calculator?.input("C")
            try calculator?.input("C")
            try calculator?.input("+")
            try calculator?.input("9")
            try calculator?.input("1")
            try calculator?.input("=")
            XCTAssertEqual(Int(calculator!.displayValue)!, 91)
        }catch {
            print(error)
        }
    }
    
    func testNegativeMoreThanOneCharacter(){
        XCTAssertThrowsError(try calculator!.input("67")) { error in
            guard let error = error as? CalculatorError
                else {
                    XCTFail("unecpected error type")
                    return
            }
            XCTAssertTrue(error == .multipleCharacters, "message: multipleCharacters Error as Expected")
        }
    }
    
    
    func testNegativeInvalidCharacter(){
        XCTAssertThrowsError(try calculator!.input("%")) { error in
            guard let error = error as? CalculatorError
                else {
                    XCTFail("unecpected error type")
                    return
            }
            XCTAssertTrue(error == .invalidCharater, "message: Invalid Charachter Error as Expected")
        }
    }

    func testNegativeNilInput(){
        XCTAssertThrowsError(try calculator!.input(nil)) { error in
            guard let error = error as? CalculatorError
                else {
                    XCTFail("unecpected error type")
                    return
            }
            XCTAssertTrue(error == .nilInput, "message: Nil Error as Expected")
        }
    }
}
