
# It begins with the console

In this our very first Chapter we need to first go over some fundamentals before
we get to writing some code. A programmer benefits tremendously from having some
prerequisite knowledge of how the console in a computer works, and being able to
navigate, copy, move and change files or directories(read:folders) from a
command line shell. This will make troubleshooting simple programs and testing
our code much more intuitive. You'll also become less fearful of the scary black
window and feel more confident using a computer. You might even enjoy the console
over the GUI if you're like me! 

* CLI & GUI - What does it mean?
* navigate in the console (cd, ls, tree)
* start programs from the console
* stop programs and processes from the console
* environment variables
* create, rename, move and delete files
* write data to files

## Practice commands
Try to use your new skills. Below you can see me repeating some of the commands.
These are all ran in PowerShell, but most of them are identical on Mac, Linux and Unix.

**Make a new directory**:
	
	mkdir 'foldername here'

**This will tell you where you are.**

	pwd

**This will let you navigate.** 

	cd
 
	cd .. (backwards)
 
	cd foldername\foldername\foldername

	cd \ 

**This will show you what is in a directory.** 

	ls

**To see another directory where you are not currently in,**

	ls c:\foldername\foldername
	
## Assignments:

**Create a directory with any name on your desktop**
	
	cd $env:userprofile\desktop
 
	mkdir 'NameYourFolder'

--OR--

	mkdir $env:userprofile\desktop\my_directory

**Write your username in a file inside the folder.**
	
	cd $env:userprofile\desktop\my_directory

	"My name is $env:username and I made this file from the console." > myfile.txt

**Open the file with 'cat' or with notepad to see that it worked.**

	cat $env:userprofile\desktop\my_directory\myfile.txt

--OR--

	$env:userprofile\desktop\my_directory\myfile.txt

**Append your file with any sentence. Try both commands to see how they differ. (> vs >>)**

The '>>' operand in console command means append. That is, it puts the text you write
under what is already in the file. If you only use '>', you will replace all content
in the file with what you type. This is critical to remember as you can end uplosing 
valuable data if you don't do this right. 

To append your file:

	"This is another line in my file" >> $env:userprofile\desktop\my_directory\myfile.txt

To overwrite the file leaving only one line of data which is what you type:

	"This is another line in my file" > $env:userprofile\desktop\my_directory\myfile.txt


# Chapter 1: Intro to programming
	
In this Chapter we'll cover the very start and initial basics of why we program
computers the way we do, how it is done and what happens behind the scenes in a
short format. We will cover some concepts and terms in programming, including but
not exclusive to: 
   
* What is a variable? 
* How is a program executed by the computer?
* what is binary and why is it used in computer science?

DEMO: Write a program that asks for your name and prints it out to the screen with a greeting.
DEMO: Demonstrate the difference between int() and float() datatype. 
DEMO: Demonstrate how Python 3 behaves with arithmetic and datatypes.


## Assignments:
See "Homework" folder in this repository.


# Chapter 2: Data types

Programming languages use different data types for different purposes.
In this Chapter we will take a look at them and see what they specialize in.

* string concatenation
	- '=' vs '=='
	- input()
	- string concatenation
	- type(foo)

* datatypes
	- str
	- int
	- float
	- complex


## Assignments:
See "Homework" folder in this repository.


# Chapter 3: logic control flow

* logical operators
	- logical operators:
	and, or, not, <, >, <=, >=, ==, !=, %

### We cover:

* What are if / else / elseif // elif statements?
* How do they work in executing code? 
* How can we use them with a minimalistic clean approach?
* Nesting if statements


## Assignments:
See "Homework" folder in this repository.


# Chapter 4: loops

* loops
- for loops
- foreach loops
- while loops


During this chapter we cover while, for and foreach loops.
We use our loops to iterate through iterable datatypes such as arrays and more.


### We cover:

* What is a loop?
* How are loops used in programming? 
* What are some of the dangers with loops?
* The different types of loops in resp. language


## Assignments:

See "Homework" foler in this repository


# Chapter 5: functions

* Functions / Methods
In this last chapter of this fundamentals course, we cover functions. 

In what ways are functions used? What's the difference between a method and a function?
These questions and much more is covered as we dive in to the layers of functions in programming.

### We cover:

* What is a function? 
* How do I use functions in my program? 
* How do functions work? 
* What is good practice when using functions in software?
* What is a void function?
* What is a method?


# Exam, end of course

This is the part where you are tested on these different chapters we've covered.
You will recieve a small number of different projects to complete where you will
need your knowledge and experience to complete them. The 


