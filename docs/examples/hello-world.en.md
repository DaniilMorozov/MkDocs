# Hello World

Classic "Hello, World!" examples in different programming languages. Switch between them using the tabs below.

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

## Annotated example

The block below uses **line numbers** (`linenums="1"`), **highlighted lines** (`hl_lines="2 3"`), a **title**, and **annotations** — hover or tap the marker to see the note.

``` python title="annotated.py" linenums="1" hl_lines="2 3"
def greet():
    print("Hello, World!")  # (1)!
    return None             # (2)!
```

1. Outputs the greeting to stdout. Use `print()` for simple console output.
2. Explicit `return None` is optional in Python; the function returns `None` by default.
