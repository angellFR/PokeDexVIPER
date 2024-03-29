//
//  DetailPokemonProtocols.swift
//  PokedexNew
//
//  Created Administrator on 13/06/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import Foundation

//MARK: Wireframe -
protocol DetailPokemonWireframeProtocol: AnyObject {

}
//MARK: Presenter -
protocol DetailPokemonPresenterProtocol: AnyObject {
    func detailPokemon(pokemonSeleccionado: Pokemon)
}

//MARK: Interactor -
protocol DetailPokemonInteractorProtocol: AnyObject {

  var presenter: DetailPokemonPresenterProtocol?  { get set }
}

//MARK: View -
protocol DetailPokemonViewProtocol: AnyObject {
    func detailPokemon(pokemonSeleccionado: Pokemon)
  var presenter: DetailPokemonPresenterProtocol?  { get set }

}
