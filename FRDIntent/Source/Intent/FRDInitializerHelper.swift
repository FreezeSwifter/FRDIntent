//
//  FRDInitializerHelper.swift
//  FRDIntent
//
//  Created by mugua on 2018/11/28.
//  Copyright © 2018 Douban Inc. All rights reserved.
//

import UIKit

class FRDInitializerHelper {

    static func viewControllerFromClazz(_ clazz: FRDIntentReceivable.Type?, extras: [String: Any]) -> FRDIntentReceivable? {
        
        guard let controllerClass = clazz else { return nil }
        let vc = controllerClass.init(extras: extras)
        return vc
    }
    
    static func viewControllerFromStoryboard(_ name: String, clazz: FRDIntentReceivable.Type?, extras: [String: Any]) -> FRDIntentReceivable? {
        
        guard let controllerClass = clazz else { return nil }
        let vc = controllerClass.makeFrom(storyboard: name, extras: extras)
        return vc
    }
}
