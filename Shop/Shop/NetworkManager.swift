import Foundation

enum NetworkError: Error, Equatable {
    static func == (lhs: NetworkError, rhs: NetworkError) -> Bool {
        switch (lhs, rhs) {
        case (.noData, .noData):
            return true
        case (let .error(error1), let error(error2)):
            return error1.localizedDescription == error2.localizedDescription
        case (.malformedData, .malformedData):
              return true
        default:
            return false
        }
    }

    case noData
    case error(Error)
    case malformedData
}

// Excercise: Create a networking manager to fetch data from an API endpoint
//
// Requirement:
// - Use URLSession for this excercise.
// - Return a NetworkError if error occurs or not data.
//
// Hint: Decodable, URLSession, URLSessionConfiguration, Decoder
protocol NetworkManaging {
    func data<T: Decodable>(from url: URL, type: T.Type, completion: @escaping (Result<T, NetworkError>) -> Void)
}

public class NetworkManager: NetworkManaging {
    
//    @Published var shop: Shop?

    init() {
//        data(from: URL(string: "https://api.npoint.io/c905fd4932fa5fd53b0e")!, type: Shop.self) { result in
//            switch result {
//            case .success(let shop):
//                self.shop = shop
//            case .failure(let error):
//                print(error.localizedDescription)
//            }
//        }
    }
    
    func data<T: Decodable>(from url: URL, type: T.Type, completion: @escaping (Result<T, NetworkError>) -> Void) {
        do {
            let data = try Data(contentsOf: url)
            let jsonDecoder = JSONDecoder()
            
            let dataFromJson = try jsonDecoder.decode(Shop.self, from: data)
            completion(Result<T, NetworkError>.success(dataFromJson as! T))
        } catch {
            completion(Result<T, NetworkError>.failure(NetworkError.malformedData))
        }
    }
}
