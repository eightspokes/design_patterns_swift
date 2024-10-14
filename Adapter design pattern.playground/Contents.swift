import UIKit

public protocol IGreeting {
    func requestSayHi()
}

class LanguageAdapter : IGreeting {
    func requestSayHi() {
        var japaneeseAdapter = Adaptee_Japaneese()
        japaneeseAdapter.sayHiInJapaneese()
    }
}

class Adaptee_English {
    func sayHiInEngish(){
        print("Hi")
    }
}
class Adaptee_Spanish {
    func sayHiInSpanish(){
        print("Hola")
    }
}
class Adaptee_Japaneese {
    func sayHiInJapaneese(){
        print("Kon'nichiwa")
    }
}

let greeting: IGreeting = LanguageAdapter()
greeting.requestSayHi()

