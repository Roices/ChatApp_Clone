//
//  Extension.swift
//  chatApp_clone
//
//  Created by Tuan on 08/04/2022.
//

import Foundation

import UIKit

extension UITextField {

enum Direction {
    case Left
    case Right
}

// add image to textfield
func withImage(direction: Direction, image: UIImage){
    let mainView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 45))
    mainView.layer.cornerRadius = 5

    let view = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 45))
    view.backgroundColor = .white
    view.clipsToBounds = true
    

    mainView.addSubview(view)

    let imageView = UIImageView(image: image)
    imageView.contentMode = .scaleAspectFit
    imageView.frame = CGRect(x: 12.0, y: 10.0, width: 24.0, height: 24.0)
    view.addSubview(imageView)

    if(Direction.Left == direction){ // image left
        self.leftViewMode = .always
        self.leftView = mainView
    } else { // image right
        self.rightViewMode = .always
        self.rightView = mainView
    }


}

}
