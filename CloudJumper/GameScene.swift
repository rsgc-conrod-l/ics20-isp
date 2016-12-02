//
//  GameScene.swift
//  CloudJumper
//
//  Created by Luke Conrod on 2016-11-22.
//  Copyright © 2016 Luke Conrod. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    // MARK: Properties
    // Let's add a "hero" sprite
    // We need to add the hero sprite (figure in this case) as a property of the class
    // This is so that we can manipulate (do stuff) with the santa sprite in all methods
    // of the GameScene class
    
    let figure = SKSpriteNode(imageNamed: "figure")
    
    override func didMove(to view: SKView) {
        backgroundColor = SKColor.black
        
        //Let's add a sprite to represent the background (right now it's plain black)
        let background = SKSpriteNode(imageNamed: "Appbackground")
        background.position = CGPoint(x: size.width / 2, y: size.height / 2) //We anchor the background image in the middle of the screen (horizontally)
        background.size = self.frame.size   //Set the size of the background sprite to the size of the screen
        addChild(background)    //Add the background sprite to the scene graph
        
        //Adding "hero"
        //Now we will configure how the figure sprite looks
        figure.position = CGPoint(x: size.width/2, y: 200) //NOTE: (0,0) is the bottom left
        addChild(figure) //Add the figure sprite to the scene
        
    }
}



