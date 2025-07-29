---
title: "Section 2: Exploring your current directory"
teaching: 45
exercises: 20
editor_options: 
  markdown: 
    wrap: 72
---

::: questions
- How can you view and explore the file system using Unix commands?

- What files are available on the remote machine?
:::


::: objectives
- Learn basic commands to navigate and view the file system

- Explore pre-loaded files on the remote Unix machine
:::


In this section, we will learn how to “look” at the file system and further expand our repertoire of Unix commands.

The machines provided have been set up with some files for us to take a look at.

## Where am I?

There may be many hundreds of directories on any Unix machine, so how do you know which one you are in? The command `pwd` will **P**rint the **W**orking **D**irectory. If you ever get lost in the file system, remember the `pwd` command. Try it out.

``` text
pwd
```
Many bioinformatics tools require paths as input. Check your paths with pwd before you submit a job to a job scheduler.

## List available files and directories

What about looking at the contents of a directory? For that, we use the `ls` command (short for ‘list’).

``` text
ls
```

## Hands-on

:::::::::::::::::::::::::::::::::::::::: challenge
**2.1 Reveal more information**

Run `ls` with the long flag to get more information about the contents of the directory. How did the output change?

```bash
ls -l
```

:::::::::::::::::::::::: solution

**Answer**
The long flag means that each file or directory is placed on its own line. Extra information is also included.

```bash
drwxr-xr-x 2    alpha    alpha   4.0K  Sep  8 23:28 samples
\--------/ ^ \--------/ \-----/ \----/ \----------/ \-----/
permission |  username   group   size      date      name
       /---^---\
       linkcount
```
Where:

- **permissions**: 4 parts, file type, user perms, group perms and other perms
    - *object type*: 1 character, _d_ = directory and - = regular file
    - _user_ permissions: 3 characters, _r_ = read, _w_ = write, _x_ = execute and - no permission
    - _group_ permissions: same as user except for users within the owner group
    - _other_ permissions: same as user except for users that are not in either _user_ or _group_
- **username**: user who owns this object
- **group**: group who owns this object
- **size**: number of bytes this object takes to store on disk
- **date**: date and time when this object was last edited
- **name**: name of the object
- **linkcount**: number of links this object has in the file system (safe to ignore)


:::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::: challenge
**2.2 Upgrade your `ls`**

`ls` is a command you’re likely to use a lot! Why not find a combination of flags you like.

What does this combination of flags do?

```bash
ls -lhrt
```

:::::::::::::::::::::::: hint

**Hint**

Always remember the `man` command.

```bash
man ls
```

:::::::::::::::::::::::::

:::::::::::::::::::::::: solution

**Answer**

The command above returns the contents of the current directory in long form (-l), sorted in reverse (-r) order of their last edit (-t), with file sizes shown in more convenient units (-h).

:::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::: challenge
**2.3 Compare files**

samples is a directory; you can tell by the leading ‘d’ in the long-form `ls` output.

`ls` can be used to list the content of other directories, not just the current one.

```bash
ls -lhrt samples
```

The `wc` (for **W**ord **C**ount) command prints the number of lines, words, and bytes in a file.

```bash
wc samples/sample_c.fastq
```
Which of the 3 FASTQ files has the most lines?

:::::::::::::::::::::::: hint

**Hint**

`wc` can accept multiple input files with spaces between them.

:::::::::::::::::::::::::

:::::::::::::::::::::::: solution

**Answer**

_sample_c_.FASTQ has the most lines.

:::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::

