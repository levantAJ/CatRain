//
//  FoodSprite.swift
//  RainCat
//
//  Copyright © 2017 Thirteen23. All rights reserved.
//

import SpriteKit

class FoodSprite: SKSpriteNode {
    static func newInstance() -> FoodSprite {
        let foodDish = FoodSprite(imageNamed: "food_dish")
        foodDish.physicsBody = SKPhysicsBody(rectangleOf: foodDish.size)
        foodDish.physicsBody?.categoryBitMask = FoodCategory
        foodDish.physicsBody?.contactTestBitMask = WorldCategory | RainDropCategory | CatCategory
        foodDish.zPosition = 5
        return foodDish
    }
}
