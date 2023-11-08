//
//  HomeViewController.swift
//  p
//
//  Created by Nithin on 01/11/23.
//

import UIKit
import SafariServices
var name = String()
class HomeViewController: UIViewController,
                          UICollectionViewDelegate,UICollectionViewDataSource{
    var name1:[String] = ["Action","Comedy","Crime","Documentry","Thriller"]
    var genre:[String] = ["action","comedy","crime","documentry","thriller1"]
    override func viewDidLoad() {
        super.viewDidLoad()
        profileusername = name;
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var movieOrSeries: UISegmentedControl!
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return genre.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.mygenre.image = UIImage(named: genre[indexPath.row])
        let n = indexPath.row
        cell.lab.text =  name1[n]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if(movieOrSeries.selectedSegmentIndex == 1){
            let url = "https://www.imdb.com/search/title/?genres=\(name1[indexPath.row])&title_type=tv_series,mini_series"
            let vc = SFSafariViewController(url: URL(string: url)!)
            present(vc, animated: true)
        }
        else{
            let url = "https://m.imdb.com/search/title/?title_type=movie&genres=\(name1[indexPath.row])&explore=genres/"
            let vc = SFSafariViewController(url: URL(string: url)!)
            present(vc, animated: true)
        }
    }
        
    @IBAction func recommend(_ sender: Any) {
        var url1 = URL(string: "https://www.imdb.com/search/title/?count=100&title_type=feature,tv_series")
        let rc = SFSafariViewController(url: url1!)
        present(rc,animated:true)
    }
    @IBAction func search(_ sender: Any) {
        performSegue(withIdentifier: "searchscreen", sender: self)
    }
    @IBAction func personal(_ sender: Any) {
        performSegue(withIdentifier: "profile", sender: self)
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
