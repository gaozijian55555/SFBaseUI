//
//  UIApplication+SF.swift
//  SwiftInterViewStoryboard
//
//  Created by 高子健 on 2024/12/9.
//

import UIKit

extension UIApplication {
    func windowOnVersion () -> UIWindow? {
        if #available(iOS 15.0, *) {
            return UIApplication.shared.connectedScenes
                .filter{$0.activationState == .foregroundActive}
                .first(where: { $0 is UIWindowScene })
                .flatMap({ $0 as? UIWindowScene })?.windows
                .first(where: \.isKeyWindow)
        } else {
            return UIApplication.shared.windows.first
        }
    }
    
    func statusFrame() -> CGRect? {
        if #available(iOS 13.0, *) {
            return self.windowOnVersion()?.windowScene?.statusBarManager?.statusBarFrame
        } else {
            return UIApplication.shared.statusBarFrame
        }
    }
    
    func RootNavigation() -> SFRootNavigationController? {
        if let keyWindow = self.windowOnVersion() {
            return keyWindow.rootViewController?.presentedViewController as? SFRootNavigationController
        }
        return nil
    }
}
