filename test '/temp/text.txt'; 
data testfile; 
infile test; 
input id 1 name $ 3-5; 
newvar=id+7; 
datalines; 
run; 
data _null_; 
set work.testfile; 
file test; 
put id 1-2 name $4-6 newvar 8-9; 
run;