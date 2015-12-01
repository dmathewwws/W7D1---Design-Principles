//: Playground - noun: a place where people can play

import Darwin


protocol Shape {
    func area() -> Double
}

class Rectangle:Shape{
    
    var width:Double
    var height:Double
    
    init(width:Double, height:Double){
        self.width = width
        self.height = height
    }
    
    func area() -> Double {
        return width * height
    }
    
}

class Circle:Shape {
    
    var radius:Double
    
    init(radius:Double){
        self.radius = radius
    }
    
    func area() -> Double {
        return M_PI * radius * radius
    }
    
}

class Triangle:Shape {
    
    var base:Double
    var height:Double
    
    init(base:Double, height:Double){
        self.base = base
        self.height = height
    }
    
    func area() -> Double {
        return base * height / 2
    }
    
}

func areaCalculator(shapes:[Shape]) -> Double {
    
    var totalArea:Double = 0
    
    for shape in shapes {
        totalArea += shape.area()
    }
    
    return totalArea
}

func areaCalculatorFunctionally(shapes:[Shape]) -> Double {
    
    let area = shapes.map { (shape) in
        shape.area()
    }
    
    return area.reduce(0) { $0 + $1 }
}

let rect1 = Rectangle(width: 2, height: 2)
let circl1 = Circle(radius: 3)
let tri1 = Triangle(base: 2, height: 4)

let myShapes:[Shape] = [rect1, circl1, tri1 ]

areaCalculator(myShapes)
areaCalculatorFunctionally(myShapes)


class Bird {
}

protocol Flyable {
    
}

class Raven: Bird, Flyable {

}

class Osterich: Bird {

}





