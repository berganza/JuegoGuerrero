//
//  GameViewController.swift
//  GuerreroJuego
//
//  Created by Berganza on 3/3/15.
//  Copyright (c) 2015 Berganza. All rights reserved.
//

import UIKit
import QuartzCore
import SceneKit


class GameViewController: UIViewController {

    // Escena inicial
    let quieto = SCNScene(named: "art.scnassets/quieto.dae")!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Llamar a SCNView
        let vista = self.view as SCNView
        
        // Presentamos el view
        vista.scene = quieto

        
        // Botones
        var botonAtacar   = UIButton.buttonWithType(UIButtonType.System) as UIButton
        botonAtacar.frame = CGRectMake(50, 50, 80, 40)
        botonAtacar.backgroundColor = UIColor.orangeColor()
        botonAtacar.setTitle("guerra", forState: UIControlState.Normal)
        botonAtacar.addTarget(self, action: "atacar", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(botonAtacar)
        
        var botonStop   = UIButton.buttonWithType(UIButtonType.System) as UIButton
        botonStop.frame = CGRectMake(50, 150, 80, 40)
        botonStop.backgroundColor = UIColor.orangeColor()
        botonStop.setTitle("paz", forState: UIControlState.Normal)
        botonStop.addTarget(self, action: "pararAtaque", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(botonStop)
        
        var botonCorrer   = UIButton.buttonWithType(UIButtonType.System) as UIButton
        botonCorrer.frame = CGRectMake(50, 250, 80, 40)
        botonCorrer.backgroundColor = UIColor.orangeColor()
        botonCorrer.setTitle("andar", forState: UIControlState.Normal)
        botonCorrer.addTarget(self, action: "andar", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(botonCorrer)
    }
    
    func atacar() {
        
        // Crear una nueva escena
        let ataque = SCNScene(named: "art.scnassets/ataque.dae")!

        // Llamar a SCNView
        let vista = self.view as SCNView

        // Presentar el view
        vista.scene = ataque
    }
    
    func pararAtaque() {
        
        // Crear una nueva escena
        let quieto = SCNScene(named: "art.scnassets/quieto.dae")!

        // Llamar a SCNView
        let vista = self.view as SCNView
        
        // Presentar el view
        vista.scene = quieto
    }
    
    func andar() {
        
        // Crear una nueva escena
        let andar = SCNScene(named: "art.scnassets/andar.dae")!
        
        // Llamar a SCNView
        let vista = self.view as SCNView
        
        // Presentar el view
        vista.scene = andar
    }

}
