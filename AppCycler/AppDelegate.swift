//
//  AppDelegate.swift
//  AppCycler
//
//  Created by Tom Brek on 04/04/2018.
//  Copyright © 2018 Tom Brek. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        let running = NSWorkspace.shared.runningApplications.filter{ $0.activationPolicy == .regular}
        for app in running {
            print(app.localizedName!)
        }
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

}

