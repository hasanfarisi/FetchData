//
//  Post.swift
//  FetchData
//
//  Created by mac on 10/2/24.
//

import Foundation
import SwiftUI

struct Post:Codable, Identifiable {
    public var id:Int
    public var title:String
    public var body:String
}
