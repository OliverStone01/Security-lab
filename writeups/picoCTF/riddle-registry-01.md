# PicoCTF - Riddle Registry

In this CTF, you are given a PDF document with a hidden flag.

Here is an image of the PDF:
<img alt="" src="" width=200px>

After reading the PDF I decided to take a look at the file information using `exiftool` on my attack virtual machine. Here was the output:

<img alt="exiftool output" src="" width=200px>

Looking at the `author`, this has clearly been encrypted. The fitst thing I noticed was the `=` at the end of the string. This is commonly seen with **Base64** encoding.

I decided to test my theory by running the following command:
```
$ echo "<author string>" | base64 -d
```

Here was the output:
<img alt="Output of decoding base64" src="" width=200px>

This output is the flag to complete this challenge.