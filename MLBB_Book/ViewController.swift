//
//  ViewController.swift
//  MLBB_Book
//
//  Created by Alper Canımoğlu on 2.11.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var myHeros = [Hero]()
    var chosenHero : Hero?
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        // Hero Objects
        
        let eudora = Hero(heroName: "Eudora", heroLane: "Mid Lane", heroImage: UIImage(named: "eudora.jpg")!)
        
        let gusion = Hero(heroName: "Gusion", heroLane: "Jungle", heroImage: UIImage(named: "gusion.jpg")!)
        
        let estes = Hero(heroName: "Estes", heroLane: "Xp Lane (Support)", heroImage: UIImage(named: "estes.jpg")!)
        
        let lesley = Hero(heroName: "Lesley", heroLane: "Gold Lane (Marksman)", heroImage: UIImage(named: "lesley.jpg")!)
        
        let nana = Hero(heroName: "Nana", heroLane: "Mid Lane", heroImage: UIImage(named: "nana.jpg")!)
        
        let wanvan = Hero(heroName: "Wanvan", heroLane: "Gold Lane (Marksman)", heroImage: UIImage(named: "wanwan.jpg")!)
        
        let tigreal = Hero(heroName: "Tigreal", heroLane: "Gold Lane (Tank)", heroImage: UIImage(named: "tigreal.jpg")!)
        
        myHeros.append(eudora)
        myHeros.append(gusion)
        myHeros.append(estes)
        myHeros.append(lesley)
        myHeros.append(nana)
        myHeros.append(wanvan)
        myHeros.append(tigreal)

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = myHeros[indexPath.row].heroName
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myHeros.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenHero = myHeros[indexPath.row]
        self.performSegue(withIdentifier: "SecondVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SecondVC"{
            let destinationVC = segue.destination as! SecondVC
            destinationVC.selectedHero = chosenHero
        }
    }


}

