//
//  Model.swift
//  Photo iPhone app screen
//
//  Created by Ян Жигурс on 17.01.2023.
//

struct Model: Hashable {
    var mainTitle: String?
    var description: String?
    var image: String
}

extension Model {
    static let modelsArray = [
        [Model(mainTitle: "Book Six", description: String(Int.random(in: 0...300)), image: "swift"),
         Model(mainTitle: "Book Seven", description: String(Int.random(in: 0...300)), image: "swift"),
         Model(mainTitle: "Book Eight", description: String(Int.random(in: 0...300)), image: "swift"),
         Model(mainTitle: "Book Nine", description: String(Int.random(in: 0...300)), image: "swift"),
         Model(mainTitle: "Book Ten", description: String(Int.random(in: 0...300)), image: "swift"),
         Model(mainTitle: "Book Eleven", description: String(Int.random(in: 0...300)), image: "swift"),
         Model(mainTitle: "Book Twelve", description: String(Int.random(in: 0...300)), image: "swift"),
         Model(mainTitle: "Book Thirteen", description: String(Int.random(in: 0...300)), image: "swift")
        ],
        [Model(mainTitle: nil, description: nil, image: "apple"),
         Model(mainTitle: nil, description: nil, image: "apple"),
         Model(mainTitle: nil, description: nil, image: "apple"),
         Model(mainTitle: nil, description: nil, image: "apple")
        ],
        [Model(mainTitle: "abc", description: "\(Int.random(in: 0...100))", image: "swift"),
         Model(mainTitle: "dif", description: "\(Int.random(in: 0...100))", image: "swift"),
         Model(mainTitle: "efg", description: "\(Int.random(in: 0...100))", image: "swift")
        ]
    ]
}
