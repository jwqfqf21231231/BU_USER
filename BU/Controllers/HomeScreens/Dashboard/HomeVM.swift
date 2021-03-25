//
//  HomeVM.swift
//  BU
//
//  Created by Aman Kumar on 18/01/21.
//

import Foundation
import UIKit
class HomeVM: CategoryListModeling {

    //TODO: Singleton object
    static let shared = HomeVM()
    private init() {}

    //TODO: Prepare data source implementation
    func prepareDataSourceStatic() -> CategoryListViewModel {
        let categories = [Category(id: String(),image: #imageLiteral(resourceName: "hairdresser"), title: ConstantTexts.BarberShopLT, Url: String()),
                          Category(id: String(),image: #imageLiteral(resourceName: "brush"), title: ConstantTexts.StylistLT, Url: String()),
                          Category(id: String(),image: #imageLiteral(resourceName: "barber"), title: ConstantTexts.HairDressingLT, Url: String()),
                          Category(id: String(),image: #imageLiteral(resourceName: "massage"), title: ConstantTexts.MassagersLT, Url: String()),
                          Category(id: String(),image: #imageLiteral(resourceName: "nail-polish"), title: ConstantTexts.BeautyNailsLT, Url: String()),
                          Category(id: String(),image: #imageLiteral(resourceName: "makeup"), title: ConstantTexts.MakeUpLT, Url: String())]
        
        return CategoryListViewModel(categories: categories)
    }
    
    func prepareDataSource(with array: NSArray) -> CategoryListViewModel{
        var categories = [Category]()
        for item in array{
            if let itemDict = item as? NSDictionary{
                var category = Category(id: String(),image: UIImage(), title: String(), Url: String())
                if let id = itemDict.value(forKey: "id") as? String{
                    category.id = id
                }
                
                if let id = itemDict.value(forKey: "id") as? Int{
                    category.id = "\(id)"
                }
                
                if let name = itemDict.value(forKey: "name") as? String{
                    category.title = "\(name)"
                }
                
                if let image = itemDict.value(forKey: "image") as? String{
                    category.Url = "\(image)"
                }
                
                categories.append(category)
                
            }
        }
        return CategoryListViewModel(categories)
    }
}
