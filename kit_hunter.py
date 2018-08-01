###############################################
# Kit Hunter
#
# Special thanks to the helpful people over at #python on Freenode and Twitter for their help.
# Testing and puzzle solving help credit goes to: @toholdaquill
#
# Also, thanks to sara_us and ns9666 for the coaching and help tweaking the code.
#
# Development:
# Steve Ragan (@SteveD3)
#
# Version 0.2.21
# 31 JULY 2018
#
# Testing and development took place on the following:
# Python 2.7.14 (Linux, Mac)
# Python 2.7.15 (Windows)
#
# Note:
# As things stand, this early version of the script
# does not work well with Python 3+ (that will change)
#
################################################
# Usage:
#
# The ideal place for this script is one directory above your webroot (htdocs, public_html, etc.)
# Make sure you keep kit_hunter.py and tags.tag in the same directory.
#
# To run this script on Linux, Mac, etc. use: python kit_hunter.py
#
# If you're on Windows, see the following DOC pages for assistance.
#
# [1] https://docs.python.org/3.3/using/windows.html
# [2] https://docs.python.org/2/faq/windows.html
#
# Also, the following has been helpful during testing.
#
# [3] http://www.pitt.edu/~naraehan/python3/getting_started_win_first_try.html
# [Archive of 3] http://archive.fo/p7bzb
#
#
# When it comes to the tags.tag file, make sure you don't have any white spaces.
# For each tag you'd like to include, place it on its own line.
# The tag file has been populated with several common markers, but you can add to the list if you choose.
################################################

import os

# - - - -
# Some basic variables for the script.
# Don't alter the phish_trk_log paths, this keeps everything in the same directory.
# - - - -

phish_trk_log_path = "./"
phish_trk_log_output = "./"
phish_trk_tag_path = "tags.tag"

BLOCK_PHISHING_KIT = "POSSIBLE PHISHING KIT DISCOVERED IN:"
BLOCK_FILENAME = "SUSPECT FILENAME IS:"
BLOCK_TAG = "SUSPECT FILE DETECTED BY THE FOLLOWING PHISHING TAG:"
BLOCK_LINE = "ACTUAL LINE OF CODE RESPONSIBLE FOR THIS ALERT:"

# - - - -
# Going to open the tags list and make sure the whitespaces are taken care of.
# - - - -

print("Reading TAGS file.....")
print("")
f=open(phish_trk_tag_path,'r')
phish_trk_tags_list =(f.read()).split('\n')
if phish_trk_tags_list[-1]=="" or phish_trk_tags_list[-1]==" ":
	phish_trk_tags_list=phish_trk_tags_list[:-1]

# - - - -
# Some DEBUG to test out the tags file and make sure blank spaces don't bother the script.
# It isn't needed anymore, but we're keeping it here just in case.
# - - - -
#print phish_trk_tags_list


f.close()

# - - - -
# Open a new file to log the results.
# - - - -

f=open('TMP_kit_hunter_log.tmp','w') # Don't change the file name.

# - - - -
# Here is the core.
# Essentially, you just scan the folders and sub-folders for files that match the keywords in the tag file.
# We're searching for TXT, PHP, .DAT, .HTM / .HTML, and .HTACCESS files.
# - - - -

data=[]
def phish_trk(location, phish_tag):
   for dir_path, dirs, file_names in os.walk(location):
      for file_name in file_names:
         if '.txt' in file_name or '.php' in file_name or '.dat' in file_name or '.html' in file_name or '.htm' in file_name or '.htaccess' in file_name:
            fullpath = os.path.join(dir_path, file_name)
            for line in file(fullpath):
               if phish_tag in line:
                  if file_name=="tags.tag":
                     pass
                  else:
                     record=[]
                     record.append(dir_path)
                     record.append(file_name)
                     record.append(phish_tag)
                     record.append(line)
                     data.append(record)
                     break

for phish_trk_tags in phish_trk_tags_list:
   phish_trk(os.getcwd(), phish_trk_tags)

# - - - -
# Now that the magic has happened. It's time to generate TMP_kit_hunter_log.
# The blocks generated in the tmp log are usable, but unsorted.
# - - - -

print("Creating TMP_kit_hunter_log")
print("")

for i in range(0,len(data)):
      f.write(
	"========================================================="+'\n'
	"POSSIBLE PHISHING KIT DISCOVERED IN: "+'\n'+'\n'
	'     '+data[i][0]+'\n'+
	""+'\n'
	"SUSPECT FILENAME IS: "+'\n'+'\n'
	'     '+data[i][1]+'\n'+
	""+'\n'
	"SUSPECT FILE DETECTED BY THE FOLLOWING PHISHING TAG: "+'\n'+'\n'
	'     '+data[i][2]+'\n'+
	""+'\n'
	"ACTUAL LINE OF CODE RESPONSIBLE FOR THIS ALERT:: "'\n'+'\n'
	+data[i][3]+'\n'
	)


f.close()

#- - - -
# Now we're going to sort TMP_kit_hunter_log into blocks and make it easier to read and follow.
# The goal here is to group files and directories, so you get a block for multiple hits and not a wall of text.
#
# You will get a block on each tag detected. This is intentional.
#
# The report is basic:
# 1. The opening line points the administrator to the directory where detection took place.
# 2. After that, the log reports the exact file name that caused the detection.
# 3. Line three shows the tag responsible for the warning in the first place.
# 4. Finally, the log displays the complete line of code where the tag is visible.
#
# During testing, the script generated false positives using the 'unescape' tag, so it was removed...
# ...but adding such a tag will generate several useful hits when obfuscation is used. It's a trade-off.
#
# Run the script a few times and check the results, tune the tag file as needed.
#- - - -

print("Creating final log using TMP_kit_hunter_log")
print("")

tag_blocks = {}


def iterate_files():
    for filename in os.listdir(phish_trk_log_path):
        if filename.endswith(".tmp"):
            read_file(os.path.join(phish_trk_log_path, filename))
        else:
            print("Ignoring file ", filename)


def read_file(filename):
    print("Reading ", filename)
    with open(filename) as log_file:
        current_block = None
        block = {}
        for line in log_file:
            if len(line) <= 1:  # blank line
                continue
            if line.count('=') > 10:  # ========== line from tmp, used to define block splits
                continue
            if BLOCK_PHISHING_KIT in line:
                current_block = "phishing"
                continue
            if BLOCK_FILENAME in line:
                current_block = "filename"
                continue
            if BLOCK_TAG in line:
                current_block = "tag"
                continue
            if BLOCK_LINE in line:
                current_block = "line"
                continue

            block[current_block] = line.strip()  # store the block content, loop again, otherwise write the thing

            # finish reading the block, thing being written
            if current_block == "line":
                if len(block) > 0:
                    if block['tag'] not in tag_blocks:
                        tag_blocks[block['tag']] = []
                    tag_blocks[block['tag']].append(block)
                current_block = None  # reset to start reading a new block
                block = {}


def generate_the_block(tag):
    kits = set(())
    filenames = set(())
    lines = set(())
    block = []
    for b in tag_blocks[tag]:
        kits.add(b['phishing'])
        filenames.add(b['filename'])
        lines.add(b['line'])

    # Construct the block, an attempt was made to make this look decent and easy to read.
    # We're stripping the content out of the tmp and ordering it in the final log.
    block.append("                 ==============               ")
    block.append("                 START OF BLOCK               ")
    block.append("="*50)
    block.append(BLOCK_PHISHING_KIT)
    block.append("")
    for k in kits:
        block.append('\t' + k)
    block.append("")
    block.append("-"*50)
    block.append(BLOCK_FILENAME)
    block.append("")
    for f in filenames:
        block.append('\t' + f)
    block.append("")
    block.append("-"*50)
    block.append(BLOCK_TAG)
    block.append("")
    block.append('\t' + tag)
    block.append("")
    block.append("-"*50)
    block.append(BLOCK_LINE)
    block.append("")
    for l in lines:
        block.append('\t' + l)
    block.append("")
    block.append("="*50)
    block.append("                  END OF BLOCK               ")
    block.append("                 ==============               ")
    block.append("")
    block.append("")
    block.append("")
    block.append("")
    return block

# Write the block, loop until done or the thing dies. So far, it doesn't die and that is a good thing.
def write_summary_file():
    with open(phish_trk_log_output + "kit_hunter_report.log", "w") as final_log:
        for tag in tag_blocks:
            block = generate_the_block(tag)
            for line in block:
                final_log.write(line + "\n")

# Clean things up a bit, including our tmp
iterate_files()
write_summary_file()
os.remove("TMP_kit_hunter_log.tmp")

# None of the print stuff was really needed, but it's there so the user knows the script is doing something.
print("")
print("TMP_kit_hunter_log removed")
print("")
print("FINAL REPORT GENERATED...")
print("")
print("FINISHED! Check kit_hunter_report.log for details.")
print("")
print("Unless you've changed paths, and you shouldn't have...")
print("...kit_hunter_report.log is located in the same directory as kit_hunter.")
print("")
print("-30-")

# -30- #
