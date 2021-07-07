
local lives = 10
local randomNumber = math.random(1, 50)

print("welcome to higher or lower than! ")

while lives > 0 do

    print("you have "..lives.."left, Guess the number!")

    local number = io.read()

    number = tonumber(number)

    if number == randomNumber then

        print ("You guess the correct number, Congrat!!")

        break

    elseif number < randomNumber then

        print ("Guess higher!")

    elseif number > randomNumber then

        print ("Guess lower!")

       end

       if lives <= 0 then

        print ("you failed!")

        break
end 

end

io.read()




--[[C:\Users\Kyath\OneDrive\Bureau\summer>lua library2.lua
welcome to higher or lower than!
you have 10left, Guess the number!
2
Guess higher!
you have 10left, Guess the number!
12
Guess higher!
you have 10left, Guess the number!
19
Guess higher!
you have 10left, Guess the number!
100
Guess lower!
you have 10left, Guess the number!
10
Guess higher!
you have 10left, Guess the number!
9
Guess higher!
you have 10left, Guess the number!
5
Guess higher!
you have 10left, Guess the number!
11
Guess higher!
you have 10left, Guess the number!
99
Guess lower!
you have 10left, Guess the number!
50
Guess lower!
you have 10left, Guess the number!
20
Guess higher!
you have 10left, Guess the number!
30
Guess lower!
you have 10left, Guess the number!
25
You guess the correct number, Congrat!!
]]


local lives = 10
math.randomseed(os.time())

local randomNumber = math.random(1, 50)


print("welcome to higher or lower than! ")

while lives > 0 do

    print("you have "..lives.."left, Guess the number!")

    local number = io.read()

    number = tonumber(number)

    if number == randomNumber then

        print ("You guess the correct number, Congrat!!")

        break

    elseif number < randomNumber then

        print ("Guess higher!")

    elseif number > randomNumber then

        print ("Guess lower!")

       end

       lives = lives -1

       if lives <= 0 then

        print ("you failed!")

        break
end 

end

io.read()



--[[

C:\Users\Kyath\OneDrive\Bureau\summer>lua library2.lua
welcome to higher or lower than!
you have 10left, Guess the number!
12
Guess higher!
you have 9left, Guess the number!
9
Guess higher!
you have 8left, Guess the number!
30
Guess lower!
you have 7left, Guess the number!
25
Guess lower!
you have 6left, Guess the number!
20
Guess lower!
you have 5left, Guess the number!
15
Guess higher!
you have 4left, Guess the number!
16
Guess higher!
you have 3left, Guess the number!
18
Guess higher!
you have 2left, Guess the number!
19
You guess the correct number, Congrat!!]]
