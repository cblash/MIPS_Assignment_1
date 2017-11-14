The purpose of the first commit was to see if I was able to simply take a user input and output it accordingly.
After seeing this possibility I wanted to see if I could simply out put certain parts of the string input.
While I didn't accomplish this for my second commit I was able to observe several critical aspects of what needs to be done in my code
The first being that the string is stored in data and not the register itself something which I found confusing and am still not completely clear on.
The second observation I made was that when outputting an integer, (which is what the will do at the end), it output what is stored in the register, not what is stored in data.
Third, the first character typed by the user for the string goes into the lowest byte of memory
While my code now hasn't changed much and doesn't really accomplish anything the changed lines are merely there to observe the processing of data.
I have also formed somewhat of an algorithm and plan to expand it at a latter time

Algorithm (in-progress):
1. read user input
2. take out and identify each character or byte
3. Add that byte's hexadecimal amount to a total
4. Store that total in $a0
5. Output that total using integer system call