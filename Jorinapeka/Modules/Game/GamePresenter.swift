//
//  GamePresenter.swift
//  Jorinapeka
//
//  Created by Jakub Zagórowicz on 02/03/2020.
//  Copyright © 2020 Jakub Zagórowicz. All rights reserved.
//

import Foundation

class GamePresenter {
    var view: GameViewProtocol?
    var router: GameRouterProtocol?
}

extension GamePresenter: GamePresenterProtocol {
    
}
