//
//  CoreDataController.swift
//  SandToDo
//
//  Created by Tomek Buslowski on 04.09.2017.
//  Copyright © 2017 Tomek Buslowski. All rights reserved.
//

import Foundation
import CoreData

class CoreDataController {
    
    // MARK: - Core Data Controller Singleton
    
    private init () { }
    
    static func coreDataContext () -> NSManagedObjectContext {
        return CoreDataController.persistentContainer.viewContext
    }
    
    // MARK: - Core Data stack
    
    static var persistentContainer: NSPersistentContainer = {
        
        let container = NSPersistentContainer(name: "SandToDo")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                
                fatalError("Unresolved error in <<< CoreDataController.persistentContainer >>> \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    // MARK: - Core Data Saving support
    
    static func saveContext () {
        
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error in <<< CoreDataController.saveContext () >>>\(nserror), \(nserror.userInfo)")
            }
        }
    }

}
