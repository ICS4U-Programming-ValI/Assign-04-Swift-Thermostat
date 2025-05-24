
// thermostat class
class Thermostat {
    var celsius: Double
    var Fahrenheit: Double
    var id: String
    
    // Constructors
    init(id: String, celsius: Double) {
    self.celsius = celsius
    self.id = id
    self.Fahrenheit = (celsius * 9/5) + 32
}

    init(id:String) {
        self.celsius = 0.0
        self.Fahrenheit = 32.0
        self.id = id
    }

    // Methods

    // increase and decrease temperature
    func setCelsius(amount: Double) {
        self.celsius = amount
        self.Fahrenheit = self.toFahrenheit()
    }
    
    func increaseTemp(amount: Double) {
        self.celsius += amount
        self.Fahrenheit = self.toFahrenheit()
    }
    func decreaseTemp(amount: Double) {
        self.celsius -= amount
        self.Fahrenheit = self.toFahrenheit()
    }

    // convert celsius to fahrenheit
    func toFahrenheit() -> Double {
        return (self.celsius * 9/5) + 32
    }

    // Print the temperatures
    func getTemp() {
        print("Thermostat \(self.id)")
        print("Celsius: \(self.celsius) °C")
        print("Fahrenheit: \(self.Fahrenheit) °F")
        print(" ")
    }

}

// Main function
func main() {
    // Create a thermostat object
    let thermostat1 = Thermostat(id: "1", celsius: 20.3)
    let thermostat2 = Thermostat(id: "2")
    print("initial temperatures:")
    thermostat1.getTemp()
    thermostat2.getTemp()

    
    
    // Increase the temperature
    print(" After increasing temperatures:")
    thermostat1.increaseTemp(amount: 5.0)
    thermostat2.setCelsius(amount: 15.0)
    thermostat1.getTemp()
    thermostat2.getTemp()

    // Decrease the temperature
    print(" After decreasing temperatures:")
    thermostat1.decreaseTemp(amount: 2.0)
    thermostat2.decreaseTemp(amount: 3.0)
    thermostat1.getTemp()
    thermostat2.getTemp()

    // Convert to Fahrenheit
    print("Converted to Fahrenheit:")
    print("Thermostat 1: \(thermostat1.toFahrenheit()) °F")
    print("Thermostat 2: \(thermostat2.toFahrenheit()) °F")
}


// Call the main function
main()