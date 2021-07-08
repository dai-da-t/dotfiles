# -*- coding: utf-8 -*-
import re
import string
from xkeysnail.transform import *

# define timeout for multipurpose_modmap
define_timeout(1)

# [Global modemap] Change modifier keys as in xmodmap
define_modmap({
    Key.CAPSLOCK: Key.LEFT_CTRL,
    Key.LEFT_ALT: Key.LEFT_CTRL,
    Key.RIGHT_ALT: Key.RIGHT_CTRL,
    Key.LEFT_META: Key.LEFT_ALT,
    Key.RIGHT_META: Key.RIGHT_ALT,
    Key.LEFT_CTRL: Key.LEFT_META,
    Key.RIGHT_CTRL: Key.CAPSLOCK,
})

"""
Terminator

Caps + C -> Kill
Caps + D -> Exit
Alt + C -> Copy
Alt + V -> Paste
LAlt -> IME OFF
RALT -> IME ON
""" 
define_conditional_modmap(re.compile(r'Terminator'), {
    Key.CAPSLOCK: Key.LEFT_CTRL,
    Key.LEFT_META: Key.LEFT_CTRL,
    Key.RIGHT_META: Key.RIGHT_CTRL,
    Key.LEFT_CTRL: Key.LEFT_META,
    Key.RIGHT_CTRL: Key.CAPSLOCK,
})