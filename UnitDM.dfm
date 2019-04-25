object DM: TDM
  OldCreateOrder = False
  Height = 362
  Width = 708
  object fdConexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Public\Documents\Embarcadero\Studio\20.0\Sampl' +
        'es\Data\EMPLOYEE.GDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=IB')
    Connected = True
    Left = 32
    Top = 24
  end
  object qryClientes: TFDQuery
    Connection = fdConexao
    SQL.Strings = (
      'SELECT * FROM CUSTOMER')
    Left = 32
    Top = 88
    object qryClientesCUST_NO: TIntegerField
      FieldName = 'CUST_NO'
      Origin = 'CUST_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryClientesCUSTOMER: TStringField
      FieldName = 'CUSTOMER'
      Origin = 'CUSTOMER'
      Required = True
      Size = 25
    end
    object qryClientesCONTACT_FIRST: TStringField
      FieldName = 'CONTACT_FIRST'
      Origin = 'CONTACT_FIRST'
      Size = 15
    end
    object qryClientesCONTACT_LAST: TStringField
      FieldName = 'CONTACT_LAST'
      Origin = 'CONTACT_LAST'
    end
    object qryClientesPHONE_NO: TStringField
      FieldName = 'PHONE_NO'
      Origin = 'PHONE_NO'
    end
    object qryClientesADDRESS_LINE1: TStringField
      FieldName = 'ADDRESS_LINE1'
      Origin = 'ADDRESS_LINE1'
      Size = 30
    end
    object qryClientesADDRESS_LINE2: TStringField
      FieldName = 'ADDRESS_LINE2'
      Origin = 'ADDRESS_LINE2'
      Size = 30
    end
    object qryClientesCITY: TStringField
      FieldName = 'CITY'
      Origin = 'CITY'
      Size = 25
    end
    object qryClientesSTATE_PROVINCE: TStringField
      FieldName = 'STATE_PROVINCE'
      Origin = 'STATE_PROVINCE'
      Size = 15
    end
    object qryClientesCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Origin = 'COUNTRY'
      Size = 15
    end
    object qryClientesPOSTAL_CODE: TStringField
      FieldName = 'POSTAL_CODE'
      Origin = 'POSTAL_CODE'
      Size = 12
    end
    object qryClientesON_HOLD: TStringField
      FieldName = 'ON_HOLD'
      Origin = 'ON_HOLD'
      FixedChar = True
      Size = 1
    end
  end
end
