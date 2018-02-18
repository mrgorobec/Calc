import XCTest
import XCTest_Gherkin

let app = XCUIApplication()

class StepDefinitions : StepDefiner {
    override func defineSteps() {
        step("I tap ([0-9]*)") { (matches: [String]) in
            let expectedValue = matches.first!
            app.buttons[expectedValue].tap()
        }
       
        step("I click on (.)"){ (matches: [String]) in
            let expectedValue = matches.first!
            app.buttons[expectedValue].tap()
        }
        
        step("I expect to see (.*)"){ (matches: [String]) in
            let expectedValue = matches.first!
            let displayedValue = XCUIApplication().textFields["display"].value as! String
            XCTAssertEqual(displayedValue , expectedValue)
        }
        
    
    }
}
