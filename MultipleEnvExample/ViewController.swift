//
//  ViewController.swift
//  MultipleEnvExample
//
//  Created by Romain Pouclet on 2017-06-12.
//  Copyright © 2017 Buddybuild. All rights reserved.
//

import UIKit

func prettyText(label: String, value: String) -> NSAttributedString {
    let text = NSMutableAttributedString()
    text.append(NSAttributedString(string: label, attributes: [NSFontAttributeName: UIFont.boldSystemFont(ofSize: 14)]))
    text.append(NSAttributedString(string: value, attributes: [NSFontAttributeName: UIFont.italicSystemFont(ofSize: 14)]))

    return text
}

class ViewController: UIViewController {
    private let config = Config()

    @IBOutlet weak var apiKeyLabel: UILabel!
    @IBOutlet weak var serverLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        serverLabel.attributedText = prettyText(label: "Server Endpoint:", value: config.serverEndpoint.absoluteString)
        apiKeyLabel.attributedText = prettyText(label: "Stripe API Key:", value: config.stripeKey)
    }


}

