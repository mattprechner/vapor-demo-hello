import Foundation
import Vapor

let drop = Droplet()

drop.get("/") { request in

	return try JSON(node: [
        "version": "1.0"
    ])
}

drop.run()
