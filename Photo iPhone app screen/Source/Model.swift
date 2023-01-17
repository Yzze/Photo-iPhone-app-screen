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
        [Model(mainTitle: "One", description: String(Int.random(in: 0...300)), image: .init(named: "swift")),
         Model(mainTitle: "Two", description: String(Int.random(in: 0...300)), image: .init(named: "swift")),
         Model(mainTitle: "Three", description: String(Int.random(in: 0...300)), image: .init(named: "swift")),
         Model(mainTitle: "Four", description: String(Int.random(in: 0...300)), image: .init(named: "swift")),
         Model(mainTitle: "Five", description: String(Int.random(in: 0...300)), image: .init(named: "swift")),
         Model(mainTitle: "Six", description: String(Int.random(in: 0...300)), image: .init(named: "swift")),
         Model(mainTitle: "Seven", description: String(Int.random(in: 0...300)), image: .init(named: "swift")),
         Model(mainTitle: "Eight", description: String(Int.random(in: 0...300)), image: .init(named: "swift"))
        ],
        [Model(mainTitle: nil, description: nil, image: .init(named: "apple")),
         Model(mainTitle: nil, description: nil, image: .init(named: "apple")),
         Model(mainTitle: nil, description: nil, image: .init(named: "apple")),
         Model(mainTitle: nil, description: nil, image: .init(named: "apple"))
        ],
        [Model(mainTitle: "Videos", description: "\(Int.random(in: 0...100))", image: .init(systemName: "video")),
         Model(mainTitle: "Live Photos", description: "\(Int.random(in: 0...100))", image: .init(systemName: "livephoto")),
         Model(mainTitle: "Screenshots", description: "\(Int.random(in: 0...100))", image: .init(systemName: "camera.viewfinder"))
        ],
        [Model(mainTitle: "Imports", description: "\(Int.random(in: 0...100))", image: .init(systemName: "square.and.arrow.down")),
         Model(mainTitle: "Hidden", description: "100", image: .init(systemName: "eye.slash")),
         Model(mainTitle: "Recently Deleted", description: "5", image:.init(systemName: "trash"))
        ]
    ]
}
