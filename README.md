# TAKPROTO

This repo handles an inter agent message definition based on the ATAK COT message
definition in protobuf format. The ATAK definition lacks direct tasking and 
handling of commands for controlling agents and seems to be more for sharing information
generated by agents (usually humans, sometimes drones).

This repo extends the takproto located [in the Android Tactical Assault Kit-CIV github repo](https://github.com/deptofdefense/AndroidTacticalAssaultKit-CIV/tree/master/takproto)
so should be fine for transmission via the various mechanisms ATAK message routing 
such as Free TAK server and use with client libraries such as [pyTAK](https://github.com/snstac/pytak). 
The main changes are additional fields in the detail part of the message, the point and event attributes
from the original COT definition remain unchanged. 

Whilst this is presented as a google protobuf (tak message v1), it also provides the
necessary defintion for implementation of tak message v0, the xml implementation. 
the Protobuf implementation is the preferred method.

## Libraries

As this system only defines an "Uber Message" for all your interagent needs, it can
be used on a single broadcast channel, simplifying transmission. This may or may not be
the best solution but is effectively the mechanism used by ATAK. 

Library implementations will need to basically check for the existence of various 
fields in the detail part of the message to determine what to do with a particular message. 
This may be platform and vendor specific, and may also require information from the event and point
parts of the message.

