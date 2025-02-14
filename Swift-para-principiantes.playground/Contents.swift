import Foundation
import UIKit

//Variable.- Cambia su valor
//Constante.- No cambia su valor

// Variables con tipos de datos primitivos
var entero: Int = 42             // Un entero
var decimal: Double = 3.14       // Un número decimal
var cadena: String = "Swift"     // Una cadena de texto
var booleano: Bool = true        // Un valor booleano

//constante
let nameFull = "Maurihño Enrique Escurra Colquis"


//Varibles.- Cambia su valor
//tipos de datos
var valueNumber: Int = 100
var valueDecimal: Double = 50.0
var valueString: String = "Swift"
var valueBool: Bool = true

var salary: Double = 10.0
salary = 3.0

var salary2: Double = 14.0
salary2 = 20.0

var sumAdiction = salary + salary2
print(sumAdiction)

//Constante.- No cambio su valor
let valueNil: Int = 30
//valueNil = 10

let valueNil2: Int = 5

let valueNilTotal = valueNil + valueNil2

print(valueNilTotal)

let myName = "escurra"
//myName = "developer"
print(myName)



//Las clases.- Es un modelo que define las caracteristicas de un
//objeto en el cual tiene atributos, propiedades y metodos.
//Se usa mucho en programacion orientado a objetos en cualquier
//lenguaje de programacion.
//Por ejemplo: La clase Persona tiene atributos como su nombre, apellido
//y edad y su metodo podria ser obtener su nombre completo.

//Clases en Swift:
//Las clases tienen herencia y los inicializadores debemos de crearlo
//manualmente, por eso que cuando no inicializas nada, te sale error.
//Las clases son de tipo de referencia, eso quiere decir que cuando
//estamos inicializando un objeto, la RAM le asigna espacio de memoria y
//dirección. Luego, asigna su dirección de memoria al
//objeto que creamos. Osea si tu modificas un objeto A,
//en el objeto B se ve reflejado ya que apuntan a la misma
//dirección de memoria.

//clase Persona con sus respectivos atributos
class Person {
    let codTeacher: String //codigo
    let name: String //nombre
    let lastName: String //apellido
    var age: Int //edad
    var salary: Double //salario
    var commissionAFP: Double //comision
    var isParticipate: Bool //participa
    var status: (Int32, String) = (12, "Crear") //tupla: estado
    
    //inicializador
    init(codTeacher: String, name: String, lastName: String, age: Int, salary: Double, commissionAFP: Double, isParticipate: Bool) {
        self.codTeacher = codTeacher //le pasamos el codTeacher
        self.name = name //le pasamos el nombre
        self.lastName = lastName //le pasamos el apellido
        self.age = age //le pasamos la edad
        self.salary = salary //le pasamos el salario
        self.commissionAFP = commissionAFP //le pasamos la comision AFP
        self.isParticipate = isParticipate //le pasamos si es participativo
    }

     //retornamos un Double ya que es operable
    func getNetSalary() -> Double {
        //suma de salario y comision AFP
        return self.salary + self.commissionAFP
    }
    
    //pasamos parametros y retornamos un String ya que son cadenas
    func getFullName() -> String {
        return "Nombre Completo: " + self.name + " " + self.lastName //concatenamos el nombre y apellido
    }
    
    //pasamos parametros y retornamos un Double ya que es operable
    func calculateSalary(newSalary: Double) -> Double {
        //suma de salario y comision AFP
        return newSalary + self.salary
    }
    
    //función normal
    func printerClass() {
        print("Class")
    }
}

//instanciamos la clase
//creamos un objeto de la clase Persona y le pasamos valores
var personClass = Person(codTeacher: "12",
                         name: "Maurihño",
                         lastName: "Escurra",
                         age: 12, salary: 43.2,
                         commissionAFP: 422, isParticipate: true)
//imprimos su valor
print(personClass.name)
//obtenemos el nombre completo
print(personClass.getFullName())
//obtenemos el salario de la persona
print(personClass.getNetSalary())
//obtenemos el nuevo salario de la persona
print(personClass.calculateSalary(newSalary: 100))


//otro ejemplo de clase con referencias
class SomeClass {
    var name: String //variable

    //inicializador
    init(name: String) {
        self.name = name //le pasamos el name
    }
}

//instanciamos su valor
let valueA = SomeClass(name: "Escurra")
valueA.name = "Developer" //le asignamos un valor

let valueB = valueA //le asignamos el mismo valor de A en B
valueB.name = "IOS - UIKIT - SwiftUI" //cambiamos el valor

//imprimos los valores y son iguales
print(valueA.name)
print(valueB.name)



//Estructuras.- Al igual que las clases, las estructuras es un modelo
//que define todas las caracteristicas de un objeto en el cual tiene
//atributos, propiedades y metodos.

//Estructuras en Swift:
//Son de tipo valor, eso quiere decir que cuyo valor
//se copian cuando se asigna a una nueva variable o se pasa como
//parametro en una funcion. Ya tiene inicializadores por defectos y
//no tiene herencia.

struct SomeStruct {
    var width: Int = 0 //variable

    //valor de retorno entero
    func getWidth(width2: Int) -> Int {
        return self.width + width2 //sumamos los valores
    }
}

//instanciamos a la estructura
var instanceA = SomeStruct()
instanceA.width = 5 //le damos el valor de la referencia A

var instanceB = instanceA //igualamos pero sus valores son diferentes
instanceB.width = 10 //le damos el valor de la referencia B

print(instanceA.width) //imprime 5
print(instanceB.width) //imprime 10
print(instanceA.getWidth(width2: 40)) //imprime 45
print(instanceB.getWidth(width2: 40)) //imprime 50



// Operadores Aritméticos
var adiction = 11 + 33 //suma
var subtraction = 99 - 10 //resta
var multiplicate: Int = 4 * 4 //multiplicación
var divition: Double = 140 / 3 //división
var module: Int = 720 % 420 //módulo

print("\nOperadores Aritméticos\n") //imprimimos por consola
print("Resultado del aperador de suma: \(adiction)") //imprimimos por consola la suma
print("Resultado del operador de resta: \(subtraction)") //imprimimos por consola la resta
print("Resultado del operador de multiplicación: \(multiplicate)") //imprimimos por consola la multiplicación
print("Resultado del operador de división: \(divition)") //imprimimos por consola la división
print("Resultado del operador de modulo \(module)") //imprimimos por consola el módulo


//Operadores:
/*
 == IGUAL A
 >= MAYOR O IGUAL
 <= MENOR O IGUAL
 != DIFERENTE
 */


//Condicionales if else
//ejemplos:
var age: Int = 20 //variable con edad 20 y es entero
//validamos si es igual a 18 o si es mayor o igual a 21 imprime mensaje caso contrario no es mayor de edad
if age == 17 {
    print("es casi mayor de edad")
} else if age >= 18 {
    print("es mayor de edad")
} else {
    print("no es mayor de edad")
}

// Casos: Switch
//ejemplo:
//creamos la variable entera y la inicializamos con cero
var codePerson: Int = 0
codePerson = 3//le damos un valor

//para usar el switch es así por casos:
switch codePerson {
case 1:
    print("Es uno")
case 2:
    print("Es dos")
case 3:
    print("Es tres")
default:
    print("Es otro número")
}

//switch con valor de string
let weekend = "lunes"
print(weekend)
switch weekend {
    //casos e imprimie
case "martes":
    print("Hoy es martes")
case "viernes":
    print("Estamos viernes")
case "lunes":
    print("Hoy comienzan las clases")
default:
    print("Hoy no es tu día")
}



print("Las estructuras de control iterativas son: For-In, While y Repeat-While")
// For-In: Array String
let array = ["Lima","San Miguel","Brazil","Venezuela"] //arreglo de paises
//recorremos todo el arreglo e imprimos cada valor
for i in array {
    print(i)
}

// For-In: Array Numbers
let numbers1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] //arreglo de números
//recorremos el arreglo de números e imprimimos los valores
for number in numbers1 {
    print(number)
}

//recorremos números de 1 a 10 e imprimos su valor
for number in 1...10 {
    print(number)
}

// WHILE Y REPEAT WHILE
// While: Mientras -> Primero condicionas y luego ejecutas
var counter = 0 //contador cero

while counter < 5 { //el contador tiene que ser menor a 5 y cumple la condición
print("El contador en la estructura de control While vale \(counter)")
    counter += 1 //le vas aumentando hasta que sea 4
}

// Repeat-While: -> Primero ejecutas y luego condicionas
var counter2 = 0 //contador cero

repeat {
print("El contador en la estructura de control Repeat-While vale \(counter2)")
    counter2 += 1 //le vas aumentando hasta que sea 4
} while counter2 < 5 //el contador tiene que ser menor a 5 y cumple la condición
print("\n")


//ejercicios de Lógica de programación:
//1. crear una función y pasarle como parametro la edad y luego condicionar si es mayor o no de edad e imprimirlos
//2. recorrer del 10 al 55 y obtener multiplos de 2 (pares) y que no sea el 50
//3. escribir casos (switch) de estaciones e imprimir las mismas
//4. escribir un aumento salarial




//ejercicios de Lógica de Programación:
//1. crear una función y pasarle como parametro la edad y luego condicionar si es mayor o no de edad e imprimirlos
func validateAge(age: Int) {
    if age >= 18 {
        print("Eres mayor de edad")
    } else {
        print("Eres menor de edad")
    }
}

print(validateAge(age: 10))


//2. recorrer del 10 al 55 y obtener multiplos de 2 (pares) y que no sea el 50
for numero in 10...55 {
    if numero % 2 == 0 && numero != 50 {
        print("El número \(numero) es par, y no se imprime el 50")
    }
}

//3. escribir casos (switch) de estaciones e imprimir las mismas
let station = "verano"
switch station {
case "verano":
    print("Comienza el Verano")
case "otoño":
    print("Comienza el otoño")
case "invierno":
    print("Comienza el invierno")
default:
    print("Comienza la primavera")
}

//4. escribir un aumento salarial
func addSalary(salary: Double) -> Double {
    var salaryTotal: Double = 0.0
    let benefit: Double = 500.00
    salaryTotal = salary + benefit
    return salaryTotal
}

print(addSalary(salary: 300.0))



//Mas ejercicios:
//5. Crea tu lógica de programación para poder recorrer las letras de tu nombre
//6. Validar si es impar o par el numero
//7. Crea un programa que imprima por consola todos los números comprendidos entre 10 y 55 (incluidos), pares, y que no son ni el 16 ni múltiplos de 3.


//5. Crea tu lógica de programación para poder recorrer las letras de tu nombre
let word: [String] = ["s", "w", "i", "f", "t"]
var swiftWord: String = ""
for character in word {
    swiftWord.append(character)
}
print("\nEstructura de Iteración for\n")
print("Mi nombre es: \(swiftWord)")


//6. Validar si es impar o par el numero
let num = 7
// Con if
if num % 2 == 0 {
    print("El numero \(num) es par")
}
else {
    print("El numero \(num) es impar")
}


//7. Crea un programa que imprima por consola todos los números comprendidos entre 10 y 55 (incluidos), pares, y que no son ni el 16 ni múltiplos de 3.
for numero in 10...55 {
    if numero % 2 == 0 && numero != 16 && numero % 3 != 0 {
        print("El número \(numero) es par, no es 16 y no es múltiplo de 3")
    }
}
