const std = @import("std");

pub const memBus = struct {
    cart: *Cartridge = null;
    vram: [2][0x2000]u8 = std.mem.zeroes([2][0x2000]u8);
    wram: [8][0x1000]u8 = std.mem.zeroes([8][0x1000]u8);
    oam: [0xA0]u16 = std.mem.zeroes([0xA0]u16);
    hram: [0x0F]u8 = std.mem.zeroes([0x0F]u8);
    ie: u8 = 0;
    vramBankSelect: u1 = 0;
    wramBankSelect: u8 = 0; 
};


