# Backup

Backup is a simple Bash script that allows the user backup their iTunes files to an external hard disk.

## Purpose

This script is intended to allow the user to avoid the annoying complexities of copying large directories to an external disk by means of dragging and dropping. By running this script in the terminal, the user invokes the `rsync` utility to safely and securely copy a large directory to an external drive

Of course, this script can be easily generalized to copy large files and/or directories from any source file to any destination file. However, you might as well just use `rsync` directly for this.

## How it works

Backup locates your system's iTunes media source file in which iTunes stores all locally saved music content. It copies the contents of this directory into a new folder on external disk drive.

## Compatibility

* Mac OS X 10+

## Installation

In `~./backup/modules`, run the following command:

```
chmod +x backup.sh
./backup.sh drive   # Where 'drive' is the name of you external disk
```
