Feature: Visualización de restauración digital

  Scenario: Visualización de restauración de obra de arte
    Given he escaneado una obra de arte
    When selecciono la opción "Ver restauración"
    Then se muestra en mi pantalla una versión restaurada digitalmente de la obra

    Examples: Visualización de restauración de obra de arte
    | obra_id | resultado_esperado         |
    | 1       | Versión restaurada mostrada |
    | 2       | Versión restaurada mostrada |

  Scenario: Comparación antes/después de restauración
    Given estoy viendo una restauración digital
    When uso el control deslizante en la pantalla
    Then puedo comparar dinámicamente la versión actual con la restaurada

    Examples: Comparación antes/después de restauración
    | obra_id | resultado_esperado                 |
    | 1       | Comparación antes/después disponible |
    | 2       | Comparación antes/después disponible |