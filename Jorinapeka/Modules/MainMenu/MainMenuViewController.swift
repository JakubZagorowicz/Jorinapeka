//
//  MainMenuViewController.swift
//  Jorinapeka
//
//  Created by Jakub Zagórowicz on 17/02/2020.
//  Copyright © 2020 Jakub Zagórowicz. All rights reserved.
//

import UIKit

class MainMenuViewController: UIViewController {
    var presenter: MainMenuPresenterProtocol?
    
    var titleLabel: UILabel = UILabel()
    var playButton: UIButton = UIButton()
    var highScoresButton: UIButton = UIButton()
    
    override func viewDidLoad() {
        titleLabel.text = "Jorinapeka"
        playButton.setTitle("Play", for: .normal)
        playButton.backgroundColor = .black
        highScoresButton.setTitle("High Scores", for: .normal)
        highScoresButton.backgroundColor = .black
        
        view.backgroundColor = .white
        
        view.addSubview(titleLabel)
        view.addSubview(playButton)
        view.addSubview(highScoresButton)
        
        playButton.addTarget(self, action: #selector(playButtonTapped), for: .touchDown)
        highScoresButton.addTarget(self, action: #selector(highScoreButtonTapped), for: .touchDown)
    }
    
    override func viewDidLayoutSubviews() {
        let height = view.frame.height
        let width = view.frame.width
        titleLabel.frame = CGRect(x: width/2, y: 50, width: 100, height: 20)
        playButton.frame = CGRect(x: width/2, y: height/2, width: 100, height: 20)
        highScoresButton.frame = CGRect(x: width/2, y: height/2 + 30, width: 100, height: 20)
    }
    
    @objc func playButtonTapped() {
        presenter?.playButtonTapped()
    }
    
    @objc func highScoreButtonTapped() {
        presenter?.highScoreButtonTapped()
    }
}

extension MainMenuViewController: MainMenuViewControllerProtocol {
    
}
