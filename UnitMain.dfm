object FormMain: TFormMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Google Analytics with OpenSSL'
  ClientHeight = 480
  ClientWidth = 640
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object LabelAnalytics: TLabel
    Left = 8
    Top = 254
    Width = 200
    Height = 13
    Caption = 'https://www.google-analytics.com/collect'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LabelResults: TLabel
    Left = 252
    Top = 224
    Width = 30
    Height = 13
    Caption = 'Result'
  end
  object ButtonSend: TButton
    Left = 8
    Top = 212
    Width = 75
    Height = 25
    Hint = 'Send Information to Google Analytics'
    Caption = 'Send'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = ButtonSendClick
  end
  object MemoResult: TMemo
    Left = 252
    Top = 240
    Width = 380
    Height = 232
    Color = clBtnFace
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object PageControl: TPageControl
    Left = 248
    Top = 8
    Width = 384
    Height = 198
    ActivePage = TabPageView
    TabOrder = 2
    object TabEvent: TTabSheet
      Hint = 'event'
      Caption = 'Event'
      ImageIndex = 2
      object Label_EL: TLabel
        Left = 11
        Top = 78
        Width = 47
        Height = 13
        Caption = 'Param_EL'
      end
      object Label_EV: TLabel
        Left = 11
        Top = 104
        Width = 48
        Height = 13
        Caption = 'Param_EV'
      end
      object Label_EA: TLabel
        Left = 11
        Top = 51
        Width = 49
        Height = 13
        Caption = 'Param_EA'
      end
      object Label_EC: TLabel
        Left = 11
        Top = 24
        Width = 49
        Height = 13
        Caption = 'Param_EC'
      end
      object Edit_EL: TEdit
        Left = 75
        Top = 75
        Width = 286
        Height = 21
        Hint = 'Event label'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Text = 'holiday'
        TextHint = 'Event label'
      end
      object Edit_EV: TEdit
        Left = 75
        Top = 102
        Width = 121
        Height = 21
        Hint = 'Event value'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = '300'
        TextHint = 'Event value'
      end
      object Edit_EA: TEdit
        Left = 75
        Top = 48
        Width = 286
        Height = 21
        Hint = 'Event Action'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Text = 'play'
        TextHint = 'Event Action'
      end
      object Edit_EC: TEdit
        Left = 75
        Top = 21
        Width = 286
        Height = 21
        Hint = 'Event Category'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        Text = 'video'
        TextHint = 'Event Category'
      end
    end
    object TabPageView: TTabSheet
      Hint = 'pageview'
      Caption = 'PageView'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 27
      object Label_DH: TLabel
        Left = 3
        Top = 11
        Width = 50
        Height = 13
        Caption = 'Param_DH'
      end
      object Label_DP: TLabel
        Left = 3
        Top = 37
        Width = 49
        Height = 13
        Caption = 'Param_DP'
      end
      object Label_DT: TLabel
        Left = 3
        Top = 65
        Width = 49
        Height = 13
        Caption = 'Param_DT'
      end
      object Label_SR: TLabel
        Left = 196
        Top = 65
        Width = 49
        Height = 13
        Caption = 'Param_SR'
      end
      object Label_AV: TLabel
        Left = 196
        Top = 37
        Width = 49
        Height = 13
        Caption = 'Param_AV'
      end
      object Label_UA: TLabel
        Left = 196
        Top = 11
        Width = 50
        Height = 13
        Caption = 'Param_UA'
      end
      object Label_DS: TLabel
        Left = 196
        Top = 92
        Width = 49
        Height = 13
        Caption = 'Param_DS'
      end
      object Label_CN: TLabel
        Left = 196
        Top = 119
        Width = 50
        Height = 13
        Caption = 'Param_CN'
      end
      object Edit_DH: TEdit
        Left = 59
        Top = 8
        Width = 121
        Height = 21
        Hint = 'Document hostname'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Text = 'zoetecnologia.com.br'
        TextHint = 'Document hostname'
      end
      object Edit_DP: TEdit
        Left = 59
        Top = 35
        Width = 121
        Height = 21
        Hint = 'Page'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = 'FrmPrincipal'
        TextHint = 'Page'
      end
      object Edit_DT: TEdit
        Left = 59
        Top = 62
        Width = 121
        Height = 21
        Hint = 'Title'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Text = 'Principal'
        TextHint = 'Title'
      end
      object Edit_SR: TEdit
        Left = 252
        Top = 62
        Width = 121
        Height = 21
        Hint = 'Screen Resolution'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        Text = '800x600'
        TextHint = 'Screen Resolution'
      end
      object Edit_AV: TEdit
        Left = 252
        Top = 35
        Width = 121
        Height = 21
        Hint = 'Application Version'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        Text = '1.2.0.9'
        TextHint = 'Application Version'
      end
      object Edit_UA: TEdit
        Left = 252
        Top = 8
        Width = 121
        Height = 21
        Hint = 'User Agent'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        Text = 'Windows 10'
        TextHint = 'User Agent'
      end
      object Edit_DS: TEdit
        Left = 251
        Top = 89
        Width = 121
        Height = 21
        Hint = 'Data Source'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        Text = 'Free'
        TextHint = 'Data Source'
      end
      object Edit_CN: TEdit
        Left = 251
        Top = 116
        Width = 121
        Height = 21
        Hint = 'Campaign Name'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        Text = 'AppFinancas'
        TextHint = 'Campaign Name'
      end
    end
  end
  object PanelParams: TPanel
    Left = 8
    Top = 8
    Width = 234
    Height = 198
    TabOrder = 3
    object Label_V: TLabel
      Left = 15
      Top = 30
      Width = 42
      Height = 13
      Caption = 'Param_V'
    end
    object Label_TID: TLabel
      Left = 15
      Top = 57
      Width = 53
      Height = 13
      Caption = 'Param_TID'
    end
    object Label_CID: TLabel
      Left = 15
      Top = 84
      Width = 54
      Height = 13
      Caption = 'Param_CID'
    end
    object Label_AN: TLabel
      Left = 15
      Top = 113
      Width = 50
      Height = 13
      Caption = 'Param_AN'
    end
    object Label_CD: TLabel
      Left = 15
      Top = 138
      Width = 50
      Height = 13
      Caption = 'Param_CD'
    end
    object LabelType: TLabel
      Left = 15
      Top = 8
      Width = 123
      Height = 13
      Caption = 'Basic Type of Information'
    end
    object Label_UID: TLabel
      Left = 15
      Top = 165
      Width = 54
      Height = 13
      Caption = 'Param_UID'
    end
    object Edit_V: TEdit
      Left = 79
      Top = 27
      Width = 121
      Height = 21
      Hint = 'Version of Protocol'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = '1'
      TextHint = 'Version of Protocol'
    end
    object Edit_TID: TEdit
      Left = 79
      Top = 54
      Width = 121
      Height = 21
      Hint = 'Tracking ID'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Text = 'UA-128990494-3'
      TextHint = 'Tracking ID'
    end
    object Edit_CID: TEdit
      Left = 79
      Top = 81
      Width = 121
      Height = 21
      Hint = 'Client ID'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Text = '555'
      TextHint = 'Client ID'
    end
    object Edit_AN: TEdit
      Left = 79
      Top = 108
      Width = 121
      Height = 21
      Hint = 'Application Name'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Text = 'EXEMPLOS'
      TextHint = 'Application Name'
    end
    object Edit_CD: TEdit
      Left = 79
      Top = 135
      Width = 121
      Height = 21
      Hint = 'Client Display'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      Text = 'FrmMainMenu'
      TextHint = 'Client Display'
    end
    object Edit_UID: TEdit
      Left = 79
      Top = 162
      Width = 121
      Height = 21
      Hint = 'User ID'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Text = 'Developer'
      TextHint = 'User ID'
    end
  end
  object IdHTTP: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams, hoNoParseMetaHTTPEquiv]
    Left = 536
    Top = 112
  end
end
