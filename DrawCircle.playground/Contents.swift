//: Playground - noun: a place where people can play

import UIKit

class CircleView: UIView {
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath()
        
        //для круга
        // cos(a) = x / r ==> x = r * cos(a)
        // sin(a) = y / r ==> y = r * sin(a)

        let radius: Double = 100
        let center = CGPoint(x: rect.width / 2, y: rect.height / 2)
        path.move(to: CGPoint(x: center.x + CGFloat(radius), y: center.y))
        
        for i in stride(from: 0, to: 361, by: 1) { //stride - возврат последовательных значений по заданному правилу
            
            //radians = degrees * PI / 180
            
            let radians = Double(i) * Double.pi / 180
            let x = Double(center.x) + radius * cos(radians)
            let y = Double(center.y) + radius * sin(radians)
            path.addLine(to: CGPoint(x: x, y: y))
        }
        UIColor.red.setStroke()
        path.lineWidth = 2
        path.stroke() //для рендера (отрисовки)
    }
}


let view = CircleView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
view.backgroundColor = .white

