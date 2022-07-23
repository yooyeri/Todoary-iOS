//
//  CategoryViewController+Layout.swift
//  Todoary
//
//  Created by 박지윤 on 2022/07/23.
//

import Foundation

extension CategoryViewController{
    
    func setUpView(){
        self.view.addSubview(navigationView)
//        self.view.addSubview(collectionView)
        self.view.addSubview(tableView)
        
        navigationView.addSubview(trashButton)
    }
    
    func setUpConstraint(){
        
        navigationView.snp.makeConstraints{ make in
            make.top.leading.trailing.equalToSuperview()
        }
        
        trashButton.snp.makeConstraints{ make in
            make.width.equalTo(61)
            make.height.equalTo(55)
            make.top.bottom.equalToSuperview().offset(-2)
            make.trailing.equalToSuperview().offset(-19)
        }
        
//        collectionView.snp.makeConstraints{ make in
//            
//        }
        
        tableView.snp.makeConstraints{ make in
            
        }
    }
}
