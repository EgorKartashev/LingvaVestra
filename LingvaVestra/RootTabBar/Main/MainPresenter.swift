//
//  MainPresenter.swift
//  LingvaVestra
//
//  Created by Sergey Pavlov on 09.12.2023.
//

import Foundation

protocol MainPresenterProtocol: BasePresenterProtocol {
    /// Called when the logout button is tapped.
    func logoutDidTap()
}

final class MainPresenter {
    
    // MARK: - Properties
    
    weak var view: MainViewProtocol?
    
    var router: MainRouterProtocol?

}

// MARK: - Presenter Protocol 

extension MainPresenter: MainPresenterProtocol {
    
    func viewDidLoad() {
        // Logic after loading view, get data from network
        view?.didReceiveData()
    }
    
    func logoutDidTap() {
        router?.routToAuth()
    }
}
