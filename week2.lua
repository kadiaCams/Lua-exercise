table = {}

table [12] = "Hello user!!"
table [200] = "What is going on outside"
table [341] = "Are you learning a new language"
table [422] = "Bye, see you!!"

for key  , value in pairs (table) do

    print (key, value)

end


io.read()



--[[


C:\Users\Kyath\OneDrive\Bureau\summer>lua table2.lua
12      Hello user!!
341     Are you learning a new language
422     Bye, see you!!
200     What is going on outside
]]





aTable = {}

for i = 1, 10 do
    aTable[i] = i
end

io.write("first: ", aTable[1], "\n")

io.write("Number of Items : ", #aTable, "\n")

table.insert(aTable, 1, 0)

io.write("first: ", aTable[10], "\n")

print(table.concat(aTable, ", "))

table.remove(aTable, 1)
print(table.concat(aTable, ", "))

[[-- output
C:\Users\Kyath\OneDrive\Bureau\summer>lua table.lua
first: 1
Number of Items : 10
first: 9
0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
1, 2, 3, 4, 5, 6, 7, 8, 9, 10

C:\Users\Kyath\OneDrive\Bureau\summer>

--]]

[[-- function incrementation--]
]
doubleIt = function(x) return x * 2 end

print (doubleIt(4))

function outerFunc()
    local i = 0

return function()
    i = i + 1
    return i
end
end

getI = outerFunc()

print (getI())
print (getI())
print (getI())

print (getI())


[[-- output

C:\Users\Kyath\OneDrive\Bureau\summer>lua funct.lua
8
1
2
3
4
--]]


[[-- coroutine sample--]]


co = coroutine.create(function()
for i = 1,  10, 1 do
    print(i)
    print(coroutine.status(co))
    if i == 7 then coroutine.yield() end
end
end)

print(coroutine.status(co))

coroutine.resume(co)

print(coroutine.status(co))

co2 = coroutine.create(function()
    for i = 101,  110, 1 do
        print(i)
    end
end)

coroutine.resume(co2)

coroutine.resume(co)

print (coroutine.status(co))

[[-- output 

C:\Users\Kyath\OneDrive\Bureau\summer>lua coroutine.lua
suspended
1
running
2
running
3
running
4
running
5
running
6
running
7
running
suspended
101
102
103
104
105
106
107
108
109
110
8
running
9
running
10
running
dead

C:\Users\Kyath\OneDrive\Bureau\summer>

--]]




--]]

