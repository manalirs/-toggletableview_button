//
//  ViewController.swift
//  try
//
//  Created by Mac on 28/02/2020.
//  Copyright © 2020 Mac. All rights reserved.
//

import UIKit


class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,newTableViewCellDelegate{
    var arrayflag :[Int] = []
    var arraynew = [Int]()
     var flag = Int()
   // var emptyDoubles: [Double] = []
    func btnCloseTapped(cell: newTableViewCell) {
       
      
        let indexPath = self.table.indexPath(for: cell)
        print(indexPath!.row)
       
       
        
           // let indexPath = table.indexPath(for: cell)
        arraynew = [indexPath!.row]
      arrayflag.append(arraynew[0])
        
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
        table.reloadData()
            //  for i in 0..<arraysel.count
            //     {
        
            //
        
            // }
    }
    
    
    
    
    
    
    var array = ["a","b","c","d","f"]
    var barray = ["a","a","a"]
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = table.dequeueReusableCell(withIdentifier: "cell1")as! newTableViewCell
      //  table.allowsSelection = false
     //   if(barray[indexPath.row] == "b")
        for i in 0..<array.count{
            if(array.count != barray.count){
                barray .insert("a", at: i)
            }
        }
        print("barray,\(barray)")
            if(barray[(indexPath.row)] == "b")
        {
           // cell.btn.backgroundColor = UIColor.red
           
            if(cell1.btnClose.backgroundColor == UIColor.red){
                cell1.btnClose.backgroundColor = UIColor.yellow
            }
            else{
            cell1.btnClose.backgroundColor = UIColor.red
           // flag = 1
            }
        }
        else
        {
             cell1.btnClose.backgroundColor = UIColor.yellow
        }
        cell1.delegate = self

        return cell1
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        //  let indexPath = IndexPath(row: 1, section: 0)
//        guard let cell = (sender as AnyObject).superview?.superview as? TableViewCell else {
//            return // or fatalError() or whatever
//        }
      //  let indexPath = table.indexPath
        
        // currentCell.outlet.backgroundColor = UIColor.yellow
        for i in 0..<array.count{
            if(array.count != barray.count){
                barray .insert("b", at: i)
            }
        }
        for i in 0..<array.count
        {
            var a = i
            let number = indexPath.row
            if (i != number){
                // if( a == indexPath![1] ){
                print(indexPath[1])
                barray.remove(at: i)
                barray .insert("a", at: i)
                
                
            }
            else
            {
                barray.remove(at: i)
                barray .insert("b", at: i)
            }
            
        }
        print("arraysel,\(barray[(indexPath.row)])")
        
        print("arraysel,\(barray)")
        //  for i in 0..<arraysel.count
        //     {
        
        //
        
        // }
        table.reloadData()
    
    }
   
//      func button1(_ sender: Any){
//    //  let indexPath = IndexPath(row: 1, section: 0)
//    guard let cell = (sender as AnyObject).superview?.superview as? TableViewCell else {
//    return // or fatalError() or whatever
//    }
//    let indexPath = table.indexPath(for: cell)
//
//    // currentCell.outlet.backgroundColor = UIColor.yellow
//    for i in 0..<array.count{
//    if(array.count != barray.count){
//    barray .insert("b", at: i)
//    }
//    }
//    for i in 0..<array.count
//    {
//    var a = i
//    let number = indexPath?.row
//    if (i != number){
//    // if( a == indexPath![1] ){
//    print(indexPath![1])
//    barray.remove(at: i)
//    barray .insert("a", at: i)
//
//
//    }
//    else
//    {
//    barray.remove(at: i)
//    barray .insert("b", at: i)
//    }
//
//    }
//    print("arraysel,\(barray[(indexPath?.row)!])")
//
//    print("arraysel,\(barray)")
//    //  for i in 0..<arraysel.count
//    //     {
//
//    //
//
//    // }
//    table.reloadData()
//    }

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
    table.register(UINib(nibName: "newTableViewCell", bundle: nil), forCellReuseIdentifier: "cell1")
        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    


}

