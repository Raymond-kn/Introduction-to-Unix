---
title: 'introduction_2'
teaching: 10
exercises: 2
---

::: questions
-   How do you write a lesson using R Markdown and `{sandpaper}`?
:::

::: objectives
-   Explain how to use markdown with the new lesson template
-   Demonstrate how to include pieces of code, figures, and nested challenge blocks
:::

## Introduction

**Anticipated workshop duration when delivered to a group of participants is *3 hours***.

For queries relating to this workshop, contact Melbourne Bioinformatics ([bioinformatics-training\@unimelb.edu.au](mailto:bioinformatics-training@unimelb.edu.au)).

Find out when we are next running this training as an in-person workshop, by visiting the [Melbourne Bioinformatics Eventbrite page](https://www.eventbrite.com.au/o/melbourne-bioinformatics-xxxxxx).

------------------------------------------------------------------------

### Overview

#### Topic

-   [ ] Genomics
-   [ ] Transcriptomics
-   [ ] Proteomics
-   [ ] Metabolomics
-   [ ] Statistics and visualisation
-   [ ] Structural Modelling
-   [x] Basic skills

#### Skill level

-   [x] Beginner
-   [ ] Intermediate
-   [ ] Advanced

This workshop is designed for participants with little or no command-line knowledge.

## Description

A hands-on workshop covering the basics of the Unix command line interface.

Knowledge of the Unix operating system is fundamental to the use of many popular bioinformatics command-line tools. Whether you choose to run your analyses locally or on a high-performance computing system, knowing your way around a command-line interface is highly valuable. This workshop will introduce you to Unix concepts by way of a series of hands-on exercises.

Completion of this workshop will provide the background knowledge required for several Melbourne Bioinformatics workshops that require command-line skills.

**Tools:** Standard Unix commands, [FileZilla](https://filezilla-project.org/)

**Topic overview:**

*Section 1:* Getting started\
*Section 2:* Exploring your current directory\
*Section 3:* Making and changing directories\
*Section 4:* Viewing and manipulating files\
*Section 5:* Removing files and directories\
*Section 6:* Searching files\
*Section 7:* Putting it all together\
*Section 8:* Transferring files

## Learning Objectives

At the end of this introductory workshop, you will:

- Access a Unix machine either locally or remotely
- Navigate the file system
- Organise your files into directories
- Change file permissions to improve security and safety
- Move and copy files between directories
- Safely remove files
- Perform searches within files
- Combine commands using pipes
- Transfer files between a local and remote machine

## Tutorial layout

- There is a `Table of contents` on the right-hand side that can be used to easily navigate through the tutorial by clicking the relevant section.

```text
These grey coloured boxes are code blocks. The rectangular boxes in the top right-hand corner of this code block/grey box can be used to copy the code to the clipboard.
``` 
::::::::::::::::::::::::::::: challenge

**Coloured boxes like these with > on the far right-hand side, can be clicked to reveal the contents.**

REVEALED!

::::::::::::::::::::::::::::::::::::::::::::::::
                    
::::::::::::::::::::::::::::: callout

**Attention: Pay attention to the information in these boxes.**

Important information, hints and tips.

::::::::::::::::::::::::::::::::::::::::::::::::

## Requirements and preparation

::::::::::::::::::::::::::::: callout

**Important**

**Attendees are required to bring their own laptop computers.**

At least one week before the workshop, participants should install the software specified below. This should provide sufficient time for participants to liaise with their own IT support should they encounter any IT problems.

::::::::::::::::::::::::::::::::::::::::::::::::
                    
### Required Software

- For information about required software, click [here](https://www.melbournebioinformatics.org.au/tutorials/tutorials/workshop_delivery_mode_info/workshops_nectar/).

### Required Data

- No additional data need to be downloaded for the live delivery workshop.
- Instructions for data download for independent completion of this workshop are included in Section 1.

### Mode of Delivery

This workshop will be run on a [Nectar](https://nectar.org.au/) Instance. An “Instance” is Nectar terminology for a virtual machine running on the Nectar Cloud OpenStack infrastructure. An “Instance” runs on a “compute node”; i.e. a physical computer populated with processor chips, memory chips and so on.

You will be given an individual IP address and password to log on to using the SSH client tool on your computer (Terminal on Mac or PuTTY on Windows).

Should you wish to complete this workshop independently, you can do so locally (for Mac and LINUX users) or via binder (for Windows users).

### Slides and PDF instructions

The slides presented during this workshop are available here: [PDF](https://www.melbournebioinformatics.org.au/tutorials/tutorials/unix/media/unix_intro_slides.pdf) / [PPTX](path/to/slides.pptx).

[A printer-friendly PDF version of these workshop instructions is available here.](https://www.melbournebioinformatics.org.au/tutorials/tutorials/unix/unix_intro_instructions.pdf)

## Author Information

Written by: Steven Morgan Melbourne Bioinformatics, University of Melbourne

Created/Reviewed: November 2022

A previous introductory Unix workshop is archived [here](https://www.melbournebioinformatics.org.au/tutorials/tutorials/unix_archive_2022/unix/).

## Background

Before we begin the hands-on part of this workshop, we will first give a short presentation to introduce some important Unix concepts. The slides are available here: [PDF](https://www.melbournebioinformatics.org.au/tutorials/tutorials/unix/media/unix_intro_slides.pdf) / [PPTX](path/to/slides.pptx).

## Section 1: Getting started

In this section, we will learn how to connect to a Unix computer via a program called `ssh` and run a few basic commands.

Logging in connects your local computer (e.g. laptop) to a remote machine, and allows you to type commands into the Unix prompt. The commands are run on the remote machine, and the results are displayed on your local screen.

You will be allocated a training account for the duration of the workshop. Your username and password will be supplied at the start of the workshop.

We are connecting to a remote computer today so that everyone has an identical environment, regardless of the specifications of your local computer. This connection process is similar to how you would connect to a high-performance computing (HPC) system such as [Spartan](https://dashboard.hpc.unimelb.edu.au/) at The University of Melbourne.

::::::::::::::::::::::::::::: callout

**I'm not attending the live workshop. Can I complete the workshop independently?**

Yes you can, although the remote machines are only provided for the live workshop participants.

Follow the instructions for your operating system, then head down to the hands-on section.

::::::::::::::::::::::::::::::::::::::::::::::::
                    
::::::::::::::::::::::::::::: challenge

**Mac Users**

Download the zipped file available at [this Zenodo address](https://zenodo.org/your-link). We will refer to these data later in the workshop.

Unzip the file by double clicking it in a Finder window.

Open the Terminal app (it comes preinstalled on every Mac). You can find it via a Spotlight Search or via the Launchpad.

In the Terminal, you should see a blinking cursor. Type the following command and replace the word `PATH_TO_DIRECTORY` with the path to the location of your unzipped folder (or directory). One easy way to find the correct path is to view the directory in the Finder and enable the path bar (*View > Show path bar*). You can then drag the correct path from the bar at the bottom of the Finder window into the Terminal.

```bash
cd PATH_TO_DIRECTORY
```

Use the following command to confirm that you have set the correct working directory.

```bash
pwd
```

If the output of this command ends in `/unix_intro_data`, well done! Now continue with the hands-on section.

::::::::::::::::::::::::::::::::::::::::::::::::
                    
::::::::::::::::::::::::::::: challenge

**Windows Users**

We will be using a service called binder, which builds a Docker image from a specified repository. This will allow you to run Unix commands in a live environment.

[Access the binder via your web browser.](https://mybinder.org/your-link)

Be patient, it can take a few minutes to set up your environment.

Once your binder has launched, select *Terminal* from the bottom left-hand corner of the main page.

In the Terminal, you should see a blinking cursor. You can now continue with the hands-on section.

::::::::::::::::::::::::::::::::::::::::::::::::

## Connect to a Unix computer

[Follow the instructions here to connect to the remote machine](https://www.melbournebioinformatics.org.au/tutorials/tutorials/workshop_delivery_mode_info/workshops_nectar/)

::::::::::::::::::::::::::::: callout

**Windows users**

Windows users will need to download a terminal emulator such as [PuTTY](https://www.putty.org/) (free and open-source).

::::::::::::::::::::::::::::::::::::::::::::::::









::: instructor
Inline instructor notes can help inform instructors of timing challenges associated with the lessons. They appear in the "Instructor View"
:::

::::: challenge
## Challenge 1: Can you do it?

What is the output of this command?

``` r
paste("This", "new", "lesson", "looks", "good")
```

::: solution
## Output

``` output
[1] "This new lesson looks good"
```
:::

## Challenge 2: how do you nest solutions within challenge blocks?

::: solution
You can add a line with at least three colons and a `solution` tag.
:::
:::::

## Figures

You can include figures generated from R Markdown:


``` r
pie(
  c(Sky = 78, "Sunny side of pyramid" = 17, "Shady side of pyramid" = 5), 
  init.angle = 315, 
  col = c("deepskyblue", "yellow", "yellow3"), 
  border = FALSE
)
```

<div class="figure" style="text-align: center">
<img src="fig/introduction-2-rendered-pyramid-1.png" alt="pie chart illusion of a pyramid"  />
<p class="caption">Sun arise each and every morning</p>
</div>

Or you can use pandoc markdown for static figures with the following syntax:

`![optional caption that appears below the figure](figure url){alt='alt text for accessibility purposes'}`

![Blue Carpentries hex person logo with no text.](https://raw.githubusercontent.com/carpentries/logo/master/Badge_Carpentries.svg)

## Math

One of our episodes contains $\LaTeX$ equations when describing how to create dynamic reports with {knitr}, so we now use mathjax to describe this:

`$\alpha = \dfrac{1}{(1 - \beta)^2}$` becomes: $\alpha = \dfrac{1}{(1 - \beta)^2}$

Cool, right?

::: keypoints
-   Use `.md` files for episodes when you want static content
-   Use `.Rmd` files for episodes when you need to generate output
-   Run `sandpaper::check_lesson()` to identify any issues with your lesson
-   Run `sandpaper::build_lesson()` to preview your lesson locally
:::
