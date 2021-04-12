import UIKit

// Index yerine key-value deger eslesmesi ile verileri tutar.

var platform : [String:String] = ["Android":"Kotlin","iOS":"Swift","MacOS":"Swift","iPadOS":"Swift","WatchOS":"Swift","tvOS":"Swift"]
print(platform)

var languages = [String:Int]()
languages["Kotlin"] = 2011
languages["Swift"] = 2014
languages["Go"] = 2009
languages["Rust"] = 2010
print(languages)

print(languages["Kotlin"] ?? 0)
