# Mac-Address-Generator(Random)

To comprehend the concept of Mac Changer, it is necessary to first grasp the meaning of a Mac Address. A Mac Address consists of six prefixes, where the initial three prefixes represent the ````manufacturer's address```` and the subsequent three prefixes signify the ````device ID.````

To accomplish this, we have compiled a list of all the manufacturing addresses, which has been stored in a text file named 'maclist.txt'.
Below is the code snippet for generating the list of all manufacturing address:
````
$ macchanger -l > maclist.txt  
````
NOw, let us understand with the help of one example: 14296 - 3c:e0:72 - Apple
Here, we only need the third column i.e, 3c:e0:72
We, get this using the following code snipet with the help of ```awk``` command and ```shuf``` reffering to shuffeling everytime we run the command:
````
shuf -n 1 maclist.txt | awk '{print $3}'  
````
For the next three prefixes, we have developed a code that generates a random number within the range of ```0 to 255```. This range is considered valid for a device ID.
Below is the code snippet:
````
printf '%02x:%02x:%02x' $[RANDOM%256] $[RANDOM%256] $[RANDOM%256]
````
Lastly, we need to know the type of connection your system is having. in this case it is ```eth0```
Now that we have both sets of prefixes, we can simply combine them, ensuring that the manufacturer's address precedes the device ID.
Below is the code of adding both the codes:
````
macchanger -m "$(shuf -n 1 maclist.txt | awk '{print$3}'):$(printf '%02x:%02x:%02x' $[RANDOM%256] $[RANDOM%256] $[RANDOM%256])" eth0
````
Voila! We have successfully created a code that generates a random Mac Address every time it is executed with superuser (sudo) permission.
