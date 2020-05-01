function record(noPlate)
plate=cellstr(noPlate)
A=0;
n=1;
global z
global Datatable
while ((n<=z)&&(A==0))
    TF=strcmp(plate,Datatable.PlateNo(n,1));
    if TF==1
        t1=datevec(datetime('now'));
        t2=datevec(Datatable.EntryTime(n,1));
        elapsedTime =etime(t1, t2);
        elapsedTime=((elapsedTime/60)/60);
        Money=10*(elapsedTime)
        Datatable.ExitTime(n,1)=cellstr(datestr(t1));
        Datatable.ElapsedTime(n,1)=num2cell(elapsedTime);
        Datatable.Money(n,1)=num2cell(Money);
        A=1;
    else 
        A=0;
        n=n+1;
    end   
end
if A==0
    z=z+1;
   Datatable.PlateNo(z,1)=plate;
   Datatable.EntryTime(z,1)=cellstr(datestr(datetime('now')));
end
end