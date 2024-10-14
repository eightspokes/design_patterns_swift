import UIKit

public protocol ITarget {
    func requestSayHi()
}

class Adapter : ITarget {
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

let target: ITarget = Adapter()
target.requestSayHi()

