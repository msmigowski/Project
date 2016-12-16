//
//  FileApi.swift
//  Project
//
//  Created by Marcin Wawrzyniak on 16/12/16.
//  Copyright © 2016 Mateusz Smigowski. All rights reserved.
//

import UIKit

class FileApi: NSObject {

    static var jsonData: Any? = nil
    
    static func setDataFromJsonFile() {
        let filePath = "file://\(Bundle.main.path(forResource: "test", ofType: "json")!)"
        
        // Here may crash
        guard let urlFile = URL.init(string: filePath) else { return }
        let dataFromFile = try! Data.init(contentsOf: urlFile)
        
        
        FileApi.jsonData = try? JSONSerialization.jsonObject(with: dataFromFile, options: .allowFragments)
        print(FileApi.jsonData as? NSDictionary)
        
    }
    
}
