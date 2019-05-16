# Fibonnacci sequence module

def fib(a, n):
	''' Return a tuple with a Fibonnacci sequence 
	to the nth number'''

	b = 0
	fib_list = []
	
	if a < 1:
		a = 0
		b = 1

	for i in range(n):
		b = (a + b)
		a = (b + a)
		fib_list.extend((a, b))
		
	return tuple(fib_list)


i = fib(0, 50)
print(i)