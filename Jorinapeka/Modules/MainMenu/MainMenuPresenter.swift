//
//  MainMenuPresenter.swift
//  Jorinapeka
//
//  Created by Jakub Zagórowicz on 17/02/2020.
//  Copyright © 2020 Jakub Zagórowicz. All rights reserved.
//

import Foundation

class MainMenuPresenter {
    var view: MainMenuViewControllerProtocol?
    var router: MainMenuRouterProtocol?
}

extension MainMenuPresenter: MainMenuPresenterProtocol {
    func playButtonTapped() {
        router?.goToGameModule()
    }
    
    func highScoreButtonTapped() {
        router?.goToHighScoresModule()
    }
}
