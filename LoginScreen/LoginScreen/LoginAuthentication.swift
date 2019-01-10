//
//  LoginAuthentication.swift
//  LoginScreen
//
//  Created by Soeng Saravit on 1/4/19.
//  Copyright © 2019 Soeng Saravit. All rights reserved.
//

import Foundation
import LocalAuthentication

class BiometricIDAuth {
    let context = LAContext()
    let loginReason = "Login using Touch ID"
    
    func canEvaluatePolicy() -> Bool {
        return context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil)
    }
    
    func biometricType() -> BiometricType {
    context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil)
        
        switch context.biometryType {
        case .none:
            return .none
        case .touchID:
            return .touchID
        case .faceID:
            return .faceID
        default:
            return .none
        }
    }
    
    func authenticateUser(successs completion: @escaping ()->Void) {
        guard canEvaluatePolicy() else{
            return
        }
    
        context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: loginReason) { (success, error) in
            if success {
                DispatchQueue.main.async {
                    completion()
                }
            }else{
                // TODO: LAError Case
   
            }
        }
        
    }
}


enum BiometricType {
    case none
    case touchID
    case faceID
}
