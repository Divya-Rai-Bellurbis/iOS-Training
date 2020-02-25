//
//  ViewController.swift
//  NTTdemo
//
//  Created by Bellubis-WS29 on 19/02/20.
//  Copyright © 2020 Bellubis-WS29. All rights reserved.
//

import UIKit

struct cellData {
    
    let cell : Int!
    let text1 : String!
    let text2 : String!
    let text3 : String!
    let multiCloudImage : UIImage!
    let RecNewsLbl : String!
    let RctimageLbl : String!
    let ViewAllBtn : String!
    let RctnewsImg : UIImage!
    let TstLbl : String!
    let TstmViwAll : String!
    let TstmQtImg : UIImage!
    let TstmTxt : String!
    let TstmImg : UIImage!
    let TstmNm : String!
    let TstmPrfl : String!
    let CaseStLbl : String!
    let CaseViewAll : String!
    let CaseStText : String!
    
}

class TableViewController: UITableViewController {

    var arrayOfCellData = [cellData]()
    
    override func viewDidLoad() {
        
        arrayOfCellData = [cellData(cell: 1, text1: "Multi-Cloud", text2: "Your Cloud.\nOur Capabilities", text3: nil, multiCloudImage: UIImage(named: "image2"), RecNewsLbl:                    nil, RctimageLbl: nil, ViewAllBtn: nil, RctnewsImg: nil, TstLbl: nil, TstmViwAll: nil, TstmQtImg: nil, TstmTxt: nil, TstmImg: nil, TstmNm: nil, TstmPrfl: nil, CaseStLbl: nil, CaseViewAll: nil, CaseStText: nil),
                           
                           cellData(cell: 2, text1: nil, text2: nil, text3: nil, multiCloudImage: nil, RecNewsLbl: "Recent News", RctimageLbl: "How to get the best of Cloud Technology.", ViewAllBtn: "View All", RctnewsImg: UIImage(named:"image3"), TstLbl: nil, TstmViwAll: nil, TstmQtImg: nil, TstmTxt: nil, TstmImg: nil, TstmNm: nil, TstmPrfl: nil, CaseStLbl: nil, CaseViewAll: nil, CaseStText: nil),
                           
                           cellData(cell: 3, text1: nil, text2: nil, text3: nil, multiCloudImage: nil, RecNewsLbl: nil, RctimageLbl: nil, ViewAllBtn: nil, RctnewsImg: nil, TstLbl: "Testimonials", TstmViwAll: "View All", TstmQtImg: UIImage(named: "doubleQt"), TstmTxt: "It has been great pleasure working, NTT they\n        have a great response team . They are\nconsidered to be best in cloud technology.\nMy overall experience is great.", TstmImg: UIImage(named: "image1"), TstmNm: "Ranjit Thakur", TstmPrfl: "VP Techno Ads", CaseStLbl: nil, CaseViewAll: nil, CaseStText: nil),
                           
                           cellData(cell: 4, text1: nil, text2: nil, text3: nil, multiCloudImage: nil, RecNewsLbl: nil, RctimageLbl: nil, ViewAllBtn: nil, RctnewsImg: nil, TstLbl: nil, TstmViwAll: nil, TstmQtImg: nil, TstmTxt: nil, TstmImg: nil, TstmNm: nil, TstmPrfl: nil, CaseStLbl: "Our Case Studies", CaseViewAll: "View All", CaseStText: "Lorem Ipsum is simply dummy text of the printing and typesetting industry")
            
                           ]
                    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayOfCellData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if arrayOfCellData[indexPath.row].cell == 1{
            
            let cell = Bundle.main.loadNibNamed("MultiCloudVC", owner: self, options: nil)?.first as! MultiCloudVC
            
            cell.multiCloudImage.image = arrayOfCellData[indexPath.row].multiCloudImage
            cell.text1.text = arrayOfCellData[indexPath.row].text1
            cell.text2.text = arrayOfCellData[indexPath.row].text2
            
            return cell
        }
        else if arrayOfCellData[indexPath.row].cell == 2{
            
           
           let cell = Bundle.main.loadNibNamed("RecentNewsVC", owner: self, options: nil)?.first as! RecentNewsVC
            
            cell.RctnewsImg.image = arrayOfCellData[indexPath.row].RctnewsImg
            cell.RecNewsLbl.text = arrayOfCellData[indexPath.row].RecNewsLbl
            cell.RctimageLbl.text = arrayOfCellData[indexPath.row].RctimageLbl
            
            return cell
        }
        else if arrayOfCellData[indexPath.row].cell == 3{
            
           let cell = Bundle.main.loadNibNamed("TestimonialsVC", owner: self, options: nil)?.first as! TestimonialsVC
            
            cell.TstLbl.text = arrayOfCellData[indexPath.row].TstLbl           
            cell.TstmTxt.text = arrayOfCellData[indexPath.row].TstmTxt
            cell.TstmImg.image = arrayOfCellData[indexPath.row].TstmImg
            cell.TstmNm.text = arrayOfCellData[indexPath.row].TstmNm
            cell.TstmPrfl.text = arrayOfCellData[indexPath.row].TstmPrfl
            
            return cell
        }
        else if arrayOfCellData[indexPath.row].cell == 4{
            let cell = Bundle.main.loadNibNamed("CaseStudiesVC", owner: self, options: nil)?.first as! CaseStudiesVC
            
            cell.CaseStLbl.text = arrayOfCellData[indexPath.row].CaseStLbl
            
            cell.CaseStText.text = arrayOfCellData[indexPath.row].CaseStText
            
            return cell
            
        }
        
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        var value: CGFloat?
        
        if arrayOfCellData[indexPath.row].cell == 1{
            value = 270
            
        }
        else if  arrayOfCellData[indexPath.row].cell == 2{
            value = 260
        }
        else if  arrayOfCellData[indexPath.row].cell == 3{
            value = 260
        }
        else if arrayOfCellData[indexPath.row].cell == 4{
            value = 120
        }
        return value!
    }
}
