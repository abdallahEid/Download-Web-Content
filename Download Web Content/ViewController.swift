//
//  ViewController.swift
//  Download Web Content
//
//  Created by Abdallah Eid on 10/23/17.
//  Copyright © 2017 TripleApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    /*
        let url = URL(string: "https://www.stackoverflow.com")!
            
        webView.loadRequest(URLRequest(url:url))
    */
    
      //  webView.loadHTMLString("<h1> Hello There </h1>", baseURL: nil)
        
        if let url = URL(string: "https:/www.stackoverflow.com"){
            
            let request = NSMutableURLRequest(url: url)
            
            let task = URLSession.shared.dataTask(with: request as URLRequest) {
                
                data, response, error in
                
                if(error != nil){
                    
                    print(error!)
                    
                } else {
                    
                    if let unwrappedData = data {
                        
                        let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                        
                        print(dataString!)
                        
                    }
                    
                }
                
            }
            task.resume()
            
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

