//
//  ViewController.swift
//  UIKittutorial
//
//  Created by kxx: on 2022/09/04.
//

import UIKit
import Lottie

class MainViewController: UIViewController {
    let titleLable: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.text = "hi"
        label.font = UIFont.boldSystemFont(ofSize: 70)
        return label
    }()
    
    let animationView: AnimationView = {
        
        let animView = AnimationView(name: "118306-2022-toggle")
        animView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        animView.contentMode = .scaleAspectFill
        
        return animView
        
    }()
    
    
    //뷰가 생성되었을때
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .black
        view.addSubview(animationView)
        animationView.center = view.center
        
       
        // 애니매이션 실행
        animationView.play { (finish) in
            print("끝남")
            
            self.view.backgroundColor = .white
            self.animationView.removeFromSuperview()
            self.view.addSubview(self.titleLable)
        
            self.titleLable.translatesAutoresizingMaskIntoConstraints = false
            self.titleLable.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            self.titleLable.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
            
            
            
        }
        
        
    }


}

