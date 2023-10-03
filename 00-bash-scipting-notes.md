# Bash Scripting Notes

## Creating files and folders

Folders can be created using the `mkdir` command:

```bash
mkdir -p /location/for/new_folder
```

Note that `location/for/new_folder` must exist in order for the command to run successful. This can be circumvented if the `-p` option is passed to the `ls` command. So the above mentioned command would create the `location/to` directory structure if it does not exist. 


For creating files, the `touch` command is the most common option:

```bash
touch new_file_name[.ext] # optional extension
```

## Removing a directory

Files can be removed using the `rmdir` command. Similar to `mkdir`, the entire path leading to the directory to be deleted must exist, and it would only delete such folder. In order to delete the sub directories inside a directory, the `-R` can be used.

- `rmdir [-R] /location/to/folder`

## Displaying the content of a file

The `cat` is the most commonly used for displaying the contents of a text file.

- `cat filename.ext`

With `head` and `tail`, the user can visualize the initial and final lines of a text file, respectively.

## Listing

The most common command used to list the content (files and subfolders) of a folder is the `ls` command, which can be used as follows:

```bash
ls #/path/to/subfolder
```

If path to subfolder, the command shows the content found in the current location.

When running `ls`, additional options can be passed, which alter the information displayed as response to the command. 

Some of the most common options are:

- `-a --all ` : displays also hidden content
- `-l` : Lists one file per line and shows additional information about the files found in the current folder (permissions, date created, path, name, etc.).
- `-R --recursive`: List subdirectories recursively.

The command options can be combined together, so that the result reflects all of the desired behaviors (e.g `ls -al`).


## Filtering

The `ls` can additionally complemented by passing filtering options, so that only the content matching such criteria is displayed;

- `ls -l scr?pt` would display files and folders matching `scr?pt` (e.g scrapt, scrept, script, etc.)
- `ls -l s*` would display the content beginning with the character **s**
- `ls -l scr[ai]pt` and `ls -l scri[a-i]` would display files named *script* and *scrapt*
- `ls -l scr[!a]pt` would filter out a file named *scrapt*


## Handling files

The `cp` command can be used for copying content from one directory to another

- `cp source destination`

Similar to the  `ls` command. `cp` also comes with additional command options; some of the most common are:

- `-f` : remove forcefully
- `-i`: prompt the user about file deletion. Only deletes the file after confirmation from the user


## Links

Linking files allows to create virtual copies of a file instead of physical ones. Such copies can be located in different directories in the file system. The original file however, is an unique location and the virtual copies would point out at it.

There are two types of links; symbolic and hard.

**Symbolic links**: a physical file that points to another file in the os file structure. The original file must exist before the link be created. Symbolic links have no size and they merely point out to the location of the original file. Such links are created using the `ln` command together with the `-s` option:

- `ln -s link_name /path/to/original/file`

**Hard links**: They are basically the same file and have the same size as the original file. Creating a hard link is the default option of the `ln` command.

- `ln link_name /path/to/original/file`


  
