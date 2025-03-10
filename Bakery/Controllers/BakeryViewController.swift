//
//  ViewController.swift
//  Bakery
//
//  Created by murad on 05.03.2025.
//

import UIKit
import SnapKit

final class BakeryViewController: UIViewController {
    
    //MARK: - Properties
    
    private let mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.alignment = .center
        return stackView
    }()
    
    private let nameBakeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()
    
    private let bakeImageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        image.image = UIImage(systemName: "star")
        image.layer.borderColor = UIColor.black.cgColor
        image.layer.borderWidth = 1
        return image
    }()
    
    private let descriptionBakeLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    private let chooseButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Выбрать продукт", for: .normal)
        return button
    }()
    
    private let bakeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Выпечь", for: .normal)
        return button
    }()
    
    private var currentProduct: BakedGood?
    private var bakeryManager = BakeryManager()
    private let delegateOwner = DelegateOwner()
     
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupView()
        bakeryManager.delegate = delegateOwner
    }
    
    private func setupView() {
        view.addSubview(mainStackView)
        
        [nameBakeLabel, bakeImageView, descriptionBakeLabel, chooseButton, bakeButton].forEach {
            mainStackView.addArrangedSubview($0)
        }
        
        mainStackView.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
            make.horizontalEdges.equalToSuperview().inset(20)
        }
        
        bakeImageView.snp.makeConstraints { make in
            make.height.width.equalTo(200)
        }
        
        chooseButton.addTarget(self, action: #selector(chooseProductTapped), for: .touchUpInside)
        bakeButton.addTarget(self, action: #selector(bakeButtonTapped), for: .touchUpInside)
    }
    
    private func updateUI() {
        guard let product = currentProduct else { return }
        nameBakeLabel.text = product.name
        descriptionBakeLabel.text = product.description()
        bakeImageView.image = UIImage(named: product.imageName)
    }
    
    @objc private func chooseProductTapped() {
        let alert = UIAlertController(title: "Выберите продукт", message: nil, preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "Торт", style: .default, handler: { _ in
            self.currentProduct = Cake()
            self.updateUI()
        }))
        
        alert.addAction(UIAlertAction(title: "Маффин", style: .default, handler: { _ in
            self.currentProduct = Muffin()
            self.updateUI()
        }))
        
        alert.addAction(UIAlertAction(title: "Пончик", style: .default, handler: { _ in
            self.currentProduct = Donut()
            self.updateUI()
        }))
        
        alert.addAction(UIAlertAction(title: "Отмена", style: .cancel, handler: nil))
        present(alert, animated: true)
    }
    
    @objc private func bakeButtonTapped() {
        guard let product = currentProduct else {
            showAlert(title: "Ошибка", message: "Сначала выберите продукт")
            return
        }
        
        let result = bakeryManager.bakeProduct(product)
        showAlert(title: "Выпечка", message: result)
    }
    
    private func showAlert(title: String, message: String) {
        let alertVC = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .default))
        present(alertVC, animated: true)
    }
}

