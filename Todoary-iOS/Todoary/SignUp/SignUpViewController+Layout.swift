//
//  SignUpViewController+Layout.swift
//  Todoary
//
//  Created by 박지윤 on 2022/07/01.
//

import UIKit

extension SignUpViewController {
    
    func setUpView(){
        
        self.view.addSubview(navigationView)

        self.view.addSubview(idTitle)
        self.view.addSubview(idTextField)
        self.view.addSubview(idBorderLine)
        self.view.addSubview(idCanUseLabel)

        self.view.addSubview(idCertificationButton)

        self.view.addSubview(certificationTitle)
        self.view.addSubview(certificationTextField)
        self.view.addSubview(certificationBorderLine)
        self.view.addSubview(certificationOkButton)
        
        self.view.addSubview(pwTitle)
        self.view.addSubview(pwTextField)
        self.view.addSubview(pwBorderLine)
        self.view.addSubview(pwInvalidLabel)
        
        self.view.addSubview(pwCertificationTextField)
        self.view.addSubview(pwCertificationBorderLine)
        self.view.addSubview(pwIncorrectLabel)
        
        self.view.addSubview(nameTitle)
        self.view.addSubview(nameTextField)
        self.view.addSubview(nameBorderLine)
        
        self.view.addSubview(nickNameTitle)
        self.view.addSubview(nickNameTextField)
        self.view.addSubview(nickNameBorderLine)
        
        self.view.addSubview(nextButton)
    
    }
    
    func setUpConstraint(){
        
        navigationView.snp.makeConstraints{ make in
            make.top.equalToSuperview()
            make.leading.trailing.equalToSuperview()
        }

        //id
        idTitle.snp.makeConstraints{ make in
            make.top.equalTo(navigationView.snp.bottom).offset(72)
            make.leading.equalToSuperview().offset(38)
        }

        idTextField.snp.makeConstraints{ make in
            make.top.equalTo(idTitle.snp.bottom).offset(16)
            make.width.equalTo(261)
            make.height.equalTo(20)
            make.leading.equalTo(idTitle)
        }
        
        idBorderLine.snp.makeConstraints{ make in
            make.height.equalTo(1)
            make.leading.equalTo(idTextField)
            make.trailing.equalToSuperview().offset(-38)
            make.bottom.equalTo(idTextField).offset(2)
        }
        
        idCanUseLabel.snp.makeConstraints{ make in
            make.height.equalTo(20)
            make.top.equalTo(idBorderLine.snp.bottom).offset(6)
            make.leading.equalTo(idTitle)
        }
        
        idCertificationButton.snp.makeConstraints{ make in
            make.width.equalTo(65)
            make.height.equalTo(22)
            make.trailing.equalToSuperview().offset(-40)
            make.centerY.equalTo(idTitle).offset(-2)
        }
        
        //certification
        certificationTitle.snp.makeConstraints{ make in
            make.top.equalTo(idCanUseLabel.snp.bottom).offset(10)
            make.leading.equalTo(idTitle)
        }

        certificationTextField.snp.makeConstraints{ make in
            make.top.equalTo(certificationTitle.snp.bottom).offset(16)
            make.height.equalTo(20)
            make.leading.equalTo(idTitle)
            make.width.equalTo(idTextField)
        }
        
        certificationBorderLine.snp.makeConstraints{ make in
            make.height.equalTo(1)
            make.leading.trailing.equalTo(idBorderLine)
            make.bottom.equalTo(certificationTextField.snp.bottom).offset(2)
        }
        
        certificationOkButton.snp.makeConstraints{ make in
            make.width.equalTo(65)
            make.height.equalTo(22)
            make.trailing.equalToSuperview().offset(-40)
            make.top.equalTo(idBorderLine.snp.bottom).offset(35)
        }
        
        //password
        pwTitle.snp.makeConstraints{ make in
            make.top.equalTo(certificationBorderLine).offset(55)
            make.leading.equalTo(idTitle)
        }
        
        pwTextField.snp.makeConstraints{ make in
            make.top.equalTo(pwTitle.snp.bottom).offset(17)
            make.leading.equalTo(idTitle)
            make.height.equalTo(20)
            make.width.equalTo(idTextField)
        }
        
        pwBorderLine.snp.makeConstraints{ make in
            make.height.equalTo(1)
            make.leading.trailing.equalTo(idBorderLine)
            make.bottom.equalTo(pwTextField.snp.bottom).offset(2)
        }
        
        pwInvalidLabel.snp.makeConstraints{ make in
            make.top.equalTo(pwBorderLine.snp.bottom).offset(7)
            make.leading.equalTo(idTextField.snp.leading)
        }
        
        pwCertificationTextField.snp.makeConstraints{ make in
            make.top.equalTo(pwBorderLine.snp.bottom).offset(41)
            make.leading.equalTo(idTitle)
            make.height.equalTo(20)
            make.width.equalTo(idTextField)
        }
        
        pwCertificationBorderLine.snp.makeConstraints{ make in
            make.height.equalTo(1)
            make.leading.trailing.equalTo(idBorderLine)
            make.bottom.equalTo(pwCertificationTextField.snp.bottom).offset(2)
        }
        
        pwIncorrectLabel.snp.makeConstraints{ make in
            make.top.equalTo(pwCertificationBorderLine.snp.bottom).offset(7)
            make.leading.equalTo(idTextField.snp.leading)
        }
        
        //name
        nameTitle.snp.makeConstraints{ make in
            make.top.equalTo(pwIncorrectLabel).offset(45)
            make.leading.equalTo(idTitle)
        }
        
        nameTextField.snp.makeConstraints{ make in
            make.top.equalTo(nameTitle.snp.bottom).offset(16)
            make.height.equalTo(20)
            make.leading.trailing.equalTo(idBorderLine)
        }
        
        nameBorderLine.snp.makeConstraints{ make in
            make.width.equalTo(certificationBorderLine)
            make.height.equalTo(1)
            make.leading.equalTo(idTextField.snp.leading)
            make.bottom.equalTo(nameTextField.snp.bottom).offset(2)
        }
        
        //nickname
        nickNameTitle.snp.makeConstraints{ make in
            make.top.equalTo(nameBorderLine).offset(25)
            make.leading.equalTo(idTitle)
        }
        
        nickNameTextField.snp.makeConstraints{ make in
            make.top.equalTo(nickNameTitle.snp.bottom).offset(16)
            make.leading.equalTo(idTitle)
            make.height.equalTo(20)
            make.width.equalTo(idTextField)
        }
        
        nickNameBorderLine.snp.makeConstraints{ make in
            make.leading.trailing.equalTo(idBorderLine)
            make.height.equalTo(1)
            make.bottom.equalTo(nickNameTextField.snp.bottom).offset(2)
        }
        
        //button
        nextButton.snp.makeConstraints{ make in
            make.top.equalTo(nickNameBorderLine.snp.bottom).offset(45)
            make.bottom.equalToSuperview().offset(-47)
            make.leading.equalToSuperview().offset(26)
            make.trailing.equalToSuperview().offset(-26)
            make.height.equalTo(52)
        }
    }
}
