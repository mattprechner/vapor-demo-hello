import Foundation
import Vapor

let drop = Droplet()

drop.get("/") { request in

	let now = Date()
    let dayTimeFormatter = DateFormatter()
    dayTimeFormatter.dateFormat = "E, d MMM yyyy"
    let dayString = dayTimeFormatter.string(from: now)
                
    dayTimeFormatter.dateFormat = "HH:mm:ss Z"
    let timeString = dayTimeFormatter.string(from: now)

	return try JSON(node: [
        "date": dayString,
        "time": timeString,
        "message": "Hello, World!"
    ])
}

drop.run()
