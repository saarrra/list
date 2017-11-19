//
//  ViewController.swift
//  list
//
//  Created by 向久保 更 on 2017/11/19.
//  Copyright © 2017年 向久保 更. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
    
    //データ
    var dataInSction = [["漢字","音読"],["問題集","計算カード"],["暗記","資料"],["地図帳","暗記"]]
    
    //セクション
    var sectionIndex:[String] = ["国語","算数","理科","社会"]
    

        
    //データの個数を返す
        func tableView(tableView:UITableView, numberOfRowsInSection section:Int) -> Int {
            return dataInSection[section].count
    }
    
    
    //セクション名を返す
    func tableView(tableView:UITableView, titleForHeaderInSection section:Int) -> String?{
        return sectionIndex[section]
    }
    
    //セクションの個数を返す
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return sectionIndex.count
    }
    
    
    
    
    
    
    //StoryBoardで扱うTableviewを宣言
    @IBOutlet var table:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //テーブルビューのデータソースメゾットはViewContorolerに描くよ、という設定
        table.dataSource = self
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    
    
    
    
    //セルの数を設定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    //ID付きのセルを取得して、セル取得のtextLabelに「テスト」と表示させてみる
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        cell?.textLabel?.text = "テスト"
        
        return cell!
    }
}









