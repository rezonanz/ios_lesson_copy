//
//  BeerTableViewControllerFactory.swift
//  HSE Punk Project
//
//  Created by Рогаткин Роман on 30.10.2023.
//

final class BeerTableViewControllerFactory {
    func build() -> BeerTableViewController {
        let service = BeerService()
        let viewController = BeerTableViewController(service: service)
        return viewController
    }
}
