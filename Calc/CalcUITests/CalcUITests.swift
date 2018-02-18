import XCTest
import XCTest_Gherkin

@testable import Calc

class CalcUITests: XCTestCase {
    let app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func twoNumbersSum(value: Int, value2: Int) -> Int {
        return value + value2
    }
    func getDisplayedValue() -> Float{
        let displayedValue = XCUIApplication().textFields["display"].value as! String
        return Float(displayedValue)!
    }
    
    
    func testSum() {
        When("I tap 6")
        Then("I click on +")
        Then("I tap 2")
        Then("I click on =")
        And("I expect to see 8")
        Then("I click on +")
        Then("I click on 2")
        Then("I click on =")
        And("I expect to see 10")
    }
    
    func testSubstraction() {
        When("I tap 6")
        Then("I click on -")
        Then("I tap 2")
        Then("I click on =")
        And("I expect to see 4")
    }
    
    func testDivision() {
        When("I tap 2")
        When("I tap 5")
        Then("I click on /")
        Then("I tap 4")
        Then("I click on =")
        And("I expect to see 6.25")
    }
    
    func testMultiplication() {
        When("I tap 1")
        When("I tap 9")
        Then("I click on *")
        Then("I tap 8")
        Then("I click on =")
        And("I expect to see 152")
    }
    
    func testDelete() {
        When("I tap 2")
        When("I tap 0")
        When("I tap 1")
        When("I tap 8")
        Then("I click on D")
        And("I expect to see 201")
        Then("I click on D")
        And("I expect to see 20")
        Then("I click on D")
        And("I expect to see 2")
        Then("I click on D")
        And("I expect to see 0")
    }

    func testClearDisplay() {
        When("I tap 2")
        When("I tap 5")
        Then("I click on /")
        When("I tap 5")
        Then("I click on C")
        And("I expect to see 0")
    }
    
    func testCorrectedComputation() {
        When("I tap 5")
        Then("I click on =")
        And("I expect to see 5")
    }
 
    func testClearTwice(){
        When("I tap 1")
        When("I tap 9")
        Then("I click on *")
        When("I tap 8")
        Then("I click on C")
        Then("I click on C")
        Then("I click on +")
        When("I tap 2")
        Then("I click on =")
        And("I expect to see 2")
    }
}
