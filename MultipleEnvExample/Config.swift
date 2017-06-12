import Foundation

final class Config {

    var serverEndpoint: URL {
        // Here, we try to retrieve the URL based on the `SERVER_ENDPOINT` that we have in the `Info.plist`
        // If `SERVER_ENDPOINT` is not defined or not a valid URL, we use the default one
        guard let endpoint = Bundle.main.infoDictionary?["SERVER_ENDPOINT"] as? String, let url = URL(string: endpoint) else {
            return URL(string: "https://requestb.in/1lxn5hp1")!
        }

        return url
    }

    var stripeKey: String {
        return Bundle.main.infoDictionary?["STRIPE_KEY"] as? String ?? "default-stripe-key"
    }
}
