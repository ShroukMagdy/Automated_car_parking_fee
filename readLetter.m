function letter=readLetter(snap)
%READLETTER reads the character fromthe character's binary image.
%   LETTER=READLETTER(SNAP) outputs the character in class 'char' from the
%   input binary image SNAP.

load NewTemplates % Loads the templates of characters in the memory.
snap=imresize(snap,[42 24]); % Resize the input image so it can be compared with the template's images.
comp=[ ];
for n=1:length(NewTemplates)
    sem=corr2(NewTemplates{1,n},snap); % Correlation the input image with every image in the template for best matching.
    comp=[comp sem]; % Record the value of correlation for each template's character.
    %display(sem);
    
end
vd=find(comp==max(comp)); % Find the index which correspond to the highest matched character.
%display(max(comp));
%*-*-*-*-*-*-*-*-*-*-*-*-*-
% Accodrding to the index assign to 'letter'.
% Alphabets listings.
if vd==1 || vd==2
    letter='A';
    disp('A');
elseif vd==3 || vd==4
    letter='B';
    disp('B');
elseif vd==5
    letter='C';
    disp('C');
elseif vd==6 || vd==7
    letter='D';
    disp('D');
elseif vd==8
    letter='E';
    disp('E');
elseif vd==9
    letter='F';
    disp('F');
elseif vd==10
    letter='G';
    disp('G');
elseif vd==11
    letter='H';
    disp('H');
elseif vd==12
    letter='I';
    disp('I');
elseif vd==13
    letter='J';
    disp('J');
elseif vd==14
    letter='K';
    disp('K');
elseif vd==15
    letter='L';
    disp('L');
elseif vd==16
    letter='M';
    disp('M');
elseif vd==17
    letter='N';
    disp('N');
elseif vd==18 || vd==19
    letter='O';
    disp('O');
elseif vd==20 || vd==21
    letter='P';
    disp('P');
elseif vd==22 || vd==23
    letter='Q';
    disp('Q');
elseif vd==24 || vd==25
    letter='R';
    disp('R');
elseif vd==26
    letter='S';
    disp('S');
elseif vd==27
    letter='T';
    disp('T');
elseif vd==28
    letter='U';
    disp('U');
elseif vd==29
    letter='V';
    disp('V');
elseif vd==30
    letter='W';
    disp('W');
elseif vd==31
    letter='X';
    disp('X');
elseif vd==32
    letter='Y';
    disp('Y');
elseif vd==33
    letter='Z';
    disp('Z');
    %*-*-*-*-*
% Numerals listings.
elseif vd==34
    letter='1';
    disp('1');
elseif vd==35
    letter='2';
    disp('2');
elseif vd==36
    letter='3';
    disp('3');
elseif vd==37 || vd==38
    letter='4';
    disp('4');
elseif vd==39
    letter='5';
    disp('5');
elseif vd==40 || vd==41 || vd==42
    letter='6';
    disp('6');
elseif vd==43
    letter='7';
    disp('7');
elseif vd==44 || vd==45
    letter='8';
    disp('8');
elseif vd==46 || vd==47 || vd==48
    letter='9';
    disp('9');
else
    letter='0';
    disp('0');
end
end