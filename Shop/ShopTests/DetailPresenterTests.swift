@testable import Shop
import XCTest

// Detail Presenter tests
//
// The goal of those tests are to check your Home presenter implementation.
// Those tests will checks the behavior of the presenter and its interaction with the cache.
//
// Hint: DispatchQueue.main, Testing with expectation.
// Fill up those already created methods.
class DetailPresenterTests: XCTestCase {

    var presenter: DetailPresenter!
    var view = MockDetailViewController()
    var cacheManager = MockCacheManager()
    var product = Product(id: "test", name: "Soap", image: "USD", price_cents: 550, currency: "test")

    override func setUpWithError() throws {
        presenter = DefaultDetailPresenter(cacheManager: cacheManager, product: product)
        presenter.view = view
    }

    func testViewDidLoad_applyProduct() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        // TODO: Assert
        
        let expectation = expectation(description: "testViewDidLoad_applyProduct")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            self.view.apply(product: self.product, quantity: 1)
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: 2, handler: nil)
                    
        XCTAssert(view.applyProduct != nil)
    }

    func testViewDidLoad_checkCacheForQuantity() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        // TODO: Assert
        
        let expectation = expectation(description: "testViewDidLoad_checkCacheForQuantity")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            self.view.apply(product: self.product, quantity: 2)
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: 2, handler: nil)
                    
        XCTAssert(view.applyQuantity == 2)
        
    }

    func testDidTapAddButton_callSaveCacheManager() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        // TODO: Assert
        let expectation = expectation(description: "testDidTapAddButton_callSaveCacheManager")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            self.presenter.didTapAddButton()
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: 2, handler: nil)
                    
        XCTAssert(cacheManager.saveCallCount == 1)
    }

    func testDidTapAddButton_applyProductAndQuantity() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        // TODO: Assert
        let expectation = expectation(description: "testDidTapAddButton_applyProductAndQuantity")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            self.view.apply(product: self.product, quantity: 1)
            self.presenter.didTapAddButton()
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: 2, handler: nil)
                    
        XCTAssert(view.applyCallCount == 2)
    }

    func testDidTapRemoveButton_callSaveCacheManager() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        // Assert
        let expectation = expectation(description: "testDidTapRemoveButton_callSaveCacheManager")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            self.view.apply(product: self.product, quantity: 2)
            self.presenter.didTapRemoveButton()
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: 2, handler: nil)
                    
        XCTAssert(cacheManager.valueCallCount == 1)
    }

    func testDidTapRemoveButton_applyProductAndQuantity() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        // TODO: Assert
        
        let expectation = expectation(description: "testDidTapRemoveButton_applyProductAndQuantity")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            self.view.apply(product: self.product, quantity: 2)
            self.presenter.didTapRemoveButton()
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: 2, handler: nil)
                    
        XCTAssert(view.applyProduct != nil)
        XCTAssert(view.applyQuantity == 2)
    }
}
