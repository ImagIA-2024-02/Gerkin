Feature: Optimización para imágenes extremadamente dañadas

  Scenario: Restauración optimizada de imagen severamente dañada
    Given el usuario ha cargado una imagen severamente dañada
    When selecciona la opción de optimización
    Then la imagen es restaurada con mayor detalle y precisión

    Examples: Restauración optimizada de imagen severamente dañada
    | imagen_id | resultado_esperado           |
    | 1         | Imagen restaurada con alta precisión |
    | 2         | Imagen restaurada con alta precisión |

  Scenario: Manejo de error cuando la imagen no puede ser optimizada
    Given el usuario ha cargado una imagen extremadamente dañada
    When selecciona la opción de optimización
    And el algoritmo no puede mejorar la calidad de la imagen
    Then el usuario recibe un mensaje de error indicando que la optimización no es posible

    Examples: Manejo de error cuando la imagen no puede ser optimizada
    | imagen_id | mensaje_error                        |
    | 3         | Optimización no es posible en esta imagen |
    | 4         | Optimización no es posible en esta imagen |
