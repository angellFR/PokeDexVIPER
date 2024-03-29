//
//  DetailPokemonPresenter.swift
//  PokedexNew
//
//  Created Administrator on 13/06/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class DetailPokemonPresenter {
    //MARK: - Protocol Properties
    weak private var view: DetailPokemonViewProtocol?
    var interactor: DetailPokemonInteractorProtocol?
    private let router: DetailPokemonWireframeProtocol

    //MARK: - Life Cycle
    init(interface: DetailPokemonViewProtocol, interactor: DetailPokemonInteractorProtocol?, router: DetailPokemonWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }
}

//MARK: - Presenter Methods
extension DetailPokemonPresenter: DetailPokemonPresenterProtocol {
    func detailPokemon(pokemonSeleccionado: Pokemon) {
        view?.detailPokemon(pokemonSeleccionado: pokemonSeleccionado)
    }
    

    
    
}

//MARK: - Private functions
extension DetailPokemonPresenter {
    
}
