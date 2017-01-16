//
//  User.swift
//  BANGBANG
//
//  Created by Zhen Zhang on 2017-01-14.
//  Copyright © 2017 Zhang Zhen. All rights reserved.
//

import Foundation

class User {
    
    let uID: String
    let uTel: String
    let uNick: String
    let uCreateTime: String
    let uSex: String
    let uExp: String
    let uAvatarUrl: String
    let uTotal: String
    let uMoney: String
    let uCredit1: String
    let uCredit2: String
    let uCredit3: String
    let ufoNum: String
    let uFaNum: String
    let uBankName: String
    let uCardNum: String
    let uHolderName: String
    let uHelpNum: String
    let uPubNum: String
    let uAlipayName: String
    let uAlipay: String
    let uBg: String
    let uToken: String
    
    init(uID: String, uTel: String, uNick: String, uCreateTime: String, uSex: String, uExp: String, uAvatarUrl: String, uTotal: String, uMoney: String, uCredit1: String, uCredit2: String, uCredit3: String, ufoNum: String, uFaNum: String, uBankName: String, uCardNum: String, uHolderName: String, uHelpNum: String, uPubNum: String, uAlipayName: String, uAlipay: String, uBg: String, uToken: String) {
        self.uID = uID
        self.uTel = uTel
        self.uNick = uNick
        self.uCreateTime = uCreateTime
        self.uSex = uSex
        self.uExp = uExp
        self.uAvatarUrl = uAvatarUrl
        self.uTotal = uTotal
        self.uMoney = uMoney
        self.uCredit1 = uCredit1
        self.uCredit2 = uCredit2
        self.uCredit3 = uCredit3
        self.ufoNum = ufoNum
        self.uFaNum = uFaNum
        self.uBankName = uBankName
        self.uCardNum = uCardNum
        self.uHolderName = uHolderName
        self.uHelpNum = uHelpNum
        self.uPubNum = uPubNum
        self.uAlipayName = uAlipayName
        self.uAlipay = uAlipay
        self.uBg = uBg
        self.uToken = uToken
    }
    
}
