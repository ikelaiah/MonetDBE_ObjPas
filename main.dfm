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
  TextHeight = 15
  object Splitter1: TSplitter
    Left = 1062
    Top = 0
    Width = 10
    Height = 998
    Align = alRight
    ExplicitLeft = 840
  end
  object Memo1: TMemo
    Left = 1072
    Top = 0
    Width = 483
    Height = 998
    Align = alRight
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 314
    Top = 0
    Width = 748
    Height = 998
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 424
    ExplicitTop = 544
    ExplicitWidth = 185
    ExplicitHeight = 41
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
      Width = 746
      Height = 64
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitLeft = 6
      ExplicitTop = 0
      ExplicitWidth = 838
      DesignSize = (
        746
        64)
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
      object Btn_Version: TSpeedButton
        Left = 675
        Top = 7
        Width = 51
        Height = 41
        Hint = 'Version Info'
        Anchors = [akTop, akRight]
        ImageIndex = 1
        ImageName = 'versions'
        Images = SVGIconImageList1
        ParentShowHint = False
        ShowHint = True
        OnClick = Btn_VersionClick
        ExplicitLeft = 767
      end
      object EditDBPath: TEdit
        Left = 135
        Top = 21
        Width = 534
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        Text = 'EditDBPath'
        ExplicitWidth = 626
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 65
      Width = 746
      Height = 424
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel3'
      TabOrder = 3
      ExplicitWidth = 838
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 746
        Height = 41
        Align = alTop
        Caption = 'SQL : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -36
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 8
        ExplicitWidth = 132
      end
      object SQLMemo: TMemo
        Left = 0
        Top = 41
        Width = 746
        Height = 342
        Align = alClient
        ScrollBars = ssBoth
        TabOrder = 0
        ExplicitLeft = -248
        ExplicitTop = 42
        ExplicitWidth = 705
        ExplicitHeight = 231
      end
      object Panel4: TPanel
        Left = 0
        Top = 383
        Width = 746
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitLeft = 272
        ExplicitTop = 288
        ExplicitWidth = 185
        DesignSize = (
          746
          41)
        object Btn_Run_Query: TButton
          Left = 626
          Top = 6
          Width = 105
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Execute Query'
          TabOrder = 0
          ExplicitLeft = 575
        end
      end
    end
  end
  object TreeView1: TTreeView
    Left = 0
    Top = 0
    Width = 314
    Height = 998
    Align = alLeft
    Indent = 19
    TabOrder = 2
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
      end>
    Scaled = True
    Left = 296
    Top = 680
  end
end
