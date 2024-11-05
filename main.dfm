object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 998
  ClientWidth = 1555
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object Splitter1: TSplitter
    Left = 1062
    Top = 0
    Width = 10
    Height = 998
    Align = alRight
    Beveled = True
    ExplicitLeft = 840
  end
  object Splitter4: TSplitter
    Left = 185
    Top = 0
    Width = 16
    Height = 998
    Beveled = True
  end
  object Memo1: TMemo
    Left = 1072
    Top = 0
    Width = 483
    Height = 998
    Align = alRight
    TabOrder = 0
    ExplicitLeft = 1066
    ExplicitHeight = 981
  end
  object Panel1: TPanel
    Left = 201
    Top = 0
    Width = 861
    Height = 998
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 855
    ExplicitHeight = 981
    object Btn_Connect: TButton
      Left = 8
      Top = 8
      Width = 89
      Height = 25
      Caption = 'Connect'
      TabOrder = 0
    end
    object Btn_Disconnect: TButton
      Left = 111
      Top = 8
      Width = 98
      Height = 25
      Caption = 'Disconnect'
      TabOrder = 1
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 859
      Height = 120
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitWidth = 853
      DesignSize = (
        859
        120)
      object BtnConnection: TSpeedButton
        Left = 8
        Top = 7
        Width = 51
        Height = 41
        Hint = 'Connect or Disconnect database'
        AllowAllUp = True
        GroupIndex = 1
        ImageIndex = 0
        ImageName = 'server-connection'
        Images = SVGIconImageList1
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnConnectionClick
      end
      object Label2: TLabel
        Left = 78
        Top = 24
        Width = 51
        Height = 15
        Caption = 'DB Path : '
      end
      object SpeedButton1: TSpeedButton
        Left = 8
        Top = 63
        Width = 51
        Height = 41
        Hint = 'Version Info'
        ImageIndex = 2
        ImageName = 'activity'
        Images = SVGIconImageList1
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 78
        Top = 63
        Width = 51
        Height = 41
        Hint = 'Version Info'
        ImageIndex = 3
        ImageName = 'trash'
        Images = SVGIconImageList1
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton2Click
      end
      object EditDBPath: TEdit
        Left = 135
        Top = 21
        Width = 299
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        Text = 'EditDBPath'
        ExplicitWidth = 293
      end
      object databaseCombo: TComboBox
        Left = 440
        Top = 21
        Width = 265
        Height = 23
        TabOrder = 1
        Text = 'databaseCombo'
        OnChange = databaseComboChange
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 121
      Width = 859
      Height = 424
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel3'
      TabOrder = 3
      ExplicitWidth = 853
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 859
        Height = 41
        Align = alTop
        Caption = 'SQL : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -36
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 132
      end
      object SQLMemo: TMemo
        Left = 0
        Top = 41
        Width = 859
        Height = 342
        Align = alClient
        ScrollBars = ssBoth
        TabOrder = 0
        ExplicitWidth = 853
      end
      object Panel4: TPanel
        Left = 0
        Top = 383
        Width = 859
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitWidth = 853
        DesignSize = (
          859
          41)
        object Btn_Run_Query: TButton
          Left = 739
          Top = 6
          Width = 105
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Execute Query'
          TabOrder = 0
          ExplicitLeft = 733
        end
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 185
    Height = 998
    Align = alLeft
    Caption = 'Panel5'
    TabOrder = 2
    ExplicitHeight = 981
    object TreeView1: TTreeView
      Left = 1
      Top = 1
      Width = 183
      Height = 996
      Align = alClient
      Indent = 19
      TabOrder = 0
      ExplicitHeight = 979
    end
  end
  object SVGIconImageList1: TSVGIconImageList
    Size = 48
    SVGIconItems = <
      item
        IconName = 'server-connection'
        SVGText = 
          '<svg width="24" height="24" stroke-width="1.5" viewBox="0 0 24 2' +
          '4" fill="none" xmlns="http://www.w3.org/2000/svg">'#10'<path d="M3 1' +
          '9H12M21 19H12M12 19V13M12 13H18V5H6V13H12Z" stroke="currentColor' +
          '" stroke-linecap="round" stroke-linejoin="round"/>'#10'<path d="M9 9' +
          '.01L9.01 8.99889" stroke="currentColor" stroke-linecap="round" s' +
          'troke-linejoin="round"/>'#10'<path d="M12 9.01L12.01 8.99889" stroke' +
          '="currentColor" stroke-linecap="round" stroke-linejoin="round"/>' +
          #10'</svg>'#10
      end
      item
        IconName = 'versions'
        SVGText = 
          '<svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler ' +
          'icon-tabler-versions" width="24" height="24" viewBox="0 0 24 24"' +
          ' stroke-width="2" stroke="currentColor" fill="none" stroke-linec' +
          'ap="round" stroke-linejoin="round">'#10'  <path stroke="none" d="M0 ' +
          '0h24v24H0z" fill="none"/>'#10'  <path d="M10 5m0 2a2 2 0 0 1 2 -2h6a' +
          '2 2 0 0 1 2 2v10a2 2 0 0 1 -2 2h-6a2 2 0 0 1 -2 -2z" />'#10'  <path ' +
          'd="M7 7l0 10" />'#10'  <path d="M4 8l0 8" />'#10'</svg>'#10#10#10
      end
      item
        IconName = 'activity'
        SVGText = 
          '<svg width="24" height="24" stroke-width="1.5" viewBox="0 0 24 2' +
          '4" fill="none" xmlns="http://www.w3.org/2000/svg">'#10'<path d="M3 1' +
          '2H6L9 3L15 21L18 12H21" stroke="currentColor" stroke-linecap="ro' +
          'und" stroke-linejoin="round"/>'#10'</svg>'#10
      end
      item
        IconName = 'trash'
        SVGText = 
          '<svg width="24" height="24" viewBox="0 0 24 24" stroke-width="1.' +
          '5" fill="none" xmlns="http://www.w3.org/2000/svg">'#10'<path d="M20 ' +
          '9L18.005 20.3463C17.8369 21.3026 17.0062 22 16.0353 22H7.96474C6' +
          '.99379 22 6.1631 21.3026 5.99496 20.3463L4 9" stroke="currentCol' +
          'or" stroke-linecap="round" stroke-linejoin="round"/>'#10'<path d="M2' +
          '1 6L15.375 6M3 6L8.625 6M8.625 6V4C8.625 2.89543 9.52043 2 10.62' +
          '5 2H13.375C14.4796 2 15.375 2.89543 15.375 4V6M8.625 6L15.375 6"' +
          ' stroke="currentColor" stroke-linecap="round" stroke-linejoin="r' +
          'ound"/>'#10'</svg>'#10
      end>
    Scaled = True
    Left = 296
    Top = 680
  end
end
