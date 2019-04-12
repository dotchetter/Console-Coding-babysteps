# Assignment 1:

Write a program that asks for your firstname, lastname and phone number. 
The program will then print it out on the screen. 

Example output:

	>>> What's your name? Bruce
	>>> What's your lastname? Wayne
	>>> What's your phone number? 0701111222
	Your name is Bruce Wayne and your phone number is 0701111222.

### TIP!
### Use input() to ask user for values. 
Remember to declare a variable to store the input in. Example:

	$inputVariable = Read-Host ('Your prompt for the user goes here! ') 
whatever the user types is stored in 'var'.

## String concatenation. 
Keep in mind that you can't do math with strings and integers. 
They're not friends like that. If you want to input a digit as a string, Read-Host simply
does this for you. If you want to take in the numbers as integers however, you need to say so.

	[int]$inputVariable = Read-Host 'What is 1+1?'
In this case, the input will be stored in var and the type will be int32.
Be careful though - maybe you want your users to enter a decimal number? 
In that case, it's better to read the input as a string, then convert it to 
the right data type automatically, like this:

	$inputVariable = Read-Host 'Give me a number'
	$inputVariable = (0 + $inputVariable) # This converts it to double or int depending on the contents of $inputVariable automatically.

String + string is True! To add content to a string, simply do:

	$foo = 'Hakuna '
	$foo += 'Matata'
	Write-Host $foo
	Hakuna Matata

the '+=' operand is equal to saying:

	$foo = 'Hakuna '
	$foo = $foo + 'Matata'

We just discard the '$foo = $foo +...' way of doing it.

## Keep it simple
	You need to break down the problem:
	Ask for firstname, store it in a variable.
	Ask for lastname, and store it in a separate (or add it to the previous..?) variable.
	Ask for phone number, and store it in a variable. Or... add everything to one variable, as you go!

# Assignment 2 (string concatenation and variable mutation):

In this assignment, you are going to write your first console application.

## The goal
Write a program that is a number guessing program. Effectively, you are going to guess the number and your program will tell you if you got it right. 

## You need to know...
You need to know the following concepts first:

* if, elif, else statements

* Difference between int() and str()

## If you get stuck
If you get stuck, Google is your friend. You can always reach me on WhatsApp if you get stuck, we'll work it through together. Remember that you need to use input() to take in values from the user, and that input() will take inputs as str(). To take input as integers, use
	
	# $foo will be of datatype int()
	$foo = int(input('Your guess?'))

	# bar will be of datatype str()
	bar = input('Your guess?')

## A hint
In Psuedo code, one could write something like this...

	answer is 190
	guess is input 'Guess my number!'

	if the guess is not equal to the answer,
		write 'Sorry, wrong answer.'

### In PowerShell, these are the logical operators you can practice in this excercise:

* '-gt' Greater than
* '-lt' Less than
* '-ge' Greater than or equal
* '-le' Less than or equal
* '=' Assignment
* '-eq' Equal to
* '-ne' Is not equal to
* '-and' At least two statements are true (Boolean)
* '-or' One or the other statement is true (Boolean)

PowerShell also comes with a vast array of comparison operators such as:

* -'like'
* -'notlike'
* -'match'
* -'notmatch'
* -'contains'
* -'notcontains'
* -'in'
* -'notin'

This example will terminate the program as soon as you either hit the right
answer OR miss it. It will also not give you any input on whether you were
too high or too low in your guess. Not very nice. Let's be more nice. 

	answer is 190
	guess is input 'Guess my number!'

	if the guess is less than answer,
		write 'Too low!'
	but the guess is higher than answer,
		write 'Too high'
	otherwise,
		write 'Correct!'

See the difference? Now, you are using your if clause to give feedback, helping the user hit the right target.

# Assignment 3 (while loops, conditionals and datatypes):

In this assignment, we continue to develop the coffee machine we coded during the class.

## The goal

Create a simple coffee machine interface. It should look something like this:

	*     The best coffee in the world!	*

	*        Pick a beverage and size	*


	1. Mocaccino	2. Capuccino

	3. Latte	4. Coffee with milk

	5. Coffee 	6. Chocolate

Presume the user pressed 2..

	Pick the size for your Capuccino.

	1. Small 20 SEK		2. Medium 30 SEK

	3. Large 35 SEK		4. Huge	50 SEK


Presume the user pressed 3..

	Please pay in the slot below.
	Total: 35 SEK

Now, ask the user to type in the number your program is asking for.
Remember to check if it's the right amount.
As example, presume the user enters an amount too low.. it could look
something like this:

	Please pay in the slot below.
	Total: 35 SEK

** User enters 30 and presses Enter **
	
	Sorry, you didnt pay enough. 
	Please pay in the slot below.
	Total: 35 SEK

On the other hand, remember to give change if they overpay.

	Please pay in the slot below.
	Total: 35 SEK

** User enters 51 and presses Enter **

	You paid 51.
	Change: 16 SEK

	Your Capuccino is brewing. Thank you for your order!
## Bonus points if you fix this feature:
** The coffee machine resets and gets ready for a new order, and forgets about the one that just happened. ***

	*     The best coffee in the world!	*

	*        Pick a beverage and size	*


	1. Mocaccino	2. Capuccino

	3. Latte	4. Coffee with milk

	5. Coffee 	6. Chocolate


## You need to know...

In order to complete this assignment, you will be a lot better of with the while loop.
Although a for loop could suffice or even be better depending on how you design this program, 
for now, we focus on the while loop. 

So far, we've briefly looked in to the while loop. The while loop lets you 
loop and repeate a block of code until your conditions are met, and you want to
exit the loop. This is called iteration.

A while loop in PowerShell is a very powerful tool that a PowerShell programmer 
cal make use of in a variety of use cases. 

For instance, here is how you can use a while loop to count to 100:
	$number = 0
	while ($number -lt 100){
		$number += 1
		Write-Host $number
	}

The while condition here is clear: While number is less than 100, increment number
by 1, and print it out on the screen. Since number is 1 after the first iteration, the loop will go over it again and proceed until number is no longer less than 100. The loop will then break and any code after the while loop will execute. 

You can also include negations in your conditional statement for the while loop. Including, you can declare more than two conditional statements in while loop, but we will look in to that later on. For now, stick to one condition in the conditional statement for the while loop.

Plain english, in the coffee machine when you check the payment from the customer and make sure they don't underpay, you could say something like this:

	while ($payment -lt $price){
		Write-Host "Please pay in the slot below."
		Write-Host "Total: $price SEK"
	}

You can use more than one while loop simultaneously. This is called nesting.

	while ($true){
		<# Your code here with the menu as an example.
		while True is a statement that will run forever, known as an infinite loop. 
		This is so because of the boolean statement is True. You are in fact
		saying that as long as True is True, keep the loop going. #>
		
		while (-not payment -ge price){
			<# This loop will proceed as an inner loop of the one above. 
			If you for any reason want to exit the loop other than the statement 
			you put when creating the loop, do so with: break #>
		}
	}

	
# Assignment 4 (While loops, string iteration, if statements)

Lets make an update to the number guessing program.

The number guessing program in assignment 2 can be improved.
Let's now make it a bit smarter.

Write a number guessing program that does the following:

Write a menu like the one below:

	1. Play the guessing game
	2. Show every guess so far
	3. Show every right answer so far
	4. Exit 

If the user presses 1 and hits enter, the number guessing game starts like before.
When the guess is through, return to the menu.

If the user presses 2 or 3, display the history of current games so far.
This can be easily achieved by adding the correct answer and the guess to 
either a Hashtable, or to two separate arrays, or even an array with two nested 
arrays inside. It's your choice.

Example output when 2 is pressed:

	* User guessed 50 | Answer was 99
	* User guessed 89 | Answer was 99
	* User guessed 78 | Answer was 99
	* User guessed 99 | Answer was 99
	* User guessed 3 | Answer was 46

... And so on.
There is no need to write this data to disk, just keeping it in memory for the 
runtime of your program is enough.

If you need an arrayList that you can add data to iteratively, either you can do this via:

	$arr = @()
	$arr += 1

OR..

	$arr = System.Collections.Arraylist
	$arr.Add(1)

Whichever you choose is OK for this assignment.


# Assignment 6 :

## The Fibonacci sequence

The Fibonacci sequence is a beautiful mathematical pattern that
is expressed througout our world in different forms. We see it
in physical objects and is ever present in nature such as plants, 
animals and in the world of physics. It describes a beautiful pattern
of incrementation. 

The formula is pretty straight forward. Here's an example of a sequence:

1, 1, 2, 3, 5, 8, 13, 21, 34, 55

The logic in the sequence is that the rightmost integer is the sum
when adding the two last integers together. 

1 + 2 = 3
2 + 3 = 5
3 = 5 = 8
5 + 8 = 13

You get the idea.


This is a very common assinment in programming and it can be approached in 
many different ways, some more efficient than others. This assignment 
can teach you the different ways of solving a problem and can help you 
consider the drawbacks of one solution compared to another, and you may find
yourself wanting to improve it when you've gotten better at programming after a 
while. 

## The assignment

Write a short function that will return a Fibonacci sequence of numbers starting from n, which is an argument passed to the function.

The function must:

* Validate the entered data (throw error if not integer given)
* Start the sequence from n as given by argument and y length, for example:
  Let's say you have a fibonacci function that returns an array of numbers. 
  The function will start counting from n, and only keep counting y times.
  
Let's call the function like this:
 	
	fib 5 5
  
The function returns:

	5, 5, 10, 15, 25

Let's call it like this instead:

	fib 1 10

The function returns:

	1, 1, 2, 3, 5, 8, 13, 21, 34, 55

