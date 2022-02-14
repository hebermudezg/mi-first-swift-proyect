//
//  Test.swift
//  mi-first-swift-proyect (iOS)
//
//  Created by Heber E. Bermudez on 2/13/22.
//

import Foundation

// Variables, mutables pero del mismo tipo *
var myFistVariabale = "Heber"
var mySecondVariable = 5

// Constants, inmutables. *
let myFirstConstant = 3

// DataTypes
let myString = "hola hacker"
let myString2: String = "hola hacker2" // Es igual de valido
let myInt = 5
let myDoble = 5.1 // numero  muy grande
let myFloat: Float = 5.1 // numero pequeno
let myBool = true
let myBoo2 = false

// Control de flujo
if mySecondVariable < 2 {
    print("hello")
    mySecondVariable = 8
} else if mySecondVariable >= 2 {
    print("hello2")
    mySecondVariable = 9
    
}else{
    print("noting")
}

// Operadores logicos && and ||

// Switch
let country = "Alemania"
switch country {
case "España":
    print("El idioma es el español")
case "Alemania":
    print("El idioma es el Aleman")
default:
    print("El idioma es No conocido")
}

let age = 10
switch country {
case 0,1,2,3: // toma todo el rango
    print("Es un bb")
case 3...12: // toma el 12
    print("Es un nn")
case 12..<20 // no toma el 20
    print("es un adolescente")
default:
    print("Sorprendido")
}

// Arrays
let myArray = Array<String>() // Array 1
let myArray2 = [String]() // Array 2
let myArray3 = ["hola", "world"] // Array 3
myArray.append("Hola") // Usando un método
myArray2.append(contentsOf: ["hola", "como", "Estas"])


//Acceso a datos de un array
myArray[0] // Obteniendo la posicion 1
// Modificar datos
myArray[0] = "Cambiado"
// Eliminado indice
myArray.remove(at: 3)

// imprimiendo todos los valores del array
for value in myArray{
    print(value)
}

// Diccionarios **
let myOldDictioanary = Dictionary<String, Int>()
var myNewDictionary = [String:Int]()

myNewDictionary = ["hola":1, "Esteban":2]
myNewDictionary["Bermu"] = 03
print(myNewDictionary["Bermu"]) // Accediendo a un dato

// Bucles, for, while, repeat while***

for index in 1...5{
    print(index)
}

repeat{
} while

// Opcionales
let myString3 = "1234"
let myInt = Int(myString3)
print(my Int)
// El anterior casting me puede devolver un valor o nulo por eso el nombre opcional

print(int! + 10) // Transformacion a no opcional

// Definicion de opcionales
var myNewString : String?
print(myNewString)

// Verificar con un if que el valor de un opcional no sea nulo (nil)
if let myNoNilString = myNewString{
    print(myNoNilString) // desenpaquetando el valor opcional
}else{
    print("El valor es nulo")
}

// Funciones *****
func sayHello(){
    print("Hello Hackermen")
}
// llamado a la funcion
sayHello()

func sayHello(name:String){
    print("Hello \(name)")
}
sayHello("Esteban")

// Funcion con un valor de retorno
func helloString() -> String{
    return "Hello"
}

// Clase o Objeto en swift ****
class Programador{
    let name: String
    let age: Int
    let languages:[Language]
    // enum
    enum Language{
        case swift
        case java
    }
    // inicializador
    init(name:String, age:Int, languages:[Language]){
        self.name = name
        self.age = age
        self.languages = languages
    }
    // metodos
    func code(){
        print("Estoy programando")
    }
}
// Instanciar el objeto
let miPrimerProgramador = Programador(name: "Heber", age: 26, languages: [.swift, .java])


