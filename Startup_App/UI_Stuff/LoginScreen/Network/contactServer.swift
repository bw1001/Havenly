//
//  contactServer.swift
//  Startup_App
//
//  Created by Clayton kingsbury on 7/10/18.
//  Copyright © 2018 Clayton kingsbury. All rights reserved.
//

import Foundation

class contactServer{
    static let instance = contactServer()
    private init(){}
    public func Contact(info: [infoToSend]) -> Any{
        //var post:String = "username=\(username)&password=\(password)"
        
           // NSLog("PostData: %@",post);

        
        // use different urls?
        var url:NSURL = NSURL(string: "https://192.168.1.35:8080/login")! // this is used to contact server?

            //var postData:Data = post.data(using: String.Encoding.ascii)!

           // var postLength:String = String( postData.count )

        var request:NSMutableURLRequest = NSMutableURLRequest(url: url as URL)
        request.httpMethod = "POST"
            //request.httpBody = postData

        for object in info {
            request.setValue(object.information, forHTTPHeaderField: object.label)
        }

        


        var reponseError: NSError?
        var response: URLResponse?
        
        do {
            var urlData: NSData? = try NSURLConnection.sendSynchronousRequest(request as URLRequest, returning:&response) as NSData
            if ( urlData != nil ) {
                let res = response as! HTTPURLResponse!;
                
                NSLog("Response code: %ld", (res?.statusCode)!);
                
                if ((res?.statusCode)! >= 200 && (res?.statusCode)! < 300)
                {
                    var responseData:NSString  = NSString(data:urlData! as Data, encoding:String.Encoding.utf8.rawValue)!
                    
                    NSLog("Response ==> %@", responseData);
                    
                    var error: NSError?
                    do {
                        let jsonData:NSDictionary = try JSONSerialization.jsonObject(with: urlData! as Data, options:JSONSerialization.ReadingOptions.mutableContainers) as! NSDictionary
                        let success:NSInteger = jsonData.value(forKey: "success") as! NSInteger
                        
                        //[jsonData[@"success"] integerValue];
                        
                        NSLog("Success: %ld", success);
                        return jsonData
                    }
                    catch{
                        print("Error in Networking 2")
                    }
                    
                    
                }
            }
        }
        catch{
            print("Error in networking 2")
        }
        return "Error"
        
    }
}
