### How does tracking and adding changes make developers' lives easier?
Tracked changes allow developers to see what other people hvae done to alter a file, and makes it easy to roll back to a previous version of the project. 

### What is a commit?
When you have made changes to a file, you can choose to create a commit. This freezes all the changes, and if you want to revert to a previous version of a file at any time, you can return to a prior commit.

### What are the best practices for commit messages?
Good commit messages are written in an imperative style, not past tense. The title should be fewer than fifty characters and provide an overview of what the change will do. It's also possible to add more in-depth text that further explains the changes. The entirety of the commit message's text should fit within 72 columns.

### What does the HEAD^ argument mean?
HEAD^ represents the last commit worked on while HEAD is the commit you are currently on.

### What are the three stages of a git change and how do you move a file from one stage to another?
The three stages are add, commit and push. When you add changes you use the 'git add' command, which puts the files in staging instead of the working directory. This means they'll be included in the next commit. To complete the commit, you use the 'git commit' command. This creates a record of the changes. Finally, you can push the changes to GitHub using the 'git push' command.

### Write a handy cheatsheet of the comands you need to commit your changes:
git add
git commit
git push

### What is a pull request and how do you create and merge one?
A pull request is a message that lets other people know about the changes you've pushed to the repository and gives them the option to merge the changes with a different branch. Once the commit gets pushed to GitHub, you can create a pull request using the web interface. Then you and other people can review the changes you have made and decide whether to merge it into a different branch.

### Why are pull requests preferred when working with teams?
Teams prefer pull requests because they provide everyone with a chance to review the changes before those changes get merged into another branch where they could potentially cause issues.
