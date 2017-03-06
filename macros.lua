-- ahk-luamacros-test - Using Luamacros + AutoHotkey with a second keyboard.
--
-- Written in 2016 by Resi Respati <https://resir014.github.io>
--
-- To the extent possible under law, the author(s) have dedicated all copyright
-- and related and neighboring rights to this software to the public domain
-- worldwide. This software is distributed without any warranty.
--
-- You should have received a copy of the CC0 Public Domain Dedication along
-- with this software. If not, see
-- <http://creativecommons.org/publicdomain/zero/1.0/>.

-- when run, press any key on the keyboard you want luamacros to be assigned to
lmc_assign_keyboard('MACROS');

sendToAHK = function (key)
    print('It was assigned string:    ' .. key)

    -- You should change the Users folder to your current user.
    local file = io.open("C:\\Users\\Resi\\Documents\\keypressed.txt", "w")

    file:write(key)
    file:flush()
    file:close()

    -- use the F24 key to trigger AutoHotkey
    lmc_send_keys('{F24}')
end

local config = {
    [45]  = "insert",
    [36]  = "home",
    [33]  = "pageup",
    [46]  = "delete",
    [35]  = "end",
    [34]  = "pagedown",
    [27]  = "escape",
    [112] = "F1",
    [113] = "F2",
    [114] = "F3",
    [115] = "F4",
    [116] = "F5",
    [117] = "F6",
    [118] = "F7",
    [119] = "F8",
    [120] = "F9",
    [121] = "F10",
    [122] = "F11",
    [123] = "F12",
    [8]   = "backspace",
    [220] = "backslash",
    [13]  = "enter",
    [16]  = "rShift",
    [17]  = "rCtrl",
    [38]  = "up",
    [37]  = "left",
    [40]  = "down",
    [39]  = "right",
    [32]  = "space",
    [186] = "semicolon",
    [222] = "singlequote",
    [190] = "period",
    [191] = "slash",
    [188] = "comma",
    [219] = "leftbracket",
    [221] = "rightbracket",
    [189] = "minus",
    [187] = "equals",
    [96]  = "num0",
    [97]  = "num1",
    [98]  = "num2",
    [99]  = "num3",
    [100] = "num4",
    [101] = "num5",
    [102] = "num6",
    [103] = "num7",
    [104] = "num8",
    [105] = "num9",
    [106] = "numMult",
    [107] = "numDelete",
    -- 108 is unknown...?
    [109] = "numMult",
    [110] = "numDelete",
    [111] = "numDiv",
    -- [144] = "numLock",
    [192] = "`",
    [9]   = "tab",
    [20]  = "capslock",
    [18]  = "alt",


    [string.byte('Q')] = "q",
    [string.byte('W')] = "w",
    [string.byte('E')] = "e",
    [string.byte('R')] = "r",
    [string.byte('T')] = "t",
    [string.byte('Y')] = "y",
    [string.byte('U')] = "u",
    [string.byte('I')] = "i",
    [string.byte('O')] = "o",
    [string.byte('P')] = "p",
    [string.byte('A')] = "a",
    [string.byte('S')] = "s",
    [string.byte('D')] = "d",
    [string.byte('F')] = "f",
    [string.byte('G')] = "g",
    [string.byte('H')] = "h",
    [string.byte('J')] = "j",
    [string.byte('K')] = "k",
    [string.byte('L')] = "l",
    [string.byte('Z')] = "z",
    [string.byte('X')] = "x",
    [string.byte('C')] = "c",
    [string.byte('V')] = "v",
    [string.byte('B')] = "b",
    [string.byte('N')] = "n",
    [string.byte('M')] = "m",

    [string.byte('0')] = "0",
    [string.byte('1')] = "1",
    [string.byte('2')] = "2",
    [string.byte('3')] = "3",
    [string.byte('4')] = "4",
    [string.byte('5')] = "5",
    [string.byte('6')] = "6",
    [string.byte('7')] = "7",
    [string.byte('8')] = "8",
    [string.byte('9')] = "9",

    --[255] = "printscreen" --these keys do not work
}

-- define callback for whole device
lmc_set_handler('MACROS', function(button, direction)
    if (direction == 1) then return end

    if type(config[button]) == "string" then
        print(' ')
        print('Your key ID number is:   ' .. button)
        sendToAHK(config[button])
    else
        print(' ')
        print('Not yet assigned: ' .. button)
    end
end)
