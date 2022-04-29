 //
//  ViewController.swift
//  QuotesGenerator
//
//  Created by 이동준 on 2022/04/29.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    let quotes = [
        Quote(content: "안녕하세요", name: "이동준"),
        Quote(content: "반갑습니다", name: "손승욱"),
        Quote(content: "뭐하세요", name: "최지예")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tagQuoteGeneraterButton(_ sender: Any) {
        let random = Int(arc4random_uniform(3))
        let quote = quotes[random]
        
        self.quoteLabel.text = quote.content
        self.nameLabel.text = quote.name
    }
    
}

