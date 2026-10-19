//
//  Font+Ext.swift
//  Verda
//
//  Created by Marina Marhitych on 19.10.2026.
//

import SwiftUI

nonisolated extension Font {
    
    static func kodchasanSemiBold(size: CGFloat, relativeTo textStyle: TextStyle = .body) -> Font {
        .custom("Kodchasan-SemiBold", size: size, relativeTo: textStyle)
    }
    
    static func kodchasanBold(size: CGFloat, relativeTo textStyle: TextStyle = .body) -> Font {
        .custom("Kodchasan-Bold", size: size, relativeTo: textStyle)
    }
    
    static func alexandriaLight(size: CGFloat, relativeTo textStyle: TextStyle = .body) -> Font {
        .custom("Alexandria-Light", size: size, relativeTo: textStyle)
    }
    
    static func alexandriaRegular(size: CGFloat, relativeTo textStyle: TextStyle = .body) -> Font {
        .custom("Alexandria-Regular", size: size, relativeTo: textStyle)
    }
    
    static func alexandriaMedium(size: CGFloat, relativeTo textStyle: TextStyle = .body) -> Font {
        .custom("Alexandria-Medium", size: size, relativeTo: textStyle)
    }
}

