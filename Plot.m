Y=[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14]
Intrari1=[1005,966,927,888,849,810,771,731,691,652,612,571,531,491,450]
Iesiri1=[1507,2887,3350,3217,3082,2949,2815,2681,2545,2409,2273,2137,1998,1859,1722]

Intrari2=[985,935,884,833,782,731,679,628,576,524,472,420,368,315,262]
Iesiri2=[1970,568,862,821,779,736,694,653,608,566,523,480,436,393,351]

figure
plot(Y,flip(Intrari1),'bo-')
hold on
plot(Y,flip(Iesiri1),'ro-')

figure
plot(Y,flip(Intrari2),'bo-')
hold on
plot(Y,flip(Iesiri2),'ro-')

