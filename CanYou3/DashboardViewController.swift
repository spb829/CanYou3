//
//  DashboardViewController.swift
//  CanYou3
//
//  Created by Macbook Pro on 2017. 9. 11..
//  Copyright © 2017년 Eric.Park. All rights reserved.
//

import UIKit

class DashboardViewController: BaseBackgroundViewController {
    
    // Present SettingTableView with Custom animation
    @IBAction func settingButtonTapped(_ sender: UIButton) {
        // push view controller but animate modally
        let vc = viewController(forStoryboardName: StoryboardName.settings)
        let transition = AnimationController.popUpTransition
        self.openWith(transition: transition, viewController: vc)
    }
}

// MARK: - Hide NavigationBar only for this ViewController
extension DashboardViewController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let navigationController = self.navigationController {
            // Hide the navigation bar on the this view controller
            self.navigationController.setNavigationBarHidden(true, animated: animated)
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        if let navigationController = self.navigationController {
            // Show the navigation bar on other view controllers
            self.navigationController.setNavigationBarHidden(false, animated: animated)
        }
    }
}
