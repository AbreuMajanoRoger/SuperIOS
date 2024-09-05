//
//  SuperHeroViewCell.swift
//  SuperIOS
//
//  Created by Mañanas on 4/9/24.
//

import UIKit

class SuperHeroViewCell: UITableViewCell {

    @IBOutlet weak var avatarImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    func render(superHero: SuperHero) {
           nameLabel.text = superHero.name
           avatarImageView.loadFrom(url: superHero.image.url)
        avatarImageView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        avatarImageView.layer.shadowOffset = CGSize(width: 6.0, height: 6.0)
        avatarImageView.layer.shadowOpacity = 1.0
        avatarImageView.layer.shadowRadius = 2.0
        avatarImageView.layer.masksToBounds = false
        avatarImageView.layer.cornerRadius = 4.0
       }
    
    
    override func awakeFromNib() {
            super.awakeFromNib()
        
        }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)

            
        }
    
    
    
    
}
