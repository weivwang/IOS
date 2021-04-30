//
//  JasonFileManager.swift
//  S08
//
//  Created by 王威卫 on 2021/4/18.
//

import Foundation

class JasonFileManager<T:NSObject&Codable> {
    var Records:[T] = []
    
    var Url:URL
    
    init(filename:String)
    {
        let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        Url = path.appendingPathComponent(filename)
    }
    
    // MARK: Models encode and save to file
    func save()
    {
        let encoder = JSONEncoder()
        
        do{
            let encodeData:Data? = try encoder.encode(Records)
            try encodeData!.write(to: Url,options: .atomic)
        }
        catch
        {
            print(error)
        }
        
    }
    func Load()
    {
        do
        {
            if let encodeData = try? Data.init(contentsOf: Url){
                let decoder = JSONDecoder()
                Records = try decoder.decode([Student].self, from: encodeData) as! [T]
            }
        }
        catch
        {
            print(error)
        }
    }
}
