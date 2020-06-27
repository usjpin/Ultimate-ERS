//
//  MenuScreens.swift
//  Ultimate-ERS
//
//  Created by Kudo on 6/24/20.
//  Copyright © 2020 kudoichika. All rights reserved.
//

import Foundation
import SpriteKit

class PopScreen {
    
    var screen : SKSpriteNode!
    var frameSize : CGSize!
    
    var zeroSize : CGSize!
    var popDuration : Double!
    
    init(frameSize : CGSize) {
        self.frameSize = frameSize
        zeroSize = CGSize(width : 0, height : 0)
        screen = SKSpriteNode(imageNamed : "BrownPop")
        screen.position = CGPoint(x : 0.5 * frameSize.width, y : 0.6 * frameSize.height)
        screen.size = zeroSize
        screen.zPosition = 90
        popDuration = 0.3
    }
    
    func addComponents(_ mainNode : SKNode) {
        let popComponent = SKAction.resize(toWidth : 0.75 * frameSize.width, height : 0.3 * frameSize.height, duration : popDuration)
        mainNode.addChild(screen)
        screen.run(popComponent)
    }
    
    func removeComponents() {
        screen.removeFromParent()
    }
    
}

class PauseScreen : PopScreen {
    
    var label : SKLabelNode!
    var resume : SKSpriteNode!
    var leave : SKSpriteNode!
    
    var finalSize : CGSize!
    var allComponents : Array<SKNode>!
    
    override init(frameSize : CGSize) {
        super.init(frameSize : frameSize)
        label = SKLabelNode(text : "Paused")
        label.position = CGPoint(x : 0.5 * frameSize.width, y : 0.675 * frameSize.height)
        
        resume = SKSpriteNode(imageNamed : "Menu/Resume")
        resume.position = CGPoint(x : 0.5 * frameSize.width, y : 0.6 * frameSize.height)
        resume.size = super.zeroSize
        resume.name = "resume"
        leave = SKSpriteNode(imageNamed : "Menu/Leave")
        leave.position = CGPoint(x : 0.5 * frameSize.width, y : 0.525 * frameSize.height)
        leave.size = super.zeroSize
        leave.name = "leave"
        
        finalSize = CGSize(width : 0.8 * (frameSize.width / 1.9), height : 0.8 * (frameSize.width / CGFloat(3.5 * 16.0 / 9.0)))
        allComponents = [label, resume, leave]
        for component in allComponents {
            component.zPosition = 100
        }
        
    }
    
    override func addComponents(_ mainNode : SKNode) {
        super.addComponents(mainNode)
        for component in allComponents {
            mainNode.addChild(component)
            component.run(SKAction.resize(toWidth : finalSize.width, height : finalSize.height, duration : popDuration))
        }
    }
    
    override func removeComponents() {
        super.removeComponents()
        for component in allComponents {
            component.removeFromParent()
        }
    }
    
    func shrinkComponent(name : String, time : Double) {
        let shrinkAction = SKAction.resize(toWidth: 0.9 * finalSize.width, height : 0.9 * finalSize.height, duration: time)
        if name == "resume" {
            resume.run(shrinkAction)
        } else if name == "leave" {
            leave.run(shrinkAction)
        }
    }
    
    func growComponents(time : Double) {
        let growAction = SKAction.resize(toWidth : finalSize.width, height : finalSize.height, duration: time)
        resume.run(growAction)
        leave.run(growAction)
    }

}

class EndScreen : PopScreen {
    
    override init(frameSize : CGSize) {
        super.init(frameSize : frameSize)
        //Make stuff here
    }
    
    override func addComponents(_ mainNode : SKNode) {
        super.addComponents(mainNode)
    }
    
    override func removeComponents() {
        super.removeComponents()
    }
    
}