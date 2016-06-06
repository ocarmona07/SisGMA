INSERT  INTO dbo.Roles
        ( IdRol, Rol, Estado )
VALUES  ( 1, N'Web Developer', 1 )
GO

INSERT  INTO dbo.Operarios
        ( RutOperario ,
          Nombres ,
          ApPaterno ,
          ApMaterno ,
          Direccion ,
          IdComuna ,
          Telefono ,
          Imagen ,
          IdRol ,
          Clave ,
          Estado
        )
VALUES  ( N'159888207' ,
          N'Omar' ,
          N'Carmona' ,
          N'Rivas' ,
          N'Lynch 1040' ,
          211 ,
          N'+56982433600' ,
          N'' ,
          1 ,
          N'123456' ,
          1
        )
GO
