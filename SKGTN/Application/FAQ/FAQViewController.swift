//
//  FAQViewController.swift
//  SKGTN
//
//  Created by Minh Tien on 6/8/21.
//

import UIKit

class FAQViewController: UIViewController , UITableViewDataSource , UITableViewDelegate{

    var listItem = [ FAQ.faqList(question: "String", answer: "String")]
    var selectedIndex  = -1
    
    var isCoolapce = false
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
        navigationItem.title = "Câu hỏi thường gặp"
        tableView.dataSource = self
        tableView.delegate = self
        btn1.layer.cornerRadius = 25
        btn1.layer.backgroundColor = UIColor(red: 0.91, green: 0.433, blue: 0.388, alpha: 1).cgColor
        
        btn2.layer.cornerRadius = 25
        btn2.layer.backgroundColor = UIColor(red: 0.91, green: 0.433, blue: 0.388, alpha: 1).cgColor
        
        btn3.layer.cornerRadius = 25
        btn3.layer.backgroundColor = UIColor(red: 0.91, green: 0.433, blue: 0.388, alpha: 1).cgColor
        
        btn4.layer.cornerRadius = 25
        btn4.layer.backgroundColor = UIColor(red: 0.91, green: 0.433, blue: 0.388, alpha: 1).cgColor
        
        tableView.separatorColor = UIColor.clear
         tableView.tableFooterView = UIView()
        tableView.estimatedRowHeight = 280
        
        tableView.rowHeight = UITableView.automaticDimension
        let result = loadJson(fileName: "FAQ")!
        listItem = result.FAQ
         
       
 
    }
    func loadJson(fileName: String) -> FAQ? {
        guard let sourceURL = Bundle.main.url(forResource: fileName, withExtension: "json") else {
            fatalError("error")
        }
        guard let listData = try? Data(contentsOf: sourceURL) else {
            fatalError("error")
        }
        let decoder = JSONDecoder()
        guard let listFAQ = try? decoder.decode(FAQ.self, from: listData) else {
            fatalError("error")
        }

       return listFAQ
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if selectedIndex == indexPath.row && isCoolapce == true {
            return 280.0
        }else{
            return 50.0
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return listItem.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL") as! FAQTableViewCell
        cell.title.text = listItem[indexPath.row].question
        cell.clipsToBounds = true
        
        cell.textView.text = listItem[indexPath.row].answer

        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if selectedIndex == indexPath.row {
            if isCoolapce == false {
                isCoolapce = true
            }else{
                isCoolapce = false
            }
        
        }else {
            isCoolapce = true
        }
        selectedIndex = indexPath.row
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
    private func readLocalFile(forName name: String) -> Data? {
        do {
            if let bundlePath = Bundle.main.path(forResource: name,
                                                 ofType: "json"),
                let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                return jsonData
            }
        } catch {
            print(error)
        }
        
        return nil
    }

}
