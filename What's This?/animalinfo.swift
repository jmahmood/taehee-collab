//
//  animalinfo.swift
//  What's This?
//
//  Created by Tae-hee on 2020-05-12.
//  Copyright © 2020 Tae-hee. All rights reserved.
//

import Foundation
import UIKit

struct AnimalInfo: Codable {
    let name: String
    let animalDescription: String
    let imageName:  String
    
    static func decode(from assetName: String) -> AnimalInfo? {
        guard let asset: NSDataAsset = NSDataAsset(name: assetName) else {
            print("에셋 로드 실패")
            return nil
        }
        do {
            let decoder: PropertyListDecoder = PropertyListDecoder()
            return try decoder.decode(AnimalInfo.self, from: asset.data)
        } catch {
            print("데이터 디코딩 실패")
            print(error.localizedDescription)
            return nil
        }
    }
}
