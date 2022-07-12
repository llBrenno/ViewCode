//
//  View.swift
//  ViewCode
//
//  Created by Usemobile PT000039 on 14/06/22.
//

import UIKit

class ScrollView: UIView {
    //MARK: Properties
    let customScroll: UIScrollView = {
        let scroll = UIScrollView()
        scroll.translatesAutoresizingMaskIntoConstraints = false
        return scroll
    }()
    
    let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let labelTitle: UILabel = {
        let label = UILabel()
        label.text = "Lançamento do primeiro iphone"
        label.font = .systemFont(ofSize: 25)
        label.numberOfLines = 0
        label.textColor = .black
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let labelText: UILabel = {
        let label = UILabel()
        label.text = "Símbolo dos smartphones, a Apple lançava há 15 anos seu primeiro iPhone. O anúncio oficial do produto aconteceu em 9 de janeiro de 2007, mas o lançamento no mercado dos Estados Unidos veio mais tarde, em 29 de junho daquele ano. \nNo Brasil, o primeiro a chegar foi o da segunda versão, o iPhone 3G, em 2008. Hoje, um total de 33 séries de iPhones já chegaram às mãos dos consumidores — os mais recentes deles (os iPhones 13, 13 mini, 13 Pro e 13 Pro Max) foram lançados em 2021.\n“Hoje, a Apple vai reinventar o telefone”, disse Steve Jobs, cofundador da empresa, durante a apresentação do iPhone. Diante de uma plateia entusiasmada, ele descreveu o aparelho, em um primeiro momento, como uma junção de iPod, telefone e dispositivo de comunicação via Internet.\nComparando o iPhone a outros smartphones que estavam no mercado no momento — BlackBerry, Moto Q, Nokia 62 e Palm Treo —, Jobs deu ênfase à interface do novo aparelho, que, diferentemente dos demais, não possuía teclado de botões. “O que nós queremos fazer é criar um produto que vai dar um salto, que seja muito mais inteligente do que qualquer outro aparelho móvel, e super fácil de usar”, exaltou.\n Além do pioneirismo no nicho, um dos fatores que sustentaram a relevância da marca ao longo dos anos foi a criação não apenas de novos produtos, mas de todo um ecossistema digital."
        label.font = .systemFont(ofSize: 20)
        label.numberOfLines = 0
        label.textColor = .black
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: Overrides
    override init(frame: CGRect) {
        super.init(frame: frame)
        settingConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Methods
    func settingConstraints() {
        let safeArea = safeAreaLayoutGuide
        
        backgroundColor = .white
        addSubview(customScroll)
        NSLayoutConstraint.activate([
            customScroll.topAnchor.constraint(equalTo: safeArea.topAnchor),
            customScroll.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor),
            customScroll.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            customScroll.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor),
        ])
        
        customScroll.addSubview(contentView)
        NSLayoutConstraint.activate([
            contentView.centerXAnchor.constraint(equalTo: customScroll.centerXAnchor),
            contentView.leadingAnchor.constraint(equalTo: customScroll.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: customScroll.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: customScroll.bottomAnchor),
            contentView.topAnchor.constraint(equalTo: customScroll.topAnchor),
        ])
        
        contentView.addSubview(labelTitle)
        NSLayoutConstraint.activate([
            labelTitle.widthAnchor.constraint(equalToConstant: 200),
            labelTitle.heightAnchor.constraint(equalToConstant: 100),
            labelTitle.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            labelTitle.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16)
        ])
        
        contentView.addSubview(labelText)
        NSLayoutConstraint.activate([
            labelText.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            labelText.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            labelText.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            labelText.topAnchor.constraint(equalTo: labelTitle.bottomAnchor, constant: 20),
            labelText.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
        ])
    }
}
