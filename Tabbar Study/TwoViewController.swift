//
//  TwoViewController.swift
//  Tabbar Study
//
//  Created by Guilherme de Assis dos Santos on 23/02/22.
//

import UIKit

class TwoViewController: UIViewController {
    
    var coordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func buttonAction(_ sender: UIButton) {
        coordinator?.goThree()
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
