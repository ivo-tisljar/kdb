object KdbDataModule: TKdbDataModule
  Height = 196
  Width = 353
  PixelsPerInch = 96
  object FDConnection: TFDConnection
    Params.Strings = (
      'Server=DAWN\SQLDEV'
      'OSAuthent=Yes'
      'Database=Kdb'
      'DriverID=MSSQL')
    Left = 88
    Top = 72
  end
  object FDQuery: TFDQuery
    Connection = FDConnection
    Left = 232
    Top = 72
  end
end
