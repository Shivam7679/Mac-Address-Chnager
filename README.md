# Mac-Address-Chnager

To comprehend the concept of Mac Changer, it is necessary to first grasp the meaning of a Mac Address. A Mac Address consists of six prefixes, where the initial three prefixes represent the '''manufacturer's address''' and the subsequent three prefixes signify the '''device ID.'''

To accomplish this, we have compiled a list of all the manufacturing addresses, which has been stored in a text file named 'maclist.txt'.
Here is the code snippet for generating the first three prefixes:

For the next three prefixes, we have developed a code that generates a random number within the range of 0 to 255. This range is considered valid for a device ID.
Here is the code snippet:

Now that we have both sets of prefixes, we can simply combine them, ensuring that the manufacturer's address precedes the device ID.

Voila! We have successfully created a code that generates a random Mac Address every time it is executed with superuser (sudo) permission.
