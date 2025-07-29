---
title: "Section 4: Viewing and manipulating files"
teaching: 45
exercises: 20
editor_options: 
  markdown: 
    wrap: 72
---

::: questions
- How do you view, copy, move, and rename files in Unix?

- How can you change file permissions?
:::


::: objectives
- Learn to view, copy, move, and rename files

- Understand how to change file permissions
:::


In this section we will focus on files; how to view them, how to copy them, how to move them, how to rename them and how to change their permissions.

## View a file

We’ve covered finding the locations, sizes and lengths of files, but how do we look inside them? The `less` command allows us to view (but not edit) text-based files. The `-S` flag sets the line folding to off. This is particularly useful when you have very long lines (like our FASTQ files).

```bash
less -S sample_1.fastq
```

::: spoiler
**No such file or directory**

If you see this error message, the most likely reason is that you are not in the correct directory.

Use `pwd`, `cd` and `ls` to find your way to the right place.

:::

::: spoiler
**What if my files are compressed?**

If a file is in a compressed format, you will need to decompress it first before you view it with `less`.

For example, the `gunzip` command will decompress a fastq.gz file.

Alternatively, you can view the contents of an uncompressed file by printing it to the screen with the command `zcat`.

:::

When you are using `less`, you can move forward or backwards one line at a time using the arrow keys. To quit, press q.

For long files, it can be inconvenient to view the whole thing when only a peek at a few lines or just the header information is enough.

The command `head` prints the first 10 lines of a file to the screen.

```bash
head sample_1.fastq
```

Equivalently, we have the `tail` command, that does the same for the last lines of a file. Both `head` and `tail` have an option to change the number of lines displayed.

```bash
tail -n 4 sample_1.fastq
```

## Copy, move or rename a file

To make a copy of a file, all you need to do is supply the name of the file and a name for the copy to the `cp` command.

```bash
cp sample_1.fastq copy_of_sample_1.fastq
```

You can check to see the new file using `ls`.

Moving a file from one directory to another follows the same basic command format shown below.

```bash
mv FILE DESTINATION
```

Renaming a file actually uses the `mv` command too.

```bash
mv OLD_NAME NEW_NAME
```

## Change file permissions

File and directory permissions determine what actions users can perform. We can see these permissions using the long-form `ls` output.

```bash
ls -lhrt
```

The file permission symbolic notation works as follows:

The first character determines the type of object (d for directory, - for a regular file).

The remaining nine characters are in three triads.

| **Three permission triads** |                                     |
|-----------------------------|-------------------------------------|
| first triad:                | what the owner can do               |
| second triad:               | what the group members can do       |
| third triad:                | what other users can do             |

| **In each triad**    |   |   |
|----------------------|---|-------------|
| first character:     | r | readable    |
| second character:    | w | writable    |
| third character:     | x | executable  |

::: spoiler
**Can I see an example?**

For the permission string *drwxr-xr-x*

The **d** means it is a directory.

The **rwx** means that the owner of the directory (your user account) can read, write and execute the directory. Execute permission on a directory means that you can `cd` into the directory.

The **r-x** means that anyone in the user group can read and execute the directory.

The second **r-x** means that other users on the system can read and execute the directory.

:::

To change permissions, use the `chmod` command (for change mode). The owner of a file can change the permissions for user (**u**), group (**g**), or others (**o**) by adding (+) or subtracting (-) the read (**r**), write (**w**), and execute (**x**) permissions.

To add write permission for others for a file, the following command would be used:

```bash
chmod o+w FILE
```

## Hands-on

:::::::::::::::::::::::::::::::::::::::: challenge
**4.1 Move files**

Move _sample_1.fastq_ and _sample_2.fastq_ into the samples directory.

::: hint

Move multiple files at once by using the wildcard character *.

The * symbol is a Unix wildcard that can stand for any string.

Hence sam* will refer to any file in your current directory that begins with sam.

:::

::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::: challenge
**4.2 Rename a file**

Rename _sample_c.fastq_ to _sample_3.fastq_

After 4.1 and 4.2 you should have a _samples_ directory with 3 files that follow the same naming convention.

::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::: challenge
**4.3 Change file permissions**

Remove all users write permission to the FASTQ files in the _samples_ directory. This will prevent you from accidentally overwriting or erasing these files.

::: hint

The change a permission for the user (**u**), group (**g**), and others (**o**) all at once, use a for all.

:::

::::::::::::::::::::::::::::::::::::::::::::::::::
