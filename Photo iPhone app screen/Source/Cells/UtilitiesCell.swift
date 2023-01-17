//
//  UtilitiesCell.swift
//  Photo iPhone app screen
//
//  Created by Ян Жигурс on 17.01.2023.
//

import UIKit

class Utilities: UICollectionViewCell {
    
    static let identifier = "Utilities"
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.textColor = .blue
        return label
    }()
    
    private lazy var image: UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    private lazy var numberOfShots: UILabel = {
        let label = UILabel()
        label.textColor = .systemGray
        label.textAlignment = .right
        return label
    }()
    
    private lazy var accessoryImage: UIImageView = {
        var chevrone = UIImageView()
        chevrone.image = .init(systemName: "chevron.right")
        chevrone.tintColor = .systemGray3
        return chevrone
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("ERROR")
    }
    
    private func setupHierarchy() {
        addSubview(image)
        addSubview(label)
        addSubview(numberOfShots)
        addSubview(accessoryImage)
    }
    
    private func setupLayout() {
        
        image.snp.makeConstraints { make in
            make.width.equalTo(25)
            make.height.equalTo(25)
            make.left.top.bottom.equalTo(contentView)
        }
        
        label.snp.makeConstraints { make in
            make.left.equalTo(image.snp.right).offset(10)
            make.centerY.equalTo(image).offset(0)
        }
        
        numberOfShots.snp.makeConstraints{ make in
            make.left.equalTo(image.snp.right).offset(295)
            make.centerY.equalTo(image).offset(0)
        }
        
        accessoryImage.snp.makeConstraints { make in
            make.left.equalTo(image.snp.right).offset(320)
            make.centerY.equalTo(image).offset(0)
        }
    }
    
    func configuration(model: Model) {
        self.label.text = model.mainTitle
        self.image.image = UIImage(named: model.image)
        self.numberOfShots.text = model.description
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.image.image = nil
    }
}
