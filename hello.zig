///This is stdout on steroids with the error catching.  The !void implicitly 
///buries the error to the left of the '!' but shows that it returns nothing 
///under normal operation.  Since, this could have an error, it must be 
///associated with a 'try' or some other error handling apparatus.

///The three slashes indicates this is a doc comment.  Though, it's not yet
///enforced, they're only allowed at certain locations (generally not in the 
///middle of expressions).
const std= @import("std");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    try stdout.print("Hello, {s}!\n",.{"world"});
}
