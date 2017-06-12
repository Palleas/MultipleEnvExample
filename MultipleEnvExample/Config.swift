import Foundation

final class Config {

    var serverEndpoint: URL {
        return URL(string: value(for: "SERVER_ENDPOINT", fallback: "https://requestb.in/1lxn5hp1"))!
    }

    var stripeKey: String {
        return value(for: "STRIPE_KEY", fallback: "default-stripe-key")
    }

    // Here, we try to retrieve the URL based on the `SERVER_ENDPOINT` that we have in the `Info.plist`
    // If it's not defined in the Info.plist, we move to an environment variable defined in the scheme
    // If `SERVER_ENDPOINT` is not defined or not a valid URL, we use the default one
    func value(for key: String, fallback: String) -> String {
        if let value = Bundle.main.infoDictionary?[key] as? String {
            return value
        } else if let value = ProcessInfo.processInfo.environment[key] {
            return value
        } else {
            return fallback
        }
    }
}
