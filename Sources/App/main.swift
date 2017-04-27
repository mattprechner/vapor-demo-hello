import Foundation
import Vapor

let drop = Droplet()

drop.get("/") { request in

	let date = Date()
    return "Hello World"
}

drop.run()
