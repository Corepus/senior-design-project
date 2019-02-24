import MapKit

class LocationNode {
    var connections: [(Int, Int)]
    var coordinates: (Int, Int)
    
    init(coordinates: (Int, Int), connections: [(Int, Int)]) {
        self.coordinates = coordinates
        self.connections = connections
    }
    
    func getEdge(next: (Int, Int)) -> Int {
        return 0
    }
}

class LocationNodeApple {
    var location: CLLocationCoordinate2D
    var connections: [CLLocationCoordinate2D]
    
    init(location: CLLocationCoordinate2D, connections: [CLLocationCoordinate2D]) {
        self.location = location
        self.connections = connections
    }
    
    func getEdge(next: CLLocationCoordinate2D) -> Int {
        return 0
    }
}

