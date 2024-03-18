package main

import (
	"fmt"
	"reflect"
	"runtime"
	"slices"
	"strings"
)

type Pessoa struct {
	Nome string
	Altura float32
	Cargo Cargo
	Habilidades []string

}

type Cargo struct {
	Tipo string
	Salario float32
}

func FuncNomeIdade(nome string, idade int) {
	fmt.Printf("Olá, sou %s e tenho %d anos. \n", strings.Title(nome), idade)
}

func FuncQuadradoeCubo(numero int) (int, int) {
	quadrado := numero * numero
	cubo := numero * numero * numero
	return quadrado, cubo
}

func (p Pessoa) DadosPessoa() {
	fmt.Printf("Dados de %s\n", p.Nome)
	fmt.Printf("Altura: %f\n", p.Altura)
	fmt.Printf("Cargo: %s\n", p.Cargo.Tipo)
	fmt.Printf("Salário: %f\n", p.Cargo.Salario)
	fmt.Printf("Habilidade principal: %s\n", p.Habilidades[0])
}

// COMEÇAR AQUI
func main() {
	// - VARIÁVEIS
	numero := 100
	const pi = 3.15
	ola := "hello wor3ld"
	var valido bool = true

	fmt.Println(reflect.TypeOf(numero))
	fmt.Println(numero)
	fmt.Println(reflect.TypeOf(pi))
	fmt.Println(pi)
	fmt.Println(reflect.TypeOf(ola))
	fmt.Println(ola)
	fmt.Println(valido)
	fmt.Println(reflect.TypeOf(valido))

	// - CONDIÇÕES
	numero_float := float32(numero)
	// IF ELSE
	if numero_float * pi == 314 && ola == "hello world" {
		fmt.Println("O número é 100")
	} else if numero_float * pi != 314 {
		fmt.Println("O número não é 100")
	} else {
		fmt.Println("Esse loop não faz sentido")
	}
	// SWITCHES
	switch {
	case numero_float * pi == 314 && ola == "hello world":
		fmt.Println("O número é 100")
	case numero_float * pi == 314 && ola != "hello world":
		fmt.Println("O número é 100, mas nada faz sentido")
	default:
		fmt.Println("Nada faz sentido")
	}
	// SWITCH CONFORME O VALOR DE OS, QUE RETORNA O SISTEMA OPERACIONAL
	switch os := runtime.GOOS; os {
	case "darwin":
		println("os x")
	case "linux":
		println("linux")
	default:
		println("windows")	
	}
	// - ARRAYS E SLICES E LOOPS
	planetas := [9]string{"mercúrio", "venus", "terra", "marte", "júpiter", "saturno", "urano", "netuno"}
	fmt.Println(reflect.TypeOf(planetas))
	for i := 0; i < len(planetas); i += 1 {
		fmt.Println(planetas[i])
	}
	// UM SLICE É UM ARRAY SEM UM TAMANHO DEFINIDO
	var planetaSlice []string = planetas[0:8]		
	planetaSlice = append(planetaSlice, "plutão")
	for i := 0; i < len(planetas); {
		fmt.Println(planetaSlice)
		planetaSlice = slices.Delete(planetaSlice, 0, 1)
		i++;
		if len(planetaSlice) <= 0 {
			println("O sol engoliu tudo.")
		}
	}
	// PARA ITERAR SOBRE UMA STRING É PRECISO CONVERTER A MESMA EM UM ARRAY DE RUNES,
	// QUE REPRESENTAM O MAPEAMENTO EM UNICODE DOS CARACTERES
	letras := []rune("Python")
	// UM LOOP UTILIZANDO O RANGE PRECISA DE UMA VARIÁVEL ÍNDICE E UMA VARIÁVEL VALOR 
	// ELE ITERA POR TODO O ARRAY
	for index, value := range letras {
		letra := string(value)
		if letra == "h" {
			continue
		}
		fmt.Printf("%vº Letra: %q \n", index+1, letra)
	}
	// FUNÇÕES
	FuncNomeIdade("felipe bezerra", 22)
	quadrado, cubo := FuncQuadradoeCubo(3)
	fmt.Println("O quadrado e cubo desse número são", quadrado,"e", cubo)
	// STRUCTS
	felipe := Pessoa{
		Nome: "Felipe",
		Altura: 1.80,
		Cargo: Cargo{
			Tipo: "Programador",
			Salario: 1660.90,
		},
		Habilidades: []string{"Python", "Go", "Django"},
	}
	felipe.DadosPessoa()
}