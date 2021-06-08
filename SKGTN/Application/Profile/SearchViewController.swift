//
//  SearchViewController.swift
//  SKGTN
//
//  Created by Minh Tien on 6/7/21.
//

import UIKit

class SearchViewController: UIViewController , UITableViewDataSource, UISearchBarDelegate ,UITableViewDelegate  {

    var titlePre : String!
    var control : String!
    
    var listDistrict :  [District]!
    var listWard :  [Ward]!
    var listStreet :  [Street]!
    
    var filterDistrict :  [District] = []
    var filterWard : [Ward] = []
    var filterStreet : [Street] = []
    
   
    @IBOutlet weak var tableSearchView: UITableView!
    
     
    
    @IBOutlet weak var titleSearch: UILabel!
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    @IBOutlet weak var viewModel: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleSearch.text = titlePre
        viewModel.layer.backgroundColor = UIColor(red: 0.91, green: 0.448, blue: 0.344, alpha: 1).cgColor
        viewModel.layer.cornerRadius = 5
        // Do any additional setup after loading the view.
        tableSearchView.dataSource = self
        tableSearchView.delegate = self
        searchBar.delegate = self
        
        switch control {
        case "ward":
            filterWard = listWard
        case "street":
            filterStreet = listStreet
        default:
            filterDistrict = listDistrict
        }
        
       
         
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        var count = 0
        switch control {
            case "ward":
                count = filterWard.count
            case "street":
                count = filterStreet.count
            default:
                count =  filterDistrict.count
            }
        return count
        
   }
   
    func numberOfSections(in tableView: UITableView) -> Int {
       return 1
   }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL")! as UITableViewCell
        switch control {
        case "ward":
            cell.textLabel?.text = filterWard[indexPath.row].name
        case "street":
            cell.textLabel?.text = filterStreet[indexPath.row].name
        default:
          cell.textLabel?.text = filterDistrict[indexPath.row].name
        }
          
           return cell
       }
       
         
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
      
               
        switch control {
            case "ward":
                UserDefaults.standard.set( listWard[indexPath.row].name , forKey: "ward")
            case "street":

                UserDefaults.standard.set( listStreet[indexPath.row].name , forKey: "street")
            default:
                UserDefaults.standard.set( listDistrict[indexPath.row].name , forKey: "district")
            }

        dismiss(animated: true, completion: nil)
        
        }
     
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        switch control {
        case "ward":
            filterWard = []
        case "street":
            filterStreet = []
        default:
            filterDistrict = []
        }
         
        
        if searchText == "" {
            switch control {
            case "ward":
                filterWard = listWard
            case "street":
                filterStreet = listStreet
            default:
                filterDistrict = listDistrict
            }
        } else {
            switch control {
            case "ward":
                for item : Ward in listWard {
                    if item.name.lowercased().contains(searchText.lowercased()) {
                        filterWard.append(item)
                    }
                }
            case "street":
                    for item : Street in listStreet{
                        if item.name.lowercased().contains(searchText.lowercased()) {
                            filterStreet.append(item)
                        }}
            default:
                        for item : District in listDistrict {
                            if item.name.lowercased().contains(searchText.lowercased()) {
                                filterDistrict.append(item)
                            }
            }
           
            }
        }
        self.tableSearchView.reloadData()
    }
    
 
    
    @IBAction func handleClose(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
 
