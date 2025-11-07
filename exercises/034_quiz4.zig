//
// Quiz time. See if you can make this program work!
//
// Solve this any way you like, just be sure the output is:
//
//     my_num=42
//
const std = @import("std");

const NumError = error{IllegalNumber};

pub fn main() !void {
    var stdout = std.fs.File.stdout().writer(&.{});

    const my_num1: u32 = try getNumber();
    // const my_num2: u32 = getNumber() catch 0;
    // const my_num3: u32 = getNumber() catch {
    //     std.debug.print("oh noooo :(\n", .{});
    //     return;
    // };

    try stdout.interface.print("my_num={}\n", .{my_num1});
    // try stdout.interface.print("my_num={}\n", .{my_num2});
    // try stdout.interface.print("my_num={}\n", .{my_num3});
}

// This function is obviously weird and non-functional. But you will not be changing it for this quiz.
fn getNumber() NumError!u32 {
    if (false) return NumError.IllegalNumber;
    return 42;
}
