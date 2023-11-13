import Foundation

struct BeerDTO: Decodable {
    let id: Int
    let name: String
    let tagline: String
    let imageUrl: URL
}
