
# It begins with the console

In this our very first chapter we need to first go over some fundamentals before
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
	
```powershell
mkdir 'foldername here'
```

**This will tell you where you are.**

```powershell
pwd
```

**This will let you navigate.** 

```powershell
cd
 
cd .. (backwards)
 
cd foldername\foldername\foldername

cd \ 
```

**This will show you what is in a directory.** 

```powershell
ls
```

**To see another directory where you are not currently in,**

	ls c:\foldername\foldername

## Assignments:

**Create a directory with any name on your desktop**
	
```powershell
cd $env:userprofile\desktop
 
mkdir 'NameYourFolder'
```

--OR--

```powershell
mkdir $env:userprofile\desktop\my_directory
```

**Write your username in a file inside the folder.**
	
```powershell
cd $env:userprofile\desktop\my_directory

"My name is $env:username and I made this file from the console." > myfile.txt
```

**Open the file with 'cat' or with notepad to see that it worked.**

```powershell
cat $env:userprofile\desktop\my_directory\myfile.txt
```

--OR--

```powershell
$env:userprofile\desktop\my_directory\myfile.txt
```

**Append your file with any sentence.**

To append your file:

```powershell
"This is another line in my file" | Out-File $env:userprofile\desktop\my_directory\myfile.txt -Append
```

To overwrite the file leaving only one line of data which is what you type:

```powershell
"This is another line in my file" | Out-File $env:userprofile\desktop\my_directory\myfile.txt -Append
```

Now, try to pipe the **ping** command to a file. Let's say it's to store the output to compare the network speeds before and after you've installed a new network in your house.

```powershell
ping | Out-File -Filename $home\SomeDir\pingresults.txt
```

To then add the next ping to the same file without overwriting it, add the **-Append** switch.

```
ping | Out-File -Filename $home\SomeDir\pingresults.txt -Append
```

*Pro tip! If you forget the switches while writing a command, write a " - " and hit CTRL + SPACE to see available switches*

# Chapter 1: Intro to programming

In this Chapter we'll cover the very start and initial basics of why we program
computers the way we do, how it is done and what happens behind the scenes in a
short format. We will cover some concepts and terms in programming, including but
not exclusive to: 

* What is a variable? 
* How is a program executed by the computer?
* what is binary and why is it used in computer science?

DEMO: Write a program that asks for your name and prints it out to the screen with a greeting.
DEMO: Demonstrate the difference between int() and float() data type. 
DEMO: Demonstrate how Python 3 behaves with arithmetic and data types.


## Assignments:
See "Homework" folder in this repository.


# Chapter 2: Data types

Most Object oriented programming languages use different data types for different purposes.
In this Chapter we will take a look at them and see what they specialize in. You will learn methods that you can utilize to convert a variable to a different data type too. We will cover:

* Strings
* Integers
* Floating Point Numbers
* Complex Numbers
* How to see the datatype of a variable
* How to change / mutate / convert from one type to another
* What rules apply, and what sets these data types apart


## Assignments:
See "Homework" folder in this repository.


# Chapter 3: Logic control flow

When you know how to deal with variables and simple things like adding, subtracting and printing stuff - it's time to get down with some logic! Writing your first programs are a lot like writing a recipe to a very slow person. Imagine your computer being the dumbest thing you ever had. You need to tell it *exactly* how to do whatever it is you want; when, for how long and if anything deviates from your plan, you'll have to tell it what to do about that too! We start with the if-statement to steer the logic the way we want, telling the computer how it should perform a certain task.

**You will learn**

- logical operators:
  - and
  - or
  - not
  - ''<''
  - ''>''
  - ''<=''
  - ''>=''
  - ''==''
  - ''!=''
  - ''%''
- if, else, elif
- nested if, else, elif statements


## Assignments:
See "Homework" folder in this repository.


# Chapter 4: Loops

Now that you know how to write software that runs once and are done, it's time to learn how to write software that can repeat actions for a given set of times. We use loops in programming to repeat tasks or to *iterate* over *Lists*, hash tables or *dictionaries*, *arrays*, and more. If you'd want to write a program never terminates autonomously for example, this is how you do it.

**You will learn**

- for loops
- while loops
- nested for loops
- nested while loops
- list and dict comprehension with one-line iterations
- How to write loops efficiently with the help of language built-in methods


## Assignments:

See "Homework" folder in this repository


# Chapter 5: Methods


In this last chapter of this fundamentals course, we cover methods. 

In what ways are methods used? Is there a difference between a method and a function?
These questions and much more is covered as we dive in to the layers of methods in programming.

### We cover:

* What is a method? 
* How do I use methods in my program? 
* How do methods work? 
* What is good practice when using methods in software?
* What is a void method?

## Assignments:

See "Homework" folder in this repository



# Chapter 6: Objects

When you know how to use methods with efficient and abstract design with clean logic and good code reuse, we will briefly look in to OOP or *Object Oriented Programming*. The OOP paradigm is very good to learn but we will only peek inside for now. You will understand the nature of an object, why Python and many other languages use this approach.




# Exam, end of course

This is the part where you are tested on these different chapters we've covered.
You will recieve a small number of different projects to complete where you will
need your knowledge and experience to complete them. 