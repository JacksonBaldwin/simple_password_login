//
//  main.swift
//  password
//
//  Created by Jackson Baldwin on 2/9/21.
//

import Foundation

var password = "0"
var passwordAttempts = 0
var str = 0
var unlocked = false

if (password == "0") {
    print("no password set, please set a password")
    if let answer = readLine() {
        password = answer
        print("password set")
    }
}
print("enter password")
if let answer = readLine() {
    if (answer != password) {
        passwordAttempts = passwordAttempts + 1
        print("password incorrect, you have \(3 - passwordAttempts) attempts left")
        if let answer = readLine() {
            if (answer != password) {
                passwordAttempts = passwordAttempts + 1
                print("password incorrect, you have \(3 - passwordAttempts) attempts left")
                if let answer = readLine() {
                    if (answer != password) {
                        passwordAttempts = passwordAttempts + 1
                        print("password incorrect, you have \(3 - passwordAttempts) attempts left")
                        if (passwordAttempts == 3) {
                            print("you have been locked out")
                        }
                    } else {
                        print("unlocked")
                                }
                            }
                        }
                    }
            } else {
                print("unlocked")
            }
    } else {
        print("unlocked")
    }



