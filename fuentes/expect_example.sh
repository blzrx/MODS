#!/bin/bash
#
# Im dumb and stupid, i know the shebang is wrong

spawn PUT.HERE.THE.CONNECTION.COMMAND.IN.FULL.IN.EX.SSH.LOCALHOST. 
expect "Username:"
send "YOU.SHOULD.PUT.HERE.YOUR.USERNAME\n";
expect "Password:"
send "YOU.SHOULD.PUT.HERE.YOU.PASSWORD\n";
expect "HERE.YOU.SHOULD.PUT.YOUR.CLI."
send "HERE YOU SHOULD PUT YOUR COMMAND TO EXECUTE";
expect "HERE.YOU.SHOULD.PUT.A.EXPECTED.OUTPUT.TO.CONTINUE"

#We End this.
send "exit\n";
interact
