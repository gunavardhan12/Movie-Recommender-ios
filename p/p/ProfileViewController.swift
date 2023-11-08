//
//  ProfileViewController.swift
//  p
//
//  Created by Nithin on 01/11/23.
//

import UIKit
var profileusername = String()
var moviesTowatch: [String] = []
class ProfileViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
        

    @IBOutlet weak var tab: UITableView!
    @IBOutlet weak var name: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = profileusername
        tab.dataSource = self
        tab.delegate = self
        // Do any additional setup after loading the view.
            }
    var movies: [String] = moviesTowatch
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesTowatch.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reusecell", for: indexPath)
        cell.textLabel?.text = movies[indexPath.row]
        return cell
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
