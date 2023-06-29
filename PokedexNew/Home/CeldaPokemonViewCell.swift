//
//  PokemonTableViewCell.swift
//  PokedexNew
//
//  Created by Administrator on 13/06/23.
//
import Foundation
import UIKit

class celdaPokemonViewCell: UITableViewCell {
    
    
    private var imagenPokemon: UIImageView = {
        let imageView = UIImageView()
//        imageView.image = UIImage(named: "pokemon")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private var labelName: UILabel = {
        let label = UILabel()
        label.text = "Bulbasor"
        if #available(iOS 16.0, *) {
            label.font = .systemFont(ofSize: 25, weight: .black, width: .condensed)
        } else {
            // Fallback on earlier versions
        }
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private var labelNumberDefensa: UILabel = {
        let label = UILabel()
        label.text = "Defensa: 49"
        return label
    }()
    
    private var labelNumberAtaque: UILabel = {
        let label = UILabel()
        label.text = "Ataque: 45"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
        
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configViews()
      
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder: ) has not been implemented")
    }
    
    func configViews(){
        addSubview(imagenPokemon)
        addSubview(labelName)
        addSubview(labelNumberDefensa)
        addSubview(labelNumberAtaque)
        backgroundColor =  .white
        imagenPokemon.addAnchorsAndCenter(centerX: true, centerY: false, width: 100, height: 100, left: nil, top: 10, right: nil, bottom: nil)
        labelName.addAnchorsAndCenter(centerX: true, centerY: false, width: nil, height: nil, left: nil, top: 5, right: nil, bottom: nil, withAnchor: .top, relativeToView: imagenPokemon)
        labelNumberAtaque.addAnchorsAndSize(width: nil, height: nil, left: 10, top: 3, right: nil, bottom: 0, withAnchor: .top, relativeToView: labelName)
        labelNumberDefensa.addAnchorsAndSize(width: nil, height: nil, left: nil, top: 3, right: 10, bottom: 0, withAnchor: .top, relativeToView: labelName)
      

        
    }
    func configure(model: Pokemon){
        labelName.text = model.name
        labelNumberAtaque.text = "Ataque: \(model.attack.description)"
        labelNumberDefensa.text = "Defensa: \(model.defense.description)"
        
        if let urlString = model.imageUrl as? String {
            if let imagenURL = URL(string: urlString) {
                DispatchQueue.global().async {
                    guard let imagenData = try? Data(contentsOf: imagenURL) else{
                        return }
                    let image = UIImage(data: imagenData)
                    DispatchQueue.main.async {
                        self.imagenPokemon.image = image
                    }
                }
            }
        }
        
        
    }
}
