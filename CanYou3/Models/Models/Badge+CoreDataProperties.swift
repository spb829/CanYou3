//
//  Badge+CoreDataProperties.swift
//  CanYou3
//
//  Created by Macbook Pro on 2017. 9. 15..
//  Copyright © 2017년 Eric.Park. All rights reserved.
//

import Foundation
import CoreData


extension Badge {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Badge> {
        return NSFetchRequest<Badge>(entityName: "Badge")
    }

    @NSManaged public var conditionTypeStr: String?
    @NSManaged public var conditionValue: Double
    @NSManaged public var content: String?
    @NSManaged public var imageName: String?
    @NSManaged public var isDone: Bool
    @NSManaged public var name: String?
    @NSManaged public var user: User?

}
