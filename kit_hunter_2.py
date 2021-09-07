#!/usr/bin/env python
# coding: utf-8

# Thanks to the users over at #python on Libera.Chat (formerly Freenode), for answering newbie questions.
# Special thanks to the helpful people on Twitter, for code, kits to test, ideas, and general education in the space:
# @nullcookies @dyngnosis @olihough86 @dave_daves @JCyberSec_ @n0p1shing @ANeilan @selenalarson @sysgoblin @PaulWebSec @BushidoToken @sjhilt
#
#
# Version 2.8.5

import os
import time
import gzip
import zipfile
import rarfile
import tarfile
import sys
import argparse
from collections import defaultdict
from datetime import datetime

# Set the path for tag file locations
# Make sure you use a /full/path/to/the/files with a ending slash.
# They can reside anywhere on your system.
####################################################################################
kh_quick_scan = '/path/to/the/quick-scan/tag/folder/'
kh_full_scan = '/path/to/the/primary/tag/folder/'

# Script directions and basic settings. This also generates the help listing.
####################################################################################
parser = argparse.ArgumentParser(description='Kit Hunter v2.8.5')
group = parser.add_mutually_exclusive_group()

parser.add_argument('-d', '--dir', action='store_true', help='Scan a custom directory.')
parser.add_argument('-l', '--line', action='store_true', help='Do not show matching lines when detections happen.')
parser.add_argument('-m', '--match', action='store_true', help='Do not show files and archives with zero matches.')

group.add_argument('-c', '--custom', action='store_true', help='A scan using custom detection tags.')
group.add_argument('-q', '--quick', action='store_true', help='A quick scan using only the most basic detection tags.')
group.add_argument('-hd', '--helpd', action='store_true', help='Detailed information on the -d switch in Kit Hunter.')
group.add_argument('-hc', '--helpc', action='store_true', help='Detailed information on the -c switch in Kit Hunter.')
group.add_argument('-hq', '--helpq', action='store_true', help='Detailed information on the -q switch in Kit Hunter.')

args = parser.parse_args()

# Custom directory scanning arguments.
####################################################################################
if args.dir:
   scdir = input("What directory will you scan? Remember: /you/must/use/a/full/path/ :  ")
   if os.path.isdir(scdir):
      directory_path = scdir
   else:
      print ("")
      print ("You've pressed [ENTER] or the directory you requested is not valid. Plese try again. \nThis script will now scan the current working directory.")
      print ("")
      time.sleep(3)
      directory_path = os.getcwd()
else:
   directory_path = os.getcwd()
####################################################################################


# Show matching lines or not? The default is to always show matching lines.
####################################################################################
if args.line:
   line_match = False
else:
   line_match = True
####################################################################################


# Show archives and files that have zero matches, or not? The default is to show zero matches.
####################################################################################
if args.match:
   detect_zero_matches = False
else:
   detect_zero_matches = True
####################################################################################


# Custom directory scanning arguments. Custom will require a tag file that is in the same directory as Kit Hunter.
# Quick scanning will need to be configured up top, and pointed to the directly where the quick scan tag folder resides.
# By default, once configured properly, the script will run in the current working directory, with full scan options.
####################################################################################
if args.custom:
   import glob
   databses = filter(os.path.isfile, glob.glob('./*.tag'))
   if not databses:
      print ("No custom tag files found!\n\n")
      sys.exit()
   for databse in databses:
      kh_tag_path = os.getcwd()
      break
   else:
      print ("No custom tag files found!\nYou need to make a custom .tag file in the same directory Kit Hunter is running from.\nSee Help for more details.\n")
      sys.exit()
elif args.quick:
   kh_tag_path = kh_quick_scan
else:
   kh_tag_path = kh_full_scan
####################################################################################


# These are directed help modules for the directory and custom scan switches.
####################################################################################
if args.helpd:
	print ("")
	print ("")
	print ("==================================================================")
	print ("            Kit Hunter Help: Using the [-d] switch                ")
	print ("==================================================================")
	print ("")
	print ("Kit Hunter is designed to be launched from within the directory")
	print ("you wish to scan. As such, it will scan the current working directory by default.")
	print ("")
	print ("The reccomended search should start within the directory you wish to scan,")
	print ("or a directory above it. For website administrators, that means starting from /www/ or /public_html/")
	print ("")
	print ("However, you can designate a custom scan directory by using the -d switch.")
	print ("You need to make sure you /use/a/full/path/ and remember the trailing slash.")
	print ("")
	print ("If the custom directory isn't valid, the script will offer a warning and scan the current working directory.")
	print ("Otherwise, the script will scan the named directory, and save the report to that location.")
	print ("")
	print ("You cannot use the [-d] switch with anothing other than the [-l] and [-m] switches.")
	print ("")
	print ("==================================================================")
	print ("")
	print ("")
	sys.exit()

if args.helpc:
	print ("")
	print ("")
	print ("==================================================================")
	print ("            Kit Hunter Help: Using the [-c] switch                ")
	print ("==================================================================")
	print ("")
	print ("Using the [-c] switch in Kit Hunter means you can place a custom .tag file")
	print ("in the directory where Kit Hunter is running. Doing so will enable you to search")
	print ("for customer strings and tags.")
	print ("")
	print ("Remember to avoid having any whitespace in the tag file,")
	print ("and to place each keyword on its own line.")
	print ("")
	print ("You cannot use the [-c] switch with the [-q] switch.")
	print ("")
	print ("==================================================================")
	print ("")
	print ("")
	sys.exit()

if args.helpq:
	print ("")
	print ("")
	print ("==================================================================")
	print ("            Kit Hunter Help: Using the [-q] switch                ")
	print ("==================================================================")
	print ("")
	print ("Using the [-q] switch in Kit Hunter means you can run a quick scan in your")
	print ("target directory. The quick scan uses a small tag file with basic detections,")
	print ("so it isn't a comprehensive scan.")
	print ("")
	print ("Any detections made during a quick scan should be investigated,")
	print ("as the tags used are high-confidence when it comes to phishing kits.")
	print ("")
	print ("You cannot use the [-q] switch with the [-c] switch.")
	print ("")
	print ("==================================================================")
	print ("")
	print ("")
	sys.exit()
# Supported archive formats. This shouldn't be altered in any way.
####################################################################################
supported_compressed_files_formats = ['.zip', '.tar.xz', '.rar', '.gz']

# You can add additional file_formats if needed, such as .js files.
# However, keep in mind that certain folder names (i.e. /.js/) could cause the sctipt to throw errors.
####################################################################################
supported_file_formats = ['.conf', '.txt', '.php', '.htm', '.html', '.dat', '.htaccess']

# Several tag files were created for this release. However, you can have as many as you want.
# Just remember to give the file the .tag extention so the script picks it up.
# Tag files should have no whitespace or empty lines.
####################################################################################
tag_files_ext = '.tag'

# You can name the final report anything you want.
# Do do so, just alter Kit_Hunter_Report_ and leave the %s.log aspect of the name.
####################################################################################
DateTime = datetime.now()
timestamp = DateTime.strftime("%Y-%b-%d-%H%M")
generated_report_file_name = 'Kit_Hunter_Report_%s.log' % timestamp

# You can list files to be ignored below. Just replace the example names and extention with your own.
# If you only need to exclude a single file, then you'd place the name between the [ ] and format it
# like this: ['example.txt']
#
# If the listed files do not exist, then this aspect of the generation process does nothing.
# Keep in mind, the ignore focuses on the directory that Kit Hunter is launched from.
####################################################################################
files_to_ignore_in_current_directory = ['example1.txt', 'example2.txt'] + [generated_report_file_name]
files_to_ignore_in_current_directory = [os.path.join(directory_path, f) for f in files_to_ignore_in_current_directory]

# Start the clock.
####################################################################################
start_time = time.time()

##########################################
# DO NOT EDIT BELOW THIS LINE            #
##########################################

# This is where all the tag files are collected
####################################################################################
def get_contents_of_tag_files(directory_path):
    
    tag_files_content = dict()
    for file in os.listdir(directory_path):
        if file.endswith(tag_files_ext):
            file_path = os.path.join(directory_path, file)
            f = open(file_path, "rb")
            file_contents = f.read().splitlines()
            tag_files_content[file] = file_contents
            
    for file in tag_files_content.keys():
        tag_files_content[file] = list(set(tag_files_content[file]))
    
    return tag_files_content

def tag_files_reverse_lookup(tag_file_contents):
    reverse_lookup = {}
    for file_name, tags in tag_file_contents.items():
        for tag in tags:
            if not tag in reverse_lookup:
                reverse_lookup[tag] = []
            reverse_lookup[tag].append(file_name)
    return reverse_lookup
    
# Returns the contents of folders only (no archives)
####################################################################################
def get_contents_of_folder_files(directory_path, supported_file_formats):
    
    folder_paths = [dirpath for dirpath, _, _ in os.walk(directory_path)]
    files_contents = dict()
    for folder_path in folder_paths:
        files_contents[folder_path] = dict()
        for file in os.listdir(folder_path):
            for supported_format in supported_file_formats:
                if file.endswith(supported_format):
                    file_path = os.path.join(folder_path, file)
                    if file_path not in files_to_ignore_in_current_directory:
                        file_contents = open(file_path, "rb").read().splitlines()
                        files_contents[folder_path][file_path] = file_contents
        
    return files_contents


# Returns a list of compressed files
####################################################################################
def get_compressed_files(directory_path, supported_compressed_files_formats):
    
    files = []
    folder_paths = [dirpath for dirpath, _, _ in os.walk(directory_path)]
    for folder_path in folder_paths:
        for file in os.listdir(folder_path):
            for supported_format in supported_compressed_files_formats:
                if file.endswith(supported_format):
                    files.append(os.path.join(folder_path, file))

    return files


# Returns the type of compressed file
####################################################################################
def get_compressed_file_type(file_name, supported_compressed_files_formats):
    for supported_format in supported_compressed_files_formats:
        if file_name.endswith(supported_format):
            return supported_format
    return Nonearchive


# Returns if a file is of a supported format
####################################################################################
def file_is_supported(file_name, supported_file_formats):
    for supported_format in supported_file_formats:
        if file_name.endswith(supported_format):
            return True
    return False


# Returns contents of ZIP files
####################################################################################
def get_contents_of_zip_file(directory_path, filename, supported_file_formats):
    file_path = os.path.join(directory_path, filename)
    zf = zipfile.ZipFile(file_path)

    files_contents = dict()
    for file_info in zf.infolist():
        file_name = file_info.filename
        if file_is_supported(file_name, supported_file_formats):
            ifile = zf.open(file_info)
            file_contents = ifile.read().splitlines()
            files_contents[file_name] = file_contents
    
    return files_contents


# Returns contents of RAR files
####################################################################################
def get_contents_of_rar_file(directory_path, filename, supported_file_formats):
    file_path = os.path.join(directory_path, filename)
    rf = rarfile.RarFile(file_path)

    files_contents = dict()
    for file_info in rf.infolist():
        file_name = file_info.filename
        if file_is_supported(file_name, supported_file_formats):
            ifile = rf.open(file_info)
            file_contents = ifile.read().splitlines()
            files_contents[file_name] = file_contents

    return files_contents


# Returns contents of TAR files
####################################################################################
def get_contents_of_tar_file(directory_path, filename, supported_file_formats):
    file_path = os.path.join(directory_path, filename)
    tf = tarfile.open(file_path, "r")

    files_contents = dict()
    for file_name in tf.getnames():
        f = tf.extractfile(file_name)
        if f:
            if file_is_supported(file_name, supported_file_formats):
                file_contents = f.read().splitlines()
                files_contents[file_name] = file_contents

    return files_contents


# Returns contents of GZ files
####################################################################################
def get_contents_of_gzip_file(directory_path, filename, supported_file_formats):
    file_path = os.path.join(directory_path, filename)
    tf = tarfile.open(file_path, "r:gz")

    files_contents = dict()
    for file_name in tf.getnames():
        f = tf.extractfile(file_name)
        if f:
            if file_is_supported(file_name, supported_file_formats):
                file_contents = f.read().splitlines()
                files_contents[file_name] = file_contents

    return files_contents

# During testing, there were instances where the script failed, and reported the archive as corrupt.
# In these insteances, manual inspection is required. The traceback will alert to the archive name and location.
####################################################################################
def get_content_of_compressed_file(directory_path, filename, compression_format):
    
    file_contents = None
    
    if compression_format == '.zip':
        file_contents = get_contents_of_zip_file(directory_path, filename, supported_file_formats)
        
    elif compression_format == '.tar.xz':
        file_contents = get_contents_of_tar_file(directory_path, filename, supported_file_formats)
        
    elif compression_format == '.rar':
        file_contents = get_contents_of_rar_file(directory_path, filename, supported_file_formats)
        
    elif compression_format == '.gz':
        file_contents = get_contents_of_gzip_file(directory_path, filename, supported_file_formats)
        
    else:
        raise("Unsupported Format")
    
    return file_contents


# Searches for tag file strings in files
####################################################################################
def search_tag_strings(file_contents, tag_file_contents):
    
    found_files, found_tags, found_lines = [], [], []
    found_files_dict = {}
    for tag_file in tag_file_contents.keys():
        for tag in tag_file_contents[tag_file]:
            for file_name in file_contents.keys():
                if file_is_supported(file_name, supported_file_formats):
                    for line in file_contents[file_name]:
                        if tag in line:
                            found_files.append(file_name)
                            found_tags.append(tag)
                            found_lines.append(line)
                            
                            if not found_files_dict.get(file_name):
                                found_files_dict[file_name] = {}
                            
                            if not found_files_dict.get(file_name, {}).get(tag):
                                found_files_dict[file_name][tag] = []
                            found_files_dict[file_name][tag].append(line)

    return list(sorted(set(found_files))), list(sorted(set(found_tags))), list(sorted(set(found_lines))), found_files_dict


# Report Generation
####################################################################################
def create_report(directory_path, filename, found_files, found_tags, found_lines, found_files_dict, tag_file_reverse_lookup):
    
    # Checking if we've got a folder or an archive
    is_folder = True if filename == '' else False
    file_type = 'Folder' if is_folder else 'Archive'
    
    dir_path = directory_path if is_folder else str(os.path.join(directory_path, filename))
    
    report = []

# Find something or nah?
####################################################################################
    if detect_zero_matches is not True:
       if len(found_files) == len(found_tags) == len(found_lines) == 0:
           return report

    else:
       if len(found_files) == len(found_tags) == len(found_lines) == 0:
           report.append('| ===============================================================================================\n')
           report.append('| ' + file_type + ' Scanned:\n')
           report.append('| \n')
           report.append('| ' + str(dir_path) + '\n')
           report.append('| \n')
           report.append('| ===============================================================================================\n')
           report.append('| No known phishing keywords were discovered in any file.\n\n\n\n\n\n')
           return report

    report.append('| ===============================================================================================\n')
    report.append('| ' + file_type + ' Scanned:\n')
    report.append('| \n')
    report.append('| ' + str(dir_path) + '\n')
    report.append('| \n')
    report.append('| ===============================================================================================\n')

    report.append('| The following files contain known phishing keywords:\n')
    report.append('| ===============================================================================================\n')
    report.append('|\n')
    for ff in found_files:
        report.append('| File: ' + "'" + str(ff) + "'" + '\n')

# TAG MATCHING
####################################################################################
    found_tags_by_tag_file = {}
    for ft in found_tags:
        tag_file = tag_file_reverse_lookup.get(ft, ['not found'])[0] #a tag can exist in multiple files, here we just take the 1st file it appeared in.
        if tag_file not in found_tags_by_tag_file:
            found_tags_by_tag_file[tag_file] = []
        found_tags_by_tag_file[tag_file].append(ft)

    for tag_file, found_tags in found_tags_by_tag_file.items():
        report.append('|\n')
        report.append('| ===============================================================================================\n')
        report.append(f'| The following tag file reported matches: {tag_file}\n')    
        report.append('| ===============================================================================================\n')
        report.append('| \n')

        for ft in found_tags:
            report.append('|           Tag: ' + str(ft)[1:200] + '\n')


# LINE MATCHING
####################################################################################
    if line_match is not False:
       report.append('| \n')
       report.append('| ===============================================================================================\n')
       report.append('| The following lines contained the previously flagged phishing tags:\n')
       report.append('| ===============================================================================================\n')
       report.append('| \n')
       for fl in found_lines:
           report.append('| Line:  '+ str(fl)[1::] + '\n')
       report.append('| ===============================================================================================\n')
    else:
       report.append('| ===============================================================================================\n')

    report.append('\n\n\n\n\n')

    return report

def write_report(overall_report):
    
    f = open(os.path.join(directory_path, generated_report_file_name), "w+")
#    f = open(generated_report_file_name, "w+") # This line is part of the original report generation script. It's kept here for testing, but not used. See line 378 for the active code.
    for report in overall_report:
        f.writelines(report)
    
    f.close()


def process_files(directory_path, compressed_files, folder_files):
    print('')
    print('')    
    print('Kit Hunter Starting...\n')
    print('')
    print('')
    
    overall_report = []
    tag_file_contents = get_contents_of_tag_files(directory_path)

# The extra_tag_file_contents dictionary is initially None.
# If the extra path we selected in the beginning is not None we get the content of the tag files of the kh_tag_path.
# Next, we combine the tag_file_contents dictionary with the extra_tag_files_content.
####################################################################################
    if kh_tag_path is not None:
        extra_tag_file_contents = get_contents_of_tag_files(kh_tag_path)
        tag_file_contents.update(extra_tag_file_contents)    
    
    tag_file_reverse_lookup = tag_files_reverse_lookup(tag_file_contents)
    

# Processing files and folders
####################################################################################
    for folder in folder_files.keys():
        print('Examining Folder:', folder)
        print('')
        folder_contents = folder_files[folder]
        found_files, found_tags, found_lines, found_files_dict = search_tag_strings(folder_contents, tag_file_contents)
        report = create_report(folder, '', found_files, found_tags, found_lines, found_files_dict, tag_file_reverse_lookup)
        overall_report.append(report)
        
# Processing Compressed Files
####################################################################################
    for compressed_file in compressed_files:
        filename = compressed_file
        print('Examining Archive:', filename)
        print('')
        compression_format = get_compressed_file_type(filename, supported_compressed_files_formats)
        file_contents = get_content_of_compressed_file(directory_path, filename, compression_format)
        found_files, found_tags, found_lines, found_files_dict = search_tag_strings(file_contents, tag_file_contents)
        report = create_report(directory_path, filename, found_files, found_tags, found_lines, found_files_dict, tag_file_reverse_lookup)
        overall_report.append(report)
        
    write_report(overall_report)

    print('=========================\n')    
    print('Done! All file processing is complete.\n')
    print('=========================\n')
    
    end_time = time.time() #stop the clock.
    hours, rem = divmod(end_time-start_time, 3600)
    minutes, seconds = divmod(rem, 60)
    print("Kit Hunter processed all files in {:0>2}h : {:0>2}m : {:05.2f}s\n".format(int(hours),int(minutes),seconds))

    print('=========================\n')
    print('The finished report is located at:\n')    
    file_path = os.path.join(directory_path, generated_report_file_name)
    print("", file_path, '\n')
    print('=========================\n')

compressed_files = get_compressed_files(directory_path, supported_compressed_files_formats)
folder_files = get_contents_of_folder_files(directory_path, supported_file_formats)
process_files(directory_path, compressed_files, folder_files)