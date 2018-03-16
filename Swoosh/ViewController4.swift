//
//  ViewController4.swift
//  Swoosh
//
//  Created by PSP Mac on 3/14/18.
//  Copyright © 2018 Zorot. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    // MARK: Actions
    @IBAction func btnBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

    @IBAction func btnBackStartClick(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "sbd1")
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
