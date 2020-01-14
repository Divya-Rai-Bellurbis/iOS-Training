//
//  AftrLogViewController.swift
//  UIPojectMy
//
//  Created by BLBD17 on 24/12/19.
//  Copyright © 2019 BLBD17. All rights reserved.
//

import UIKit





class AftrLogViewController: UIViewController,UITableViewDataSource {
   
    

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var nameLabel: UILabel!
   
    let url = URL(string: "https://reqres.in/api/users?page=2")
     private var data = [Flower]()
    
    //* for creating simple table view
//    var name = ["Table View", "Collection View", "Stack View", "Scroll View", "Image Picker View", "Slider View","Page Scroll View"]
//    var myIndex = 0
//    var myString = String()
//    var identities = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        downloadJson()
//* for creating simple table view
//        nameLabel.text = myString
//        identities = ["A","B","C","D","E","F","G"]
    }


func downloadJson()
{
    
    let downloadURL = url
    URLSession.shared.dataTask(with: downloadURL!){(data, URLResponse, error) in
        print("downloaded")
        do
        {
            let decoder = JSONDecoder()
            let downloadedFlowers = try decoder.decode(Flowers.self, from: data!)
            self.data = downloadedFlowers.data
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
            
        } catch{
            print("Something wrong after downloading !")
        }
        }.resume()
}
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return data.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->  UITableViewCell{
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? FlowerCell
    
    cell?.firstName.text = "Name: " + data[indexPath.row].first_name
    
    if let imageURL = URL(string: data[indexPath.row].avatar){
        DispatchQueue.global().async {
            let data = try? Data(contentsOf: imageURL)
            if let data = data {
                let image = UIImage(data: data)
                DispatchQueue.main.async {
                    cell?.JsonImage.image = image
                }
            }
        }
    }
   return cell!
}

}
//* for creating simple table view
//extension AftrLogViewController: UITableViewDelegate, UITableViewDataSource {
// func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return name.count
//    }
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CellTableViewCell
//        cell?.lbl.text = name[indexPath.row]
//        return cell!
//    }
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let vcName = identities[indexPath.row]
//        let viewController = storyboard?.instantiateViewController(withIdentifier: vcName)
//        self.navigationController?.pushViewController(viewController!, animated: true)
//    }
//}

