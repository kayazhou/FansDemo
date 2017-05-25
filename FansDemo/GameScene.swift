//
//  GameScene.swift
//  FansDemo
//
//  Created by He Zhou on 25/05/2017.
//  Copyright © 2017 HMK. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {

    var starfield:SKEmitterNode!
    var possibleEmitter = ["MyMagic","MySmoke","MyBokeh","MyFire","MyFireFiles","MyRain","MySpark"]

     
    override func didMove(to view: SKView) {
        starfield = SKEmitterNode(fileNamed:"MyMagic")
        starfield.position = CGPoint(x:(self.view?.frame.width)!/2,y:(self.view?.frame.size.height)!/2)
        starfield.advanceSimulationTime(10)
        self.addChild(starfield)
        starfield.zPosition = -1

    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        starfield.removeFromParent()

        possibleEmitter = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: possibleEmitter) as![String]

        starfield = SKEmitterNode(fileNamed: possibleEmitter[0])

        starfield.position = CGPoint(x:(self.view?.frame.width)!/2,y:(self.view?.frame.size.height)!/2)
        starfield.advanceSimulationTime(10)
        self.addChild(starfield)
        starfield.zPosition = -1
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
