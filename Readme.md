# Kit Hunter: A basic phishing kit detection tool

Version 0.2.20
20 JULY 2018

Testing and development took place on the following:
Python 2.7.14 (Linux, Mac)
Python 2.7.15 (Windows)

Note:
As things stand, this early version of the script does not work well with Python 3+ (that will change)


Usage:

The ideal place for this script is one directory above your webroot (htdocs, public_html, etc.)
Make sure you keep kit_hunter.py and tags.tag in the same directory.

To run this script on Linux, Mac, etc. use: python kit_hunter.py

If you're on Windows, see the following DOC pages for assistance.

[1] https://docs.python.org/3.3/using/windows.html
[2] https://docs.python.org/2/faq/windows.html

Also, the following has been helpful during testing.

[3] http://www.pitt.edu/~naraehan/python3/getting_started_win_first_try.html
[Archive of 3] http://archive.fo/p7bzb


When it comes to the tags.tag file, make sure you don't have any white spaces. For each tag you'd like to include, place it on its own line. The tag file has been populated with several common markers, but you can add to the list if you choose.
