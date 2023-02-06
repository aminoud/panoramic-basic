rem 'VERSION ALPHA 1.1 (MOTEUR EN TROISIÈME PERSONNE'
caption 0,"jeu3d_alpha_1.0":full_space 0:label fin:on_close 0,fin
scene3d 1:full_space 1:color 1,255,250,150:axes_show:cursor_cross 1:cam_move -100
dim centre%:dll_on "user32":dim lar:lar=width(0)/2:dim l:l=height(0)/2
label jeu:dim x,y:dim m:dim d
rem 'Sous Programme de l'environnement'
3d_box 2,1000,10,5000:3d_y_position 2,-50
rem 'Sous Programme du Jeu'
jeu:

pause 1

centre% = dll_call2("SetCursorPos",int(lar),int(l))

if mouse_x_position(1) > lar+5
x=x+13
cam_turn 5
end_if
pause 1


if mouse_x_position(1) < lar-5
x=x-13
cam_turn -5
end_if

rem 'fractionner l'écran pour choisir en x,y et z

if scancode=38
d=d-1
cam_x_position d
point_x_position x
end_if

if scancode=13 then message lar

pause 1
goto jeu
rem 'Sous Programme de fin'
end
fin:
terminate
