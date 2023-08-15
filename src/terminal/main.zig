const builtin = @import("builtin");

const charsets = @import("charsets.zig");
const stream = @import("stream.zig");
const ansi = @import("ansi.zig");
const csi = @import("csi.zig");
const sgr = @import("sgr.zig");
pub const point = @import("point.zig");
pub const color = @import("color.zig");
pub const parse_table = @import("parse_table.zig");

pub const Charset = charsets.Charset;
pub const CharsetSlot = charsets.Slots;
pub const CharsetActiveSlot = charsets.ActiveSlot;
pub const Terminal = @import("Terminal.zig");
pub const Parser = @import("Parser.zig");
pub const Selection = @import("Selection.zig");
pub const Screen = @import("Screen.zig");
pub const Stream = stream.Stream;
pub const CursorStyle = ansi.CursorStyle;
pub const DeviceAttributeReq = ansi.DeviceAttributeReq;
pub const DeviceStatusReq = ansi.DeviceStatusReq;
pub const Mode = ansi.Mode;
pub const ModifyKeyFormat = ansi.ModifyKeyFormat;
pub const StatusLineType = ansi.StatusLineType;
pub const StatusDisplay = ansi.StatusDisplay;
pub const EraseDisplay = csi.EraseDisplay;
pub const EraseLine = csi.EraseLine;
pub const TabClear = csi.TabClear;
pub const Attribute = sgr.Attribute;

/// If we're targeting wasm then we export some wasm APIs.
pub usingnamespace if (builtin.target.isWasm()) struct {
    pub usingnamespace @import("wasm.zig");
} else struct {};

test {
    @import("std").testing.refAllDecls(@This());
    _ = @import("modes.zig");
}
