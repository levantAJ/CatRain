//
//  UmbrellaSprite.swift
//  RainCat
//
//  Copyright © 2017 Thirteen23. All rights reserved.
//

import SpriteKit

class UmbrellaSprite: SKSpriteNode  {
    private var destination: CGPoint!
    private let easing: CGFloat = 0.1
    
    static func newInstance() -> UmbrellaSprite {
        let umbrella = UmbrellaSprite(imageNamed: "umbrella")
        
        let path = UIBezierPath()
        path.move(to: CGPoint())
        path.addLine(to: CGPoint(x: -umbrella.size.width / 2 - 30, y: 0))
        path.addLine(to: CGPoint(x: 0, y: umbrella.size.height / 2))
        path.addLine(to: CGPoint(x: umbrella.size.width / 2 + 30, y: 0))
        
        umbrella.physicsBody = SKPhysicsBody(polygonFrom: path.cgPath)
        umbrella.physicsBody?.isDynamic = false
        umbrella.physicsBody?.restitution = 0.9
        
        return umbrella
    }
    
    func updatePosition(point:
        CGPoint) {
        position = point
        destination = point
    }
    
    func setDestination(destination:
        CGPoint) {
        self.destination = destination
        
    }
    func update(deltaTime:
        TimeInterval) {
        let distance = sqrt(pow((destination.x - position.x), 2) + pow((destination.y - position.y), 2))
        if distance > 1 {
            let directionX = destination.x - position.x
            let directionY = destination.y - position.y
            position.x += directionX * easing
            position.y += directionY * easing
        } else {
            position = destination
        }
    }
}
