Algoritmo Magic_Mtx
	Definir mtx, i, j, n, m, super_magic, suma_total Como Entero
	Definir magic, c Como Logico
	super_magic = 0
	suma_total = 0 
	c = Verdadero
	//----------------------TESTEO GIT
//----------------------------------------------------------------------------DOY PARÁMETROS A LA MATRIZ
	Escribir " Ingrese el valor de filas: "; leer Sin Saltar n
	Escribir " Ingrese el valor de columnas: "; leer Sin Saltar m
	si (n<1 o n>9) o (m<1 o m>9) o (n<>m) Entonces
		si (n<1 o n>9 o m<1 o m>9) y (n<>m) Entonces
			Escribir " -- Filas y Columnas deben ser iguales --"
			Escribir "                    y                     "
			Escribir " -- Solo valores comprendidos entre 1 y 9 --"
		SiNo
			si (n<1 o n>9) o (m<1 o m>9)
				Escribir " -- Solo valores comprendidos entre 1 y 9 --"
			SiNo
				Escribir " -- Filas y Columnas deben ser iguales --"
			FinSi
		FinSi
	SiNo
//----------------------------------------------------------------------------DOY VALORES A LA MATRIZ
		Dimension mtx(n,m)
		
			para i = 0 hasta n-1
				para j = 0 hasta m-1
					Escribir " Ingrese el valor de la posición " i "," j ": ";leer sin saltar mtx(i,j)
					si (mtx(i,j)<1 o mtx(i,j)>9)
						c = falso
					FinSi
				FinPara
			FinPara
			
		si c = Falso
			Escribir " "
			Escribir " -- Solo valores comprendidos entre 1 y 9 --"
		SiNo
			Escribir " --- MATRIZ ---"
			para i = 0 hasta n-1
				para j = 0 hasta m-1
					Escribir " " mtx(i,j) Sin Saltar
				FinPara
				Escribir " "
			FinPara
		FinSi
		//---------------------------------------------------------------------------LLAMADO FUNCIÓN FILAS
		si filas(mtx,n,m,i,j,suma_total) = Verdadero
			
			super_magic = super_magic + 1
			Escribir " filas ready"
			Escribir " Suma de las filas: " suma_total
		SiNo
			Escribir " mal filas"
		FinSi
		Escribir " "
		si columnas(mtx,n,m,i,j,suma_total) = Verdadero
			super_magic = super_magic + 1
			Escribir " columnas ready"
			Escribir " Suma de las columnas: " suma_total
		SiNo
			Escribir " mal columnas"
		FinSi
		Escribir " "
		si diagonales(mtx,n,m,i,j,suma_total) = Verdadero
			super_magic = super_magic + 1
			Escribir " diagonales ready"
			Escribir " Suma de las diagonales: " suma_total
		SiNo
			Escribir " mal diagonales"
		FinSi
		// falta devolver el valor de cada suma
		// decir si es o no una matriz màgica luego de comprobar
		// decir qué sector no es mágico
		
	FinSi
	
FinAlgoritmo
//---------------------------------------------------------------------------FUNCIÓN FILAS
Funcion rr = filas(mtx,n,m,i,j,suma_total)
	Definir contador, suma, super_magic, a Como Entero
	Definir magic, rr Como Logico
	contador = 0
	suma_total = 0
	a = 1
	Hacer
		suma = 0
		para i = 0 hasta 0
			para j = 0 hasta n - 1
				suma = suma + mtx(i,j)
			FinPara
		FinPara
		si a = 1 Entonces
			suma_total = suma
			a = 500
		FinSi
		si suma_total = suma
			magic = Verdadero
		SiNo
			magic = falso
		FinSi
		contador = contador + 1
	Mientras Que magic = verdadero y contador > 0 y contador < n
	si magic = Verdadero
		rr = Verdadero
	SiNo
		rr = falso
	FinSi
FinFuncion
//---------------------------------------------------------------------------FUNCIÓN COLUMNAS
Funcion rr = columnas(mtx,n,m,i,j,suma_total)
	Definir contador, suma, super_magic, a Como Entero
	Definir magic, rr Como Logico
	contador = 0
	suma_total = 0
	a = 0
	Hacer
		suma = 0
		para j = 0 hasta m - 1
			suma = suma + mtx(0,j)
		FinPara
		si a = 0 Entonces
			suma_total = suma
			a = 500
		FinSi
		si suma_total = suma
			magic = Verdadero
		SiNo
			magic = falso
		FinSi
		contador = contador + 1
	Mientras Que magic = verdadero y contador > 0 y contador < n
	si magic = Verdadero
		rr = Verdadero
	SiNo
		rr = falso
	FinSi
FinFuncion
//---------------------------------------------------------------------------FUNCIÓN DIAGONALES
Funcion rr = diagonales(mtx,n,m,i,j,suma_total)
	Definir suma, super_magic, a, u, p Como Entero
	Definir magic, rr Como Logico
	u = 0 
	p = 0
	suma_total = 0
	suma = 0
	para i = 0 hasta n-1
		para j = 0 hasta 0
			suma = suma + mtx(u,p)
		FinPara
		u = u + 1
		p = p + 1
	FinPara
	Escribir " suma 1: " suma
	suma_total = suma
	
	u = 0
	p = m-1
	suma = 0
	para i = 0 hasta n-1
		para j = 0 hasta 0
			suma = suma + mtx(u,p)
		FinPara
		u = u + 1
		p = p - 1
	FinPara
	Escribir " suma 2: " suma
	
	si suma_total = suma
		magic = Verdadero
	SiNo
		magic = falso
	FinSi
	
	si magic = Verdadero
		rr = Verdadero
	SiNo
		rr = falso
	FinSi
	
FinFuncion






















