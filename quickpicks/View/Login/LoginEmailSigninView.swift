//
//  LoginEmailSigninView.swift
//  quickpicks
//
//  Created by Zhan Peng  Pan on 8/19/18.
//  Copyright © 2018 quickpicks. All rights reserved.
//

import Foundation
import UIKit

class LoginEmailSigninView : ViewContainer {
    let TEXTFIELD_PADDING : CGFloat = 30
    let TEXTFIELD_WIDTH_PERCENTAGE : CGFloat = 0.75
    let TEXTFIELD_HEIGHT : CGFloat = 45
    let emailTextField = LoginTextField(placeHolder: "Email")
    let passwordTextField = LoginTextField(placeHolder: "Password")
    let facebookSigninButton = UIButton()
    let signinButton = UIButton()
    
    override init() {
        super.init()
        
        include(emailTextField)
        include(passwordTextField)
        include(signinButton)
        include(facebookSigninButton)
        
        setupEmailField()
        setupPasswordField()
        setupSigninButton()
        setupFacebookSigninButton()
    }

    func setupFacebookSigninButton(){
        placeBelow(source: facebookSigninButton, target: signinButton, padding: TEXTFIELD_PADDING)
        centerHorizontally(facebookSigninButton)
        let fbLoginButtonString = NSAttributedString(string: "sign in with facebook instead", attributes: [NSAttributedStringKey.font : Fonts.CollegeBoyWithSize(size: 22), NSAttributedStringKey.foregroundColor : Colors.FBBlue, NSAttributedStringKey.kern : 1.5, NSAttributedStringKey.underlineStyle : 1, NSAttributedStringKey.underlineColor : Colors.FBBlue])
        facebookSigninButton.setAttributedTitle(fbLoginButtonString, for: .normal)
        facebookSigninButton.layer.shadowColor = Colors.FBBlue.cgColor
        facebookSigninButton.layer.shadowOpacity = 0.3
        facebookSigninButton.layer.shadowOffset = CGSize.zero
        facebookSigninButton.layer.shadowRadius = 2
    }
    
    func setupSigninButton(){
        bindWidth(signinButton, target: self, TEXTFIELD_WIDTH_PERCENTAGE)
        placeBelow(source: signinButton, target: passwordTextField, padding: TEXTFIELD_PADDING)
        centerHorizontally(signinButton)
        signinButton.backgroundColor = UIColor.black
        signinButton.layer.cornerRadius = 8.0
        let signupAttributedTitle =  NSAttributedString(string: "Sign in", attributes: [NSAttributedStringKey.font : Fonts.CollegeBoyWithSize(size: 20),NSAttributedStringKey.kern : 2.0, NSAttributedStringKey.foregroundColor : UIColor.white])
        signinButton.setAttributedTitle(signupAttributedTitle, for: .normal)
    }
    
    func setupEmailField(){
        bindWidth(emailTextField, target: self, TEXTFIELD_WIDTH_PERCENTAGE)
        emailTextField.heightAnchor.constraint(equalToConstant: TEXTFIELD_HEIGHT)
        emailTextField.textField.keyboardType = .emailAddress
        
        
        centerHorizontally(emailTextField)
        bindTop(emailTextField, target: self, TEXTFIELD_PADDING)
        emailTextField.setPlaceholder("email")
    }
    
    func setupPasswordField(){
        bindWidth(passwordTextField, target: self, TEXTFIELD_WIDTH_PERCENTAGE)
        passwordTextField.heightAnchor.constraint(equalToConstant: TEXTFIELD_HEIGHT)
        passwordTextField.textField.isSecureTextEntry = true
        centerHorizontally(passwordTextField)
        placeBelow(source: passwordTextField, target: emailTextField, padding: TEXTFIELD_PADDING)
        passwordTextField.setPlaceholder("password")
    }
    
    override func addTo(_ controller: UIViewController) {
        super.addTo(controller)
        
        self.signinButton.addTarget(controller, action: #selector(LoginEmailSignin.signin), for: .touchUpInside)
        self.facebookSigninButton.addTarget(controller, action: #selector(LoginEmailSignin.signinWithFacebook), for: .touchUpInside)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
