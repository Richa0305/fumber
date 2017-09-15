//
//  GameLevels.swift
//  Pop the water bubble
//
//  Created by Srivastava, Richa on 16/06/17.
//  Copyright © 2017 ShivHari Apps. All rights reserved.
//

import UIKit
import SpriteKit
var levelNumber = 1
var levelAchieved = 1
class GameLevels: SKScene {
    
    let gameStartSoundEffect = SKAction.playSoundFileNamed("click.wav", waitForCompletion: false)
    
    override func didMove(to view: SKView) {
        let background = SKSpriteNode(color: UIColor.red, size: self.size)
        background.position = CGPoint(x: (self.size.width)/2, y: (self.size.height)/2)
        background.zPosition = 0
        self.addChild(background)
        
        let gameName = SKLabelNode(fontNamed: "Avenir-Black")
        gameName.text = "fumber"
        gameName.fontSize = 100
        gameName.position = CGPoint(x: self.size.width/2, y: self.size.height*0.75)
        gameName.zPosition = 1
        gameName.fontColor = SKColor.white
        self.addChild(gameName)
        
        let easyShapeNode = SKShapeNode(rect: CGRect(x: self.frame.midX - (self.frame.size.width/2 - 50), y: self.size.height*0.55, width: self.frame.size.width - 100, height: 150), cornerRadius: 10)
        easyShapeNode.fillColor = SKColor.white
        easyShapeNode.zPosition = 50
        easyShapeNode.name = "EasyShape"
        let easyLabelNode = SKLabelNode(fontNamed:"Avenir-Black")
        easyLabelNode.text = "Easy"
        easyLabelNode.fontSize = 60
        easyLabelNode.fontColor = SKColor.blue
        easyLabelNode.name = "Easy"
        easyLabelNode.horizontalAlignmentMode = .center
        easyLabelNode.verticalAlignmentMode = .center
        easyLabelNode.position =  CGPoint(x: easyShapeNode.frame.midX, y: easyShapeNode.frame.midY)
        easyShapeNode.addChild(easyLabelNode)
        self.addChild(easyShapeNode)
        
        let mediumShapeNode = SKShapeNode(rect: CGRect(x: self.frame.midX - (self.frame.size.width/2 - 50), y:self.size.height*0.40, width: self.frame.size.width - 100, height: 150), cornerRadius: 10)
        mediumShapeNode.fillColor = SKColor.white
        mediumShapeNode.zPosition = 50
        mediumShapeNode.name = "MediumShape"
        let mediumLabelNode = SKLabelNode(fontNamed:"Avenir-Black")
        mediumLabelNode.text = "Medium"
        mediumLabelNode.fontSize = 60
        mediumLabelNode.fontColor = SKColor.blue
        mediumLabelNode.name = "Medium"
        mediumLabelNode.horizontalAlignmentMode = .center
        mediumLabelNode.verticalAlignmentMode = .center
        mediumLabelNode.position =  CGPoint(x: mediumShapeNode.frame.midX, y: mediumShapeNode.frame.midY)
        mediumShapeNode.addChild(mediumLabelNode)
        self.addChild(mediumShapeNode)
        
        let difficultShapeNode = SKShapeNode(rect: CGRect(x: self.frame.midX - (self.frame.size.width/2 - 50), y:self.size.height*0.25, width: self.frame.size.width - 100, height: 150), cornerRadius: 10)
        difficultShapeNode.fillColor = SKColor.white
        difficultShapeNode.zPosition = 50
        difficultShapeNode.name = "DifficultShape"
        let difficultLabelNode = SKLabelNode(fontNamed:"Avenir-Black")
        difficultLabelNode.text = "Difficult"
        difficultLabelNode.fontSize = 60
        difficultLabelNode.fontColor = SKColor.blue
        difficultLabelNode.name = "Difficult"
        difficultLabelNode.horizontalAlignmentMode = .center
        difficultLabelNode.verticalAlignmentMode = .center
        difficultLabelNode.position =  CGPoint(x: difficultShapeNode.frame.midX, y: difficultShapeNode.frame.midY)
        difficultShapeNode.addChild(difficultLabelNode)
        self.addChild(difficultShapeNode)
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let touchPoint = touch.location(in: self)
            let tappedNode = nodes(at: touchPoint)
            let tappedNodeNoame = tappedNode[0].name
            
            if tappedNodeNoame == "Easy" || tappedNodeNoame == "Medium" || tappedNodeNoame == "Defficult" {
                self.run(gameStartSoundEffect)
                let scene =  MainGameScene(fileNamed: "MainGameScene")
                let skView = self.view
                skView?.presentScene(scene)
            }
        }
    }

    
    
    
}
