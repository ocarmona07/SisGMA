USE SisGMA;

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

INSERT  INTO dbo.Notificaciones
        ( IdOperario, TituloNotificacion, Descripcion, Color, Icono, IdNivel,
          Estado )
VALUES  ( 1, N'Prueba de notificación',
          N'Notificación con fines de pruebas, despliegue y muestra de información.',
          N'text-aqua', N'fa-info-circle', 1, 1 ),
        ( 1, N'Advertencia de sistema',
          N'Notificación con fines de pruebas de advertencia.',
          N'text-yellow', N'fa-exclamation-triangle', 3, 1 )
GO
