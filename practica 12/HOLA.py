import time
nombre= input("INGRESA TU NOMBRE: ")
opc=input("Hola como estás "+ nombre.upper() +"?\n1.BIEN\n2.MAL\n")
res=opc.upper()
if res=='BIEN' or res=='1':
    print("QUE BUENO QUE ESTÉS BIEN")
elif res=="MAL" or res=='2':
    print("F :(")
else:
    exit()
time.sleep(20)

    
