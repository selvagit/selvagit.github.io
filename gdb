
# Remote debugging

gdb remote functionality will be used for debugging 

- the gdb must be run on the target as “gdbserver 0.0.0.0:3000 ./foo”
  - where 
    - “0.0.0.0” is the localhost 
    - 3000 is the port open on the target 
    - cli is the process being debugged 
- on the host machine run “ gdb-multiarch ./bin/foo ”
  - on the gdb prompt run “target remote <target-ip>:3000”

# TUI

There is a text user interface built into the gdb, the article Making GDB Easier: The TUI Interface - DEV Community gives the information on the TUI usage [https://dev.to/irby/making-gdb-easier-the-tui-interface-15l2]

# Python 

gdb has support for python, 

- in the gdbinit python code can be written for setting up complex debugging steps or dashboard 
- cyrus-and/gdb-dashboard: Modular visual interface for GDB in Python [https://github.com/cyrus-and/gdb-dashboard]
- Python Interpreter in GNU Debugger — pysheeet [https://www.pythonsheets.com/appendix/python-gdb.html]
- Python Commands (Debugging with GDB) [https://sourceware.org/gdb/current/onlinedocs/gdb.html/Python-Commands.html]
- Metal.GDB: Controlling GDB through Python Scripts with the GDB Python API - Embedded Artistry [https://embeddedartistry.com/blog/2020/11/09/metal-gdb-controlling-gdb-through-python-scripts-with-the-gdb-python-api/]
- (52) Extending GDB with Python - Lisa Roach - YouTube [https://www.youtube.com/watch?v=xt9v5t4_zvE]
- the entire video is worth watching and most interesting item is the steps to debug stack corruption via GDB 
  - CppCon 2015: Greg Law " Give me 15 minutes & I'll change your view of GDB" [https://www.youtube.com/watch?v=PorfLSr3DDI]
