//
//  ViewModel.swift
//  MVVM
//
//  Created by Euijae Hong on 2018. 8. 23..
//  Copyright © 2018년 JAEJIN. All rights reserved.
//

import Foundation
import RJExtension

class TDLCardViewModel {
    
    typealias Listener = (TDLCard) -> Void
    
    var listener : Listener?
    
    var toDoListText : String?
    var markColor : UIColor?
    
    var tdlCard : TDLCard {
        
        didSet {
            
            listener?(tdlCard)
            
        }
        
    }
    
    init(tdlCard : TDLCard) {
        
        self.toDoListText = tdlCard.toDoListText
        self.markColor = tdlCard.markColor
        self.tdlCard = tdlCard
        
    }
    
    func bind(listener: Listener?) {
        self.listener = listener
    }
    
}
