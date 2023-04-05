//
//  UserViewController.swift
//  Login App
//
//  Created by Юлия Ястребова on 05.04.2023.
//

import UIKit

final class UserViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var jobTitleLabel: UILabel!
    @IBOutlet var userImage: UIImageView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.attributedText = makeItalic(string: user.person.name)
        surnameLabel.attributedText = makeItalic(string: user.person.surname)
        cityLabel.attributedText = makeItalic(string: user.person.city)
        companyLabel.attributedText = makeItalic(string: user.person.companyName)
        jobTitleLabel.attributedText = makeItalic(string: user.person.jobTitle)
        
        userImage.layer.cornerRadius = userImage.frame.size.width / 2
        userImage.clipsToBounds = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else { return }
        bioVC.user = user
    }
}

extension UserViewController {
    func makeItalic(string: String) -> NSAttributedString {
        let italicAttribute = [NSAttributedString.Key.font: UIFont.italicSystemFont(ofSize: 15)]
        
        let attributedString = NSMutableAttributedString(string: string)
        attributedString.addAttributes(italicAttribute, range: NSRange(location: 0, length: string.count))
        
        return attributedString
    }
}


