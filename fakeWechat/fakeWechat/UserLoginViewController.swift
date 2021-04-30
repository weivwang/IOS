//
//  UserLogin.swift
//  fakeWechat
//
//  Created by 王威卫 on 2021/3/30.
//

import UIKit

class UserLoginViewController:UIViewController{
    var txtUser:UITextField!
    var txtPwd:UITextField!
    var btnLogin:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //获取屏幕尺寸
        let mainSize = UIScreen.main.bounds.size
        
        //登陆框背景
        let vLogin = UIView(frame: CGRect(x:30,y: 200,width: mainSize.width - 30,height: 250))
        vLogin.layer.borderWidth = 0.5
        vLogin.layer.borderColor = UIColor.lightGray.cgColor
        vLogin.backgroundColor = UIColor.white
        self.view.addSubview(vLogin)
        
        //用户名输入框
        txtUser = UITextField(frame:CGRect(x:30,y:30,width: vLogin.frame.size.width - 60,height: 44))
        txtUser.layer.cornerRadius = 5
        txtUser.layer.borderColor = UIColor.lightGray.cgColor
        txtUser.layer.borderWidth = 0.5
        txtUser.autocapitalizationType = .none
        txtUser.leftView = UIView(frame: CGRect(x:0,y:0,width: 44,height: 44))
        txtUser.leftViewMode = UITextField.ViewMode.always
        
        //用户输入框左侧图标
        let imgUser = UIImageView(frame: CGRect(x:11,y:11,width: 22,height: 22))
        imgUser.image = UIImage(named: "iconfont-user")
        txtUser.leftView!.addSubview(imgUser)
        vLogin.addSubview(txtUser)
        
        //密码输入框
        txtPwd = UITextField(frame: CGRect(x: 30, y: 90, width: vLogin.frame.size.width - 60, height: 44))
        txtPwd.layer.cornerRadius = 5
        txtPwd.layer.borderColor = UIColor.lightGray.cgColor
        txtPwd.layer.borderWidth = 0.5
        txtPwd.isSecureTextEntry = true
        txtPwd.leftView = UIView(frame: CGRect(x:0,y:0,width: 44,height: 44))
        txtPwd.leftViewMode = UITextField.ViewMode.always
        
        //密码输入框左侧标志
        let imgPwd = UIImageView(frame: CGRect(x:11,y:11,width: 22,height: 22))
        
        imgPwd.image = UIImage(named: "iconfont-password")
        txtPwd.leftView!.addSubview(imgPwd)
        vLogin.addSubview(txtPwd)
        
        //添加登陆按钮
        btnLogin = UIButton(frame: CGRect(x:mainSize.width/2 - 120/2,y: 150,width: 120,height: 50))
        btnLogin.setTitle("登录", for: .normal)
        btnLogin.backgroundColor = UIColor.gray
        vLogin.addSubview(btnLogin)
        
        btnLogin.addTarget(self, action: #selector(loginEvent), for: .touchUpInside)
    }
    @objc func loginEvent(){
        let usercode = txtUser.text!
        let password = txtPwd.text!
        txtUser.resignFirstResponder()
        txtPwd.resignFirstResponder()
        
        if(usercode == "www" && password == "1234")
        {
            let mainBoard:UIStoryboard! = UIStoryboard(name: "Main", bundle: nil)
            let VCMain = mainBoard!.instantiateViewController(withIdentifier: "vcMain")
            UIApplication.shared.windows[0].rootViewController = VCMain
            
        }
        else
        {
            let p = UIAlertController(title: "登录失败", message:"用户名或密码错误", preferredStyle: .alert)
            p.addAction(UIAlertAction(title: "确定", style: .default, handler: {
                (act:UIAlertAction) in self.txtPwd.text = ""
            }))
            present(p, animated: false, completion: nil)
        }
    }
}
