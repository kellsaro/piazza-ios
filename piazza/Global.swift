//
//  Global.swift
//  piazza
//
//  Contributors:
//    kellsaro@gmail.com on 25/9/24.

import Foundation
import Turbo

struct Global {
    static let pathConfiguration = PathConfiguration(
        sources: [
            .file(
                Bundle.main.url(
                    forResource: "path_configuration",
                    withExtension: "json"
                )!
            )
        ]
    )
}
