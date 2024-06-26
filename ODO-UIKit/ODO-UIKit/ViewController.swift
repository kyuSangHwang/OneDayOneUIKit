//
//  ViewController.swift
//  ODO-UIKit
//
//  Created by 황규상 on 5/16/24.
//

import UIKit

class ViewController: UIViewController {
    
    let circleView: UIView = UIView()
    let nickNameView: UIView = UILabel()
    let imageView: UIView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // circleView를 view의 하위 뷰로 추가
        view.addSubview(circleView)
        view.addSubview(nickNameView)
        view.addSubview(imageView)
        
        // circleView의 translatesAutoresizingMaskIntoConstraints 속성 설정
        circleView.translatesAutoresizingMaskIntoConstraints = false
        nickNameView.translatesAutoresizingMaskIntoConstraints = false
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        let safeArea = view.safeAreaLayoutGuide
        
        // 제약 조건 설정 및 활성화
        NSLayoutConstraint.activate([
            circleView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 15),
            circleView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 15),
            circleView.widthAnchor.constraint(equalToConstant: 45),
            circleView.heightAnchor.constraint(equalTo: circleView.widthAnchor),
            
            nickNameView.centerYAnchor.constraint(equalTo: circleView.centerYAnchor),
            nickNameView.leadingAnchor.constraint(equalTo: circleView.trailingAnchor, constant: 15),
            nickNameView.widthAnchor.constraint(equalToConstant: 200),
            nickNameView.heightAnchor.constraint(equalToConstant: 40),
            
            imageView.topAnchor.constraint(equalTo: circleView.bottomAnchor, constant: 20),
            imageView.widthAnchor.constraint(equalTo: view.widthAnchor),
            imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor)
        ])
        
        // circleView의 배경색 설정 (원 모양 확인을 위해)
        circleView.backgroundColor = .red
        circleView.layer.cornerRadius = 45/2
        
        nickNameView.backgroundColor = .red
        
        imageView.backgroundColor = .red
    }
}


