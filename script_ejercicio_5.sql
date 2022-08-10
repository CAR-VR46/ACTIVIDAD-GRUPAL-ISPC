SELECT
	Perro.Nombre as 'Nombre'
FROM
	Perro, Dueno
WHERE
	Perro.DNI_Dueno = Dueno.DNI AND
	Dueno.Nombre = 'Pedro'