function getSum(num1, num2)
    return num1 + num2

end

print (string.format("5 + 2 = %d", getSum(5, 2)))

function splitStr( theString)
    stringTable ={}

    local i = 1

    for word in string.gmatch(theString, "[^%s]+") do
        stringTable[i] = word
        i = i +1
        
    end

    return stringTable, i

end

splitStrTable, numOfStr = splitStr("suny Plattsburgh")

for j = 1, numOfStr - 1 do
    print (string.format("%d : %s", j, splitStrTable[j]))

end


[[--- output

C:\Users\Kyath\OneDrive\Bureau\summer>lua function2.lua
5 + 2 = 7
1 : suny
2 : Plattsburgh
---]]


[[--logic---]]


age = 13

print (string.format("not true = %s", tostring(not true)))


-- canVote = age> 18? true : false

canVote = age > 18 and  true or false

io.write("can I vote ? ", tostring (canVote))


[[--output
C:\Users\Kyath\OneDrive\Bureau\summer>logic.lua
not true = false
can I vote ? false
C:\Users\Kyath\OneDrive\Bureau\summer>

--]]

[[--- sample operation--]]


io.write("5 + 3 = ", 5+3, "\n")
io.write("5 - 3 = ", 5-3, "\n")
io.write("5 * 3 = ", 5*3, "\n")
io.write("5 / 3 = ", 5/3, "\n")
io.write("5.2 % 3 = ", 5%3, "\n")


io.write("floor(2.345) : ", math.floor (2.345), "\n")
io.write("ceil(2.345) : ", math.ceil (2.345), "\n")
io.write("max(2, 3) : ", math.max (2, 3), "\n")
io.write("min(2, 3) : ", math.min (2, 3), "\n")
io.write("pow(2, 3) : ", math.pow (8, 3), "\n")
io.write("sqrt(64) :", math.sqrt (64), "\n")


[[-- output -- operation

C:\Users\Kyath\OneDrive\Bureau\summer>lua math.lua
5 + 3 = 8
5 - 3 = 2
5 * 3 = 15
5 / 3 = 1.6666666666667
5.2 % 3 = 2
floor(2.345) : 2
ceil(2.345) : 3
max(2, 3) : 3
min(2, 3) : 2
pow(2, 3) : 512
sqrt(64) :8

C:\Users\Kyath\OneDrive\Bureau\summer>

--]]


[[-- if loop --]]


print("enter a number:")
age = io.read("*number")

if age < 16 then
    io.write("You can not drink alcohol at this age", "\n")
    
elseif (age <= 16)  and (age <18) then
    io.write("you can start learning to drive", "\n")
else
    io.write("you can now vote", "\n")
end

print(age)

[[-- output

C:\Users\Kyath\OneDrive\Bureau\summer>lua operation.lua
enter a number:
12
You can not drink alcohol at this age
12

C:\Users\Kyath\OneDrive\Bureau\summer>lua operation.lua
enter a number:
16
you can start learning to drive
16

C:\Users\Kyath\OneDrive\Bureau\summer>lua operation.lua
enter a number:
18
you can now vote
18

C:\Users\Kyath\OneDrive\Bureau\summer>

--]]

