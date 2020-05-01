%take shot of all frames
obj = VideoReader('exit.mp4');
vid = read(obj);
frames = obj.NumberOfFrames;
 i = 1 ;
for x = 3 : 30 : frames
   
    imwrite(vid(:,:,:,x),strcat(num2str(i),'.png'));
    i=i+1;
end
sequence(i-1);