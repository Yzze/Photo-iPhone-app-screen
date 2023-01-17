//
//  MyAlbumsCell.swift
//  Photo iPhone app screen
//
//  Created by Ян Жигурс on 17.01.2023.
//

import UIKit
import SnapKit

class MyAlbums: UICollectionViewCell{
    
    static let identifier = "MyAlbums"
    
    // MARK: - Outlets
    
    private lazy var featuredTitle: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = .systemGray
        return label
    }()
    
    private let image: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
        imageView.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        return imageView
    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("ERROR")
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        addSubview(image)
        addSubview(featuredTitle)
        addSubview(descriptionLabel)
    }
    
    private func setupLayout() {
        
        image.snp.makeConstraints { make in
            make.width.equalTo(170)
            make.height.equalTo(170)
            make.left.top.bottom.equalTo(contentView)
        }
        
        featuredTitle.snp.makeConstraints { make in
            make.top.equalTo(image.snp.bottom).offset(0)
            make.centerX.equalTo(image).offset(0)
            make.left.equalTo(contentView)
        }
        
        descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(featuredTitle.snp.bottom).offset(0)
            make.centerX.equalTo(image).offset(0)
            make.left.equalTo(contentView)
        }
        
    }
    
    func configuration(model: Model) {
        self.featuredTitle.text = model.mainTitle
        self.descriptionLabel.text = model.description
        self.image.image = model.image
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.image.image = nil
    }
}
