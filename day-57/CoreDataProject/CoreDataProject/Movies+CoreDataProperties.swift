//
//  Movies+CoreDataProperties.swift
//  CoreDataProject
//
//  Created by Dan on 25/04/23.
//
//

import Foundation
import CoreData


extension Movies {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Movies> {
        return NSFetchRequest<Movies>(entityName: "Movies")
    }

    @NSManaged public var title: String?
    @NSManaged public var director: String?
    @NSManaged public var year: Int16

}

extension Movies : Identifiable {

}
