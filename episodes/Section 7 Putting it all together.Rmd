---
title: "Section 7: Putting it all together"
teaching: 45
exercises: 20
editor_options: 
  markdown: 
    wrap: 72
---

::: questions
- What are some advanced Unix concepts for combining commands?

- How can you use multiple commands together effectively?
:::


::: objectives
- Learn advanced techniques for combining Unix commands

- Understand how to use commands together to solve more complex tasks
:::


In this section we will cover a few more advanced Unix concepts that allow us to bring together some of the commands we have learned so far.

## Combine commands with pipes

One of the most powerful features of Unix is that you can send the output from one command directly into the input of any other command.

We do this by using a pipe that is represented by the | character. Think of a pipe as a connection between two Unix commands.

```bash
grep CAT..T sample_1.fastq | wc -l
```

The first part of the command is the same `grep` search from 6.3.
The `grep` output is sent through a pipe to `wc`, where the -l option counts the number of lines. So as a whole, this command counts the number of sequences that contain a match to the motif CATNNT.

## Redirect output to a file

It can be very useful to direct output into a new file, rather than simply printing it to the screen.

This file redirection can be done with the **>** symbol.

```bash
whoami > user.txt
```

The command above sent the output of the `whoam`i command to a file called user.txt. Notice that there was no output on the screen. You can check the contents of user.txt with `less`.

::: caution
**Warning**

Be careful when using file redirection (**>**); it will overwrite any existing file of the same name.

:::

We can also use the **>>** operator to append output to the end of an existing file.

```bash
date >> user.txt
```

You should see that your user.txt file now contains the output of the `date` command under the original user line.

## Hands-on

::::::::::::::::::::::::::: challenge
**7.1 Use a pipe**

Display the ID lines from the first 10 entries in _sample_1.fastq_ using a pipe.

::: solution
**Answer**

```bash
grep ^@ sample_1.fastq | head
```

Or, alternatively:

```bash
head -n 40 sample_1.fastq | grep ^@
```

:::

:::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::: challenge
**7.2 Direct output to a file**

Use your command from above but redirect the output to a file. Choose a sensible name for your file.

:::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::: challenge
**7.3 Create a new FASTQ file**

Create a new FASTQ file containing the final 3 reads in each of the three FASTQ files.

::: solution
**Answer**

```bash
tail -n 12 sample_1.fastq > new_sample.fastq
tail -n 12 sample_2.fastq >> new_sample.fastq
tail -n 12 sample_3.fastq >> new_sample.fastq
```

Or, alternatively:

```bash
tail -n 12 *.fastq | grep -v "^==>" | grep . > new_sample.fastq
```
:::

:::::::::::::::::::::::::::::::::::::::::::::
