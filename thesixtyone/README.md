1. Voting Rings

A social news website called 'Reddigg' has hired you as a consultant to help them with a potentially serious problem. Reddiggers submit news articles in hopes that their submission will make it to the front page -- an article has a chance of getting posted once it receives enough upvotes.

Reddigg suspects spammers have found a way to manipulate the system by commanding fake users to regularly vote for their own articles, hence forming 'voting rings'. You've been hired to identify suspected voting rings based on recent user data.

Your task may not be as straightforward as it seems however. The caveat is that the spammers may have fashioned their sock puppets to act like real users. To create some misdirection, fake users may sometimes pass on voting for targeted articles or even vote on articles that they have no association with.

Kevin Huffman and Alexis Rose, the creators of Reddigg, request that you write a program in Python or C to identify the top five suspected unique voting rings consisting of at least five users for each ring.

Input Format
Your program should read from stdin. The input will be a series of alternating lines. The odd lines consists of a single article id represented by an integer. The even lines consists of space separated integer ids of users who have voted on the article in the preceding line. If no user has voted on the article, the line will be blank.

Output Format
Your program should output five or more lines of space-separated numbers, with each line representing a voting ring. The first value in each line is a self-defined confidence value from 0.0 (not suspect) to 1.0 (very suspect) corresponding to how suspicious the voting ring is. The next set of space separated values in the line are the user ids which make up the voting ring. You can optionally output unofficial lines with the prefix '#' to display what your algorithm is doing while it is running.

Example Output:

    # iteration: 0
    # iteration: 5
    # iteration: 15
    # iteration: 20
    # iteration: 25
    # done!
    0.8754 25464 112213 53496 36670 104333
    0.8543 3110 25350 64847 
    0.7187 3405 57368 80152 54517 88155 61154 53579
    0.6785 34071 95718 41934 57109 111747 116480 60685 
    0.5721 20517 34910 66217 55465 109585

To get you started, Reddigg has provided voting data conforming to the specified input format on a few hundred articles: voting_ring.txt. Due to the nature of this problem, there may not be one right answer. Reddigg is happy with programs that can produce satisfactory reports.

Your solution should be presented as a file named 'problem1.py' or 'problem1.c' depending on the language used and should run within five minutes with the provided input on a 2GHz Pentium.
