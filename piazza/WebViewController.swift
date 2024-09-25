//
//  WebViewController.swift
//  piazza
//
//  Contributors:
//    kellsaro@gmail.com on 25/9/24.
//

import Turbo
import UIKit

class WebViewController: VisitableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configureDismissButton()
    }

    private func configureDismissButton() {
        if presentingViewController != nil {
            navigationItem.rightBarButtonItem = UIBarButtonItem(
                barButtonSystemItem: .close,
                target: self,
                action: #selector(dismissModal)
            )
        }
    }

    @objc func dismissModal() {
        dismiss(animated: true)
    }

    override func visitableDidRender() {
        navigationItem.title = visitableView.webView?.title
    }

}
