//
//  ViewController.swift
//  try
//
//  Created by Mac on 28/02/2020.
//  Copyright © 2020 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var array = ["a","b","c","d","f"]
    var barray = ["a","a","a"]
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell")as! TableViewCell
        table.allowsSelection = false
     //   if(barray[indexPath.row] == "b")
        for i in 0..<array.count{
            if(array.count != barray.count){
                barray .insert("a", at: i)
            }
        }
        print("barray,\(barray)")
            if(barray[(indexPath.row)] == "b")
        {
            cell.btn.backgroundColor = UIColor.red
        }
        else
        {
             cell.btn.backgroundColor = UIColor.yellow
        }
     
        return cell
    }
    
    @IBOutlet weak var btn: UIButton!
    @IBAction func button(_ sender: Any) {
        //  let indexPath = IndexPath(row: 1, section: 0)
        guard let cell = (sender as AnyObject).superview?.superview as? TableViewCell else {
            return // or fatalError() or whatever
        }
        let indexPath = table.indexPath(for: cell)
        
        // currentCell.outlet.backgroundColor = UIColor.yellow
        for i in 0..<array.count{
        if(array.count != barray.count){
             barray .insert("b", at: i)
        }
        }
        for i in 0..<array.count
        {
            var a = i
            let number = indexPath?.row
            if (i != number){
                // if( a == indexPath![1] ){
                print(indexPath![1])
                barray.remove(at: i)
                barray .insert("a", at: i)
                
                
            }
            else
            {
                barray.remove(at: i)
                barray .insert("b", at: i)
            }
            
        }
        print("arraysel,\(barray[(indexPath?.row)!])")
        
        print("arraysel,\(barray)")
        //  for i in 0..<arraysel.count
        //     {
        
        //
        
        // }
        table.reloadData()
    }
    
    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
   
        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    


}

