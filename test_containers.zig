const std = @import("std");
const expect = std.testing.expect;

//This will load and run the file, but tests inside won't run.
const imported_file = @import("introducing_zig_test.zig");

//This doesn't list the test labels when running the tests.
test "tests in a container" {
    //Though this is supposed to work, it doesn't appear to pick up the 
    //references that the explicit testing calls below do.  @This() should
    //reference all top level structs and imports in this file.
    std.testing.refAllDecls(@This());
    
    _ = S;
    _ = @import("introducing_zig_test.zig");
}

const S = struct {
    test "S demo test" {
        try expect(true);
    }
    
    const SE = enum {
        V,
        
        //this test won't run because its container, SE, isn't referenced.
        test "This test won't run" {
            try expect(false);
        }
    };
};
