rem 'VERSION ALPHA 1.0 (MOTEUR EN TROISIÈME PERSONNE'
caption 0,"jeu3d_alpha_1.0":full_space 0:label fin:on_close 0,fin
scene3d 1:full_space 1:color 1,255,250,150:axes_show:cam_move -100
dim centre%:dll_on "user32":dim lar:lar=width(0)/2:dim l:l=height(0)/2
label jeu:dim x
rem 'Sous Programme du Jeu'
jeu:
if scancode= 38 then cam_move 1
if scancode= 40 then cam_move -1
if scancode= 39:x=x+5:cam_x_position x:point_x_position x:end_if
if scancode= 37:x=x-5:cam_x_position x:point_x_position x:end_if
centre% = dll_call2("SetCursorPos",int(lar),int(l))
if mouse_x_position(1) > lar+5 then cam_turn 5
if mouse_x_position(1) < lar-5 then cam_turn -5
pause 1
goto jeu
rem 'Sous Programme de fin'
end
fin:
terminate
