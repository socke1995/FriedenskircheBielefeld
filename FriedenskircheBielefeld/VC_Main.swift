//
//  VC_Main.swift
//  FriedenskircheBielefeld
//
//  Created by Daniel Willems on 11.02.19.
//  Copyright © 2019 Daniel Willems. All rights reserved.
//

import UIKit
import FilesProvider

class VC_Main: UIViewController,  FileProviderDelegate {

    
    let server: URL = URL(string: "danielwillems.ddns.net")!
    let username = "willems"
    let password = "FSMv0RXfUYfgQ07"
    
    var ftp:FTPFileProvider?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let credential = URLCredential(user: username, password: password, persistence: .permanent)
        ftp = FTPFileProvider(baseURL: server, mode: .passive, credential: credential)
        ftp?.delegate = self as FileProviderDelegate
    }
    
    
    func fileproviderSucceed(_ fileProvider: FileProviderOperations, operation: FileOperationType) {
        
    }
    
    func fileproviderFailed(_ fileProvider: FileProviderOperations, operation: FileOperationType, error: Error) {
        
    }
    
    func fileproviderProgress(_ fileProvider: FileProviderOperations, operation: FileOperationType, progress: Float) {
        
    }
    

}
