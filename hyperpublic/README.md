    Source: http://hyperpublic.com/challenge/question1

    Hyperpublic Challenge - Problem 1

    Hyperpublic users can add their friends by emailing a photo of them to add@hyperpublic.com. We want to determine a user’s influence on the system by determining how many users he is responsible for. A user’s influence is calculated by giving him 1 point for every user he’s added in addition to the sum of the influence scores of each user that he’s added.

    Example: User 0 adds User 1 and User 2. User 1 adds User 3.

    User 0’s influence score is 3. (He added two users and one of them added added a third user.)
    User 1's is 1.
    User 2’s is 0.
    User 3’s is 0.

    The above scenario is represented by the following input file. Line i is user ID i and position j within the line is marked with an X if user ID i added user ID j. Both row and column indicies are 0-based:

     OXXO
     OOOX
     OOOO
     OOOO
          

    Use the input file here to determine what the highest influence score is among 100 random Hyperpublic users. To compute the answer to problem 1, append the top 3 influence totals together in descending order. (For example if they are 17, 5, and 3 then submit 1753)
