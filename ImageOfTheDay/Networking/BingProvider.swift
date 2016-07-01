//  Copyright © 2016 Paul Williamson. All rights reserved.

import Foundation

/**
 *  A networking provider for working with the Bing image of the day API.
 */
struct BingProvider {

    /// The `NSURLSession` to perform network requests through.
    let session: NSURLSession

    /// The base URL for the image API call
    let baseURL = NSURL(string: "http://www.bing.com/HPImageArchive.aspx?format=js")!

    /**
     An initialiser which takes in an `NSURLSession`, and returns a new instance
     of a `BingProvider`.
     */
    init(withSession session: NSURLSession) {
        self.session = session
    }

    /**
     Fetch the latest image of the day.
     */
    func fetchLatestImage() {
        let components = NSURLComponents( URL: baseURL, resolvingAgainstBaseURL: false)!
        var queryItems = components.queryItems
        queryItems?.append(NSURLQueryItem(name: "idx", value: "0"))
        queryItems?.append(NSURLQueryItem(name: "n", value: "1"))
        components.queryItems = queryItems

        session.dataTaskWithURL(components.URL!) { data, response, error in

        }

    }

}
