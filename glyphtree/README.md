---------------------------------------------------------------------------------
Challenge 1: Maxtransmogrify!
Oct 16th, 2010


You are given a box of balls, where each ball can be one of M colors.

You are also given an unlimited supply of N types of jars. Each type of jar
takes a given quantity of balls as input, and after a given amount of time T'
produces a different quantity of balls as output. 

Write a program that takes a single argument on the command line. This argument
will be a file name, which contains the input data. The program should output to
stdout the jars to use at each timestep to end up with the most number
of white balls after a given number of timesteps T.

M, N, T', T are all positive integers.


Input Specification

The input file is as follows:

    15 / red:9 blue:5 green:0 white:5
    jar1 / 2 / red:1 blue:2 / green:5 white:2
    jar2 / 3 / red:2 green:1 / red:3 blue:2

In the above example, you start out with 9 red, 5 blue, 0 green, and 5 white
balls. There are two types of jars, where jar1 takes 2 timesteps to produce
5 green and 2 white balls from 1 red and 2 blue balls. In this case there are
15 timesteps available in which to maximize the number of white balls.


Output Specification

    1 jar1:2
    2
    3 jar2:3
    4
    5
    6 jar1:3 jar2:3
    7
    8
    9 jar1:3 jar2:3
    10
    11
    12 jar1:3 jar2:3
    13
    14
    15

The output should have exactly T lines of output, each line beginning with
the timestep. In the sample solution above we start by using 2 jars of type jar1,
then do nothing on the next timestep. On the third timestep we can use 3 of
type jar2 thanks to the balls produced from step 1.


Submission Directions

All submissions must execute in a *NIX type environment (sorry, no Windows specific
solutions are accepted). You are not guaranteed any libraries or plugins beyond what
is part of the language/interpreter itself. The following languages are accepted:

* GNU C/C++ 4.2.3
* Ericsson Erlang 5.5.5
* GHC Haskell 6.8.2
* Sun Java 1.5.0_15
* INRIA OCaml 3.10.0
* Perl 5.8.8
* Python 2.5.2
* Ruby 1.8.6

