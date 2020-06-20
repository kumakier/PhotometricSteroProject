%find normals
%yxz
% L1 = [0.8,5.7,0]; %swap the x and y for the screen
% L2 = [22.8,-5.7,0];
% L3 = [-0.8,16.4,0];
% L4 = [-22.8,-16.4 ,0];

% d = 6; %diameter test
% d2 = 3.7;
L1 = [4.5,0.4,0]; 
L2 = [28.1,-0.4,0];
L3 = [-4.5,11.1, 0];
L4 = [-28.1,-11.1,0];

%swaped the x and y for the screen

% L1 = [0.4,4.5,0]; 
% L2 = [-0.4,28.1,0];
% L3 = [11.1,-4.5, 0];
% L4 = [-11.1,-28.1, 0];


% L1 = [4,4.5,0]; %swap the x and y for the screen
% L2 = [-4,28.1,0];
% L3 = [6.7,-4.5,0];
% L4 = [-6.7,-28.1,0];


% L5 = [1.8,4.35,0];
% L6 = [28.85,-4.35,0];
% L7 = [-1.8,7.85,0];
% L8 = [-28.85,-7.85,0];

L5 = [4.5,0.4,0]; %swap the x and y for the screen
L6 = [28.1,-0.4,0];
L7 = [-4.5,11.1, 0];
L8 = [-28.1,-11.1,0];

% x = 17;
% y = 19.5/2;
% z = 58;

x = 17.1;
y = 19.5/2;
z = 58;
Ob = [x,y,z];



n1 = (Ob - L1) /(norm(Ob - L1))
n2 = (Ob - L2) /(norm(Ob - L2))
n3 = (Ob - L3) /(norm(Ob - L3))
n4 = (Ob - L4) /(norm(Ob - L4))

n5 = (Ob - L5) /(norm(Ob - L5))
n6 = (Ob - L6) /(norm(Ob - L6))
n7 = (Ob - L7) /(norm(Ob - L7))
n8 = (Ob - L8) /(norm(Ob - L8))

LightM1 = [n1; n2; n3;  n4] 
LightM2 = [n5; n6; n7; n8]