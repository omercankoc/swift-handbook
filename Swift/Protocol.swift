import UIKit

protocol Sound {
    func publicSound()
}

class Animal {
    func animalSound(){
        print("!")
    }
}

class Dog : Sound {
    func publicSound() {
        print("Hav!")
    }
}

class Cat : Sound {
    func publicSound() {
        print("Miyav!")
    }
}

let dog = Dog()
dog.publicSound()

let cat = Cat()
cat.publicSound()

let animal = Animal()
animal.animalSound()
