//
//  Contact.swift
//  ContactDemo
//
//  Created by Soeng Saravit on 11/20/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import Foundation


class Contact {
    var name:String?
    var phone:String?
    var email:String?
    var address:String?
    var image:String?
    
    static func getContacts() -> [Contact] {
        
        var contacts:[Contact] = [Contact]()
        
        let contact1 = Contact()
        contact1.name = "Soeng Saravit1"
        contact1.phone = "+85596 929 9959"
        contact1.email = "soengsaravit@gmail.com"
        contact1.address = "#12, Street. 323, Sangkat Boeng Kak II, Khan Toul Kork, Phnom Penh"
        contact1.image = "https://i.dailymail.co.uk/i/pix/2017/04/20/13/3F6B966D00000578-4428630-image-m-80_1492690622006.jpg"
        
        let contact2 = Contact()
        contact2.name = "Soeng Saravit2"
        contact2.phone = "+85596 929 9959"
        contact2.email = "soengsaravit@gmail.com"
        contact2.address = "#12, Street. 323, Sangkat Boeng Kak II, Khan Toul Kork, Phnom Penh"
        contact2.image = "https://i.dailymail.co.uk/i/pix/2017/04/20/13/3F6B966D00000578-4428630-image-m-80_1492690622006.jpg"
        
        let contact3 = Contact()
        contact3.name = "Soeng Saravit3"
        contact3.phone = "+85596 929 9959"
        contact3.email = "soengsaravit@gmail.com"
        contact3.address = "#12, Street. 323, Sangkat Boeng Kak II, Khan Toul Kork, Phnom Penh"
        contact3.image = "https://i.dailymail.co.uk/i/pix/2017/04/20/13/3F6B966D00000578-4428630-image-m-80_1492690622006.jpg"
        
        let contact4 = Contact()
        contact4.name = "Soeng Saravit4"
        contact4.phone = "+85596 929 9959"
        contact4.email = "soengsaravit@gmail.com"
        contact4.address = "#12, Street. 323, Sangkat Boeng Kak II, Khan Toul Kork, Phnom Penh"
        contact4.image = "https://i.dailymail.co.uk/i/pix/2017/04/20/13/3F6B966D00000578-4428630-image-m-80_1492690622006.jpg"
        
        contacts.append(contentsOf: [contact1, contact2, contact3, contact4])
        
        return contacts
    }
}
