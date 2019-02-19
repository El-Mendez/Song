#Universidad del Valle
#Pablo Reyna
#Carné: 19822
#Proyecto Sonic Pi
#The Legend of Zelda Main Theme - Koji Kondo

define :sonido do |nota, tiempo|
  play nota, release: tiempo
  sleep 0.5 * tiempo
end

define :triplet do |primera, segunda, tercera|
  sonido primera, 0.333
  sonido segunda, 0.333
  sonido tercera, 0.334
end

define :corchet do |nota_la, nota_co1, nota_co2, nota_co3, nota_co4|
  sonido nota_la, 0.5
  sonido nota_co1, 0.25
  sonido nota_co2, 0.25
  sonido nota_co3, 0.25
  sonido nota_co4, 0.25
end
#Intro
2.times do
  sonido :B4, 2
  corchet 0,:B4, :F4, :F4, :B4
  corchet 0,:A4, :G4, 0, 0
  sonido :A4, 2
end

#Main theme
#5
in_thread do
  sonido :B4, 1
  corchet :F4, :F4, :B4, 0, 0
  corchet 0, :B4, :Cb5, :D5, :E5
  
  #6
  sonido :F5, 2
  corchet 0,0,0,:F5,:F5
  triplet :F5, :G5, :A5
  
  #7
  sonido :B5, 2
  corchet :B5,:B5, 0, 0, 0
  triplet :B5,:A5,:G5
  
  #8
  corchet :A5,:G5,0,0,0
  sonido :F5, 2
  sonido :F5, 1
  
  #9
  corchet :E5,:E5,:F5,0,0
  sonido :G5, 2
  corchet 0, :F5,:E5,0,0
  
  #10
  corchet :D5,:D5,:E5,0,0
  sonido :F5, 2
  corchet 0, :E5, :D5,0,0
  
  #11
  corchet :C5,:C5,:D5,:F5,0
  sonido :G5, 1
  
  #12
  corchet :F5,:F4,:F4,:F4,:F4
  corchet :F4,:F4,:F4,:F4,:F4
  sonido :G4,0.5
  sonido :A4,0.5
  
  #13
  sonido :B4, 1
  corchet :F4, :F4, :B4, 0, 0
  corchet 0, :B4, :C5, :D5, :E5
  
  #14
  sonido :F5, 2
  corchet :F5,:F5,0,0,0
  triplet :F5, :G5, :A5
  
  #15
  sonido :B5, 2
  sonido :G5, 1
  
  #16
  sonido :C5, 1
  sonido :A5, 2
  sonido :F5, 1
  
  #17
  sonido :G5, 2
  sonido :B5, 1
  
  #18
  sonido :A5, 1
  sonido :F5, 2
  sonido :F5, 1
  
  #19
  sonido :G5, 2
  sonido :B5, 1
  
  #20
  sonido :A5, 1
  sonido :F5, 2
  sonido :D5, 1
  
  #21
  sonido :E5, 2
  sonido :G5, 1
  
  #22
  sonido :F5, 1
  sonido :D5, 2
  sonido :B5, 1
  
  #23
  corchet :C5,:C5,:D5,:F5,0
  sonido :G5, 1
  
  #24
  corchet :F5,:F4,:F4,:F4,:F4
  corchet :F4,:F4,:F4,:F4,:F4
  sonido :G4,0.5
  sonido :A4,0.5
end

