why standard output and standard error are kept as separate streams?

Standard output (stdout) is used for normal program output while standard error (stderr) is used for error messages keeping them separate lets you save normal output and errors in different files

What does exit status 0 normally mean?
Exit status 0 means the command was successful.

What does a nonzero exit status normally mean?
A nonzero exit status means the command failed or encountered an error.

Why must $? be checked immediately?
Because $? is updated after every command, so running another command changes its value.

 Can different commands use different nonzero status values?
Yes. Different commands can use different nonzero exit status values to indicate different types of errors.

What does command1 && command2 mean?
command2 runs only if command1 succeeds

What does command1 || command2 mean?
command2 runs only if command1 fails
