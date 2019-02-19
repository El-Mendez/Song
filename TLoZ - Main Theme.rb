#Universidad del Valle
#Pablo Méndez. Piano
#Carné: 19195
#Orlando Cabrera. Guitarra
#Carné: 19943
#Proyecto Sonic Pi
#The Legend of Zelda Main Theme - Koji Kondo
#Intrumento: Piano

use_synth :piano #Se tocará el piano
#La "mano izquierda" en un piano se encarga del rimo
#Creo función para ahorrar líneas de código
define :ritmo do |nota1, nota2|
  4.times do
    play nota1
    play nota2
    sleep 0.5
  end
end

#in_thread do hace que suenen al mismo tiempo
in_thread do
  #parte 1 a 4
  ritmo :A4, :E4
  ritmo :G4, :D4
  ritmo :F4, :C4
  ritmo :D4, :B3
  
  #Toda esta parte se repite
  2.times do
    #parte 5 a 10
    ritmo :A4, :E4
    ritmo :G4, :D4
    ritmo :F4, :C4
    ritmo :G4, :E4
    ritmo :F4, :D4
    ritmo :E4, :C4
    
    #parte 11 a 16
    ritmo :D4, :B3
    ritmo :E4, :B3
    ritmo :A4, :E4
    ritmo :G4, :D4
    ritmo :F4, :D4
    ritmo :E4, :B3
    
    #parte 17 a 20
    ritmo :F4, :C4
    ritmo :E4, :B3
    ritmo :F4, :C4
    ritmo :E4, :B3
    
    #parte 21 a 24
    ritmo :F4, :D4
    ritmo :E4, :C4
    ritmo :D4, :B3
    ritmo :E4, :B3
  end
end

#La "mano derecha" se encarga de la melodía en piano

#Creo función para ahorrar espacio. La negra es 1 tiempo; los corchetes, 0.5
define :tecla do |nota, tiempo|
  play nota, release: tiempo * 0.5
  sleep 0.5 * tiempo
end

#Un triplet es cuando se tocan tres teclas en un tiempo menor al que debería ser
#La canción solo tiene tripletes de tres corcheas que duran juntas 1 tiempo
define :triplet do |primera, segunda, tercera|
  tecla primera, 0.3333
  tecla segunda, 0.3333
  tecla tercera, 0.3334
end

#Hay varios pedazos con un corchete y dos medios corchetes unidos
define :corchetes_2 do |nota_larga, nota_corta1, nota_corta2|
  tecla nota_larga, 0.5
  tecla nota_corta1, 0.25
  tecla nota_corta2, 0.25
end

in_thread do #Para que lo lea al mismo tiempo
  #parte 1
  tecla :A4, 2
  triplet 0, 0, :A4
  triplet :A4, :A4, :A4
  
  2.times do
    #parte 2 y 3
    triplet :A4, 0, :G4
    tecla :A4, 1
    triplet 0, 0, :A4
    triplet :A4, :A4, :A4
  end
  
  #parte 4
  corchetes_2 :A4, :E4, :E4
  corchetes_2 :E4, :E4, :E4
  corchetes_2 :E4, :E4, :E4
  tecla :E4, 0.5
  tecla :E4, 0.5
  
  2.times do
    #parte 5
    tecla :A4, 1
    tecla :E4, 1.5
    tecla :A4, 0.5
    tecla :A4, 0.25
    tecla :B4, 0.25
    tecla :C5, 0.25
    tecla :D5, 0.25
    
    #parte 6
    tecla :E5, 2
    tecla 0, 0.5
    tecla :E5, 0.5
    triplet :E5, :F5, :G5
    
    #parte 7
    tecla :A5, 2
    tecla 0, 0.5
    tecla :A5, 0.5
    triplet :A5, :G5, :F5
    
    #parte 8
    tecla :G5, 0.75
    tecla :F5, 0.25
    tecla :E5, 2
    tecla :E5, 1
    
    #parte 9
    corchetes_2 :D5, :D5, :E5
    tecla :F5, 2
    tecla :E5, 0.5
    tecla :D5, 0.5
    
    #parte 10
    corchetes_2 :C5, :C5, :D5
    tecla :E5, 2
    tecla :D5, 0.5
    tecla :C5, 0.5
    
    #parte 11
    corchetes_2 :B4, :B4, :C5
    tecla :D5, 2
    tecla :F5, 1
    
    #parte 12
    corchetes_2 :E5, :E4, :E4
    corchetes_2 :E4, :E4, :E4
    corchetes_2 :E4, :E4, :E4
    tecla :E4, 0.5
    tecla :E4, 0.5
    
    #parte 13
    tecla :A4, 1
    tecla :E4, 1.5
    tecla :A4, 0.5
    tecla :A4, 0.25
    tecla :B4, 0.25
    tecla :C5, 0.25
    tecla :D5, 0.25
    
    #parte 14
    tecla :E5, 2
    tecla 0, 0.5
    tecla :E5, 0.5
    triplet :E5, :F5, :G5
    
    #parte 15
    tecla :A5, 2
    tecla 0, 1
    tecla :C6, 1
    
    #parte 16
    tecla :B5, 1
    tecla :G5, 2
    tecla :E5, 1
    
    #parte 17
    tecla :F5, 3
    tecla :A5, 1
    
    #parte 18
    tecla :G5, 1
    tecla :E5, 2
    tecla :E5, 1
    
    #parte 19
    tecla :F5, 3
    tecla :A5, 1
    
    #parte 20
    tecla :G5, 1
    tecla :E5, 2
    tecla :C5, 1
    
    #parte 21
    tecla :D5, 3
    tecla :F5, 1
    
    #parte 22
    tecla :E5, 1
    tecla :C5, 2
    tecla :C5, 1
    
    #parte 23
    corchetes_2 :B4, :B4, :C5
    tecla :D5, 2
    tecla :F5, 1
    
    #parte 24
    corchetes_2 :E5, :E4, :E4
    corchetes_2 :E4, :E4, :E4
    corchetes_2 :E4, :E4, :E4
    tecla :E4, 0.5
    tecla :E4, 0.5
  end
end

#Guitarra

use_synth :pluck
#Definimos variables en caso de que una nota estubiera mala
a = 69 #3.1
b = 67 #3.1
c = 64 #4.3
d = 71 #2.1
e = 72 #2.3
f = 74 #2.4
g = 76 #1.1
h = 77 #1.2
i = 79 #1.4
j = 81 #1.6
k = 64 #2.2
l = 74 #1.0
m = 77 #1.3
n = 84 #1.9
o = 83 #1.8
p = 79 #1.5
#Algunas variables nop fueron usadas
#Definimos las partes de la cancion para reducir las lineas de programacion
define :primera_parte do
  play a
  sleep 0.1667
  play a
  sleep 0.1667
  play a
  sleep 0.1667
  play a
  sleep 0.1667
  play a
  sleep 0.3333
  play b
  sleep 0.1667
  play a
  sleep 0.8332
end

define :segunda_parte do
  play a
  sleep 0.1667
  play a
  sleep 0.1667
  play a
  sleep 0.1667
  play a
  sleep 0.1667
  play a
  sleep 0.25
end
define :tercera_parte do
  3.times do
    play c
    sleep 0.125
    play c
    sleep 0.125
    play c
    sleep 0.25
  end
  play c
  sleep 0.25
  play a
  sleep 0.5
  play c
  sleep 0.75
  play a
  sleep 0.25
  play a
  sleep 0.125
  play d
  sleep 0.125
  play e
  sleep 0.125
  play f
  sleep 0.125
  play g
  sleep 1.25
  play g
  sleep 0.25
  play g
  sleep 0.166
  play h
  sleep 0.166
  play i
  sleep 0.166
  play j
  sleep 1.25
end

define :cuarta_parte do
  play j
  sleep 0.25
  play j
  sleep 0.166
  play i
  sleep 0.166
  play h
  sleep 0.166
  play i
  sleep 0.375
  play h
  sleep 0.125
  play g
  sleep 1
  play g
  sleep 0.5
  play f
  sleep 0.25
  play f
  sleep 0.125
  play g
  sleep 0.125
  play h
  sleep 1
  play g
  sleep 0.25
  play f
  sleep 0.25
  play k
  sleep 0.25
  play k
  sleep 0.125
  play f
  sleep 0.125
  play g
  sleep 1
  play f
  sleep 0.25
  play k
  sleep 0.25
  play d
  sleep 0.25
  play d
  sleep 0.125
  play e
  sleep 0.125
  play l
  sleep 1
  play m
  sleep 0.5
  play g
  sleep 0.25
end

define :quinta_parte do
  play n
  sleep 0.5
  play o
  sleep 0.5
  play p
  sleep 1
  play g
  sleep 0.5
  play h
  sleep 1.5
  play j
  sleep 0.5
  play p
  sleep 0.5
  play g
  sleep 1
  play g
  sleep 0.5
  play h
  sleep 1.5
  play j
  sleep 0.5
  play p
  sleep 0.5
  play g
  sleep 1
  play e
  sleep 0.5
  play f
  sleep 1.5
  play h
  sleep 0.5
  play g
  sleep 0.5
  play 72
  sleep 1
  play e
  sleep 0.5
  play d
  sleep 0.25
  play d
  sleep 0.125
  play e
  sleep 0.125
  play l
  sleep 1
  play m
  sleep 0.5
  play d
  sleep 0.25
end
#Empieza la cancion

in_thread do
  play a
  sleep 1.3333
  #La estructura de la cancion
  2.times do
    primera_parte
  end
  
  1.times do
    segunda_parte
  end
  
  1.times do
    tercera_parte
  end
  
  1.times do
    cuarta_parte
  end
  
  1. times do
    tercera_parte
  end
  sleep 0.25
  1.times do
    quinta_parte
  end
  
  1.times do
    tercera_parte
  end
  
  1.times do
    cuarta_parte
  end
  
  1.times do
    tercera_parte
  end
  sleep 0.25
  1.times do
    quinta_parte
  end
  
  1.times do
    tercera_parte
  end
end
