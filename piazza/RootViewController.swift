//
//  RootViewController.swift
//  Tab bar at the bottom of the screen
//
//  Contributors:
//    kellsaro@gmail.com on 25/9/24.

import UIKit

class RootViewController: UITabBarController {
    init() {
        super.init(nibName: nil, bundle: nil)
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }

    private func setUp() {
        var viewControllers = [UIViewController]()
        Self.tabs.forEach { tab in
            let vc = ViewControllerVendor.viewController(for: tab.url)
            viewControllers.append(RoutingController(rootViewController: vc))
        }
        self.viewControllers = viewControllers
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension RootViewController {
    static let tabs = [
        Tab(url: Api.rootURL, icon: "house.fill", titleKey: "tab.home"),
        Tab(url: Api.rootURL, icon: "bookmark.fill", titleKey: "tab.savedAds"),
        Tab(url: Api.rootURL, icon: "message.fill", titleKey: "tab.messages"),
        Tab(
            url: Api.rootURL, icon: "rectangle.stack.badge.person.crop.fill",
            titleKey: "tab.myAds"),
        Tab(url: Api.Path.profile, icon: "person.fill", titleKey: "tab.profile"),
    ]

    struct Tab {
        let url: URL
        let icon: String
        let titleKey: String
    }
}
