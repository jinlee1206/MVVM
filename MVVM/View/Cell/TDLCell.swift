//
//  TDLCell.swift
//  MVVM
//
//  Created by Euijae Hong on 2018. 8. 23..
//  Copyright © 2018년 JAEJIN. All rights reserved.
//

import Foundation
import RJExtension


class TDLCell : BasicTableViewCell {
    
    var todoListCardViewModel : TDLCardViewModel! {
        
        didSet {
            
            self.todoListLabel.text = todoListCardViewModel.toDoListText
            self.markView.backgroundColor = todoListCardViewModel.markColor
            
            
        }
    }
    
    fileprivate let cardView = UIView()
    fileprivate let markView = UIView()
    fileprivate let todoListLabel = UILabel()
    
    override func initial() {
        super.initial()
        
        backgroundColor = UIColor(red: 242, green: 242, blue: 242)
        setupViews()
    }
    
}

extension TDLCell {
    
    private func setupViews() {
        
        // attribute
        todoListLabel.textAlignment = .center
        cardView.backgroundColor = .white
        markView.backgroundColor = .green
        
        // autolayout
        contentView.addSubview(cardView)
        cardView.addSubview(todoListLabel)
        cardView.addSubview(markView)
        
        

        
        cardView.anchor(top: contentView.topAnchor, leading: contentView.leadingAnchor, bottom: contentView.bottomAnchor, trailing: contentView.trailingAnchor,padding:.init(top: 24, left: 24, bottom: 24, right: 24))
        todoListLabel.anchor(top: cardView.topAnchor, leading: cardView.leadingAnchor, bottom: cardView.bottomAnchor, trailing: cardView.trailingAnchor)
        markView.anchor(top: cardView.topAnchor, leading: cardView.leadingAnchor, bottom: cardView.bottomAnchor
            , trailing: nil,size: .init(width:24, height: 0))
  
    }
    
}
