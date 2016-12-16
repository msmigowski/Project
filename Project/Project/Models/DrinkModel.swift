//
//  DrinkModel.swift
//  Project
//
//  Created by Marcin Wawrzyniak on 16/12/16.
//  Copyright © 2016 Mateusz Smigowski. All rights reserved.
//

import UIKit

class DrinkModel: NSObject {

    var title: String? = nil
    var speaker: String? = nil
    var time: String? = nil
    var room: String? = nil
    var details: String? = nil
    
    override init() {
        super.init()
        
    }
    
    init(withDictionary dictionary: NSDictionary) {
        self.title = dictionary.object(forKey: "TITLE") as? String
        self.speaker = dictionary.object(forKey: "SPEAKER") as? String
        self.time = dictionary.object(forKey: "TIME") as? String
        self.room = dictionary.object(forKey: "ROOM") as? String
        self.details = dictionary.object(forKey: "DETAILS") as? String
    }
    
}
