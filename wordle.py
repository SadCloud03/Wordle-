
def wordle(palabra_a_adivinar, cantidad_de_vidas):

    palabra_a_adivinar_lista = list(palabra_a_adivinar)
    letras_verificadas = []
    palabras_verificadas= []
    

    while cantidad_de_vidas > 0:

        print(f"\ntienes {cantidad_de_vidas} vidas")
        palabra_usuario = input(f'ingrese una palabra de {len(palabra_a_adivinar_lista)} letras: ')
        palabra_usuario_lista = list(palabra_usuario)


        if len(palabra_usuario_lista) == len(palabra_a_adivinar_lista):

            if palabra_a_adivinar == palabra_usuario:
                print(f"\nHAZ GANADOOO!!!, la palabra era: \n{palabra_a_adivinar_lista}")
                break


            for letra in range(len(palabra_usuario_lista)):

                letras_iguales = palabra_usuario_lista[letra] == palabra_a_adivinar_lista[letra]
                letras_en_palabra = palabra_usuario_lista[letra] in palabra_a_adivinar_lista
                
                if letras_iguales:
                    letras_verificadas.append(f"[{palabra_usuario_lista[letra]}]")
                elif letras_en_palabra:
                    letras_verificadas.append(f"({palabra_usuario_lista[letra]})")
                else:
                    letras_verificadas.append(palabra_usuario_lista[letra])
                

            palabras_verificadas.append(letras_verificadas)
            letras_verificadas = []

        else:
            print(f'\nla palabra ingresada debe tener {len(palabra_a_adivinar_lista)} letras')


        for impresion in range(len(palabras_verificadas)):
            print(palabras_verificadas[impresion])      


        cantidad_de_vidas = cantidad_de_vidas - 1
        if cantidad_de_vidas == 0:

            print("\nhaz perdido...")

#programa en linea:

#datos previos:
palabra_secreta = input('ingrese una palabra secreta para el juego: ')
cantidad_de_vidas = int(input('Cuantas vidas te gustaria que tenga el juego: '))

#llamar al juego:
wordle(palabra_secreta, cantidad_de_vidas)