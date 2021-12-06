@testable import Shop
import XCTest

class NetworkManagerTests: XCTestCase {

    let bundle = Bundle(for: NetworkManagerTests.self)
    var networkManager = NetworkManager()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    func testDataParsingShouldParseWithSuccess() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        let expectation = expectation(description: "testDataParsingShouldParseWithSuccess")
        guard let resource = bundle.url(forResource: "Shop", withExtension: "json") else {
            XCTFail()
            return
        }

        networkManager.data(from: resource, type: Shop.self) { result in
            switch result {
            case .success(let shop):
                XCTAssertNotNil(shop, "success")
            case .failure(let error):
                XCTFail("error fetching data -> \(error.localizedDescription)")
            }
            expectation.fulfill()
        }

        waitForExpectations(timeout: 2, handler: nil)
    }

    func testMalformedDataParsingShouldParseWithFailure() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let expectation = expectation(description: "testMalformedDataParsingShouldParseWithFailure")

        guard let resource = bundle.url(forResource: "MalformedShop", withExtension: "json") else {
            XCTFail()
            return
        }

        networkManager.data(from: resource, type: Shop.self) { result in
            // TODO: Assert
            switch result {
            case .success(_):
                XCTFail("data call should not return success")
            case .failure(let error):
                XCTAssert(error == NetworkError.malformedData, "data should return a malFormedData")
            }
            expectation.fulfill()
        }

        waitForExpectations(timeout: 2, handler: nil)
    }
}
