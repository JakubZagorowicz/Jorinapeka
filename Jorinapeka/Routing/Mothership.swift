//
//  Mothership.swift
//  Jorinapeka
//
//  Created by Jakub Zagórowicz on 17/02/2020.
//  Copyright © 2020 Jakub Zagórowicz. All rights reserved.
//

import UIKit

class Mothership {
    var navigator: UINavigationController
    
    init() {
        navigator = UINavigationController()
        navigator = UINavigationController(rootViewController: Builder.buildMainMenu(router: self))
        navigator.isNavigationBarHidden = true
    }
}

extension Mothership: MainMenuRouterProtocol {
    func goToGameModule() {
        
    }
    
    func goToHighScoresModule() {
        
    }
}
