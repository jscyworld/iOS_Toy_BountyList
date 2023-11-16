//
//  DetailViewController.swift
//  BountyList
//
//  Created by JONG SOO KIM on 11/16/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    
    var name: String?
    var bounty: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        if let name = self.name, let bounty = self.bounty {
            imgView.image = UIImage(named: "\(name).jpg")
            nameLabel.text = name
            bountyLabel.text = "\(bounty)"
        }
    }

    @IBAction func btnCloseAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
