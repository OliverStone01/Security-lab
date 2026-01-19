# picoCTF - Hidden in plainsight

In this CTF, you are give a JPG image in which the flag is hidden.

I first downloaded the image to my attack VM and then opened the document to check the image:

<img alt="img.jpg" src="" width=400px>

After checking the image, I decided to check the image metadata using the `file` command:
```
$ file img.png
```

<img alt="img metadata" src="" width=300px>

In the metadata, I could see "comment: c3RlZ2hpZGU6Y0VGNmVuZHZjbVE9". This comment was clearly encoded so I opened [Cyberchef]() to try decode the message.

