//
//  AutoLoginDataManager.swift
//  Todoary
//
//  Created by 박지윤 on 2022/07/22.
//

import Alamofire

class AutoLoginDataManager {
    func autologin(_ viewController : LoginViewController,
              _ parameter : AutoLoginInput) {
        
        //통신
        AF.request("https://todoary.com/auth/signin/auto",
                   method: .post, parameters: parameter,
                   encoder: JSONParameterEncoder.default, headers: nil)
            .validate()
            .responseDecodable(of: AutoLoginModel.self) {response in
            switch response.result {
            case .success(let result) :
                switch result.code {
                case 1000 : UserDefaults.standard.set(result.result?.token?.accessToken, forKey: "accessToken")
                    UserDefaults.standard.set(result.result?.token?.refreshToken, forKey: "refreshToken")
                    print(UserDefaults.standard.string(forKey: "refreshToken"))
                    print("자동로그인 성공")
                    if UserDefaults.standard.bool(forKey: "appPasswordCheck") == true {
                        let appPasswordViewController = AppPasswordViewController()
                        viewController.navigationController?.pushViewController(appPasswordViewController, animated: true)
                        viewController.navigationController?.isNavigationBarHidden = true
                    }else {
                        let homeViewController = HomeViewController()
                        viewController.navigationController?.pushViewController(homeViewController, animated: true)
                        viewController.navigationController?.isNavigationBarHidden = true
                    }
                case 4000 :
                    let alert = DataBaseErrorAlert()
                    viewController.present(alert, animated: true, completion: nil)
                default:
                    print(result.message)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
    
