import Foundation

protocol DetailPresenterView: AnyObject {
    func apply(product: Product, quantity: Int)
}

class DefaultDetailPresenter: DetailPresenter {
    weak var view: DetailPresenterView?
    var product: Product
    var cacheManager: CacheManaging

    init(cacheManager: CacheManaging, product: Product) {
        self.cacheManager = cacheManager
        self.product = product
    }

    func viewDidLoad() {
        // TODO: Get quantity value from cache
        let quantity = cacheManager.integer(forKey: "quantity_\(product.name)")

        view?.apply(product: product, quantity: quantity ?? 0)
    }

    func didTapAddButton() {
        // TODO: Update quantity value
        
        guard var quantity = cacheManager.integer(forKey: "quantity_\(product.name)") else { return }
        quantity += 1
        cacheManager.save(quantity, forKey: "quantity_\(product.name)")
        view?.apply(product: product, quantity: quantity)
    }

    func didTapRemoveButton() {
        // TODO: Update quantity value
        
        guard var quantity = cacheManager.integer(forKey: "quantity_\(product.name)") else { return }
        
        if quantity > 0 {
            quantity -= 1
        }
        
        cacheManager.save(quantity, forKey: "quantity_\(product.name)")
        view?.apply(product: product, quantity: quantity)
    }
}

struct ProductQuantity: Codable {
    let quantity: Int
}
