# PicoCTF - Riddle Registry

In this CTF, you are give an `.log` file and you must find the secret flag from the document.

Once I downloaded the file to my attack VM, I printed the logs to my terminal:
```
$ cat server.log
```

<img alt="cat output" src="/writeups/picoCTF/images/cat-output.png" width=400px>

When I looked at the logs, I could see that the lines that contained the flag information had `INFO FLAGPART` in them.

<img alt="info flagpart" src="/writeups/picoCTF/images/info-flagpart.png" width=400px>

I decided to filter the log print out using `grep -i FLAG` to just print the logs that contained flag information:
```
$ grep -i FLAG server.log
```

<img alt="grep flag search" src="/writeups/picoCTF/images/grep-flag-search.png" width=400px>

From here, I could peice together the flag which was `picoCTF{us3_y0urlinux_sk1lls_cedfa5fb}`.

-----

What did I learn?

This CTF taught me that you can use `grep` on logs to search for specific terms.