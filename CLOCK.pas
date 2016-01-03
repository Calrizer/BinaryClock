program binaryClock;

uses crt,dos;

var hour,min,sec,millisec:word;

current,num:real;

position:integer;

procedure showTime;
begin

    gettime(hour,min,sec,millisec);
    
    GoToXY(14, 6);
    ClrEol;
    
    GoToXY(14, 8);
    ClrEol;
    
    GoToXY(14, 10);
    ClrEol;
    
    GoToXY(14, 12);
    ClrEol;
    
    GoToXY(15, 12);
    write(hour,':',min,':',sec);
    
    current := 32;
    
    position := 15;
    
    num := hour;

    repeat
        if num >= current then
        begin
            GoToXY(position, 6);
            write(chr(254));
            num := num - current;
        end;
        current := current / 2;
        position := position + 5;
    until current = 0.5;
     
    current := 32;
    
    position := 15;
    
    num := min;
    
    repeat
        if num >= current then
        begin
            GoToXY(position, 8);
            write(chr(254));
            num := num - current;
        end;
        current := current / 2;
        position := position + 5;
    until current = 0.5;
    
    current := 32;
    
    position := 15;
    
    num := sec;
    
    repeat
        if num >= current then
        begin
            GoToXY(position, 10);
            write(chr(254));
            num := num - current;
        end;
        current := current / 2;
        position := position + 5;
    until current = 0.5;

end;

begin

    clrscr;
    TextColor(White);
    writeln('===============================[ Binary Clock ]=================================');
    writeln;
    writeln('             32   16    8    4    2    1');
    writeln;
    writeln('Hour');
    writeln;
    writeln('Minute');
    writeln;
    writeln('Second');
    writeln;
    writeln('Current Time: ');
    writeln;
    writeln;
    writeln('===========================[ Press Any Key To Exit ]============================');
    repeat
        showTime;
        delay(1000);
    until KeyPressed;
    
end.
