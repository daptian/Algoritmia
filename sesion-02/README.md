# Sesión 02: Lógica y decisiones

Tablas de decisión, casos borde y pruebas de escritorio de cada ejercicio.

```
let by = "Cristian David Suare Cardona"
``` 

## Ejercicio 1: ValidarRegistro.psc

**Regla:** te registras si tienes 14 años o más **Y** aceptas los términos.

| Edad >= 14 | Acepta | Resultado |
|------------|--------|-----------|
| V          | V      | Registro  |
| V          | F      | No        |
| F          | V      | No        |
| F          | F      | No        |

---

## Ejercicio 2: ValidarEdad.psc

**Regla:** válida si `edad >= 0 Y edad <= 120`. Por De Morgan, inválida si `edad < 0 O edad > 120`.

| Regla | Edad    | Resultado      |
|-------|---------|----------------|
| R1    | < 0     | Edad inválida  |
| R2    | 0 a 120 | Edad válida    |
| R3    | > 120   | Edad inválida  |

### Casos borde

| # | Edad | Esperado      | Resultado |
|---|------|---------------|-----------|
| 1 | -1   | Edad inválida |           |
| 2 | 0    | Edad válida   |           |
| 3 | 120  | Edad válida   |           |
| 4 | 121  | Edad inválida |           |

### Prueba de escritorio

| Edad | edad < 0 | edad > 120 | Inválida (O) | Resultado     |
|------|----------|------------|--------------|---------------|
| -1   | V        | F          | V            | Edad inválida |
| 0    | F        | F          | F            | Edad válida   |
| 120  | F        | F          | F            | Edad válida   |
| 121  | F        | V          | V            | Edad inválida |

---

## Ejercicio 3: Parqueadero.psc

**Reglas del administrador:**

1. Carro: $4.000 por hora o fracción. Moto: $2.000.
2. Los primeros 15 minutos son gratis.
3. El cobro máximo del día es $30.000.
4. Con factura del centro comercial paga la mitad (después del máximo).
5. Tipo que no sea carro ni moto, o minutos negativos: error.

### Tabla de decisión

| Regla | Tipo         | Minutos    | Factura    | Resultado                          |
|-------|--------------|------------|------------|------------------------------------|
| R1    | Cualquiera   | Menos de 0 | Cualquiera | Error: minutos negativos           |
| R2    | Ni 1 ni 2    | 0 o más    | Cualquiera | Error: tipo no válido              |
| R3    | Carro o moto | De 0 a 15  | Cualquiera | Gratis                             |
| R4    | Carro o moto | Más de 15  | No         | Horas × tarifa, máximo $30.000     |
| R5    | Carro o moto | Más de 15  | Sí         | Lo mismo que R4, dividido entre 2  |

### Casos borde

| #  | Tipo  | Min  | Fact | H  | Esperado          | Resultado |
|----|-------|------|------|----|-------------------|-----------|
| 1  | Carro | 15   | No   | -  | 0                 |           |
| 2  | Carro | 16   | No   | 1  | 4.000             |           |
| 3  | Carro | 60   | No   | 1  | 4.000             |           |
| 4  | Carro | 61   | No   | 2  | 8.000             |           |
| 5  | Moto  | 61   | Sí   | 2  | 2.000             |           |
| 6  | Carro | 600  | No   | 10 | 30.000 (tope)     |           |
| 7  | Carro | 600  | Sí   | 10 | 15.000            |           |
| 8  | 3     | 30   | No   | -  | Tipo no válido    |           |
| 9  | Carro | -5   | No   | -  | Minutos negativos |           |

> `horas = trunc((minutos + 59) / 60)` redondea hacia arriba: 60 min = 1 hora, 61 min = 2 horas.

### Prueba de escritorio: caso 4 (Carro, 61 min, sin factura)

| PASO           | tipo | minutos | factura | tarifa | horas | valor |
|----------------|------|---------|---------|--------|-------|-------|
| Lee datos      | 1    | 61      | N       |        |       |       |
| Segun          | 1    | 61      | N       | 4000   |       |       |
| Calcula horas  | 1    | 61      | N       | 4000   | 2     |       |
| Calcula valor  | 1    | 61      | N       | 4000   | 2     | 8000  |
| Aplica tope    | 1    | 61      | N       | 4000   | 2     | 8000  |
| Aplica factura | 1    | 61      | N       | 4000   | 2     | 8000  |

### Prueba de escritorio: caso 5 (Moto, 61 min, con factura)

| PASO           | tipo | minutos | factura | tarifa | horas | valor |
|----------------|------|---------|---------|--------|-------|-------|
| Lee datos      | 2    | 61      | S       |        |       |       |
| Segun          | 2    | 61      | S       | 2000   |       |       |
| Calcula horas  | 2    | 61      | S       | 2000   | 2     |       |
| Calcula valor  | 2    | 61      | S       | 2000   | 2     | 4000  |
| Aplica tope    | 2    | 61      | S       | 2000   | 2     | 4000  |
| Aplica factura | 2    | 61      | S       | 2000   | 2     | 2000  |

---

## Ejercicio 4, Reto 1: Semaforo.psc

### Reglas

| Regla | Cantidad | Resultado                |
|-------|----------|--------------------------|
| R1    | < 0      | Error: Cantidad negativa |
| R2    | = 0      | Rojo: Agotado            |
| R3    | 1 a 10   | Amarillo: Debes pedir    |
| R4    | > 10     | Verde: Todo bien         |

### Casos borde

| # | Cantidad | Esperado | Resultado |
|---|----------|----------|-----------|
| 1 | -1       | Error    |           |
| 2 | 0        | Rojo     |           |
| 3 | 1        | Amarillo |           |
| 4 | 7        | Amarillo |           |
| 5 | 10       | Amarillo |           |
| 6 | 11       | Verde    |           |
| 7 | 57       | Verde    |           |

### Prueba de escritorio

| Cantidad | < 0 | = 0 | <= 10 | Resultado                |
|----------|-----|-----|-------|--------------------------|
| -1       | V   |     |       | Error: Cantidad negativa |
| 0        | F   | V   |       | Rojo: Agotado            |
| 7        | F   | F   | V     | Amarillo: Debes pedir    |
| 57       | F   | F   | F     | Verde: Todo bien         |

---

## Ejercicio 4, Reto 2: Bisiesto.psc

**Regla:** divisible entre 4 **Y** no divisible entre 100, **O** divisible entre 400.

### Reglas

| Regla | Divisible entre 4 | Divisible entre 100 | Divisible entre 400 | Resultado      |
|-------|-------------------|---------------------|---------------------|----------------|
| R1    | No                | Cualquiera          | Cualquiera          | No es bisiesto |
| R2    | Sí                | No                  | Cualquiera          | Es bisiesto    |
| R3    | Sí                | Sí                  | No                  | No es bisiesto |
| R4    | Sí                | Sí                  | Sí                  | Es bisiesto    |

### Casos borde

| # | Año  | Esperado       | Resultado |
|---|------|----------------|-----------|
| 1 | 2023 | No es bisiesto |           |
| 2 | 2024 | Es bisiesto    |           |
| 3 | 1900 | No es bisiesto |           |
| 4 | 2000 | Es bisiesto    |           |
| 5 | 2026 | No es bisiesto |           |

### Prueba de escritorio

| Año  | ÷ 4 | ÷ 100 | ÷ 400 | ¿Bisiesto? |
|------|-----|-------|-------|------------|
| 2024 | V   | F     | F     | Sí         |
| 1900 | V   | V     | F     | No         |
| 2000 | V   | V     | V     | Sí         |
| 2026 | F   | F     | F     | No         |