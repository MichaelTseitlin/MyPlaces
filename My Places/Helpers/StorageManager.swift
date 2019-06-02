//
//  StorageManager.swift
//  My Places
//
//  Created by Michael Tseitlin on 6/1/19.
//  Copyright © 2019 Michael Tseitlin. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place) {
        
        try! realm.write {
            realm.add(place)
        }
    }
    
    static func deleteObject(_ place: Place) {
        
        try! realm.write {
            realm.delete(place)
        }
    }
}
