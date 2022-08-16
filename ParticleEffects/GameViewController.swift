//
//  GameViewController.swift
//  ParticleEffects
//
//  Created by Parth Antala on 2022-06-01.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    var sparkButton: UIButton?
    var rainButton: UIButton?
    var snowButton: UIButton?
    var magicButton: UIButton?
    var bokehButton: UIButton?
    let bokehNode = SKEmitterNode(fileNamed: "bokeh.sks")!
    let magicNode = SKEmitterNode(fileNamed: "magic.sks")!
    let sparkNode = SKEmitterNode(fileNamed: "Spark.sks")!
    let rainNode = SKEmitterNode(fileNamed: "Rain.sks")!
    let snowNode = SKEmitterNode(fileNamed: "snow.sks")!
    let backgroundNode = SKSpriteNode(imageNamed: "background1")
        
        override func viewDidLoad() {
            super.viewDidLoad()
            let backgroundImage = UIImage.init(named: "background1")
                let backgroundImageView = UIImageView.init(frame: self.view.frame)

                backgroundImageView.image = backgroundImage
                backgroundImageView.contentMode = .scaleAspectFill
                backgroundImageView.alpha = 1

                self.view.insertSubview(backgroundImageView, at: 0)
            
            sparkButton = UIButton(frame: CGRect(x: 60, y: 250, width: 50, height: 50))
            //sparkButton?.setBackgroundImage(UIImage(named: "Spark"), for: UIControl.State.normal)
            sparkButton?.setTitle("✨", for: .normal)
            sparkButton?.titleLabel?.font = UIFont(name: "Helvetica", size: 50)
            
            self.view?.bringSubviewToFront(sparkButton!)
            sparkButton?.imageView?.contentMode = .scaleAspectFit
            self.view?.addSubview(sparkButton!)
            sparkButton?.addTarget(self, action: #selector(sparkEffects), for: .touchUpInside)
            
            rainButton = UIButton(frame: CGRect(x: 120, y: 250, width: 50, height: 50))
            rainButton?.setTitle("🌧", for: .normal)
            rainButton?.titleLabel?.font = UIFont(name: "Helvetica", size: 50)
            
            self.view?.bringSubviewToFront(rainButton!)
            rainButton?.imageView?.contentMode = .scaleAspectFit
            self.view?.addSubview(rainButton!)
            rainButton?.addTarget(self, action: #selector(rainEffects), for: .touchUpInside)
            
            snowButton = UIButton(frame: CGRect(x: 180, y: 250, width: 50, height: 50))
            snowButton?.setTitle("❄️", for: .normal)
            snowButton?.titleLabel?.font = UIFont(name: "Helvetica", size: 50)
            
            self.view?.bringSubviewToFront(snowButton!)
            snowButton?.imageView?.contentMode = .scaleAspectFit
            self.view?.addSubview(snowButton!)
            snowButton?.addTarget(self, action: #selector(snowEffects), for: .touchUpInside)
            
            magicButton = UIButton(frame: CGRect(x: 240, y: 250, width: 50, height: 50))
            magicButton?.setTitle("🧙🏻‍♀️", for: .normal)
            magicButton?.titleLabel?.font = UIFont(name: "Helvetica", size: 50)
            
            self.view?.bringSubviewToFront(magicButton!)
            magicButton?.imageView?.contentMode = .scaleAspectFit
            self.view?.addSubview(magicButton!)
            magicButton?.addTarget(self, action: #selector(magicEffects), for: .touchUpInside)
            
            bokehButton = UIButton(frame: CGRect(x: 300, y: 250, width: 50, height: 50))
            bokehButton?.setTitle("🌟", for: .normal)
            bokehButton?.titleLabel?.font = UIFont(name: "Helvetica", size: 50)
            
            self.view?.bringSubviewToFront(bokehButton!)
            bokehButton?.imageView?.contentMode = .scaleAspectFit
            self.view?.addSubview(bokehButton!)
            bokehButton?.addTarget(self, action: #selector(bokehEffects), for: .touchUpInside)
            addBokeh()
            addMagic()
            addSnow()
            addSpark()
            addRain()
        }
        
        private func addRain() {
            let skView = SKView(frame: view.frame)
            skView.backgroundColor = .clear
            let scene = SKScene(size: view.frame.size)
            scene.backgroundColor = .clear
            skView.presentScene(scene)
            skView.isUserInteractionEnabled = false
            scene.anchorPoint = CGPoint(x: 0.5, y: 0.5)
            scene.addChild(rainNode)
            rainNode.position.y = scene.frame.maxY
            rainNode.particlePositionRange.dx = scene.frame.width
            rainNode.isHidden = true
            view.addSubview(skView)
        }
    
        private func addSpark() {
            let skView = SKView(frame: view.frame)
            skView.backgroundColor = .clear
            let scene = SKScene(size: view.frame.size)
            scene.backgroundColor = .clear
            skView.presentScene(scene)
            skView.isUserInteractionEnabled = false
            scene.anchorPoint = CGPoint(x: 0.5, y: 0.5)
            scene.addChild(sparkNode)
            sparkNode.position.y = scene.frame.maxY
            sparkNode.particlePositionRange.dx = scene.frame.width
            sparkNode.isHidden = true
            view.addSubview(skView)
        }
    
        private func addSnow() {
            let skView = SKView(frame: view.frame)
            skView.backgroundColor = .clear
            let scene = SKScene(size: view.frame.size)
            scene.backgroundColor = .clear
            skView.presentScene(scene)
            skView.isUserInteractionEnabled = false
            scene.anchorPoint = CGPoint(x: 0.5, y: 0.5)
            scene.addChild(snowNode)
            snowNode.position.y = scene.frame.maxY
            snowNode.particlePositionRange.dx = scene.frame.width
            snowNode.isHidden = true
            view.addSubview(skView)
        }
    
    private func addMagic() {
        let skView = SKView(frame: view.frame)
        skView.backgroundColor = .clear
        let scene = SKScene(size: view.frame.size)
        scene.backgroundColor = .clear
        skView.presentScene(scene)
        skView.isUserInteractionEnabled = false
        scene.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        scene.addChild(magicNode)
        magicNode.position.y = scene.frame.maxY
        magicNode.particlePositionRange.dx = scene.frame.width
        magicNode.isHidden = true
        view.addSubview(skView)
    }
    
    private func addBokeh() {
        let skView = SKView(frame: view.frame)
        skView.backgroundColor = .clear
        let scene = SKScene(size: view.frame.size)
        scene.backgroundColor = .clear
        skView.presentScene(scene)
        skView.isUserInteractionEnabled = false
        scene.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        scene.addChild(bokehNode)
        bokehNode.position.y = scene.frame.maxY
        bokehNode.particlePositionRange.dx = scene.frame.width
        bokehNode.isHidden = true
        view.addSubview(skView)
    }
    
    @objc func sparkEffects(){
   
        sparkNode.isHidden = false
        rainNode.isHidden = true
        snowNode.isHidden = true
        magicNode.isHidden = true
        bokehNode.isHidden = true
    }
    
    @objc func rainEffects(){

        rainNode.isHidden = false
        sparkNode.isHidden = true
        snowNode.isHidden = true
        magicNode.isHidden = true
        bokehNode.isHidden = true
    }
    
    @objc func snowEffects(){

        rainNode.isHidden = true
        sparkNode.isHidden = true
        snowNode.isHidden = false
        magicNode.isHidden = true
        bokehNode.isHidden = true
    }
    
    @objc func magicEffects(){

        rainNode.isHidden = true
        sparkNode.isHidden = true
        snowNode.isHidden = true
        magicNode.isHidden = false
        bokehNode.isHidden = true
    }
    
    @objc func bokehEffects(){

        rainNode.isHidden = true
        sparkNode.isHidden = true
        snowNode.isHidden = true
        magicNode.isHidden = true
        bokehNode.isHidden = false
        
    }
}
