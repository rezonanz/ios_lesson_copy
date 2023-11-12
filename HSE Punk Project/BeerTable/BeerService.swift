//
//  BeerService.swift
//  HSE Punk Project
//
//  Created by Рогаткин Роман on 30.10.2023.
//

import Foundation

protocol BeerServicing: AnyObject {
    func fetchBeer(completionHandler: @escaping ([BeerDTO]) -> Void)
}

final class BeerService {
    let decoder: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return decoder
    }()
    let session: URLSession = {
        let sessionConfiguration = URLSessionConfiguration.default
        let session = URLSession(configuration: sessionConfiguration)
        return session
    }()
}

// MARK: - BeerServicing

extension BeerService: BeerServicing {
    func fetchBeer(completionHandler: @escaping ([BeerDTO]) -> Void) {
        let url: URL = URL(string: "https://api.punkapi.com/v2/beers")!
        session.dataTask(with: url, completionHandler: { data, response, error in
            guard let data = data, error == nil else { return }
            let beerData = try! self.decoder.decode([BeerDTO].self, from: data)
            completionHandler(beerData)
        }).resume()
    }
}
