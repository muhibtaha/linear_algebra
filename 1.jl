function helloworld()
	println("Hello world")
end


function helloworld(count::Int)
	for i in 1:count
		println("Hello world ", (i))  
	end
end


function helloworld(count::Int, variable::Int)
	for i in 1:count
		for j in 1:variable
			println("count is:", i, "and variable is", j)
		end
	end
end		



a =3.14
println(typeof(a))

helloworld()
helloworld(3)
helloworld(3,3)

char = 'a'
println(Int(char))

my_str = "konya"
println(my_str[1])
println(my_str[end-1])
println(my_str[2:end-1])


#how we print the string
for cg in my_str
	print(cg)
end
#second way
println(my_str)

w1 ="hello"
w2="world"


println(w1*' '* w2)

t=3
y=2
println("t is $t and y is $y")


str = readline()
println(str)
