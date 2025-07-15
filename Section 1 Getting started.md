---
title: "Section 1: Getting started"
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


#### Section 1: Getting started

In this section, we will learn how to connect to a Unix computer via a program called `ssh` and run a few basic commands.

Logging in connects your local computer (e.g. laptop) to a remote machine, and allows you to type commands into the Unix prompt. The commands are run on the remote machine, and the results are displayed on your local screen.

You will be allocated a training account for the duration of the workshop. Your username and password will be supplied at the start of the workshop.

We are connecting to a remote computer today so that everyone has an identical environment, regardless of the specifications of your local computer. This connection process is similar to how you would connect to a high-performance computing (HPC) system such as [Spartan](https://dashboard.hpc.unimelb.edu.au/) at The University of Melbourne.

::: discussion

## I'm not attending the live workshop. Can I complete the workshop independently?

Yes you can, although the remote machines are only provided for the live workshop participants.

Follow the instructions for your operating system, then head down to the hands-on section.

::: spoiler

### Mac Users

Download the zipped file available at [this Zenodo address](https://zenodo.org/your-link). We will refer to these data later in the workshop.

Unzip the file by double clicking it in a Finder window.

Open the Terminal app (it comes preinstalled on every Mac). You can find it via a Spotlight Search or via the Launchpad.

In the Terminal, you should see a blinking cursor. Type the following command and replace the word PATH_TO_DIRECTORY with the path to the location of your unzipped folder (or directory). One easy way to find the correct path is to view the directory in the Finder and enable the path bar (*View \> Show path bar*). You can then drag the correct path from the bar at the bottom of the Finder window into the Terminal.

``` bash
cd PATH_TO_DIRECTORY
```


Use the following command to confirm that you have set the correct working directory.

``` bash
pwd
```


If the output of this command ends in `/unix_intro_data`, well done! Now continue with the hands-on section.
:::

::: spoiler

### Windows Users

We will be using a service called binder, which builds a Docker image from a specified repository. This will allow you to run Unix commands in a live environment.

[Access the binder via your web browser.](https://mybinder.org/v2/gh/melbournebioinformatics/training-infrastructure/HEAD)

Be patient, it can take a few minutes to set up your environment.

Once your binder has launched, select *Terminal* from the bottom left-hand corner of the main page.

In the Terminal, you should see a blinking cursor. You can now continue with the hands-on section.
:::

::: 

## Connect to a Unix computer

[Follow the instructions here to connect to the remote machine](https://www.melbournebioinformatics.org.au/tutorials/tutorials/workshop_delivery_mode_info/workshops_nectar/)

::: callout
**Windows users**

Windows users will need to download a terminal emulator such as [PuTTY](https://www.putty.org/) (free and open-source).
:::

## Hands-on

:::::::::::::::::::::::::::::::::::::::: challenge
**1.1 Run some commands**

Once you’ve logged in, run the following commands and see what they do.

Type each command in and hit Enter/Return. Once the previous command has completed, a new prompt indicates that it’s ready for the next command to be entered.

```bash
whoami
```

```bash
date
```

```bash
cal
```

:::::::::::::::::::::::: solution

**Answer**

- `whoami`: displays your username (i.e. the person currently logged in).
- `date`: displays the current date and time.
- `cal`: displays a calendar.

:::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::: challenge
**1.2 Try out some flags**

Many Unix commands accept arguments (sometimes called flags) which enable/disable specific features. For example, you can ask the date command to produce its output in a different format.

```bash
date -I
```

It is not uncommon for a command to accept many different arguments, and, in most cases, more than one argument can be supplied at the same time. Arguments are separated by one or more space characters and they are usually case sensitive.

```bash
cal -m january
```

```bash
cal -3
```

```bash
cal -3 -m january
```

::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::: challenge
**1.3 Consult the manual pages**

If every Unix command has so many options, how you find out what they are and what they do? Thankfully, every Unix command has an associated *manual* that you can usually access by using the `man` command.

Try accessing the manual pages for the commands we have used so far. Can you figure out what day of the week your 100<sup>th</sup> birthday will be?

:::::::::::::::::::::::: hint
**binder users**

If you are running this workshop in a binder, manual pages may not be accessible via the `man` command.

Try an internet search for your desired command followed by *manual unix* instead.

:::::::::::::::::::::::::

:::::::::::::::::::::::: hint
**Hint**

The following command displays the manual page for the `cal` command.

```bash
man cal
```

:::::::::::::::::::::::::

When you are using the `man` command, use the up and down arrows to scroll, or press q to quit. The `man` command is actually using another Unix program, a text viewer called `less`, which we’ll come to later on.

::::::::::::::::::::::::::::::::::::::::::::::::::


