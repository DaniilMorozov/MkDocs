# Hello World

Exemplos clássicos de "Hello, World!" em diferentes linguagens de programação. Alterne entre eles usando as abas abaixo.

=== "Python"
    ``` python
    print("Hello, World!")
    ```

=== "JavaScript"
    ``` javascript
    console.log("Hello, World!");
    ```

=== "Go"
    ``` go
    package main

    import "fmt"

    func main() {
        fmt.Println("Hello, World!")
    }
    ```

=== "Java"
    ``` java
    public class Main {
        public static void main(String[] args) {
            System.out.println("Hello, World!");
        }
    }
    ```

=== "C++"
    ``` cpp
    #include <iostream>

    int main() {
        std::cout << "Hello, World!" << std::endl;
        return 0;
    }
    ```

=== "Ruby"
    ``` ruby
    puts "Hello, World!"
    ```

---

## Exemplo com anotações

O bloco abaixo usa **números de linha** (`linenums="1"`), **linhas destacadas** (`hl_lines="2 3"`), um **título** e **anotações** — passe o rato ou toque no marcador para ver a nota.

``` python title="annotated.py" linenums="1" hl_lines="2 3"
def greet():
    print("Hello, World!")  # (1)!
    return None             # (2)!
```

1. Envia a saudação para stdout. Use `print()` para saída simples na consola.
2. O `return None` explícito é opcional em Python; a função retorna `None` por defeito.
