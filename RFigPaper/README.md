
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



# Change_mkData.R

So the data need to be recreated to change the range of x.
So we do this, add meaningful/detectable noise via the rexp.
We undo the change in setup.R by commenting out the rnorm() addition.

Now mkData.R and setup.R have changed.
So this should regenerate data.rds first and then run fig1.R and fig2.R



# Update_part2.tex

We update the contents of the part2.tex file.
This should only update paper.pdf when we run make.

When we do this however, paper.pdf appears to be up-to-date.
This is because we have not added the dependency for paper.pdf
on part2.tex, just paper.tex and the PNG files.

So we add this dependency to the Makefile
\begin{verbatim}
paper.pdf: paper.tex fig1.png fig2.png part2.tex
\end{verbatim}
and rerun make.
This triggers the creation of paper.pdf via the rule that calls pdflatex.


