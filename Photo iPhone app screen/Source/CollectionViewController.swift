//
//  ViewController.swift
//  Photo iPhone app screen
//
//  Created by Ян Жигурс on 17.01.2023.
//

import UIKit

class CollectionViewController: UIViewController {
    
    // MARK: - Outlets
    
    private lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: )
        collectionView.delegate = self
        collectionView.dataSource = self
        return collectionView
    }()
    
    private lazy var barItem: UIBarButtonItem = {
        var bar = UIBarButtonItem()
        bar = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .done, target: self, action: #selector(tap))
        bar.tintColor = .systemBlue
        return bar
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setup
    
    private func setupView() {
        title = "Albums"
        view.backgroundColor = .white
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.leftBarButtonItem = barItem
    }
    
    private func setupHierarchy() {
        view.addSubview(collectionView)
    }
    
    private func setupLayout() {
    }
    
    @objc func tap() {
        print("Click")
    }
    
    // MARK: - CollectionViewLayout
}

// MARK: - Collection Setup

extension CollectionViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    }
}
