//
//  Api.swift
//  piazza
//
//  Contributors:
//    kellsaro@gmail.com on 25/9/24.

import Foundation

struct Api {
    #if DEBUG
        static let rootURL = URL(string: "http://localhost:3000/")!
    #else
        static let rootURL = URL(
            string: "https://piazza-web-g52r.onrender.com/")!
    #endif

    struct Path {
        static let login = Api.rootURL.appendingPathComponent("login")
        static let profile = Api.rootURL.appendingPathComponent("profile/edit")
    }
}
