//
//  Todo+CoreDataProperties.swift
//  SandToDo
//
//  Created by Tomek Buslowski on 04.09.2017.
//  Copyright © 2017 Tomek Buslowski. All rights reserved.
//

import Foundation
import CoreData


extension Todo {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Todo> {
        return NSFetchRequest<Todo>(entityName: "Todo")
    }

    @NSManaged public var todoName: String?
    @NSManaged public var color: NSObject?
    @NSManaged public var position: Int16
    @NSManaged public var list: List?

}
