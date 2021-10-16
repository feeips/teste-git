//
//  ViewController.swift
//  Foguete
//
//  Created by Guilherme Vallone on 16/10/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var launchButton: UIButton!
    @IBOutlet weak var rocket: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeButtonColor(color: .black, state: .normal)
    }
    
    
    func changeButtonColor(color: UIColor, state: UIButton.State) {
        launchButton.setTitleColor(color, for: state)
    }
    
    @IBAction func launchButtonTouchUpInside(_ sender: Any) {
        print("Botão de launch foi clicado")
        changeButtonColor(color: .blue, state: .normal)
        UIView.animate(withDuration: 1.5) {
            self.rocket.frame.origin.y = -1000
        }
    }
}
