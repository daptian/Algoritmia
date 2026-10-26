# PRUEBAS POR PROGRAMA (Pseint)

```
let by_daptian = 'Cristian David Suarez Cardona';  
```
 
## Registros de pruebas

| Archivo                               | Prueba 1            | Prueba 2       | Resultado 1 | Resultado 2 |
| -------------                     |:-------------:    | :----------:   |  :-----------:| :-----------:| 
| Saludo.psc                        | "David"              | 123                  |  ✅                  | ✅                 |
| EdadEnDias.psc               |   20                      |  55                  |  ✅                  | ✅                 |
| Propinas.psc                    |  120.000, 4, 10 | 70.000, 8, 5 | ✅                   | ✅                  |
| PromedioNotas.psc      |  2.5, 4.0, 1.0      | 5.0, 3.5, 2.5 | ✅                   | ✅                   |

Registro de Errores ❌

EdadEnDias.psc -> Entrada("Hola") Error ❌ = "Inconsistencia en tipo de dato"
Propinas.psc -> Entrada(120.000,0, 10) Error  ❌ ="No se puede dividir entre zero"
PromedioNotas.psc -> Entrada("asd") Error  ❌ = "Inconsistencia en tipo de dato"



