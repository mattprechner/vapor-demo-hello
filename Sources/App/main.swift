import Vapor

let drop = Droplet()

drop.get("/") { request in
    return "Hello World!"
}

drop.run()
