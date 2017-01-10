//
//  StudentModel.swift
//  DCSwiftExtension
//
//  Created by point on 2017/1/8.
//  Copyright © 2017年 dacai. All rights reserved.
//

import UIKit

class StudentModel: NSObject {

    var stuNo:Int = 0
    var stuClassName:String = ""
    var dacaiBool:Bool = false
    //var teacher:NSArray = []
    //var classModel = ClassModel()
    override func replacedKeyFromPropertyName() ->[String:String]{
        return ["teacher":"teacherZhaoDaCai"]
    }
    
}
