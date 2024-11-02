Feature: Restauración automática de imágenes dañadas
    Scenario: Restauración de imagen dañada exitosamente
    Given el usuario ha cargado una imagen dañada
    When el usuario selecciona la opción de restauración automática
    Then la imagen es restaurada exitosamente
    And el usuario ve el resultado final con una comparación visual

    Examples: Restauración de imagen dañada exitosamente
    | imagen_id | resultado_esperado    |
    | 1         | Imagen restaurada     |
    | 2         | Imagen restaurada     |

  Scenario: Manejar error cuando la imagen no se puede restaurar
    Given el usuario ha cargado una imagen dañada
    When el usuario selecciona la opción de restauración automática
    And el algoritmo no puede restaurar la imagen
    Then el usuario recibe un mensaje de error indicando que la imagen no se pudo restaurar
    And no se muestra una comparación visual

    Examples: Manejar error cuando la imagen no se puede restaurar
    | imagen_id | mensaje_error               |
    | 3         | Imagen no puede ser restaurada |
    | 4         | Imagen no puede ser restaurada |

  Scenario: Validación de formato de imagen incorrecto
    Given el usuario ha cargado un archivo que no es una imagen válida
    When el usuario selecciona la opción de restauración automática
    Then el usuario recibe un mensaje de error indicando que el formato del archivo no es compatible

    Examples: Validación de formato de imagen incorrecto
    | archivo_id | mensaje_error               |
    | 5          | Formato de archivo no compatible |
    | 6          | Formato de archivo no compatible |
