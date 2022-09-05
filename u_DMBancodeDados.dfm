object DmBancodeDados: TDmBancodeDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 224
  Width = 294
  object FDConnection: TFDConnection
    ConnectionName = 'BD_Vendas'
    Params.Strings = (
      'User_Name=root'
      'Password=12345'
      'Database=bdvendas'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 96
    Top = 128
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Users\User\Desktop\TeladeVendas\libmysql.dll'
    Left = 88
    Top = 32
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 208
    Top = 80
  end
end
