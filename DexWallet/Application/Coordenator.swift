//
//  Coordenator.swift
//  DexWallet
//
//  Created by Regis Araujo Melo on 09/07/21.
//  Copyright © 2021 R3Tecnologia.net. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController { get set }
    var coordinators: [Coordinator] { get set }
    func start()
}

final class AppCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    var coordinators: [Coordinator] = []
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.navigationController.navigationBar.prefersLargeTitles = true
    }
    
    func start() {
        //TODO
    }
    
    
}

extension Coordinator {
    func addCoordinator(_ coordinator: Coordinator) {
        coordinators.append(coordinator)
    }
    
    func removeCoordinator(_ coordinator: Coordinator) {
        coordinators = coordinators.filter { $0 !== coordinator }
    }
    
    func removeAllCoordinators() {
        coordinators.removeAll()
    }
}


