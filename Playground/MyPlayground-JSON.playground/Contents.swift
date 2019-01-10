import UIKit

let url = Bundle.main.url(forResource: "data1", withExtension: "json")
let jsonData = try? Data(contentsOf: url!)

if let object = try? JSONSerialization.jsonObject(with: jsonData!, options: .allowFragments){
//        let data = object as? [String:Any]
    
//        print(data!["title"] as! String)
//        print(data!["version"] as! NSNumber)
//
//        let students = data!["students"] as! NSArray
//
//    for stu in students {
//        if let s = stu as? [String:Any] {
//            print("\(s["name"]!), \(s["age"]!)")
//        }
    print(object)
//    }
}

