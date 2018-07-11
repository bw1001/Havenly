//
//  contactServer.swift
//  Startup_App
//
//  Created by Clayton kingsbury on 7/10/18.
//  Copyright © 2018 Clayton kingsbury. All rights reserved.
//

import Foundation

class contactServer{
    func Contact(info: [Any]){
        //var post:String = "username=\(username)&password=\(password)"
        //
        //            NSLog("PostData: %@",post);
        //
        //            var url:NSURL = NSURL(string: "https://192.168.1.35/8080/")! // this is used to contact server?
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
    }
}
