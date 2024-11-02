Feature: Escaneo y reconocimiento de obras de arte

  Scenario: Escaneo de obra de arte exitoso
    Given estoy frente a una obra de arte en el museo
    When enfoco la cámara de mi dispositivo hacia la obra
    Then la aplicación reconoce la obra
    And se muestran opciones de interacción

    Examples: Escaneo de obra de arte exitoso
    | obra_id | nombre_obra           |
    | 1       | Mona Lisa             |
    | 2       | La persistencia de la memoria |

  Scenario: Obra de arte no reconocida
    Given estoy escaneando una obra de arte
    When la aplicación no puede reconocerla
    Then se ofrece la opción de buscar manualmente
    And se muestra la opción de reportar el problema

    Examples: Obra de arte no reconocida
    | obra_id | mensaje_error           |
    | 3       | Obra no reconocida       |
    | 4       | Obra no reconocida       |