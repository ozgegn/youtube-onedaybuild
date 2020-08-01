//
//  DetailViewController.swift
//  youtube-onedaybuild
//
//  Created by L90025519MAC on 1.08.2020.
//  Copyright © 2020 Ozge Gundogdu. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var webView: WKWebView!
    
    @IBOutlet weak var textView: UITextView!
    
    var video: Video?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        titleLabel.text = ""
        dateLabel.text = ""
        textView.text = ""
        
        guard video != nil else {
            return
        }
        
        let embedUrl = Constants.YT_EMBED_URL + video!.videoId
        let url = URL(string: embedUrl)!
        let request = URLRequest(url: url)
        
        webView.load(request)
        
        titleLabel.text = video!.title
        
        let df = DateFormatter()
        df.dateFormat = "EEEE, MMM d, yyyy"
        self.dateLabel.text = df.string(from: video!.published)
        
        self.textView.text = video!.description
        
        
    }


}
