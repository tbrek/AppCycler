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

    @IBOutlet weak var app1: NSTextFieldCell!
    @IBOutlet weak var app2: NSTextFieldCell!
    @IBOutlet weak var app3: NSTextFieldCell!
    @IBOutlet weak var app4: NSTextFieldCell!
    @IBOutlet weak var app5: NSTextFieldCell!
    @IBOutlet weak var app6: NSTextFieldCell!
    
    
    @IBOutlet weak var appIcon1: NSImageView!
    @IBOutlet weak var appIcon2: NSImageView!
    @IBOutlet weak var appIcon3: NSImageView!
    @IBOutlet weak var appIcon4: NSImageView!
    
    @IBOutlet weak var appTick1: NSButtonCell!
    @IBOutlet weak var appTick2: NSButtonCell!
    @IBOutlet weak var appTick3: NSButtonCell!
    @IBOutlet weak var appTick4: NSButtonCell!
    
    @IBOutlet weak var cycleButton: NSButton!
    
    let running = NSWorkspace.shared.runningApplications.filter{ $0.activationPolicy == .regular}

    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        refreshApps((Any).self)
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    
    @IBAction func refreshApps(_ sender: Any) {
        let running = NSWorkspace.shared.runningApplications.filter{ $0.activationPolicy == .regular}
        app1.stringValue = running[1].localizedName!
        appIcon1.image = running[1].icon
        appTick1.state = NSControl.StateValue(rawValue: 0)
        
        app2.stringValue = running[2].localizedName!
        appIcon2.image = running[2].icon
        appTick2.state = NSControl.StateValue(rawValue: 0)
        
        app3.stringValue = running[3].localizedName!
        appIcon3.image = running[3].icon
        appTick3.state = NSControl.StateValue(rawValue: 0)
        
        app4.stringValue = running[4].localizedName!
        appIcon4.image = running[4].icon
        appTick4.state = NSControl.StateValue(rawValue: 0)
    }
    
    
    @IBAction func startCycling(_ sender: Any) {
        cycleTimer = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(cycleApp), userInfo: nil, repeats: true)
    }
    
    func cycleApp() {
        cycleButton.title = "Stop"
        NSWorkspace.shared.launchApplication("Safari")
        
    }
}

