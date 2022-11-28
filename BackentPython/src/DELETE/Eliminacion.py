def Eliminar_Categoria(Id):
    try :
        #Llamado a la base de datos, para no duplicidad
        from CONEXION.Conexion import conectar
        conexion=conectar()
        cursor = conexion.connection.cursor()
        sql = "CALL eliminar_categoria({0})".format(Id)
        print("codigo sql", sql)
        cursor.execute(sql)
        conexion.connection.commit()
        return True
    except Exception as ex:
        return False

def Eliminar_Usuario(request):
    try :
        #Llamado a la base de datos, para no duplicidad
        from CONEXION.Conexion import conectar
        conexion=conectar()
        cursor = conexion.connection.cursor()
        sql = """CALL eliminar_usuario('{0}')""".format(request.json['Id_Usuario'])
        print("codigo sql", sql)
        cursor.execute(sql)
        conexion.connection.commit()
        return True
    except Exception as ex:
        return False

def Eliminar_producto(request):
    try :
        #Llamado a la base de datos, para no duplicidad
        from CONEXION.Conexion import conectar
        conexion=conectar()
        cursor = conexion.connection.cursor()
        sql = """CALL eliminar_producto('{0}')""".format(request.json['Id_Producto'])
        print("codigo sql", sql)
        cursor.execute(sql)
        conexion.connection.commit()
        return True
    except Exception as ex:
        return False

def Eliminar_Factura(request):
    try :
        #Llamado a la base de datos, para no duplicidad
        from CONEXION.Conexion import conectar
        conexion=conectar()
        cursor = conexion.connection.cursor()
        sql = """CALL eliminar_factura('{0}')""".format(request.json['Id_Factura'])
        print("codigo sql", sql)
        cursor.execute(sql)
        conexion.connection.commit()
        return True
    except Exception as ex:
        return False                        

def Eliminar_Ingreso(Id):
    try :
        #Llamado a la base de datos, para no duplicidad
        from CONEXION.Conexion import conectar
        conexion=conectar()
        cursor = conexion.connection.cursor()
        sql = """CALL eliminar_ingreso('{0}')""".format(Id)
        print("codigo sql", sql)
        cursor.execute(sql)
        conexion.connection.commit()
        return True
    except Exception as ex:
        return False                                