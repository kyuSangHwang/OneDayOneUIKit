//
//  ViewController.swift
//  ODO-UIKit
//
//  Created by 황규상 on 5/16/24.
//

import UIKit

class ViewController: UIViewController {
    
    let circleView: UIView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // circleView를 view의 하위 뷰로 추가
        view.addSubview(circleView)
        
        // circleView의 translatesAutoresizingMaskIntoConstraints 속성 설정
        circleView.translatesAutoresizingMaskIntoConstraints = false
        
        let safeArea = view.safeAreaLayoutGuide
        
        // 제약 조건 설정 및 활성화
        NSLayoutConstraint.activate([
            circleView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 15),
            circleView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 25),
            circleView.widthAnchor.constraint(equalToConstant: 45),
            circleView.heightAnchor.constraint(equalTo: circleView.widthAnchor)
        ])
        
        // circleView의 배경색 설정 (원 모양 확인을 위해)
        circleView.backgroundColor = .red
        circleView.layer.cornerRadius = 45/2
    }
}


