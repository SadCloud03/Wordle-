challenge: Wordle

problema: Recrear el juego Wordle de fomra sencilla

divición de problemas:
- valores a entrar:
    la palabra "a adivinar" (programa)
    "la cantidad de vidas" (programa)
    la palabra del usuario (usuario)

- Proceso dentro del programa:
    recibir la palabra "a adivinar"
    recibir la "cantidad de intentos"
    convertir la palabra "a adivinar" a lista para poder iterar en ella  
    crear una lista vacia para almacenar las letras
    crear una lista vacia para almacenar las palabras 
    preguntar al usuario por la palabra "a adivinar" y almacenar su respuesta en una variable "palabra de usuario"
    convertir "palabra de usuario" a lista para poder iterar en ella
    (bucle) iniciar ciclo para comparar elementos de las listas convertidas, y almacenar elemento por elemento las listas de "a adivinar" y "palabra de usuario"
     las letras en el lugar correcto se verifican con []
     las letras que estan en la palabra se verifica con ()
     si la letra no esta en la palabra etonces no se verifica nos nada
     almacenar las letras de la palabra introducida en la lista "letras introducidas"
     una vez analizada completamente una palabtra, todos los elementos que estan dentro de "letras introducidas" son almacenados como elemento dentro de "palabras introducidas"
     se vuelve a inciar la lista de "letras introducidas" para que este vacia y repita el proceso de comparacion la cantidad de vidas que se tenga
     en caso de adivinar correctamente la palabra "a adivinar", mostrar mensaje, junto con la palabra adivinada, y romper ciclo
     en caso de que se acaben "cantidad de intentos", mostrar mensaje, y romper ciclo
     mostrar el resultado cada vez que se hace la verificacion completamente

    cosas para hacer mas interactivo el juego:
    motrar vidas del juego
    en caso de quedarse sin vida, mostrar un mensaje

    manejo de ocaciones:
    manejo de ocacion en que la palabra supere la cantidad de letras de la palabra a adivinar
    manejo de ocacion en la que la letra se repita, una vez en una posicion correcta y otra vez en una posicion en la que no (no se como resolver ahora)


resolucion de cada problema:

valores a entrar:
    la palabra "palabra_a_adivinar" (programa)
    palabra_a_adivinar = input('ingrese una palabra secreta para el juego: ')

    la "cantidad_de_vidas" (programa)
    cantidad_de_vidas = int(input('Cuantas vidas te gustaria que tenga el juego: '))

    la "palabra_usuario" (usuario)
    palabra_usuario = input(f'ingrese una palabra de {len(palabra_a_adivinar_lista)} letras: ')

en el programa:
    recibir la palabra "palabra_a_adivinar"
    recibir la "cantidad_de_vidas"

    convertir la palabra "palabra_a_adivinar" a lista para poder iterar en ella
    palabra_a_adivinar_lista = list(palabra_a_adivinar)

    crear una lista vacia para almacenar las letras
    letras_verificadas = []

    crear una lista vacia para almacenar las palabras 
    palabras_verificadas = []

    preguntar al usuario por la palabra "palabra_a_adivinar" y almacenar su respuesta en una variable "palabra_usuario"
    palabra_usuario = input(f'ingrese una palabra de {len(palabra_a_adivinar_lista)} letras: ')

    convertir "palabra_usuario" a lista para poder iterar en ella
    palabra_usuario_lista = list(palabra_usuario)

    iniciar ciclo para comparar elementos de las listas convertidas, y almacenar elemento por elemento las listas de "palabra_a_adivinar_lista" y "palabra_usuario_lista"
    las letras en el lugar correcto se verifican con []
    las letras que estan en la palabra se verifica con ()
    si la letra no esta en la palabra etonces no se verifica nos nada
    almacenar las letras de la palabra introducida en la lista "letras_verificadas"
    una vez analizada completamente una palabtra, todos los elementos que estan dentro de "letras_verificadas" son almacenados como elemento dentro de "palabras_verificadas"
    se vuelve a inciar la lista de "letras_verificadas" para que este vacia y repita el proceso de comparacion la cantidad de vidas que se tenga

    while cantidad_de_vidas > 0:
        
        for letra in range(len(palabra_usuario_lista)):
            son_iguales = palabra_usuario_lista[letra] == palabra_a_adivinar_lista[letra]
            esta_dentro = palabra_usuario_lista[letra] in palabra_a_adivinar_lista

            if son_iguales:
                letras_verificadas.append(f"[{palabra_usuario_lista[letra]}]")
            
            elif esta_dentro:
                letras_verificadas.append(f"({palabra_usuario_lista[letra]})")

            else:
                letras_verificadas.append(palabra_usuario_lista[letra])

        palabras_verificadas.append(letras_verificadas)
        letras_verificadas = []
        cantidad_de_vidas = cantidad_de_vidas - 1
    
    en caso de adivinar correctamente la palabra "a adivinar", mostrar mensaje, junto con la palabra adivinada, y romper ciclo
    en caso de que se acaben "cantidad de intentos", mostrar mensaje, y romper ciclo

    if palabra_usuario == palabra_a_adivinar:
        print(f"Haz Ganadoooo!!!, la palabra era \n{palabra_usuario_lista}")
        break
    
    mostrar el resultado cada vez que se hace la verificacion completamente
    for impresion in range(len(palabras_verificadas))
        print(palabras_verificadas[impresion])

    
    cosas para hacer mas interactivo el juego:
    motrar vidas del juego
    print(f"\ntienes {cantidad_de_vidas} vidas")

    en caso de quedarse sin vida, mostrar un mensaje
    if cantidad_de_vidas == 0:

        print("\nhaz perdido...")


    manejo de ocaciones:
    manejo de ocacion en que la palabra supere la cantidad de letras de la palabra a adivinar
    if len(palabra_usuario_lista) == len(palabra_a_adivinar_lista):
        inicia programa....
        .................
        fin programa....
    else:
        print(f"la palabra debe tener {len(palabra_a_adivinar_lista) letras}")
    