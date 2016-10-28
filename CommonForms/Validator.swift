//
//  Validator.swift
//  CommonForms
//
//  Created by Hafiz on 10/28/16.
//  Copyright © 2016 stubshq. All rights reserved.
//

import Foundation

func isValidEmail(email : String) -> Bool
{
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
    
    let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    return emailTest.evaluate(with: email)
}

extension String
{
    func length () -> Int
    {
        return self.characters.count
    }
}
