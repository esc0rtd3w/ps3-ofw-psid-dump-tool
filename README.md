# ps3-ofw-psid-dump-tool
Dump PSID From OFW Using Netflix and DTU


* I tested using the NPUP00030 version of Netflix. I have updated the scripting to allow region selection since the initial release *

* I SHOULD WARN THAT THE CFW CONSOLE HDD GETS ERASED DURING THIS PROCESS!!! *

Ok, this is yet another side project that I have been wanting to test more, and that day has come!!

I have tested this on OFW 4.81, and it does indeed dump the correct PSID, verified by checking on the CFW console.

This will allow you to dump the PSID from an OFW console. Yes I know, this IS NOT the coveted IDPS, which is the Console ID itself, but this is a unique number per console. I do not know much about what can be done with it alone, but it's "half" of your consoles unique ID.

Here are some screenshots. It requires a CFW console using the DTU method.

Now, the screenshots will give you an idea of what is going on, but basically Netflix generates a PSID.dat file located at "/dev_hdd0/game/NPUP00030/USRDIR/APPDATA". I am using the DTU method in 2 ways, first, I am using it to push NetFlix onto the OFW console (although this just makes it easier) and then run the app on OFW to generate the PSID.dat. Next, you do a "reverse DTU" from the OFW to the CFW console (this has many other benefits that I will not get into at the moment).


![Image](http://i.imgur.com/CbqP768.png)
<br/><br/>
![Image](http://i.imgur.com/8R2yFxD.png)
<br/><br/>
![Image](http://i.imgur.com/1GbG1Us.png)
<br/><br/>
![Image](http://i.imgur.com/oadtw6k.png)
<br/><br/>
![Image](http://i.imgur.com/U7r4j3Z.png)
<br/><br/>
![Image](http://i.imgur.com/whzQ8ov.png)
<br/><br/>
![Image](http://i.imgur.com/NHcUawN.png)
<br/><br/>
![Image](http://i.imgur.com/xqHC2tF.png)
<br/><br/>
![Image](http://i.imgur.com/VL4leTH.png)
<br/><br/>
![Image](http://i.imgur.com/2MVvhC5.png)
<br/><br/>
![Image](http://i.imgur.com/MMeZxpn.png)
<br/><br/>
![Image](http://i.imgur.com/NVY7FAj.png)
<br/><br/>
![Image](http://i.imgur.com/mgWjNMI.png)
<br/><br/>

