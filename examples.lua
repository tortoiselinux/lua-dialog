#!/usr/bin/env lua
-- ========================{HEADER}========================|
-- AUTHOR: wellyton 'welly' <welly.tohn@gmail.com> 
--[[DESCRIPTION: dialog lib use examples, read this code
to understand how to use those functions.]]
-- PROGNAME: main 
-- LICENSE: MIT
-- ========================{ END }========================|

local d = require("dialog")
local choice
local username
local rootpasswd
local userpasswd
local variables
local pkg = [[item '' off \
item '' off \
item '' off \
item '' off \
item '' off \
item '' off \
item '' off]] 

function yesno(txt, h, w)
   h = h or 0
   w = w or 0
   return d.yesno(txt, h, w)
end

function inputbox(txt, h, w)
   h = h or 0
   w = w or 0
   return d.inputbox(txt, h, w)
end

function passwordbox(txt, h, w)
   h = h or 0
   w = w or 0
   return d.passwordbox(txt, h, w)
end

function checklist(txt, items, h, w, lh)
   h = h or 0
   w = w or 0
   lh = lh or 0
   return d.checklist(txt, h, w, lh, items)
end

function pause(txt, seconds, h, w)
   h = h or 0
   w = w or 0
   seconds = seconds or 10
   return d.pause(txt, h, w, seconds)
end

choice = yesno("Init installation?")
pause("now you will be redirected to create your partitions", 10)
username = inputbox("Type your username")
rootpasswd = passwordbox("Type your ROOT password")
userpasswd = passwordbox("Type your USER password")

-- how did this work on the first try? I think I'm getting the hang of it
packages = checklist("Choose packages to install", pkg)
variables = string.format([[
choice: %s
username: %s
rootpasswd: %s
userpasswd: %s
packages: %s
]], choice, username, rootpasswd, userpasswd, packages)
print(variables)
