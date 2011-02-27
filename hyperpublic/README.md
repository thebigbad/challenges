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

    You've passed Problem 1. You're half way there. Try Problem 2.

    Hyperpublic has an internal karma system to determine which users are the most involved in the ecosystem. Users earn points for the following tasks.

    2 Points – Add Place
    3 Points – Add Thing
    17 Points – Tag Object
    23 Points – Upload Photo
    42 Points – Twitter Share
    98 Points – Facebook Share
    Being addicted to their own product, the Hyperpublic staff has racked up some big karma. The members of the team have the following karma totals:

    Doug – 2349 points
    Jordan – 2102 points
    Eric – 2001 points
    Jonathan – 1747 points
    Amazingly, they've all accomplished these totals in the minimum number of tasks possible in order to reach each amount. For example, if their total was 6 points they would have accomplished this in just 2 tasks (2 "Add Thing" tasks), as opposed to accomplishing it by 3 "Add Place" tasks. Your job is to compute how many total tasks each user has completed. After you've done so, find the answer to Problem 2 using the following formula:

    Problem 2 Answer = Doug's total tasks * Jordan's total tasks * Eric's total tasks * Jonathan's total tasks
