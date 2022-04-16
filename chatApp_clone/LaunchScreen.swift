//
//  LaunchScreen.swift
//  chatApp_clone
//
//  Created by Tuan on 07/04/2022.
//

import Foundation
import UIKit

class Lauching: UIViewController{
    
    @IBOutlet weak var backGround: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func CreatView(){
        let layer0 = CAGradientLayer()

        layer0.colors = [

          UIColor(red: 0.263, green: 0.337, blue: 0.706, alpha: 1).cgColor,

          UIColor(red: 0.239, green: 0.812, blue: 0.812, alpha: 1).cgColor

        ]

        layer0.locations = [0, 1]

        layer0.startPoint = CGPoint(x: 0.25, y: 0.5)

        layer0.endPoint = CGPoint(x: 0.75, y: 0.5)

        layer0.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: 0, b: 1, c: -1, d: 0, tx: 1, ty: 0))

        layer0.bounds = view.bounds.insetBy(dx: -0.5*view.bounds.size.width, dy: -0.5*view.bounds.size.height)

        layer0.position = backGround.center

        backGround.layer.addSublayer(layer0)
    }
}
