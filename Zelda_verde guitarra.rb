#Universidad del Valle
#Orlando Cabrera
#Carn�: 19943
#Proyecto Sonic Pi
#The Legend of Zelda Main Theme
#Intrumento: Lo mas parecido a guitarra

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
  play k
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

