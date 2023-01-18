//
//  Model.swift
//  Photo iPhone app screen
//
//  Created by Ян Жигурс on 17.01.2023.
//

import UIKit

struct Model: Hashable {
    var mainTitle: String?
    var description: String?
    var image: UIImage?
}

extension Model {
    static let modelsArray = [
        [Model(mainTitle: "First album",
               description: String(Int.random(in: 0...300)),
               image: .init(named: "airplane")),
         Model(mainTitle: "Car",
               description: String(Int.random(in: 0...300)),
               image: .init(named: "car")),
         Model(mainTitle: "Flower album",
               description: String(Int.random(in: 0...300)),
               image: .init(named: "flower")),
         Model(mainTitle: "Motorbike",
               description: String(Int.random(in: 0...300)),
               image: .init(named: "moto")),
         Model(mainTitle: "Cat album",
               description: String(Int.random(in: 0...300)),
               image: .init(named: "cat4")),
         Model(mainTitle: "Swift",
               description: String(Int.random(in: 0...300)),
               image: .init(named: "swift")),
         Model(mainTitle: "Apple",
               description: String(Int.random(in: 0...300)),
               image: .init(named: "apple"))],
        [Model(mainTitle: nil, description: nil, image: .init(named: "fireplace")),
         Model(mainTitle: nil, description: nil, image: .init(named: "cat1")),
         Model(mainTitle: nil, description: nil, image: .init(named: "cat2")),
         Model(mainTitle: nil, description: nil, image: .init(named: "cat3"))],
        [Model(mainTitle: "Videos",
               description: "\(Int.random(in: 0...100))",
               image: .init(systemName: "video")),
         Model(mainTitle: "Live Photos",
               description: "\(Int.random(in: 0...100))",
               image: .init(systemName: "livephoto")),
         Model(mainTitle: "Screenshots",
               description: "\(Int.random(in: 0...100))",
               image: .init(systemName: "camera.viewfinder"))],
        [Model(mainTitle: "Imports",
               description: "\(Int.random(in: 0...100))",
               image: .init(systemName: "square.and.arrow.down")),
         Model(mainTitle: "Hidden",
               description: "\(Int.random(in: 0...100))",
               image: .init(systemName: "eye.slash")),
         Model(mainTitle: "Recently Deleted",
               description: "\(Int.random(in: 0...100))",
               image:.init(systemName: "trash"))]
    ]
}
