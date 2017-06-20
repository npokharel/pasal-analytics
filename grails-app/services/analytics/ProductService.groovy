package analytics

import com.pasal.Product
import grails.transaction.Transactional

@Transactional
class ProductService {

    boolean deleteProduct(String id) {

        Product product = Product.get(id)
        product.deleted = true

        return (product.save())
    }

    def getActiveProducts() {
        def products = Product.findAllByDeleted(false)
        return products
    }
}
