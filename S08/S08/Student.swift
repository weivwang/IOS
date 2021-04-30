//
//  Student.swift
//  S08
//
//  Created by 王威卫 on 2021/4/18.
//

import Foundation
class Student: NSObject,Codable {
    
    var name:String = ""
    var birthday:String = ""
    var score:String = ""
    var address:String = ""
    
    private enum CodingKeys:String, CodingKey{
        case name = "person_name"
        case birthday
        case score
        case address
    }
    
    override init() {
    }
    init(name:String,birthday:String,score:String,address:String){
        self.name = name
        self.birthday = birthday
        self.score = score
        self.address = address
    }
    
    override var description: String{
       return "name:\(name),birthday:\(birthday),score:\(score),address:\(address)"
    }
}
