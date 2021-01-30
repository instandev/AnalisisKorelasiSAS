data tugas Anreg1;
input harga produksi;
datalines;
500 550
600 825
625 887
700 975
700 991
650 1022
720 1095
725 1173
800 1244
830 1323
780 1500
800 1436
820 1333
900 1300
1000 1400
;
proc corr data=anreg1;
/*untuk analisis corelasi*/;
var harga produksi;
proc sgplot data=anreg1;
scatter y=produksi x=harga;
proc gplot=anreg1;
plot produksi*harga;
ods grapics on;
proc reg data=anreg1;
model produksi=harga/SPEC;
output out=resids R=Res;
Proc univariate data=resids NORMAL PLOT;
Var Res;
run;

