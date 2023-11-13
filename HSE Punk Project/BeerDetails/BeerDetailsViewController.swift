//
//  BeerDetailsViewController.swift
//  HSE Punk Project
//
//  Created by Rezo on 13.11.2023.
//

import UIKit

final class BeerDetailsViewController: UIViewController {
    
    var beerModel: BeerDTO?
    
    private lazy var stackView: UIStackView = {
        let view = UIStackView()
        return view
    }()
    
    private lazy var titleView: UILabel = {
        let view = UILabel()
        return view
    }()
    
    private lazy var subtitleView: UILabel = {
        let view = UILabel()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        addSubviews()
        makeConstraints()
        configure()
    }
    
    func addSubviews() {
        view.addSubview(stackView)
        stackView.addArrangedSubview(titleView)
        stackView.addArrangedSubview(subtitleView)
    }
    
    func makeConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    func configure() {
        titleView.text = beerModel?.name
        subtitleView.text = beerModel?.tagline
    }
}
