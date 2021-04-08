object rab: Trab
  Left = 0
  Top = 0
  Caption = #1056#1072#1073#1086#1090#1085#1080#1082
  ClientHeight = 294
  ClientWidth = 315
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 94
    Height = 13
    Caption = #1048#1085#1076#1077#1082#1089' '#1088#1072#1073#1086#1090#1085#1080#1082#1072
  end
  object Label2: TLabel
    Left = 24
    Top = 43
    Width = 76
    Height = 13
    Caption = #1048#1084#1103' '#1088#1072#1073#1086#1090#1085#1080#1082#1072
  end
  object Label3: TLabel
    Left = 24
    Top = 70
    Width = 101
    Height = 13
    Caption = #1060#1072#1084#1080#1083#1080#1103' '#1088#1072#1073#1086#1090#1085#1080#1082#1072
  end
  object Label4: TLabel
    Left = 24
    Top = 102
    Width = 44
    Height = 13
    Caption = #1058#1077#1083#1077#1092#1086#1085
  end
  object Label5: TLabel
    Left = 24
    Top = 137
    Width = 31
    Height = 13
    Caption = #1040#1076#1088#1077#1089
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 180
    Width = 305
    Height = 53
    Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1103
    TabOrder = 0
    object ClearBtn: TButton
      Left = 8
      Top = 16
      Width = 65
      Height = 25
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      TabOrder = 0
      OnClick = ClearBtnClick
    end
    object AddButton: TButton
      Left = 79
      Top = 16
      Width = 65
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 1
      OnClick = AddButtonClick
    end
    object Button3: TButton
      Left = 150
      Top = 16
      Width = 65
      Height = 25
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      TabOrder = 2
    end
    object Deletebtn: TButton
      Left = 221
      Top = 16
      Width = 65
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 3
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 239
    Width = 305
    Height = 53
    Caption = #1053#1072#1074#1080#1075#1072#1094#1080#1103
    TabOrder = 1
    object BeginningBtn: TButton
      Left = 8
      Top = 16
      Width = 65
      Height = 25
      Caption = #1042' '#1085#1072#1095#1072#1083#1086
      TabOrder = 0
      OnClick = BeginningBtnClick
    end
    object NextBtn: TButton
      Left = 79
      Top = 16
      Width = 65
      Height = 25
      Caption = #1057#1083#1077#1076'.'
      TabOrder = 1
      OnClick = NextBtnClick
    end
    object PrevBtn: TButton
      Left = 150
      Top = 17
      Width = 65
      Height = 25
      Caption = #1055#1088#1077#1076'.'
      TabOrder = 2
      OnClick = PrevBtnClick
    end
    object LastBtn: TButton
      Left = 221
      Top = 16
      Width = 65
      Height = 25
      Caption = #1042' '#1082#1086#1085#1077#1094
      TabOrder = 3
      OnClick = LastBtnClick
    end
  end
  object IndexEdit: TEdit
    Left = 124
    Top = 13
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 2
  end
  object NameEdit: TEdit
    Left = 109
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object FamEdit: TEdit
    Left = 131
    Top = 67
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Tel: TEdit
    Left = 85
    Top = 94
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object DoljnCB: TComboBox
    Left = 37
    Top = 153
    Width = 145
    Height = 21
    TabOrder = 6
    Text = #1044#1086#1083#1078#1085#1086#1089#1090#1100
  end
  object Adr: TEdit
    Left = 85
    Top = 126
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'localhost/3050:G:\'#1054#1063#1050#1040'\Kp18IS\AutoSalon\data\AUTOSALON.IB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1251')
    LoginPrompt = False
    ServerType = 'IBServer'
    Left = 376
    Top = 16
  end
  object Transaction: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Left = 376
    Top = 64
  end
  object Query: TIBQuery
    Database = IBDatabase1
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 376
    Top = 120
  end
  object DolQuery: TIBQuery
    Database = IBDatabase1
    Transaction = Transaction
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from DOLJNOST')
    Left = 376
    Top = 168
    object DolQueryID_DOLJ: TIntegerField
      FieldName = 'ID_DOLJ'
      Origin = '"DOLJNOST"."ID_DOLJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DolQueryNAMEDOLJ: TIBStringField
      FieldName = 'NAMEDOLJ'
      Origin = '"DOLJNOST"."NAMEDOLJ"'
      Required = True
      Size = 30
    end
  end
  object navquery: TIBQuery
    Database = IBDatabase1
    Transaction = Transaction
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT id_rab,namerab,lastrab,tel_rab,adr,NAMEDOLJ'
      ' from rabotnic r,doljnost d'
      ' where (r.cod_dolz=d.id_dolj)')
    Left = 376
    Top = 224
  end
end
