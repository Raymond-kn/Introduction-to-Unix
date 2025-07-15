---
title: "Section 5: Removing files and directories"
teaching: 45
exercises: 20
editor_options: 
  markdown: 
    wrap: 72
---

::: questions
-   How do you write a lesson using R Markdown and `{sandpaper}`?
:::


::: objectives
-   Explain how to use markdown with the new lesson template
-   Demonstrate how to include pieces of code, figures, and nested challenge blocks
:::

#### Section 5: Removing files and directories

In this section we’ll cover how to safely remove files and directories that you no longer need.

## Remove directories

The `mkdir` command that we used earlier has an analogue for removing directories called `rmdir`.

```bash
rmdir DIRECTORY
```

Helpfully, `rmdir` will only remove an empty directory (so we don’t accidentally remove important files).

## Remove files

To remove files, we have to use the `rm` (remove) command.

::: caution
**Please read this section VERY carefully!**

Accidental misuse of the `rm` command can lead to huge problems!

If you delete something with `rm`, you will not get it back!

It is possible to delete everything in file system (all directories and subdirectories) with `rm`.

Let’s repeat that last part again: It is possible to delete every file you have ever created with the `rm` command.

:::

Luckily, there is a way of making `rm` a little bit safer. We can use it with the _-i_ flag so that you will be asked for confirmation before deleting anything.

```bash
rm -i FILE
```

::: spoiler
**Can I use a wildcard character with these commands too?**

You can use wildcard characters with any Unix command.

However, using wildcards with the `rm` command is particularly dangerous (we encourage avoiding it altogether).

:::

## Hands-on

:::::::::::::::::::::::::::::::::::::::: challenge
**5.1 Change `rm` behaviour**

Usually `rm` does not display a message once it has run.

Instead using a flag, `rm` will use verbose mode, where it will print the name of each file that has been deleted.

What flag enables verbose mode?

::: solution
**Answer**

-v engages verbose mode.

:::

::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::: challenge
**5.2 Remove file**

Remove the copied file you created in section 4. You can also remove any additional copies you may have made.

::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::: challenge
**5.3 Remove directories**

Remove the directories you created in section 3.

Do not remove the _samples_ directory.

::::::::::::::::::::::::::::::::::::::::::::::::::


