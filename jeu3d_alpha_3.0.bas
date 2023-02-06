rem 'VERSION ALPHA 1.1 (MOTEUR EN TROISIÈME PERSONNE'
caption 0,"jeu3d_alpha_1.0":full_space 0:label fin:on_close 0,fin
scene3d 1:full_space 1:color 1,255,250,150:axes_show:cursor_cross 1
dim centre%:dll_on "user32":dim lar:lar=width(0)/2:dim l:l=height(0)/2
label jeu:label touches:dim x,y,z:dim m:dim d
rem 'Sous Programme de l'environnement'
rem 3d_box 2,1000,10,5000:3d_y_position 2,-50
z=100:cam_z_position z
rem 'Sous Programme du Jeu'
jeu:

pause 1
centre% = dll_call2("SetCursorPos",int(lar),int(l))

if mouse_x_position(1) > lar+5
x=x+1
point_x_position x
end_if
if mouse_x_position(1) < lar-5
x=x-1
point_x_position x
end_if
if mouse_y_position(1)>d-5
y=y-1
point_y_position y
end_if
if mouse_y_position(1)<d+5
y=y+1
point_y_position y
end_if
pause 1
d=mouse_y_position(1)
rem 'fractionner l'écran pour choisir en x,y et z

if scancode=38
z=z+1
cam_x_position x
cam_z_position z
end_if
if scancode=40
z=z-1
cam_x_position x
cam_z_position z
end_if

if scancode= 39:x=x+5:cam_x_position x:cam_z_position z:point_x_position x:cam_turn x:end_if
if scancode= 37:x=x-5:cam_x_position x:cam_z_position z:point_x_position x:cam_turn x:end_if

touches:
if key_up_code = 27 then goto fin
pause 1
goto jeu
rem 'Sous Programme de fin'
end
fin:
terminate
