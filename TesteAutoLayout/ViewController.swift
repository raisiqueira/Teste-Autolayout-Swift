//
//  ViewController.swift
//  TesteAutoLayout
//
//  Created by Raí Siqueira on 03/11/2017.
//  Copyright © 2017 Raí Siqueira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let logoImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "logo"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    let descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Teste Autolayout"
        textView.font = UIFont.boldSystemFont(ofSize: 20)
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Add imageview to a subview
        view.addSubview(logoImageView)
        view.addSubview(descriptionTextView)

        layoutSetup()
    }

    private func layoutSetup() {
        logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
        logoImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        logoImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true

        descriptionTextView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 150).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

