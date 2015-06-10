program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
i,n,j,b,d,k:integer;
a:array [1..100]  of integer;
s:string;
begin
  write('vvedite posledovatelnost skobok  s');
read(s);
n:=length(s);
b:=n;
writeln('kolichestvo skobok',' ',n);
for i:=1 to n do
  begin
   if s[i]='(' then a[i]:=1;
   if s[i]=')' then a[i]:=2;
   if s[i]='[' then a[i]:=3;
   if s[i]=']' then a[i]:=4;
  end;

   for d:=1 to n div 2 do
  begin
i:=1;
while i<(n) do
if ((a[i]=1) and (a[i+1]=2)) or ((a[i]=3) and (a[i+1]=4)) then
  begin
for j:=i to n-2 do
a[j]:=a[j+2];
a[b-1]:=0;
a[b]:=0;
b:=b-2; end
else i:=i+1;
  end;
k:=0;
for i:=1 to n do begin
write(a[i]);
if a[i]<>0 then k:=k+1;
  end;
writeln;
if k=0 then write('pravilnaya posledovaelnost skobok')
else
write('nepravilnaya posledovatelnost skobok');
write(s);
readln;
readln;
end.

