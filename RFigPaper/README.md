
On the master branch, issue
make

This builds paper.pdf


Merge branch AddTitle
Then make again
This recreates fig1.png since fig1.R has changed.



## AddTitle2

Merge branch AddTitle2
```
git merge AddTitle2
```

This updates fig2.R, adding a title and a straight line fit to the log(y) ~ x.

Issue the make command.
This will recreated fig2.png via fig2.R


# UpdateSetup.R  branch

Now we change setup.R to add noise to the y values.

Issuing make causes fig1.png and fig2.png to be updated
as these depend on setup.R


