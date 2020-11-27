# Kit Hunter: A basic phishing kit detection tool

* Version 1.0.0
* 26 November 2020

Testing and development took place on the following:
* Python 3.7.3 (Linux)
* Python 2.7.16 (Linux)
* Python 2.7.14 (Linux, Mac)
* Python 2.7.15 (Windows)

**Note:**
This version of the script is working with Python 3, but testing is still ongoing. See the testing and development section for confirmed versions.

## What is Kit Hunter?
Kit Hunter is a basic scanning tool that will search directories and locate phishing kits based on established markers. As detection happens, a report is generated for administrators.

The report is basic:

1. The opening line points the administrator to the directory where detection took place.
2. After that, the log reports the exact file name that caused the detection.
3. Line three shows the tag responsible for the warning in the first place.
4. Finally, the log displays the complete line of code where the tag is visible.

_During testing, the script generated false positives using the 'unescape' tag, so it was removed, but adding such a tag will generate several useful hits when obfuscation is used. It's a trade-off. Run the script a few times and check the results, tune the tag file as needed._

![Kit Hunter Log Example](https://raw.githubusercontent.com/SteveD3/kit_hunter/master/kit_hunter_example.jpg "Example of Kit Hunter log showing kit detection")

## Usage:

NOTE: Run this script in Python 3. There are instructions in the script for those using Python 2.

The ideal place for this script is one directory above your webroot (htdocs, public_html, etc.)

Make sure you keep kit_hunter.py and tags.tag in the same directory.

To run this script use: **_python3 kit_hunter.py_**

If you're on Windows, see the following DOC pages for assistance:

1. [Documentation for using Python on Windows in the 3.x branch](https://docs.python.org/3.3/using/windows.html)
2. [Documentation for using Python on Windows in the 2.x branch](https://docs.python.org/2/faq/windows.html)

Also, the following has been helpful during testing.

3. [Getting started with Python on Windows](http://www.pitt.edu/~naraehan/python3/getting_started_win_first_try.html)

[Here is an archive of link 3 if needed](http://archive.fo/p7bzb)


When it comes to the tags.tag file, make sure you don't have any white spaces. For each tag you'd like to include, place it on its own line. The tag file has been populated with several common markers, but you can add to the list if you choose.

Keep in mind, the longer the tag file is, the longer it will take for the script to read it. As things stand now, the tag file still only takes a few seconds to read.
