# picoCTF - Hidden in plainsight

In this CTF, you are give a JPG image in which the flag is hidden.

I first downloaded the image to my attack VM and then opened the document to check the image:

<img alt="img.jpg" src="/writeups/picoCTF/images/img-file.png" width=400px>

After checking the image, I decided to check the image metadata using the `file` command:

```
$ file img.JPG
```

<img alt="img metadata" src="/writeups/picoCTF/images/file-scan.png" width=600px>

In the metadata, I could see "comment: c3RlZ2hpZGU6Y0VGNmVuZHZjbVE9". This comment was clearly encoded so I opened [Cyberchef]() to try decode the message.

I first tried to decode the message with `base64` which revealed `steghide: cEF6endvcmQ=`.

<img alt="first base64 decode" src="/writeups/picoCTF/images/cyberChef-first-scan.png" width=300px>

To begin with, I was unsure what this message meant. I googled`steghide` and found out it was a command tool related to steganography which is the method of hiding data and files within an image file.

I could see that the second part of the message was still encoded so I decided to run base64 against this decoded part of the string:

<img alt="Second base64 decode" src="/writeups/picoCTF/images/cyberChef-second-scan.png" width=300px>

This revealed the string `pAzzword`.

After decoding the message, I begun focusing on Steganography. I loaded a terminal and looked at the documentation using `steghide --help`.

After learning how the tool works, I decided to run `info` on the image to see what was being hidden:

```
$ steghold -info img.JPG
```

<img alt="steghold info" src="/writeups/picoCTF/images/steghide-info.png" width=400px>

When I was asked for a passphrase, I entered the phrase found in the second base64 check `pAzzword`.

This scan revealed a hidden text file called `flag.txt`. I then used the extract function from steghold to extract the file:

```
$ steghide extract -sf img.txt
```

<img alt="extracting file using steghide" src="/writeups/picoCTF/images/steghide-extract.png" width=400px>

Once the file was extracted, I used `cat` to reveal the flag: `picoCTF{h1dd3n_1n_1m4g3_e7f5b969}`.

<img alt="final flag" src="/writeups/picoCTF/images/final-flag.png" width=400px>


-----

What did I learn?

I learned how steganography can be used to hide files and data inside of images. I also learned how to use steghide to extract any hidden documents. 


