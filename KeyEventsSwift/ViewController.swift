//
//  ViewController.swift
//  KeyEventsSwift
//
//  Created by Bruce Calder on 2/23/17.
//  Copyright © 2017 Bruce Calder. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var chat: NSTextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var acceptsFirstResponder: Bool { return true }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    override func keyDown(with event: NSEvent)
    {
        let message : String  = chat.stringValue + " DOWN " + event.characters! + "\n"
        chat.stringValue = message
    }
    
    override func keyUp(with event: NSEvent)
    {
        let message : String  = chat.stringValue + " UP " + event.characters! + "\n"
        chat.stringValue = message
    }

    @IBAction func pushIt(_ sender: AnyObject) {
        chat.stringValue = "Push It Real Good\n"
    }

}

