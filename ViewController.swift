//
//  ViewController.swift
//  UIPojectMy
//
//  Created by BLBD17 on 23/12/19.
//  Copyright © 2019 BLBD17. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    //let login_url = "https://reqres.in/api/login"
    
    

    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var passWord: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    var login_session:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     
    }

    
    
    @IBAction func registerAct(_ sender: Any) {
        
        print("Register button tapped")
                let email = userName.text
                let password = passWord.text
                if(email == "" || password == ""){
                    return
                }
                DoRegister(email!, password!)
                }
               func  DoRegister(_ email:String, _ password:String)
                {
                    //let url1 = URL(string: "https://reqres.in/api/login" )
                    let url1 = URL(string: "https://reqres.in/api/register" )
                    let session = URLSession.shared
        
                    var request = URLRequest(url: url1!)
                    request.httpMethod = "POST"
                    request.addValue("application/json", forHTTPHeaderField: "content-type")
                    request.addValue("application/json", forHTTPHeaderField: "Accept")
                    let postString = ["email": email, "password": password] as [String:
                        String]
                    do{
                        request.httpBody = try JSONSerialization.data(withJSONObject: postString, options: .prettyPrinted)
                    }catch let error {
                        print(error.localizedDescription)
                         return
                    }
                    let task = URLSession.shared.dataTask(with: request) { (data:Data?, response: URLResponse?, error: Error?) in
                        if error != nil
                        {
                            print("error=\(String(describing:error))")
                            return
                        }
                        do
                        {
                            let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as? NSDictionary
                            if let parseJSON = json {
                                let accessToken = parseJSON["token"] as! String
                                let userId = parseJSON["id"] as! Int
                                print("Access Token: \(String(describing: accessToken))")
                                print("Id: \(String(describing: userId))")
                                if (accessToken.isEmpty)
                                {
                                    print("could not perform request")
                                    return
                                }
                                DispatchQueue.main.async {
                                    let homepage = self.storyboard?.instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
                                    let appDelegate = UIApplication.shared.delegate
                                    appDelegate?.window??.rootViewController = homepage
                                }
                            }else{
                                print(error)
                            }
                        }catch
                        {
                            print(error)
                        }
                    }
                    task.resume()
                    
    //*simply push to another view controller
//        let registervc = self.storyboard?.instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
//        self.navigationController?.pushViewController(registervc, animated: true)
    }
    
    
    
    @IBAction func login(_ sender: Any) {
        
    //* for authenticating login by post method and access token
//        print("Login button tapped")
//        let email = userName.text
//        let password = passWord.text
//        if(email == "" || password == ""){
//            return
//        }
//        DoLogin(email!, password!)
//        }
//       func  DoLogin(_ email:String, _ password:String)
//        {
//            //let url1 = URL(string: "https://reqres.in/api/login" )
//            let url1 = URL(string: "https://reqres.in/api/users?page=2" )
//            let session = URLSession.shared
//
//            var request = URLRequest(url: url1!)
//            request.httpMethod = "POST"
//            request.addValue("application/json", forHTTPHeaderField: "content-type")
//            request.addValue("application/json", forHTTPHeaderField: "Accept")
//            let postString = ["email": email, "password": password] as [String:
//                String]
//            do{
//                request.httpBody = try JSONSerialization.data(withJSONObject: postString, options: .prettyPrinted)
//            }catch let error {
//                print(error.localizedDescription)
//                 return
//            }
//            let task = URLSession.shared.dataTask(with: request) { (data:Data?, response: URLResponse?, error: Error?) in
//                if error != nil
//                {
//                    print("error=\(String(describing:error))")
//                    return
//                }
//                do
//                {
//                    let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as? NSDictionary
//                    if let parseJSON = json {
//                        let accessToken = parseJSON["token"] as! String
//                        //let userId = parseJSON["id"] as! String
//                        print("Access Token: \(String(describing: accessToken))")
//                        if (accessToken.isEmpty)
//                        {
//                            print("could not perform request")
//                            return
//                        }
//                        DispatchQueue.main.async {
//                            let homepage = self.storyboard?.instantiateViewController(withIdentifier: "AftrLogViewController") as! AftrLogViewController
//                            let appDelegate = UIApplication.shared.delegate
//                            appDelegate?.window??.rootViewController = homepage
//                        }
//                    }else{
//                        print(error)
//                    }
//                }catch
//                {
//                    print(error)
//                }
//            }
//            task.resume()
//* for authenticating login by post method and access token
               
        let loginvc = self.storyboard?.instantiateViewController(withIdentifier: "AftrLogViewController") as! AftrLogViewController
        self.navigationController?.pushViewController(loginvc, animated: true)
        
        
        
        
            
            
     
        //* by segue to another vc only
        //if (userName.text != nil)
        //{
          //  performSegue(withIdentifier: "nameSegue", sender: self)
        //}
        
    }
    
    
   
    
    
    

   
   

    
    //override func prepare(for segue: UIStoryboardSegue, sender: (Any)?) {
       //if segue.identifier == "nameSegue"
        //{
        //let vc = segue.destination as! AftrLogViewController
       // vc.myString = userName.text!
    //}
        
    }
    
    


