//
//  ListViewController.swift
//  NewsReader
//
//  Created by zukako on 2018/02/28.
//  Copyright © 2018年 zukako. All rights reserved.
//

import UIKit

class ListViewController: UITableViewController, XMLParserDelegate{
    var parser:XMLParser!
    var items = [Item]()
    var item:Item?
    var currenteString = ""
    
    // itemsリストから表示するべき個数を取得
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection: Int) -> Int{
        return items.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell",
                                                 for: indexPath)
        cell.textLabel?.text = items[indexPath.row].title
        return cell
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        startDownload()
    }
    
    func startDownload(){
        self.items = []
        if let url = URL(
            string: "https://www.apple.com/jp/newsroom/rss-feed.rss"){
            if let parser = XMLParser(contentsOf: url){
                self.parser = parser
                self.parser.delegate = self
                self.parser.parse()
            }
        }
    }
    
    func parser(_ parser: XMLParser,
                didStartElement elementName: String, namespaceURI: String?,
                qualifiedName qName: String?,
                attributes attributeDict: [String:String]){
        self.currenteString = ""
        if elementName == "item"{
            self.item = Item()
        }
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String){
        self.currenteString += string
    }
    
    func parser(_ parser: XMLParser,
                didEndElement elementName: String,
                namespaceURI: String?, qualifiedName qName: String?) {
        switch elementName{
        case "title": self.item?.title = currenteString
        case "link": self.item?.link = currenteString
        case "item": self.items.append(self.item!)
        default : break
        }
    }
    
    func parserDidEndDocument(_ parser: XMLParser) {
        self.tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let indexPath = self.tableView.indexPathForSelectedRow{
            let item = items[indexPath.row]
            let controller = segue.destination as! DetailViewController
            controller.title = item.title
            controller.link = item.link
        }
    }
}

