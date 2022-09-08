//
//  TabBarViewController.swift
//  SpotifyDemo
//
//  Created by Artem Paliutin on 08/09/2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vcHome = HomeViewController()
        let vcSearch = SearchViewController()
        let vcLibrary = LibraryViewController()
        
        vcHome.title = "Browse"
        vcSearch.title = "Search"
        vcLibrary.title = "Library"
        
        vcHome.navigationItem.largeTitleDisplayMode = .always
        vcSearch.navigationItem.largeTitleDisplayMode = .always
        vcLibrary.navigationItem.largeTitleDisplayMode = .always
        
        let navHome = UINavigationController(rootViewController: vcHome)
        let navSearch = UINavigationController(rootViewController: vcSearch)
        let navLibrary = UINavigationController(rootViewController: vcLibrary)
        
        navHome.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 0)
        navSearch.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass.circle"), tag: 1)
        navLibrary.tabBarItem = UITabBarItem(title: "Library", image: UIImage(systemName: "music.note.list"), tag: 2)
        
        navHome.navigationBar.prefersLargeTitles = true
        navSearch.navigationBar.prefersLargeTitles = true
        navLibrary.navigationBar.prefersLargeTitles = true
        
        setViewControllers([navHome, navSearch, navLibrary], animated: false)
    }
    
}
