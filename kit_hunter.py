###############################################
# Kit Hunter
#
# Special thanks to the helpful people over at #python on Freenode and Twitter for their help.
# Testing and puzzle solving help credit goes to: @toholdaquill
#
# Also, thanks to sara_us and ns9666 for the coaching and help tweaking the code.
#
# Kit Hunter Development:
# Steve Ragan (@SteveD3)
#
# Version 1.0.0
# 26 November 2020
#
#Testing and development took place on the following:
# Python 3.7.3 (Linux)
# Python 2.7.16 (Linux)
# Python 2.7.14 (Linux, Mac)
# Python 2.7.15 (Windows)
#
# Note:
# This version of the script is working with Python 3.
# However, testing is still ongoing.
# See the testing and development section for confirmed versions.
# You should run this script in Python 3 as default.
################################################

import os

# - - - -
# Some basic variables for the script.
# Don't alter the kh_log paths, this keeps everything in the same directory.
# - - - -

kh_log_path = "./"
kh_log_output = "./"
kh_tag_path = "tags.tag"

BLOCK_PHISHING_KIT = "POSSIBLE PHISHING KIT DISCOVERED IN:"
BLOCK_FILENAME = "SUSPECT FILENAME IS:"
BLOCK_TAG = "SUSPECT FILE DETECTED BY THE FOLLOWING PHISHING TAG:"
BLOCK_LINE = "ACTUAL LINE OF CODE RESPONSIBLE FOR THIS ALERT:"

# - - - -
# Going to open the tags list and make sure the whitespaces are taken care of.
# - - - -

print("Reading TAGS file...")
print("")
print("...Please wait...This could take some time...")
print("")
f=open(kh_tag_path,'r')
kh_tags_list =(f.read()).split('\n')
if kh_tags_list[-1]=="" or kh_tags_list[-1]==" ":
	kh_tags_list=kh_tags_list[:-1]

# - - - -
# Some DEBUG to test out the tags file and make sure blank spaces don't bother the script.
# It isn't needed anymore, but we're keeping it here just in case.
# - - - -
#print kh_tags_list


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
            for line in open(fullpath, encoding='utf8', errors='ignore'): #Replaced 'file' with 'open' and added encoding stripping to deal with bad characters in Python3. See below for alternate code.
#            for line in open(fullpath): #Uncomment and use this line in Python 2.x if you receive errors about encoding and 'errors' not being allowed in this function.
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

for phish_trk_tags in kh_tags_list:
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
    for filename in os.listdir(kh_log_path):
        if filename.endswith(".tmp"):
            read_file(os.path.join(kh_log_path, filename))
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
    block.append("-"*50)
    block.append(BLOCK_PHISHING_KIT)
    block.append("")
    for k in kits:
        block.append('\t' + k)
#    block.append("")
    block.append("-"*50)
    block.append(BLOCK_FILENAME)
    block.append("")
    for f in filenames:
        block.append('\t' + f)
#    block.append("")
    block.append("-"*50)
    block.append(BLOCK_TAG)
    block.append("")
    block.append('\t' + tag)
#    block.append("")
    block.append("-"*50)
    block.append(BLOCK_LINE)
    block.append("")
    for l in lines:
        block.append('\t' + l)
    block.append("")
    block.append("-"*50)
    block.append("                  END OF BLOCK               ")
    block.append("                 ==============               ")
    block.append("")
    block.append("")
    block.append("")
    block.append("")
    return block

# Write the block, loop until done or the thing dies. So far, it doesn't die and that is a good thing.
def write_summary_file():
    with open(kh_log_output + "kit_hunter_report.log", "w") as final_log:
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
print("The kit_hunter_report.log is located in the same directory as kit_hunter.")
print("")
print("-30-")

# -30- #
