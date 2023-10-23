.data
	num1:.float 3.14
	num2:.float 2.71
	num3:.double 6.14
	num4:.double 5.71

.text
	lwc1  $f2,num1
	lwc1  $f4,num2
	add.s $f12,$f2,$f4
	
	ldc1  $f6,num3
	ldc1  $f8,num4
	add.d $f10,$f6,$f8