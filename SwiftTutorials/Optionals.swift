import UIKit

// Optional :
var value : String?
value = "5"

// Deger dolu ise operasyonu gerceklestir, degil ise gerceklestirme.
value?.uppercased()

// Degisken deger alacak.
value!.uppercased()

// Eger deger girilmez ise belirtilen default deger uzerinden operasyonu gerceklestir.
var numeric = (Int(value!) ?? 0) * 5
