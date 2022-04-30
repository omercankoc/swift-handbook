// String:
var developer : String? = nil
var language : String = "Swift"

// developer degiskeni deger almıs mı?
if(developer != nil){
    print(developer!)
} else {
    developer = "omercan"
}

// karakter dizisindeki karakteri goster.
for character in language {
    print(character)
}

developer?.append("koc") // sonuna c harfini ekler.
developer?.lowercased() // string degerinin her bir elemanini kucuk harf yapar.
developer?.uppercased() // string degerinin her bir elemanini buyuk harf yapar.
