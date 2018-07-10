//
//  RegisterViewController.swift
//  Startup_App
//
//  Created by Clayton kingsbury on 7/6/18.
//  Copyright © 2018 Clayton kingsbury. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var confPasswordTxt: UITextField!
    @IBOutlet weak var firstNameTxt: UITextField!
    @IBOutlet weak var lastNameTxt: UITextField!
    @IBAction func RegisterPressed(_ sender: UIButton) {
        var username:NSString = usernameTxt.text! as NSString
        var password:NSString = passwordTxt.text! as NSString
        var confirm_password:NSString = confPasswordTxt.text! as NSString
        
        if ( username.isEqual(to: "") || password.isEqual(to: "") ) {
            
            var alertView:UIAlertView = UIAlertView()
            alertView.title = "Regester Failed!"
            alertView.message = "Please enter Information"
            alertView.delegate = self
            alertView.addButton(withTitle: "OK")
            alertView.show()
        } else if ( !password.isEqual(confirm_password) ) {
            
            var alertView:UIAlertView = UIAlertView()
            alertView.title = "Sign Up Failed!"
            alertView.message = "Passwords doesn't Match"
            alertView.delegate = self
            alertView.addButton(withTitle: "OK")
            alertView.show()
        } else {
            var alertView:UIAlertView = UIAlertView()
            alertView.title = "Sign Up Success!"
            alertView.message = "Now Figure out the Server"
            alertView.delegate = self
            alertView.addButton(withTitle: "OK")
            alertView.show()
            
//            var post:NSString = "username=\(username)&password=\(password)&c_password=\(confirm_password)" as NSString
//
//            NSLog("PostData: %@",post);
//
//            var url:NSURL = NSURL(string: "https://dipinkrishna.com/jsonsignup.php")!
//
//            var postData:NSData = post.dataUsingEncoding(NSASCIIStringEncoding)!
//
//            var postLength:NSString = String( postData.length ) as NSString
//
//            var request:NSMutableURLRequest = NSMutableURLRequest(url: url as URL)
//            request.httpMethod = "POST"
//            request.httpBody = postData as Data
//            request.setValue(postLength as String, forHTTPHeaderField: "Content-Length")
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
//                    let success:NSInteger = jsonData.value(forKey: "success")! as! NSInteger
//
//                    //[jsonData[@"success"] integerValue];
//
//                    NSLog("Success: %ld", success);
//
//                    if(success == 1)
//                    {
//                        NSLog("Sign Up SUCCESS");
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
//                        alertView.title = "Sign Up Failed!"
//                        alertView.message = error_msg as String
//                        alertView.delegate = self
//                        alertView.addButton(withTitle: "OK")
//                        alertView.show()
//
//                    }
//
//                } else {
//                    var alertView:UIAlertView = UIAlertView()
//                    alertView.title = "Sign Up Failed!"
//                    alertView.message = "Connection Failed"
//                    alertView.delegate = self
//                    alertView.addButton(withTitle: "OK")
//                    alertView.show()
//                }
//            }  else {
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
