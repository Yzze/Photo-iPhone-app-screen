//
//  ViewController.swift
//  Photo iPhone app screen
//
//  Created by Ян Жигурс on 17.01.2023.
//

import UIKit
import SnapKit

class CollectionViewController: UIViewController {
    
    // MARK: - Outlets
    
    private lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: createLayout())
        collectionView.register(MyAlbums.self, forCellWithReuseIdentifier: MyAlbums.identifier)
        collectionView.register(LiteratureCellHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: LiteratureCellHeader.identifier)
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
        collectionView.snp.makeConstraints { make in
            make.top.right.bottom.left.equalTo(view)
        }
    }
    
    @objc func tap() {
        print("Click")
    }
    
    // MARK: - CollectionViewLayout
    
    private func createLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout { (section, _) -> NSCollectionLayoutSection in
            switch section {
            case 1:
                let itemSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1),
                    heightDimension: .fractionalHeight(0.48)
                    )
                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                
                    layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5,
                                                             leading: 10,
                                                             bottom: 5,
                                                             trailing: 5)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.47),
                                                       heightDimension: .fractionalWidth(1.2))
                
                let layoutGroup = NSCollectionLayoutGroup.vertical(layoutSize: groupSize,
                                                                   subitems: [layoutItem])
                layoutGroup.contentInsets = NSDirectionalEdgeInsets(top: 15,
                                                                    leading: 5,
                                                                    bottom: 0,
                                                                    trailing: 5)
                
                let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
                layoutSection.orthogonalScrollingBehavior = .continuous
                
                let layoutSectionHeaderSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.93),
                                                                     heightDimension: .estimated(50))
                let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
                    layoutSize: layoutSectionHeaderSize,
                    elementKind: UICollectionView.elementKindSectionHeader,
                    alignment: .top)
                layoutSection.boundarySupplementaryItems = [layoutSectionHeader]
                
                return layoutSection
            default: break
            }
        }
    }
}

// MARK: - Collection Setup

extension CollectionViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Model.modelsArray[section].count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section {
        case 1:
            let item = collectionView.dequeueReusableCell(withReuseIdentifier: MyAlbums.identifier, for: indexPath) as! MyAlbums
            item.configuration(model: Model.modelsArray[indexPath.section][indexPath.item])
            return item
        default:
            let item = collectionView.dequeueReusableCell(withReuseIdentifier: MyAlbums.identifier, for: indexPath) as! MyAlbums
            item.configuration(model: Model.modelsArray[indexPath.section][indexPath.item])
            return item
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        switch indexPath.section {
        case 1:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: LiteratureCellHeader.identifier, for: indexPath) as! LiteratureCellHeader
            header.title.text = "My Albums"
            return header
        default:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "header", for: indexPath)
            return header
        }
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return Model.modelsArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
    }
}
