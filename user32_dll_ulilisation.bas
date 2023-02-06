label a
label t
dim B%
on_close 0,t
dll_on "user32"
a:
B% = dll_call2("SetCursorPos",10,1)
pause 3000
goto a
end
t:
terminate
