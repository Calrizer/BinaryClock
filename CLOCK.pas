program binaryClock;

uses crt,dos;

var hour,min,sec,millisec:word;

current:integer;

procedure showTime;
begin

gettime(hour,min,sec,millisec);

repeat

if (hour / current) mod 2 = {Finish this later}

until current = 0;

end;

begin

writeln('================[ Binary Clock ]==================');
writeln;
writeln('           32    16    8    4    2    1');
writeln;
writeln('Hour');
writeln;
writeln('Minute');
writeln;
writeln('Second');
writeln;
repeat
showTime;
delay(1000);
until KeyPressed;
end.
