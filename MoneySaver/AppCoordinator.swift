import UIKit
import SwiftUI
import Combine

final class AppCordinator {
    let rootNavigationController: UINavigationController
    
    private var cancellable = Set<AnyCancellable>()
    
    init(rootNavigationController: UINavigationController) {
        self.rootNavigationController = rootNavigationController
    }
    
    func start() {
        showLoadingScreen()
    }
    
    private func showLoadingScreen() {
        let viewModel = LoadingVCViewModel()
        let counterView = UIHostingController(rootView: LoadingView(viewModel: viewModel))
        
        rootNavigationController.pushViewController(counterView, animated: true)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.showNameScreen()
        }
    }
    
    private func showNameScreen() {
        let viewModel = RegisterNameVCViewModel()
        let nameView = UIHostingController(rootView: RegisterNameView())
               
        rootNavigationController.pushViewController(nameView, animated: true)
    }
}
