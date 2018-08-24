//
//  ViewController.swift
//  MVVM
//
//  Created by Euijae Hong on 2018. 8. 23..
//  Copyright © 2018년 JAEJIN. All rights reserved.
//

import UIKit
import RJExtension

class TDLViewController: UIViewController {
    
    var todoListCardModels = [TDLCard]()
    var data = ["밥먹기","공부하기","영화보기","티비보기"]
    var colors = [UIColor.red,UIColor.yellow,UIColor.green,UIColor.brown]
    
    var toDoListCardViewModels = [TDLCardViewModel]() {
        
        didSet {
            
        }
        
    }
    
    let tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupNavi()
        setupViews()
        createData()
        
    }



}


//MARK:- Setup Views & Navigation
extension TDLViewController {
    
    private func setupNavi() {
        
        let rightBarButton = UIBarButtonItem(title:"업데이트", style: .done, target: self, action: #selector(fetchData))
        self.navigationItem.rightBarButtonItem = rightBarButton
    }
    
    private func setupViews() {
        
        view.addSubview(tableView)
        tableView.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor)
        
        setupTableView()
    }
    
    private func setupTableView() {
        
        self.tableView.registerCell(ofType: TDLCell.self)
        self.tableView.backgroundColor = .white
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
    }
    
}


//MARK:- UITableViewDelegate & UITableViewDataSource
extension TDLViewController : UITableViewDelegate , UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return toDoListCardViewModels.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueCell(ofType: TDLCell.self, indexPath: indexPath)
        cell.todoListCardViewModel = self.toDoListCardViewModels[indexPath.row]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
}


//MARK:- Private Func
extension TDLViewController {
    
    fileprivate func createData() {
        
        for i in 0..<data.count {
            
            let todoListCardModel = TDLCard(toDoListText:self.data[i], markColor: self.colors[i])
            self.todoListCardModels.append(todoListCardModel)
            
        }
        
    }
    
    @objc fileprivate func fetchData() {
        
        self.toDoListCardViewModels = todoListCardModels.map({ return TDLCardViewModel(tdlCard: $0) })
        self.tableView.reloadData()
        
    }
    
}


