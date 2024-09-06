//
//  DetailViewController.swift
//  SuperIOS
//
//  Created by Mañanas on 5/9/24.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var avatarImageView: UIImageView!
    
    @IBOutlet weak var realNameLabel: UILabel!
    
    @IBOutlet weak var publisherLabel: UILabel!
    
    @IBOutlet weak var placeOfBirthLabel: UILabel!
    
    
    var superHero: SuperHero? = nil
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let superHero = superHero {
                   self.navigationItem.title = superHero.name
                   avatarImageView.loadFrom(url: superHero.image.url)
            
          /*  publisherLabel.text = superHero.biography.publisher
            realNameLabel.text = superHero.biography.realName
            placeOfBirthLabel.text = superHero.biography.placeOfBirth*/
    
               }
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


/* intelligence
  strength
  speed:
 durability:
  power:
  combat: 
 
 
 if let superHero = superHero {
            self.navigationItem.title = superHero.name
            avatarImageView.loadFrom(url: superHero.image.url)
     
     publisherLabel.text = superHero.biography.publisher
     realNameLabel.text = superHero.biography.realName
     placeOfBirthLabel.text = superHero.biography.placeOfBirth    */
