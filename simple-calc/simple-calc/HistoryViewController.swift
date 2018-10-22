//
//  HistoryViewController.swift
//  simple-calc
//
//  Created by Wynston Hsu on 10/20/18.
//  Copyright © 2018 Wynston Hsu. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {
    var historyArr: [String] = []

    @IBOutlet weak var historyTitle: UILabel!
    @IBOutlet weak var historyScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(historyArr)
        var yAxis = 60
//        var prevLabel: UILabel
        for eq in historyArr.reversed() {
            let line = UILabel()
//            line.translatesAutoresizingMaskIntoConstraints = false
//            line.topAnchor.constraint(equalTo: historyTitle.bottomAnchor, constant: 8).isActive = true
            line.frame = CGRect(x: 0, y: yAxis, width: Int(historyScrollView.frame.width), height: 60)
            line.text = eq
            line.textAlignment = NSTextAlignment.center
            line.textColor = UIColor.white
            line.backgroundColor = UIColor(displayP3Red: 65.0, green: 58.0, blue: 104.0, alpha: 0.08)
            self.historyScrollView.addSubview(line)
//            prevLabel = line
            yAxis += 63
        }
        
        // Do any additional setup after loading the view.
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
