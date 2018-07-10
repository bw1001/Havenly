//
//  LoginViewController.swift
//  Startup_App
//
//  Created by Clayton kingsbury on 7/6/18.
//  Copyright © 2018 Clayton kingsbury. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var usernameTxt: UITextField!
    @IBAction func LoginPressed(_ sender: UIButton) {
        var username:String = usernameTxt.text! // I added the ! to both of these so I dont know if that will work
        var password:String = passwordTxt.text!
        
        if ( username.isEqual("") || password.isEqual("") ) {
            
            var alertView:UIAlertView = UIAlertView()
            alertView.title = "Login Failed!"
            alertView.message = "Please enter Username and Password"
            alertView.delegate = self
            alertView.addButton(withTitle: "OK")
            alertView.show()
        } else {
            
//            var post:String = "username=\(username)&password=\(password)"
//
//            NSLog("PostData: %@",post);
//
//            var url:NSURL = NSURL(string: "https://dipinkrishna.com/jsonlogin2.php")! // this is used to contact server?
//
//            var postData:Data = post.data(using: String.Encoding.ascii)!
//
//            var postLength:String = String( postData.count )
//
//            var request:NSMutableURLRequest = NSMutableURLRequest(url: url as URL)
//            request.httpMethod = "POST"
//            request.httpBody = postData
//            request.setValue(postLength, forHTTPHeaderField: "Content-Length")
//            request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
//            request.setValue("application/json", forHTTPHeaderField: "Accept")
//
//
//            var reponseError: NSError?
//            var response: URLResponse?
//
//            var urlData: NSData? = NSURLConnection.sendSynchronousRequest(request, returningResponse:&response, error:&reponseError)
//
//            if ( urlData != nil ) {
//                let res = response as! HTTPURLResponse!;
//
//                NSLog("Response code: %ld", (res?.statusCode)!);
//
//                if ((res?.statusCode)! >= 200 && (res?.statusCode)! < 300)
//                {
//                    var responseData:NSString  = NSString(data:urlData! as Data, encoding:String.Encoding.utf8.rawValue)!
//
//                    NSLog("Response ==> %@", responseData);
//
//                    var error: NSError?
//
//                    let jsonData:NSDictionary = JSONSerialization.JSONObjectWithData(urlData!, options:JSONSerialization.ReadingOptions.MutableContainers , error: &error) as NSDictionary
//
//
//                    let success:NSInteger = jsonData.value(forKey: "success") as! NSInteger
//
//                    //[jsonData[@"success"] integerValue];
//
//                    NSLog("Success: %ld", success);
//
//                    if(success == 1)
//                    {
//                        NSLog("Login SUCCESS");
//
//                        var prefs:UserDefaultsUserDefaults = NSUserDefaults.standardUserDefaults()
//                        prefs.set(username, forKey: "USERNAME")
//                        prefs.setInteger(1, forKey: "ISLOGGEDIN")
//                        prefs.synchronize()
//
//                        self.dismiss(animated: true, completion: nil)
//                    } else {
//                        var error_msg:NSString
//
//                        if jsonData["error_message"] as? NSString != nil {
//                            error_msg = jsonData["error_message"] as! NSString
//                        } else {
//                            error_msg = "Unknown Error"
//                        }
//                        var alertView:UIAlertView = UIAlertView()
//                        alertView.title = "Sign in Failed!"
//                        alertView.message = error_msg as String
//                        alertView.delegate = self
//                        alertView.addButton(withTitle: "OK")
//                        alertView.show()
//
//                    }
//
//                } else {
//                    var alertView:UIAlertView = UIAlertView()
//                    alertView.title = "Sign in Failed!"
//                    alertView.message = "Connection Failed"
//                    alertView.delegate = self
//                    alertView.addButton(withTitle: "OK")
//                    alertView.show()
//                }
//            } else {
//                var alertView:UIAlertView = UIAlertView()
//                alertView.title = "Sign in Failed!"
//                alertView.message = "Connection Failure"
//                if let error = reponseError {
//                    alertView.message = (error.localizedDescription)
//                }
//                alertView.delegate = self
//                alertView.addButton(withTitle: "OK")
//                alertView.show()
//            }
        }
    }
    @IBAction func RegisterPagePressed(_ sender: UIButton) {
        let appDomain = Bundle.main.bundleIdentifier
        UserDefaults.standard.removePersistentDomain(forName: appDomain!)
        
        self.performSegue(withIdentifier: "goto_register", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
