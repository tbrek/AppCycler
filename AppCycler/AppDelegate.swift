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
    var cycle: Int = 0
    var cycleTimer: Timer!
    var appCount: Int = 0
    var appsToBeCycled = [[String]]()
    var running = NSWorkspace.shared.runningApplications.filter{ $0.activationPolicy == .regular}.sorted{ $0.localizedName! < $1.localizedName!}
    
    @IBOutlet weak var interval: NSTextFieldCell!
    
    @IBOutlet weak var refreshList: NSButton!
    @IBOutlet weak var app1: NSTextField!
    @IBOutlet weak var app2: NSTextField!
    @IBOutlet weak var app3: NSTextField!
    @IBOutlet weak var app4: NSTextField!
    @IBOutlet weak var app5: NSTextField!
    @IBOutlet weak var app6: NSTextField!
    @IBOutlet weak var app7: NSTextField!
    @IBOutlet weak var app8: NSTextField!
    @IBOutlet weak var app9: NSTextField!
    @IBOutlet weak var app10: NSTextField!
    @IBOutlet weak var app11: NSTextField!
    @IBOutlet weak var app12: NSTextField!
    @IBOutlet weak var app13: NSTextField!
    @IBOutlet weak var app14: NSTextField!
    @IBOutlet weak var app15: NSTextField!
    @IBOutlet weak var app16: NSTextField!
    
    @IBOutlet weak var appIcon1: NSImageView!
    @IBOutlet weak var appIcon2: NSImageView!
    @IBOutlet weak var appIcon3: NSImageView!
    @IBOutlet weak var appIcon4: NSImageView!
    @IBOutlet weak var appIcon5: NSImageView!
    @IBOutlet weak var appIcon6: NSImageView!
    @IBOutlet weak var appIcon7: NSImageView!
    @IBOutlet weak var appIcon8: NSImageView!
    @IBOutlet weak var appIcon9: NSImageView!
    @IBOutlet weak var appIcon10: NSImageView!
    @IBOutlet weak var appIcon11: NSImageView!
    @IBOutlet weak var appIcon12: NSImageView!
    @IBOutlet weak var appIcon13: NSImageView!
    @IBOutlet weak var appIcon14: NSImageView!
    @IBOutlet weak var appIcon15: NSImageView!
    @IBOutlet weak var appIcon16: NSImageView!
    
    
    @IBOutlet weak var orderApp1: NSPopUpButton!
    @IBOutlet weak var orderApp2: NSPopUpButton!
    @IBOutlet weak var orderApp3: NSPopUpButton!
    @IBOutlet weak var orderApp4: NSPopUpButton!
    @IBOutlet weak var orderApp5: NSPopUpButton!
    @IBOutlet weak var orderApp6: NSPopUpButton!
    @IBOutlet weak var orderApp7: NSPopUpButton!
    @IBOutlet weak var orderApp8: NSPopUpButton!
    @IBOutlet weak var orderApp9: NSPopUpButton!
    @IBOutlet weak var orderApp10: NSPopUpButton!
    @IBOutlet weak var orderApp11: NSPopUpButton!
    @IBOutlet weak var orderApp12: NSPopUpButton!
    @IBOutlet weak var orderApp13: NSPopUpButton!
    @IBOutlet weak var orderApp14: NSPopUpButton!
    @IBOutlet weak var orderApp15: NSPopUpButton!
    @IBOutlet weak var orderApp16: NSPopUpButton!

    
    @IBOutlet weak var cycleButton: NSButton!
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        
        refreshApps((Any).self)
        cycleButton.isEnabled = false
        
    }
    func applicationWillTerminate(_ aNotification: Notification) {
    }
    
    func textFieldEditingDidChange() {
        
    }
    
    @IBAction func refreshApps(_ sender: Any) {
        cycleButton.isEnabled = false
        running = NSWorkspace.shared.runningApplications.filter{ $0.activationPolicy == .regular}.sorted{ $0.localizedName! < $1.localizedName!}
        clearApps()
        setOrderMenus()
        appCount = running.count - 1
        
        if appCount > 0 { appCount -= 1; app1.stringValue = running[1].localizedName!; appIcon1.image = running[1].icon; orderApp1.isHidden = false; app1.isHidden = false }
        if appCount > 0 { appCount -= 1; app2.stringValue = running[2].localizedName!; appIcon2.image = running[2].icon; orderApp2.isHidden = false; app2.isHidden = false }
        if appCount > 0 { appCount -= 1; app3.stringValue = running[3].localizedName!; appIcon3.image = running[3].icon; orderApp3.isHidden = false; app3.isHidden = false }
        if appCount > 0 { appCount -= 1; app4.stringValue = running[4].localizedName!; appIcon4.image = running[4].icon; orderApp4.isHidden = false; app4.isHidden = false }
        if appCount > 0 { appCount -= 1; app5.stringValue = running[5].localizedName!; appIcon5.image = running[5].icon; orderApp5.isHidden = false; app5.isHidden = false }
        if appCount > 0 { appCount -= 1; app6.stringValue = running[6].localizedName!; appIcon6.image = running[6].icon; orderApp6.isHidden = false; app6.isHidden = false }
        if appCount > 0 { appCount -= 1; app7.stringValue = running[7].localizedName!; appIcon7.image = running[7].icon; orderApp7.isHidden = false; app7.isHidden = false }
        if appCount > 0 { appCount -= 1; app8.stringValue = running[8].localizedName!; appIcon8.image = running[8].icon; orderApp8.isHidden = false; app8.isHidden = false }
        if appCount > 0 { appCount -= 1; app9.stringValue = running[9].localizedName!; appIcon9.image = running[9].icon; orderApp9.isHidden = false; app9.isHidden = false }
        if appCount > 0 { appCount -= 1; app10.stringValue = running[10].localizedName!; appIcon10.image = running[10].icon; orderApp10.isHidden = false; app10.isHidden = false }
        if appCount > 0 { appCount -= 1; app11.stringValue = running[11].localizedName!; appIcon11.image = running[11].icon; orderApp11.isHidden = false; app11.isHidden = false }
        if appCount > 0 { appCount -= 1; app12.stringValue = running[12].localizedName!; appIcon12.image = running[12].icon; orderApp12.isHidden = false; app12.isHidden = false }
        if appCount > 0 { appCount -= 1; app13.stringValue = running[13].localizedName!; appIcon13.image = running[13].icon; orderApp13.isHidden = false; app13.isHidden = false }
        if appCount > 0 { appCount -= 1; app14.stringValue = running[14].localizedName!; appIcon14.image = running[14].icon; orderApp14.isHidden = false; app14.isHidden = false }
        if appCount > 0 { appCount -= 1; app15.stringValue = running[15].localizedName!; appIcon15.image = running[15].icon; orderApp15.isHidden = false; app15.isHidden = false }
        if appCount > 0 { appCount -= 1; app16.stringValue = running[16].localizedName!; appIcon16.image = running[16].icon; orderApp16.isHidden = false; app16.isHidden = false }
        
        
    }
    
    func clearApps() {
        app1.stringValue = ""; appIcon1.image = nil ; app1.isHidden = true;
        app2.stringValue = ""; appIcon2.image = nil ; app2.isHidden = true;
        app3.stringValue = ""; appIcon3.image = nil ; app3.isHidden = true;
        app4.stringValue = ""; appIcon4.image = nil ; app4.isHidden = true;
        app5.stringValue = ""; appIcon5.image = nil ; app5.isHidden = true;
        app6.stringValue = ""; appIcon6.image = nil ; app6.isHidden = true;
        app7.stringValue = ""; appIcon7.image = nil ; app7.isHidden = true;
        app8.stringValue = ""; appIcon8.image = nil ; app8.isHidden = true;
        app9.stringValue = ""; appIcon9.image = nil ; app9.isHidden = true;
        app10.stringValue = ""; appIcon10.image = nil ; app10.isHidden = true;
        app11.stringValue = ""; appIcon11.image = nil ; app11.isHidden = true;
        app12.stringValue = ""; appIcon12.image = nil ; app12.isHidden = true;
        app13.stringValue = ""; appIcon13.image = nil ; app13.isHidden = true;
        app14.stringValue = ""; appIcon14.image = nil ; app14.isHidden = true;
        app15.stringValue = ""; appIcon15.image = nil ; app15.isHidden = true;
        app16.stringValue = ""; appIcon16.image = nil ; app16.isHidden = true;
    }
    
    func setOrderMenus() {
        orderApp1.isHidden = true
        orderApp2.isHidden = true
        orderApp3.isHidden = true
        orderApp4.isHidden = true
        orderApp5.isHidden = true
        orderApp6.isHidden = true
        orderApp7.isHidden = true
        orderApp8.isHidden = true
        orderApp9.isHidden = true
        orderApp10.isHidden = true
        orderApp11.isHidden = true
        orderApp12.isHidden = true
        orderApp13.isHidden = true
        orderApp14.isHidden = true
        orderApp15.isHidden = true
        orderApp16.isHidden = true

        orderApp1.removeAllItems(); orderApp1.addItem(withTitle: "-");
        orderApp2.removeAllItems(); orderApp2.addItem(withTitle: "-");
        orderApp3.removeAllItems(); orderApp3.addItem(withTitle: "-");
        orderApp4.removeAllItems(); orderApp4.addItem(withTitle: "-");
        orderApp5.removeAllItems(); orderApp5.addItem(withTitle: "-");
        orderApp6.removeAllItems(); orderApp6.addItem(withTitle: "-");
        orderApp7.removeAllItems(); orderApp7.addItem(withTitle: "-");
        orderApp8.removeAllItems(); orderApp8.addItem(withTitle: "-");
        orderApp9.removeAllItems(); orderApp9.addItem(withTitle: "-");
        orderApp10.removeAllItems(); orderApp10.addItem(withTitle: "-");
        orderApp11.removeAllItems(); orderApp11.addItem(withTitle: "-");
        orderApp12.removeAllItems(); orderApp12.addItem(withTitle: "-");
        orderApp13.removeAllItems(); orderApp13.addItem(withTitle: "-");
        orderApp14.removeAllItems(); orderApp14.addItem(withTitle: "-");
        orderApp15.removeAllItems(); orderApp15.addItem(withTitle: "-");
        orderApp16.removeAllItems(); orderApp16.addItem(withTitle: "-");
        
        for index in 1...running.count - 1 {
            orderApp1.addItem(withTitle: String(index))
            orderApp2.addItem(withTitle: String(index))
            orderApp3.addItem(withTitle: String(index))
            orderApp4.addItem(withTitle: String(index))
            orderApp5.addItem(withTitle: String(index))
            orderApp6.addItem(withTitle: String(index))
            orderApp7.addItem(withTitle: String(index))
            orderApp8.addItem(withTitle: String(index))
            orderApp9.addItem(withTitle: String(index))
            orderApp10.addItem(withTitle: String(index))
            orderApp11.addItem(withTitle: String(index))
            orderApp12.addItem(withTitle: String(index))
            orderApp13.addItem(withTitle: String(index))
            orderApp14.addItem(withTitle: String(index))
            orderApp15.addItem(withTitle: String(index))
            orderApp16.addItem(withTitle: String(index))
        }
        
    }
    // Check if any apps is chosen and timer is not blank
    @IBAction func enableCycyleButton(_ sender: Any) {
        if ((orderApp1.titleOfSelectedItem == "-") &&
            (orderApp2.titleOfSelectedItem == "-") &&
            (orderApp3.titleOfSelectedItem == "-") &&
            (orderApp4.titleOfSelectedItem == "-") &&
            (orderApp5.titleOfSelectedItem == "-") &&
            (orderApp6.titleOfSelectedItem == "-") &&
            (orderApp7.titleOfSelectedItem == "-") &&
            (orderApp8.titleOfSelectedItem == "-") &&
            (orderApp9.titleOfSelectedItem == "-") &&
            (orderApp10.titleOfSelectedItem == "-") &&
            (orderApp11.titleOfSelectedItem == "-") &&
            (orderApp12.titleOfSelectedItem == "-") &&
            (orderApp13.titleOfSelectedItem == "-") &&
            (orderApp14.titleOfSelectedItem == "-") &&
            (orderApp15.titleOfSelectedItem == "-") &&
            (orderApp16.titleOfSelectedItem == "-")) || interval.stringValue == ""
        {
            cycleButton.isEnabled = false
        }
        else {
            cycleButton.isEnabled = true
        }
    }
    
    @IBAction func startCycling(_ sender: Any) {
        validateInterval((Any).self)
        if interval.stringValue == "" {
            return
        }
        if cycleButton.title == "Stop" {
            cycleButton.title = "Cycle"
            cycleTimer.invalidate()
            cycleTimer = nil
            enableDropDowns()
            return
        }
    
        
        cycleButton.title = "Stop"
        cycle = 0
        appsToBeCycled.removeAll()
        disableDropDowns()
        
        if orderApp1.titleOfSelectedItem != "-" { appsToBeCycled.append( [app1.stringValue, orderApp1.titleOfSelectedItem!]) }
        if orderApp2.titleOfSelectedItem != "-" { appsToBeCycled.append( [app2.stringValue, orderApp2.titleOfSelectedItem!]) }
        if orderApp3.titleOfSelectedItem != "-" { appsToBeCycled.append( [app3.stringValue, orderApp3.titleOfSelectedItem!]) }
        if orderApp4.titleOfSelectedItem != "-" { appsToBeCycled.append( [app4.stringValue, orderApp4.titleOfSelectedItem!]) }
        if orderApp5.titleOfSelectedItem != "-" { appsToBeCycled.append( [app5.stringValue, orderApp5.titleOfSelectedItem!]) }
        if orderApp6.titleOfSelectedItem != "-" { appsToBeCycled.append( [app6.stringValue, orderApp6.titleOfSelectedItem!]) }
        if orderApp7.titleOfSelectedItem != "-" { appsToBeCycled.append( [app7.stringValue, orderApp7.titleOfSelectedItem!]) }
        if orderApp8.titleOfSelectedItem != "-" { appsToBeCycled.append( [app8.stringValue, orderApp8.titleOfSelectedItem!]) }
        if orderApp9.titleOfSelectedItem != "-" { appsToBeCycled.append( [app9.stringValue, orderApp9.titleOfSelectedItem!]) }
        if orderApp10.titleOfSelectedItem != "-" { appsToBeCycled.append( [app10.stringValue, orderApp10.titleOfSelectedItem!]) }
        if orderApp11.titleOfSelectedItem != "-" { appsToBeCycled.append( [app11.stringValue, orderApp11.titleOfSelectedItem!]) }
        if orderApp12.titleOfSelectedItem != "-" { appsToBeCycled.append( [app12.stringValue, orderApp12.titleOfSelectedItem!]) }
        if orderApp13.titleOfSelectedItem != "-" { appsToBeCycled.append( [app13.stringValue, orderApp13.titleOfSelectedItem!]) }
        if orderApp14.titleOfSelectedItem != "-" { appsToBeCycled.append( [app14.stringValue, orderApp14.titleOfSelectedItem!]) }
        if orderApp15.titleOfSelectedItem != "-" { appsToBeCycled.append( [app15.stringValue, orderApp15.titleOfSelectedItem!]) }
        if orderApp16.titleOfSelectedItem != "-" { appsToBeCycled.append( [app16.stringValue, orderApp16.titleOfSelectedItem!]) }

        appsToBeCycled = appsToBeCycled.sorted { $0[1] < $1[1] }
        cycleTimer = Timer.scheduledTimer(timeInterval: Double(interval.stringValue)!, target: self, selector: #selector(AppDelegate.cycleApp), userInfo: nil, repeats: true)
        
    }
    
    func disableDropDowns() {
        orderApp1.isEnabled = false
        orderApp2.isEnabled = false
        orderApp3.isEnabled = false
        orderApp4.isEnabled = false
        orderApp5.isEnabled = false
        orderApp6.isEnabled = false
        orderApp7.isEnabled = false
        orderApp8.isEnabled = false
        orderApp9.isEnabled = false
        orderApp10.isEnabled = false
        orderApp11.isEnabled = false
        orderApp12.isEnabled = false
        orderApp13.isEnabled = false
        orderApp14.isEnabled = false
        orderApp15.isEnabled = false
        orderApp16.isEnabled = false
        interval.isEnabled = false
        refreshList.isEnabled = false
    }
    
    func enableDropDowns() {
        orderApp1.isEnabled = true
        orderApp2.isEnabled = true
        orderApp3.isEnabled = true
        orderApp4.isEnabled = true
        orderApp5.isEnabled = true
        orderApp6.isEnabled = true
        orderApp7.isEnabled = true
        orderApp8.isEnabled = true
        orderApp9.isEnabled = true
        orderApp10.isEnabled = true
        orderApp11.isEnabled = true
        orderApp12.isEnabled = true
        orderApp13.isEnabled = true
        orderApp14.isEnabled = true
        orderApp15.isEnabled = true
        orderApp16.isEnabled = true
        interval.isEnabled = true
        refreshList.isEnabled = true
    }
    
    @IBAction func quitApp(_ sender: Any) {
        NSApplication.shared.terminate(self)
    }
    
    @objc func cycleApp() {
//        Apps workarounds
        
        if appsToBeCycled[cycle][0] == "iTerm2" {
            appsToBeCycled[cycle][0] = "iTerm"
        }
        
        NSWorkspace.shared.launchApplication(appsToBeCycled[cycle][0])
        cycle = cycle + 1
        if cycle == appsToBeCycled.count {
            cycle = 0
        }
    }
    
    @IBAction func validateInterval(_ sender: Any) {
        let regex = try! NSRegularExpression(pattern: "[A-Za-z\\W]", options: [])
        if regex.firstMatch(in: interval.stringValue, options: [], range: NSMakeRange(0, interval.stringValue.count)) != nil {
            interval.stringValue = ""
            cycleButton.isEnabled = false
            }
        else
        {
            enableCycyleButton((Any).self)
        }
    }
}

