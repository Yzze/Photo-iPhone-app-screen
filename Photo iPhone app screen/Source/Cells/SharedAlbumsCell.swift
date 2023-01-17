//
//  SharedAlbumsCell.swift
//  Photo iPhone app screen
//
//  Created by Ян Жигурс on 17.01.2023.
//

import UIKit

class SharedAlbums: UICollectionViewCell {
    
    static let identifier = "SharedAlbums"
    
    // MARK: - Outlets
    
    private let image: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 10
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Error in Cell")
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        contentView.addSubview(image)
    }
    
    private func setupLayout() {
        image.snp.makeConstraints { make in
            make.width.equalTo(200)
            make.height.equalTo(200)
            make.left.top.right.bottom.equalTo(contentView)
        }
    }
    
    // MARK: - Configuration
    
    func configuration(model: Model) {
        self.image.image = UIImage(named: model.image)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.image.image = nil
    }
}
