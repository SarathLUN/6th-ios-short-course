//
//  LanguageManager.swift
//  LocalizationDemo
//
//  Created by Soeng Saravit on 12/19/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import Foundation

class LanguageManager {
    static let shared = LanguageManager()
    
    var language:String {
        set {
            UserDefaults.standard.set(newValue, forKey: "LanguageCode")
        }
        get {
            if let data = UserDefaults.standard.string(forKey: "LanguageCode") {
                let languageCode = data.lowercased()
                return languageCode
            }else {
                return ""
            }
        }
    }
}

extension String {
    var localized: String {
        get {
            if let languageCode = UserDefaults.standard.string(forKey: "LanguageCode") {
                let bundlePath = Bundle.main.path(forResource: languageCode, ofType: "lproj")
                
                let languageBundle = Bundle(path: bundlePath!)
                
                let lanuageString = languageBundle?.localizedString(forKey: self, value: "", table: nil)
                
                return lanuageString!
            }else{
                return self
            }
        }
    }
}
