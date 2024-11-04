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
  object Button1: TButton
    Left = 56
    Top = 39
    Width = 257
    Height = 25
    Caption = 'Show_monetDBE version'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 848
    Top = 8
    Width = 705
    Height = 982
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object Button4: TButton
    Left = 8
    Top = 88
    Width = 257
    Height = 25
    Caption = 'Create Table'
    TabOrder = 2
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 8
    Top = 119
    Width = 257
    Height = 25
    Caption = 'Insert in Table'
    TabOrder = 3
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 8
    Top = 8
    Width = 257
    Height = 25
    Caption = 'Connect'
    TabOrder = 4
    OnClick = Button6Click
  end
  object Button2: TButton
    Left = 632
    Top = 672
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 5
    OnClick = Button2Click
  end
  object DataSource1: TDataSource
    Left = 968
    Top = 408
  end
  object SQLQuery1: TSQLQuery
    Params = <>
    Left = 1120
    Top = 672
  end
end
