//
//  rocketListViewController.swift
//  Foguete
//
//  Created by VeeM1 on 16/10/21.
//

import UIKit

class RocketListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension RocketListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "rocketCellIdentifier")!
        
        
        var imageRocket = cell.viewWithTag(100) as! UIImageView
        imageRocket.image = UIImage (named: "foguete")
        
        return cell
    
    }
    
    
}
