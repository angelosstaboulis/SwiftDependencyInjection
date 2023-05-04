//
//  main.swift
//  SwiftDepependencyInjection
//
//  Created by Angelos Staboulis on 5/5/23.
//

import Foundation


protocol Engine {
    func start()
}
//Initializer injection
class VehicleInitialize {
    private let engine: Engine
    
    init(engine: Engine) {
        self.engine = engine
    }
}
//Property injection
class VehiclePropety {
    var  engine: Engine?
}
//method Injection
class VehicleMethod {
    func start(engine: Engine) {
        engine.start()
    }
}
