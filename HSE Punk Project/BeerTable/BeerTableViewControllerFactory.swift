final class BeerTableViewControllerFactory {
    func build() -> BeerTableViewController {
        let service = BeerService()
        let viewController = BeerTableViewController(service: service)
        return viewController
    }
}
