import Foundation
import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more snacks!", color: .yellow)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: .green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less food", color: .red)
        }
    }
    
    func getBMIValue() -> String {
        let bmiToOneDecimal = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToOneDecimal
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "There is no data given by user"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
    
}
