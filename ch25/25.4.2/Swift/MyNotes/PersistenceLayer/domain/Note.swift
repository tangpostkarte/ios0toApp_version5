//
//  Note.swift
//  MyNotes
//
//  Created by 关东升 on 2016-11-18.
//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

import Foundation

public class Note: NSObject, NSCoding {

    public var date: Date
    public var content: String

    public init(date: Date, content: String) {
        self.date = date
        self.content = content
    }

    override public init() {
        self.date = Date()
        self.content = ""
    }

    // MARK: --实现NSCoding协议
    public func encode(with aCoder: NSCoder) {
        aCoder.encode(date, forKey: "date")
        aCoder.encode(content, forKey: "content")
    }

    public required init(coder aDecoder: NSCoder) {
        self.date = aDecoder.decodeObject(forKey: "date") as! Date
        self.content = aDecoder.decodeObject(forKey: "content") as! String
    }
}
