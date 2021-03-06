Feature: movimientoBomberman

  Scenario: comportamiento del movimiento de personaje Bomberman
    Given Bomberman se crea en la posicion cero cero
    When Bomberman se mueve una celda a la derecha
    Then Bomberman se debe encontrar en la posicion uno cero

  Scenario: comportamiento del movimiento de personaje Bomberman
    Given Bomberman se crea en la posicion cero cero
    Given Un muro se encuentra en la posicion uno cero
    When Bomberman se mueve en el tablero una celda a la derecha
    Then Bomberman se debe encontrar en la posicion cero cero

  Scenario: comportamiento del movimiento de personaje Bomberman
    Given Bomberman se crea en la posicion cero cero
    Given Un enemigo se encuentra en la posicion uno cero
    When Bomberman se mueve en el tablero una celda a la derecha
    Then Bomberman esta muerto

  Scenario: Bomberman suelta una bomba y rompe los muros de melamina que hay en la onda expansiva (Radio: 3 celdas)
    Given Bomberman se crea en la posicion cuatro cuatro en un tablero de 10 por 10
    Given El tablero tiene muros en (0,4)(1,4)(4,7)(4,8)(7,4)(8,4)(4,1)(4,0)
    When Bomberman suelta una bomba donde se encuentra
    Then Rompio los muros de (4,1) (1,4) (4,7) (7,4)
    Then Quedaron los muros de (0,4)(4,0)(4,8) (8,4)

  Scenario: Bomberman suelta una bomba y hay enemigos en la onda expansiva
    Given Bomberman se crea en la posicion cuatro cuatro en un tablero de 10 por 10
    Given El tablero tiene un enemigo en (5,3)
    When Bomberman suelta una bomba donde se encuentra
    Then El enemigo ya no se encuentra en la posicion (5,3)

  Scenario: Bomberman suelta una bomba y hay un muro de acero en la onda expansiva
    Given Bomberman se crea en la posicion cuatro cuatro en un tablero de 10 por 10
    Given El tablero tiene un muro de acero en (5,3)
    When Bomberman suelta una bomba donde se encuentra
    Then El muro sigue estando en (5,3)

  Scenario: Bomberman suelta bomba y esta alcanza a 'Bagulaa' al morir, este suelta un poder 'lanzar bombas' entonces bomberman puede lanzar bombas. Ahora en lugar de soltar la bomba esta se lanza recorriendo 'n' casilleros y detonando luego de 'm' ticks.
    Given Bomberman se crea en la posicion cuatro cuatro en un tablero de 10 por 10
    Given Bagulaa se encuentra en la posicion (4,5)
    Given El tablero tiene un muro de melamina en (6,1)
    When Bomberman suelta una bomba donde se encuentra
    When Bomberman suelta una bomba donde se encuentra
    Then Bomberman tiene superpoder para lanzar bombas
    Then Rompio el muro de la posicion (6,1)


  Scenario: Bomberman suelta bomba y esta alcanza a 'Proto Max Jr.' al morir, este suelta un poder que le permite a bomberman saltar todo tipo de pared.
    Given Bomberman se crea en la posicion (0,0) en un tablero de 10 por 10
    Given ProtoMax Jr. se encuentra en la posicion (1,0)
    Given El tablero tiene un muro de melamina en (4,0)
    Given El tablero tiene un muro de acero en (6,0)
    When Bomberman suelta una bomba donde se encuentra
    When Bomberman se mueve en el tablero 5 celdas a la derecha
    Then Bomberman se debe encontrar en la posicion (7,0)

  Scenario: Bomberman suelta bomba y esta alcanza a 'Proto-Max Units' al morir, este suelta un poder que le permite a bomberman saltar o lanzar varias bombas al mismo tiempo.
    Given Bomberman se crea en la posicion (0,0) en un tablero de 10 por 10
    Given Proto-Max Units se encuentra en la posicion (1,0)
    Given El tablero tiene un muro de acero en (4,0)
    Given El tablero tiene un muro de melamina en (2,2)
    When Bomberman suelta una bomba donde se encuentra
    When Bomberman suelta una bomba donde se encuentra
    When Bomberman se mueve en el tablero 4 celdas a la derecha
    Then Bomberman se debe encontrar en la posicion (5,0)
    Then Rompio el muro de la posicion (2,2)










