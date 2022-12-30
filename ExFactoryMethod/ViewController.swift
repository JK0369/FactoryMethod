//
//  ViewController.swift
//  ExFactoryMethod
//
//  Created by 김종권 on 2022/12/30.
//

import UIKit

protocol Shape {
    func draw()
}

class Circle: Shape {
    func draw() {
        print("draw circle")
    }
}

class Rectangle: Shape {
    func draw() {
        print("draw rectangle")
    }
}

enum ShapeFactory {
    enum ShapeType {
        case circle
        case rectangle
    }
    
    static func getShape(type: ShapeType) -> Shape {
        switch type {
        case .circle:
            return Circle()
        case .rectangle:
            return Rectangle()
        }
    }
}

class ViewController: UIViewController {
    var shape: Shape?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        shape = Circle()
//        shape?.draw()
        
        shape = ShapeFactory.getShape(type: .circle)
        shape?.draw()
    }
}
