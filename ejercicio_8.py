Historial4 = (7510, 7960, 76180, 800, 4100)

def getMinValueHistorial4():
    
    tempMin = 99999
    
    for actualValue in Historial4:
        if actualValue < tempMin:
            tempMin = actualValue
    
    return tempMin

minValue = getMinValueHistorial4()
print("El valor minimo de atencion gastada en Olivia es de: $", minValue)