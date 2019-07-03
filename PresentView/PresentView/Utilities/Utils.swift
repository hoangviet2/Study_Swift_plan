//
//  Utils.swift
//  PresentView
//
//  Created by Hoang Viet on 6/16/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import Foundation
import UIKit


class Utils: NSObject {
    
    // MARK: Screen size
    class func screenSize() -> CGSize {
        return UIScreen.main.bounds.size
    }
    
    // MARK: Factor
    class func factor() -> CGFloat {
        //let screenSize = self.screenSize()
        return 1.0//screenSize.width > 414 ? 1.0 : screenSize.width/414
    }
    
    
    // MARK: Storyboard
    /**
     Method returns an instance of the Main.storyboard
     - Returns: UIStoryboard
     */
    class func mainStoryboard() -> UIStoryboard {
        let storyboard = storyboardBoardWithName(storyboardName: "Main")
        return storyboard
    }
    
    /**
     Method returns an instance of the storyboard defined by the storyboardName String parameter
     - Parameter storyboardName: UString
     - Returns: UIStoryboard
     */
    class func storyboardBoardWithName(storyboardName: String) -> UIStoryboard {
        let storyboard = UIStoryboard(name: storyboardName, bundle: Bundle.main)
        return storyboard
    }
    
    /**
     Method returns an instance of the view controller defined by the storyboard Id paramter from the storyboard defined by the storyboardName parameter
     - Parameter storyboardId: String
     - Parameter storyboardName: String
     - Returns: UIViewController?
     */
    class func viewController(storyboardId: String, storyboardName: String) -> UIViewController? {
        let storyboard = storyboardBoardWithName(storyboardName: storyboardName)
        let viewController: AnyObject = storyboard.instantiateViewController(withIdentifier: storyboardId)
        return viewController as? UIViewController
    }
    
    // MARK: UITableView
    /**
     Method registers a nib name defined by the nibName String parameter with the tableview given by the tableview parameter
     - Parameter nibName:        String
     - Parameter tableView: UITableView
     */
    class func registerNibWithTableView(nibName: String, tableView: UITableView) {
        let nib = Utils.nib(name: nibName)
        tableView.register(nib, forCellReuseIdentifier: nibName)
    }
    
    // MARK: UICollectionView
    /**
     Method registers a nib name defined by the nibName String parameter with the collectionView given by the collectionView parameter
     - Parameter nibName:        String
     - Parameter collectionView: UICollectionView
     */
    class func registerNibWithCollectionView(nibName: String, collectionView: UICollectionView) {
        let nib = Utils.nib(name: nibName)
        collectionView.register(nib, forCellWithReuseIdentifier: nibName)
    }
    
    /**
     Method registers a supplementary element of kind nib defined by the nibName String parameter and the kind String parameter with the collectionView parameter
     - Parameter nibName:        String
     - Parameter kind:           String
     - Parameter collectionView: UICollectionView
     */
    class func registerSupplementaryElementOfKindNibWithCollectionView(nibName: String, kind: String, collectionView: UICollectionView) {
        let nib = Utils.nib(name: nibName)
        collectionView.register(nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: nibName)
    }
    
    /**
     Method converts a string to a dictionary
     - Parameter text: String
     - Returns: [String:AnyObject]?
     */
    class func convertStringToDictionary(text: String) -> [String:AnyObject]? {
        if let data = text.data(using: String.Encoding.utf8) {
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String:AnyObject]
                return json
            } catch {
                print(NSLocalizedString("Convert String To Dictionary Error", comment: ""))
            }
        }
        return nil
    }
    
    /**
     Method returns an instance of a nib defined by the name String parameter
     - Parameter name: String
     - Returns: UINib?
     */
    class func nib(name: String) -> UINib? {
        let nib: UINib? = UINib(nibName: name, bundle: Bundle.main)
        return nib
    }
    
    /**
     Method returns an instance of a view defined by the nib name String parameter
     - Parameter nibName: String
     - Returns: UIView?
     */
    class func viewFrom(nibName: String) -> UIView? {
        if let objects = Bundle.main.loadNibNamed(nibName, owner: nil, options: nil), objects.count > 0 {
            return objects[0] as? UIView
        }
        return nil
    }
    
    
    /**
     Return the App Name and Version
     
     - returns: <#return value description#>
     */
    internal static func getApplicationDetails() -> (name:String, version:String) {
        var version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String
        var name = Bundle(for:object_getClass(self)!).bundleIdentifier
        if name == nil {
            print("Could not retrieve application name. Application name is set to nil")
            name = "nil"
        }
        if version == nil {
            print("Could not retrieve application version. Application version is set to nil")
            version = "nil"
        }
        return (name!, version!)
        
    }
    
}
