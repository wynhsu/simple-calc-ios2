//
//  HistoryViewController.swift
//  simple-calc
//
//  Created by Wynston Hsu on 10/20/18.
//  Copyright © 2018 Wynston Hsu. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {
    let historyArr = UserDefaults.standard.object(forKey: "historyArray") as! [String]

    @IBOutlet weak var historyTitle: UILabel!
    @IBOutlet weak var historyScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        renderHistory(width: Int(UIScreen.main.bounds.width))
        // Do any additional setup after loading the view.
    }
    
    private func renderHistory(width: Int) {
        var yAxis = 0
        var contRect = CGRect.zero
        for eq in historyArr.reversed() {
            let line = UILabel(frame: CGRect(x: 0, y: yAxis, width: width, height: 60))
            line.text = eq
            line.textAlignment = NSTextAlignment.center
            line.textColor = UIColor.white
            line.backgroundColor = UIColor(displayP3Red: 65.0, green: 58.0, blue: 104.0, alpha: 0.08)
            self.historyScrollView.addSubview(line)
            yAxis += 63
            contRect = contRect.union(line.frame)
        }
        historyScrollView.contentSize = contRect.size
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        for view in historyScrollView.subviews {
            view.removeFromSuperview()
        }
        renderHistory(width: Int(size.width))
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
