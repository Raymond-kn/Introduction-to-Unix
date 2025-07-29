---
title: "Section 3: Making and changing directories"
teaching: 45
exercises: 20
editor_options: 
  markdown: 
    wrap: 72
---

::: questions
- How do you change directories in Unix?

- How can you create new directories?
:::


::: objectives
- Practice changing the current directory

- Learn how to create new directories
:::


In this section, we will learn how to change the current directory and create entirely new ones.

## Create a new directory

To make a new directory, we use the `mkdir` command, supplying a sensible directory name.

```bash
mkdir my_directory
```

::: spoiler
**Did that work?**

Some commands (including `mkdir`) do not display a message after they have been executed. You can check that your `mkdir` command worked with `ls`.
:::

## Change working directory

Let’s change our current working directory to the newly created one with the command `cd` (for **C**hange **D**irectory).

```bash
pwd
```

```bash
cd my_directory
```

```bash
pwd
```

Note that `cd` can also take the full path as input (the long version that you can see in the `pwd` output). What we supplied above is called a relative path.

## Hands-on

:::::::::::::::::::::::::::::::::::::::: challenge
**3.1 Create nested directories**

It can be very useful to organise your directories into hierarchies. Try creating a new directory inside _my_directory_. Then create another new directory inside that one.

Change your working directory to the innermost directory.

::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::: challenge
**3.2 Change directory with ..**

Often, it is useful to go ‘upwards’ one level in the directory structure. Two dots .. are used in Unix to refer to the parent directory of wherever you are. All directories (besides the root level) have a parent that can be accessed in this way.

A single dot . is used to refer to the current directory (often useful when running bioinformatics tools).

Try using .. to change your directory.

What about ../..? What does that represent?

::: hint
**Hint**

Set your working directory back to your innermost directory first.
:::

::: solution
**Answer**

../.. refers to the parent of the parent directory.

../../.. refers to the parent of the parent of the parent directory.

And so on…
:::

::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::: challenge
**3.3 Save time with tab completion**

One great Unix you can start using right away is that you can tab complete the names of files, directories and commands.

Just type enough characters to uniquely identify the name of a file, directory or command, press tab and Unix will do the rest.

If pressing tab doesn’t do anything, then you have not typed enough unique characters. In this case, pressing tab twice will show you all of the possible completions.

Try using tab completion to complete directory names as you change directories with `cd`.

Think of all the saved keystrokes!

::: solution
**How can I save more time?**

Another great time-saver is that Unix stores a list of all of the previous commands that you have executed in each session. Access this list by using the up and down arrows.

So, if you type a long command but make a mistake, press the up arrow and then you can use the left and right arrows to move the cursor in order to make an edit.

You could also try the `history` command to print a list of your previous commands.

```bash
history
```
:::

::::::::::::::::::::::::::::::::::::::::::::::::::

