import UIKit

// Missing data with optionals


// let opposite = ["Mario": "Wamario", "Luigi": "Wagi"]
//
//
//if let marioOpposite = opposite["Petter"] {
//    print("Mario's ")
//}
//
//
//print(fountName)
//
//



var userName: String? = nil

if let unerappedName = userName {
    print("We got a user: \(unerappedName)")
}else {
    print("The optional was empty")
}




var num1 = 1_000_000
var num2 = 0
var num3:  Int? = nil

var str1 = "Hello"
var str2 = ""
var str3:  String? = nil







//Em Swift, nil é usado para representar um valor ausente ou nulo. Ele é semelhante ao conceito de null em outras linguagens de programação, mas com algumas diferenças sutis.

//Em Swift, nil é considerado um valor opcional, o que significa que ele pode ser atribuído a uma variável que é do tipo opcional, mas não a uma variável que é do tipo não opcional. Isso é feito para ajudar a evitar erros comuns de programação, como tentar acessar uma variável que não foi inicializada.

//Por exemplo, a declaração abaixo cria uma variável mensagem do tipo String e atribui a ela o valor nil, indicando que a variável não possui um valor inicial:



var mensagem: String? = nil


//Ao usar um valor opcional, é necessário usar a sintaxe de desempacotamento opcional para acessar o valor real da variável. Isso é feito adicionando um ponto de interrogação após o nome da variável, como mostrado no exemplo abaixo:


if mensagem != nil {
    print(mensagem!)
}



//No código acima, o if verifica se mensagem não é nula antes de tentar imprimi-la. O ponto de exclamação (!) desempacota o valor opcional e o converte em uma String não opcional para que possa ser impressa.

//É importante lembrar que o uso excessivo de valores opcionais e desempacotamento forçado pode tornar o código mais complexo e propenso a erros. Portanto, deve-se usar valores opcionais e desempacotamento opcional com cuidado e apenas quando necessário.




















