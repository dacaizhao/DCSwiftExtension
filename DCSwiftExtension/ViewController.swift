//
//  ViewController.swift
//  DCSwiftExtension
//
//  Created by point on 2017/1/8.
//  Copyright © 2017年 dacai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        //最简单的字典转模型
        //        let dict = ["age":18,"height":174.50,"name":"zhaodacai"] as [String : Any]
        //        let personModel:PersonModel = PersonModel.objectWithKeyValues(dict as NSDictionary) as! PersonModel
        //        print("String姓名:\(personModel.name)","Int年龄:\(personModel.age)","NsNumber身高:\(personModel.height)")
        //
        //        //有父类的字典转模型
        //        let dict2 = ["age":18,"height":174.50,"name":"zhaodacai","stuNo":"100","stuClassName":"一年级二班"] as [String : Any]
        //        let studentModel:StudentModel = StudentModel.objectWithKeyValues(dict2 as NSDictionary) as! PersonModel as! StudentModel
        //        print("String姓名:\(studentModel.name)","Int年龄:\(studentModel.age)","NsNumber身高:\(studentModel.height)"
        //            ,"学号:\(studentModel.stuNo)","班级:\(studentModel.stuClassName)")
        //
        //
        //        //模型数组列表
        //        let dict3 = [["age":12,"height":174,"name":"zhaodacai1","stuNo":"101","stuClassName":"一年级3班"],
        //                     ["age":18,"height":179.50,"name":"zhaodacai2","stuNo":"102","stuClassName":"一年级2班"],
        //                     ["age":15,"height":156.50,"name":"zhaodacai3","stuNo":"103","stuClassName":"一年级1班"],
        //                     ["age":68,"height":177.50,"name":"zhaodacai4","stuNo":"104","stuClassName":"一年级4班"],
        //                     ["age":48,"height":174.50,"name":"zhaodacai5","stuNo":"105","stuClassName":"一年级5班"]
        //        ]
        //
        //        let studentModelArr:[StudentModel] = StudentModel.objectArrayWithKeyValuesArray(dict3 as NSArray) as! [StudentModel]
        //        for studentModel in studentModelArr {
        //            print("String姓名:\(studentModel.name)","Int年龄:\(studentModel.age)","NsNumber身高:\(studentModel.height)"
        //                ,"学号:\(studentModel.stuNo)","班级:\(studentModel.stuClassName)")
        //        }
        //
        //
        //        //模型中有模型
        //        let dict4 = ["stuNo":101,"stuClassName":"一年级3班","classModel":["classID":10,"className":"一年级5班"]] as [String : Any]
        //        let studentModel4:StudentModel = StudentModel.objectWithKeyValues(dict4 as NSDictionary) as! PersonModel as! StudentModel
        //        print("String姓名:\(studentModel4.name)","Int年龄:\(studentModel4.age)","NsNumber身高:\(studentModel4.height)"
        //            ,"学号:\(studentModel4.stuNo)","班级:\(studentModel4.stuClassName)","模型班级:\(studentModel4.classModel.className)","模型班级Id:\(studentModel4.classModel.classID)")
        
        
        
        
        //1:属性有模型 2:模型里有数组 3:StudentModel: PersonModel 可拿父属性
        let dict5 = ["stuNo":101,"stuClassName":"一年级3班","teacherZhaoDaCai":["zhao","qian","sun","li"],
                     "classModel":["classID":10,"className":"一年级5班",
                                   "personModel":[
                                                 ["age":11,"height":174,"name":"zhaodacai1"],
                                                 ["age":12,"height":174,"name":"zhaodacai2"],
                                                 ["age":13,"height":174,"name":"zhaodacai3"],
                                                 ["age":13,"height":174,"name":"zhaodacai4"],
                ]
            ]
            ] as [String : Any]
        
        let studentModel5:StudentModel = StudentModel.dcObjectWithKeyValues(dict5 as NSDictionary)  as! StudentModel
        
        print(studentModel5.teacher)
        //print(studentModel5.teacher)
        
        print("String姓名:\(studentModel5.name)","Int年龄:\(studentModel5.age)","NsNumber身高:\(studentModel5.height)"
            ,"学号:\(studentModel5.stuNo)","班级:\(studentModel5.stuClassName)","模型班级:\(studentModel5.classModel.className)","模型班级Id:\(studentModel5.classModel.classID)")
        print(studentModel5.classModel.personModel.count)
        for model in studentModel5.classModel.personModel as Array {
            print("String姓名:\(model.name)","Int年龄:\(model.age)","NsNumber身高:\(model.height)")
        }
    
        
    }
}

