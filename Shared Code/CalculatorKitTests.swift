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
    
    
}

