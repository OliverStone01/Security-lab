## Tryhackme Introduction to web hacking

Start Date: 16/11/25

### Walking an application

Here is a short list of the in-built browser tools:
View Source - Use your browser to view the human-readable source code of a website.
Inspector - Learn how to inspect page elements and make changes to view usually blocked content.
Debugger - Inspect and control the flow of a page's JavaScript
Network - See all the network requests a page makes.

your role when reviewing a website or web application is to discover features that could potentially be vulnerable and attempt to exploit them to assess whether or not they are. These features are usually parts of the website that require some interactivity with the user.

Finding interactive portions of the website can be as easy as spotting a login form to manually reviewing the website's JavaScript. An excellent place to start is just with your browser exploring the website and noting down the individual pages/areas/features with a summary for each one.

Its important to check the source code because you may find comments left by developers and other information that could create a vulnerability such as hard coded authentication to a database.

Most people do not write there own site and will use a framework to build the site on. If we can find what framework they are using, we may be able to search for vulnerabilies for that framework.

-----

### Content Discovery

We can check the robots.txt file to see what parts of the site the organisation doesnt want you using crawlers on or penetration testing.

If a developer is using a framework and they forget to change the favicon, we can hash the generic favicon and search for that hash in the [OWASP Favicon Database](https://owasp.org/www-community/favicons_database).

We can check the sitemap.xml file to see all the sites the organisation wants to appear in the search engine.

We can try looking for the framework being used by looking at the HTTP headers used when the site makes a request back to the server.

We can also check the end of the source code to see if the framework has its website linked at the bottom.

Use google hacking/Dorking to search for specific key words that can be found in the title or the url. We can also search for specific file extenstions.

Use [Wappalyzer](https://www.wappalyzer.com/) to identify what technology a website is running including framework, content management systems, payment processors.

We can use [wayback](https://archive.org/web/) machine to look at historical archives of the website.

We can check GitHub for developers and others that work with the organisation to find other information.

Use a word list to automate the search for passwords and other information.

There are three tools we can use with these word lists: fluff, dirb, gobuster.

-----

### Subdomain Enumeration

Subdomain Enumeration is the processes of finding subdomains related to a domain. We do this to increase our attack surface. There are 3 types of subdomain enumeration:
- Brute Force
- OSINT (Open-Source Intelligence)
- Virtual Host

We can search a database of certificates for sites using [crt.sh](https://crt.sh/).

We can also use search engines like [Google](https://www.google.com/?client=safari) to search for subdomains by using:
```
site:*.domain.com -site:www.domain.com
```

-----

