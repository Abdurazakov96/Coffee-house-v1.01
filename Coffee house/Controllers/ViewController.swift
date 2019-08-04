//
//  ViewController.swift
//  Coffee house
//
//  Created by Магомед Абдуразаков on 03/08/2019.
//  Copyright © 2019 Магомед Абдуразаков. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var coffees = Coffee.all
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "detailSegue" else {return}
        guard let selectedPath = tableView.indexPathForSelectedRow else {return}
        
        let destination = segue.destination as! Detail
        destination.coffee = coffees[selectedPath.row]
        
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coffees.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "coffeeCell")
        
        let coffee = coffees[indexPath.row]
        
        cell?.detailTextLabel?.text = coffee.stars
        cell?.imageView?.image = coffee.photo
        cell?.textLabel?.text = coffee.name
        
        return cell!
    }
    
    
}

