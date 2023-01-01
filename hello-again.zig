//stdout messaging is not expected to fail, so we can use a special print 
//version for it.
const print = @import("std").debug.print;

pub fn main() void {
    print("Hello, world!\n", .{});
}
