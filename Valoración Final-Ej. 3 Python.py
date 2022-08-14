#Ejercicio 3
#Crear un lista en Python denominado “Perro” que contenga los siguientes valores:

#  13,  Puppy,  12/12/2012 , Macho, 123

# Que se corresponde con los datos de un perro de nuestra base de datos (Id_Perro, nombre, fecha de nacimiento, sexo y dni del dueño).
#Modificar la fecha de nacimiento por 13/12/2012 y reemplazar “dni del dueño” por 28957346 .

Perro=[13,"Puppy","12/12/2012","Macho","123"]

print("Lista original:",Perro)

Perro[2]="13/12/2012"
Perro[4]="28957346"

print("Lista modificada:",Perro)
print()

#Esto no lo pide el enunciado pero es para mostrar los datos de la lista
print("Datos del perro:")
print("Id_Perro:",Perro[0])
print("Nombre:",Perro[1])
print("Fecha de nacimiento:",Perro[2])
print("Sexo:",Perro[3])
print("DNI del dueño:",Perro[4])

