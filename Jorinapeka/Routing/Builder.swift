//
//  Builder.swift
//  Jorinapeka
//
//  Created by Jakub Zagórowicz on 17/02/2020.
//  Copyright © 2020 Jakub Zagórowicz. All rights reserved.
//

import Foundation

class Builder {
    
    static func buildMainMenu(router: MainMenuRouterProtocol) -> MainMenuViewController {
        let viewController = MainMenuViewController()
        let presenter = MainMenuPresenter()
        
        presenter.view = viewController
        presenter.router = router
        
        viewController.presenter = presenter
        
        return viewController
    }
}
