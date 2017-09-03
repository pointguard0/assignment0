
  No man is an island,
  Entire of itself,
  Every man is a piece of the continent,
  A part of the main.
  If a clod be washed away by the sea,
  Europe is the less.
  As well as if a promontory were.
  As well as if a manor of thy friend's
  Or of thine own were:
  Any man's death diminishes me,
  Because I am involved in mankind,
  And therefore never send to know for whom the bell tolls;
  It tolls for thee. 

Software writing principles.
===========================
One of the messages about good software practices we got from the Unix designers is "Program does one thing, and does it good". On the opposite, too often we face programs, that "do everything, and do it bad".

Programs can interoperate, be connected with each other.
So no program is an island entire of itself.

Kernigan on Unix
================

Watch the video from the AT&T Tech channel https://www.youtube.com/watch?v=tc4ROCJYbm0

The task
======
* You have a file named 'text_to_spell'.
* You have a file named 'dictionary'.
* Create a shell script, which will take the file to spell, and by using the dictionary, print to the standard output words that contain mistakes.
Use pipeline to solve the problem.
The shell script has to be uploaded to the github repository, in a directory with your name.
We'll check your script by running it like:

$ ./yourscript text_to_spell

and we expect certain mistaken words to be written to stdout.

Programs you might want to use
========================
Refer to the program manual pages via 'man' command or note the links below, if any.

* cat
* fmt (https://everythingsysadmin.com/2012/09/unorthodoxunix.html)
* tr (https://unix.stackexchange.com/questions/171603/convert-file-contents-to-lower-case#171604)
* sort
* uniq
* sed




