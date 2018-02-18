import Foundation

public enum CalculatorError: Error {
    case invalidCharater
    case multipleCharacters
    case nilInput
}

extension CalculatorError: LocalizedError {
    
    public var errorDescription: String? {
        switch self {
            case .invalidCharater: return NSLocalizedString("Invalid character exception.", comment: "The input is not a number between 0-9, an operator (+, -, *, /), D, C, =, or a period.")
            case .multipleCharacters: return NSLocalizedString("Multiple characters exception.", comment: "The input contains more than one character.")
            case .nilInput: return NSLocalizedString("Nil exception.", comment: "The input is nil.")
        }
    }
}
