//
//  ViewController.swift
//  UnderlineStyles
//
//  Created by Dave Weston on 8/17/15.
//  Copyright © 2015 Binocracy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var textView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let str = "My favorite book is See Spot Run"
        let attributedStr =  NSMutableAttributedString(attributedString: NSAttributedString(string: str, attributes: [.font : UIFont.systemFont(ofSize: 30) , .foregroundColor : UIColor.white] ))
        
        //[.foregroundColor : UIColor.white]
        
      //  NSMutableAttributedString(attributedString: NSAttributedString(string: str, attributes: [.font : UIFont.systemFont(ofSize: 30) , .foregroundColor : UIColor.white] ))
        
        //NSUnderlineStyle.patternSolid.rawValue
        //[.underlineStyle : underlineStyle]
        
        //[NSUnderlineStyleAttributeName: underlineStyle, NSUnderlineColorAttributeName: UIColor.yellow] as [String : Any]
        //
        
        
        
        let titleRange = NSString(string: str).range(of: "See Spot Run")
        let underlineStyle = CustomUnderlineStyle + NSUnderlineStyle.thick.rawValue
        let attributes : [NSAttributedString.Key : Any]? = [.underlineStyle : underlineStyle,.underlineColor : UIColor.yellow]
        
        attributedStr.addAttributes(attributes!, range: titleRange)

      
        
        
        let storage = NSTextStorage(attributedString: attributedStr)
        let layout = UnderlineLayoutManager()
        storage.addLayoutManager(layout)
        let container = NSTextContainer()
        container.widthTracksTextView = true
        layout.addTextContainer(container)
        
        textView = UITextView(frame: view.bounds.insetBy(dx: 20, dy: 10), textContainer: container)
        textView.backgroundColor = UIColor(white: 0.2, alpha: 1.0)
        textView.isUserInteractionEnabled = false
        view.backgroundColor = UIColor(white: 0.2, alpha: 1.0)
        view.addSubview(textView)
    }

    override var preferredStatusBarStyle : UIStatusBarStyle {
        return .lightContent
    }
}

