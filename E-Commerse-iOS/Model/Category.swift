//
//  Category.swift
//  E-Commerse-iOS
//
//  Created by Pablo De La Cruz on 3/2/22.
//

import Foundation
import UIKit


class Category{
    
    var id : String
    var name : String
    var image : UIImage?
    var imageName : String?

    init(_name: String,_imageName: String){
        id = ""
        name = _name
        imageName = _imageName
        image = UIImage(named: _imageName)
    }
    
    init(_dictionary: NSDictionary) {
        
        id = _dictionary[kOBJECTID] as! String
        name = _dictionary[kNAME] as! String
        image = UIImage(named: _dictionary[kIMAGENAME] as? String ?? "")
    }
    
    
}

//MARK: Save Category Functions
func saveCategoryToFirebase(_ category : Category){
    let id = UUID().uuidString
    category.id = id
    
    FirebaseReference(.Category).document(id).setData(categoryDictionaryFrom(category) as! [String : Any])
}

//MARK: Helpers
//converts to dictionary to be able to save
func categoryDictionaryFrom(_ category : Category) -> NSDictionary {
    
    return NSDictionary(objects: [category.id, category.name, category.imageName], forKeys: [kOBJECTID as NSCopying, kNAME as NSCopying, kIMAGENAME as NSCopying])
    
}


//SEED Function -  Use ONCE--------------------------------------------------------------------
func createCategorySet(){
    let womenClothing = Category(_name: "Women's Clothing & Accessories", _imageName: "womenClothing")
    let footWear = Category(_name: "Footwear", _imageName: "footwear")
    let electronics = Category(_name: "Electronics", _imageName: "electronics")
    let menClothing = Category(_name: "Men's Clothing & Accessories", _imageName: "menClothing")
    let health = Category(_name: "Health and Beauty", _imageName: "health")
    let baby = Category(_name: "Baby Stuff", _imageName: "baby")
    let home = Category(_name: "Home & Kitchen", _imageName: "home")
    let car = Category(_name: "Automobiles & Motorcycles", _imageName: "car")
    let luggage = Category(_name: "Luggage & Bags", _imageName: "luggage")
    let jewelery = Category(_name: "Jewelery", _imageName: "jewelery")
    let hobby = Category(_name: "Hobby, Sport, Traveling", _imageName: "hobby")
    let industry = Category(_name: "Industry & Business", _imageName: "industry")
    let garden = Category(_name: "Garden Supplies", _imageName: "garden")
    let camera = Category(_name: "Cameras & Optics", _imageName: "camera")


    let arrayOfCategory = [womenClothing, footWear, electronics, menClothing, health, baby, home, car, luggage, jewelery, hobby, industry, garden, camera]
    
    for category in arrayOfCategory {
        saveCategoryToFirebase(category)
    }
    
    
}

