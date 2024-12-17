const std = @import("std");
const stdout = std.io.getStdOut().writer();

pub fn main() !void {
    for (1..101) |num| {
        if (num % 3 == 0) {
            try stdout.print("Fizz", .{});
        }
        if (num % 5 == 0) {
            try stdout.print("Buzz", .{});
        }
        if (num % 3 != 0 and num % 5 != 0) {
            try stdout.print("{d}", .{num});
        }
        try stdout.print("\n", .{});
    }
}
