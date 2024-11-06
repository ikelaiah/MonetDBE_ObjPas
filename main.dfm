object Form1: TForm1
  Left = 0
  Top = 0
  Caption = '  MonetDBE explorer'
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
    Left = 241
    Top = 0
    Width = 16
    Height = 998
    Beveled = True
    ExplicitLeft = 185
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
    Left = 257
    Top = 0
    Width = 805
    Height = 998
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 799
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
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 805
      Height = 424
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel3'
      TabOrder = 2
      ExplicitWidth = 799
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 805
        Height = 15
        Align = alTop
        Caption = 'SQL : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 30
      end
      object SQLMemo: TMemo
        Left = 0
        Top = 15
        Width = 805
        Height = 368
        Align = alClient
        ScrollBars = ssBoth
        TabOrder = 0
        ExplicitTop = 41
        ExplicitWidth = 799
        ExplicitHeight = 342
      end
      object Panel4: TPanel
        Left = 0
        Top = 383
        Width = 805
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitWidth = 799
        DesignSize = (
          805
          41)
        object Btn_Run_Query: TButton
          Left = 685
          Top = 6
          Width = 105
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Execute Query'
          TabOrder = 0
          ExplicitLeft = 679
        end
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 241
    Height = 998
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel5'
    TabOrder = 2
    ExplicitHeight = 981
    object databaseTreeview: TTreeView
      Left = 0
      Top = 72
      Width = 241
      Height = 926
      Align = alClient
      Images = TreeImages
      Indent = 19
      PopupMenu = TreePopup
      TabOrder = 0
      ExplicitHeight = 909
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 241
      Height = 72
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 24
        Height = 72
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
      end
      object Panel7: TPanel
        Left = 24
        Top = 0
        Width = 217
        Height = 72
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object Label2: TLabel
          Left = 0
          Top = 0
          Width = 217
          Height = 30
          Margins.Left = 6
          Margins.Top = 6
          Align = alTop
          Caption = #13#10'    DB Path : '
          ExplicitLeft = 1
          ExplicitTop = 1
          ExplicitWidth = 63
        end
        object EditDBPath: TEdit
          Left = 0
          Top = 30
          Width = 217
          Height = 23
          Align = alTop
          TabOrder = 0
          Text = 'EditDBPath'
        end
      end
    end
  end
  object SVGIconImageList1: TSVGIconImageList
    Size = 32
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
    Left = 736
    Top = 112
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'sql'
    Filter = 'sql|*.sql'
    Left = 498
    Top = 177
  end
  object TreeImages: TSVGIconImageList
    SVGIconItems = <
      item
        IconName = 'database'
        SVGText = 
          '<svg version="1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0' +
          ' 48 48" enable-background="new 0 0 48 48">'#10'    <g fill="#D1C4E9"' +
          '>'#10'        <path d="M38,7H10C8.9,7,8,7.9,8,9v6c0,1.1,0.9,2,2,2h28' +
          'c1.1,0,2-0.9,2-2V9C40,7.9,39.1,7,38,7z"/>'#10'        <path d="M38,1' +
          '9H10c-1.1,0-2,0.9-2,2v6c0,1.1,0.9,2,2,2h28c1.1,0,2-0.9,2-2v-6C40' +
          ',19.9,39.1,19,38,19z"/>'#10'        <path d="M38,31H10c-1.1,0-2,0.9-' +
          '2,2v6c0,1.1,0.9,2,2,2h28c1.1,0,2-0.9,2-2v-6C40,31.9,39.1,31,38,3' +
          '1z"/>'#10'    </g>'#10'</svg>'#10
      end
      item
        IconName = 'data_backup'
        SVGText = 
          '<svg version="1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0' +
          ' 48 48" enable-background="new 0 0 48 48">'#10'    <g fill="#D1C4E9"' +
          '>'#10'        <path d="M38,7H10C8.9,7,8,7.9,8,9v6c0,1.1,0.9,2,2,2h28' +
          'c1.1,0,2-0.9,2-2V9C40,7.9,39.1,7,38,7z"/>'#10'        <path d="M38,1' +
          '9H10c-1.1,0-2,0.9-2,2v6c0,1.1,0.9,2,2,2h28c1.1,0,2-0.9,2-2v-6C40' +
          ',19.9,39.1,19,38,19z"/>'#10'        <path d="M38,31H10c-1.1,0-2,0.9-' +
          '2,2v6c0,1.1,0.9,2,2,2h28c1.1,0,2-0.9,2-2v-6C40,31.9,39.1,31,38,3' +
          '1z"/>'#10'    </g>'#10'    <g fill="#2196F3">'#10'        <polygon points="3' +
          '1,30 38,35.6 38,24.4"/>'#10'        <path d="M38,28c-0.3,0-0.7,0-1,0' +
          '.1v4c0.3-0.1,0.7-0.1,1-0.1c3.3,0,6,2.7,6,6s-2.7,6-6,6s-6-2.7-6-6' +
          ' c0-0.3,0-0.6,0.1-0.9l-3.4-2.7C28.3,35.5,28,36.7,28,38c0,5.5,4.5' +
          ',10,10,10s10-4.5,10-10S43.5,28,38,28z"/>'#10'    </g>'#10'</svg>'#10
      end
      item
        IconName = 'data_configuration'
        SVGText = 
          '<svg version="1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0' +
          ' 48 48" enable-background="new 0 0 48 48">'#10'    <g fill="#D1C4E9"' +
          '>'#10'        <path d="M38,7H10C8.9,7,8,7.9,8,9v6c0,1.1,0.9,2,2,2h28' +
          'c1.1,0,2-0.9,2-2V9C40,7.9,39.1,7,38,7z"/>'#10'        <path d="M38,1' +
          '9H10c-1.1,0-2,0.9-2,2v6c0,1.1,0.9,2,2,2h28c1.1,0,2-0.9,2-2v-6C40' +
          ',19.9,39.1,19,38,19z"/>'#10'        <path d="M38,31H10c-1.1,0-2,0.9-' +
          '2,2v6c0,1.1,0.9,2,2,2h28c1.1,0,2-0.9,2-2v-6C40,31.9,39.1,31,38,3' +
          '1z"/>'#10'    </g>'#10'    <path fill="#607D8B" d="M45.2,38.1c0.1-0.4,0.' +
          '1-0.8,0.1-1.1s0-0.8-0.1-1.1l2.3-1.7c0.2-0.2,0.3-0.5,0.2-0.7l-2.3' +
          '-3.9 c-0.1-0.2-0.4-0.3-0.7-0.2l-2.6,1.2c-0.6-0.5-1.3-0.9-2-1.2l-' +
          '0.3-2.9c0-0.3-0.3-0.5-0.5-0.5h-4.5c-0.3,0-0.5,0.2-0.5,0.5l-0.3,2' +
          '.9 c-0.7,0.3-1.4,0.7-2,1.2l-2.6-1.2c-0.3-0.1-0.6,0-0.7,0.2l-2.3,' +
          '3.9c-0.1,0.2-0.1,0.6,0.2,0.7l2.3,1.7c-0.1,0.4-0.1,0.8-0.1,1.1 s0' +
          ',0.8,0.1,1.1l-2.3,1.7c-0.2,0.2-0.3,0.5-0.2,0.7l2.3,3.9c0.1,0.2,0' +
          '.4,0.3,0.7,0.2l2.6-1.2c0.6,0.5,1.3,0.9,2,1.2l0.3,2.9 c0,0.3,0.3,' +
          '0.5,0.5,0.5h4.5c0.3,0,0.5-0.2,0.5-0.5l0.3-2.9c0.7-0.3,1.4-0.7,2-' +
          '1.2l2.6,1.2c0.3,0.1,0.6,0,0.7-0.2l2.3-3.9 c0.1-0.2,0.1-0.6-0.2-0' +
          '.7L45.2,38.1z M37,42.2c-2.9,0-5.2-2.3-5.2-5.2c0-2.9,2.3-5.2,5.2-' +
          '5.2c2.9,0,5.2,2.3,5.2,5.2 C42.2,39.9,39.9,42.2,37,42.2z"/>'#10'    <' +
          'path fill="#455A64" d="M37,31c-3.3,0-6,2.7-6,6c0,3.3,2.7,6,6,6s6' +
          '-2.7,6-6C43,33.7,40.3,31,37,31z M37,40c-1.7,0-3-1.3-3-3 c0-1.7,1' +
          '.3-3,3-3s3,1.3,3,3C40,38.7,38.7,40,37,40z"/>'#10'</svg>'#10
      end
      item
        IconName = 'delete_database'
        SVGText = 
          '<svg version="1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0' +
          ' 48 48" enable-background="new 0 0 48 48">'#10'    <g fill="#D1C4E9"' +
          '>'#10'        <path d="M38,7H10C8.9,7,8,7.9,8,9v6c0,1.1,0.9,2,2,2h28' +
          'c1.1,0,2-0.9,2-2V9C40,7.9,39.1,7,38,7z"/>'#10'        <path d="M38,1' +
          '9H10c-1.1,0-2,0.9-2,2v6c0,1.1,0.9,2,2,2h28c1.1,0,2-0.9,2-2v-6C40' +
          ',19.9,39.1,19,38,19z"/>'#10'        <path d="M38,31H10c-1.1,0-2,0.9-' +
          '2,2v6c0,1.1,0.9,2,2,2h28c1.1,0,2-0.9,2-2v-6C40,31.9,39.1,31,38,3' +
          '1z"/>'#10'    </g>'#10'    <circle fill="#F44336" cx="38" cy="38" r="10"' +
          '/>'#10'    <g fill="#fff">'#10'        <rect x="36.5" y="32" transform="' +
          'matrix(-.707 .707 -.707 -.707 91.74 38)" width="3" height="12"/>' +
          #10'        <rect x="36.5" y="32" transform="matrix(-.707 -.707 .70' +
          '7 -.707 38 91.74)" width="3" height="12"/>'#10'    </g>'#10'</svg>'#10
      end
      item
        IconName = 'delete_column'
        SVGText = 
          '<svg version="1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0' +
          ' 48 48" enable-background="new 0 0 48 48">'#10'    <path fill="#90CA' +
          'F9" d="M30,5H18c-2.2,0-4,1.8-4,4v30c0,2.2,1.8,4,4,4h12c2.2,0,4-1' +
          '.8,4-4V9C34,6.8,32.2,5,30,5z M18,39V9h12l0,30 H18z"/>'#10'    <circl' +
          'e fill="#F44336" cx="38" cy="38" r="10"/>'#10'    <g fill="#fff">'#10'  ' +
          '      <rect x="36.5" y="32" transform="matrix(-.707 .707 -.707 -' +
          '.707 91.74 38)" width="3" height="12"/>'#10'        <rect x="36.5" y' +
          '="32" transform="matrix(-.707 -.707 .707 -.707 38 91.74)" width=' +
          '"3" height="12"/>'#10'    </g>'#10'</svg>'#10
      end
      item
        IconName = 'delete_row'
        SVGText = 
          '<svg version="1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0' +
          ' 48 48" enable-background="new 0 0 48 48">'#10'    <path fill="#90CA' +
          'F9" d="M43,30V18c0-2.2-1.8-4-4-4H9c-2.2,0-4,1.8-4,4v12c0,2.2,1.8' +
          ',4,4,4h30C41.2,34,43,32.2,43,30z M9,18h30v12 L9,30V18z"/>'#10'    <c' +
          'ircle fill="#F44336" cx="38" cy="38" r="10"/>'#10'    <g fill="#fff"' +
          '>'#10'        <rect x="36.5" y="32" transform="matrix(-.707 .707 -.7' +
          '07 -.707 91.74 38)" width="3" height="12"/>'#10'        <rect x="36.' +
          '5" y="32" transform="matrix(-.707 -.707 .707 -.707 38 91.74)" wi' +
          'dth="3" height="12"/>'#10'    </g>'#10'</svg>'#10
      end
      item
        IconName = 'add_column'
        SVGText = 
          '<svg version="1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0' +
          ' 48 48" enable-background="new 0 0 48 48">'#10'    <path fill="#90CA' +
          'F9" d="M30,5H18c-2.2,0-4,1.8-4,4v30c0,2.2,1.8,4,4,4h12c2.2,0,4-1' +
          '.8,4-4V9C34,6.8,32.2,5,30,5z M18,39V9h12l0,30 H18z"/>'#10'    <circl' +
          'e fill="#43A047" cx="38" cy="38" r="10"/>'#10'    <g fill="#fff">'#10'  ' +
          '      <rect x="36" y="32" width="4" height="12"/>'#10'        <rect ' +
          'x="32" y="36" width="12" height="4"/>'#10'    </g>'#10'</svg>'#10
      end
      item
        IconName = 'add_database'
        SVGText = 
          '<svg version="1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0' +
          ' 48 48" enable-background="new 0 0 48 48">'#10'    <g fill="#D1C4E9"' +
          '>'#10'        <path d="M38,7H10C8.9,7,8,7.9,8,9v6c0,1.1,0.9,2,2,2h28' +
          'c1.1,0,2-0.9,2-2V9C40,7.9,39.1,7,38,7z"/>'#10'        <path d="M38,1' +
          '9H10c-1.1,0-2,0.9-2,2v6c0,1.1,0.9,2,2,2h28c1.1,0,2-0.9,2-2v-6C40' +
          ',19.9,39.1,19,38,19z"/>'#10'        <path d="M38,31H10c-1.1,0-2,0.9-' +
          '2,2v6c0,1.1,0.9,2,2,2h28c1.1,0,2-0.9,2-2v-6C40,31.9,39.1,31,38,3' +
          '1z"/>'#10'    </g>'#10'    <circle fill="#43A047" cx="38" cy="38" r="10"' +
          '/>'#10'    <g fill="#fff">'#10'        <rect x="36" y="32" width="4" hei' +
          'ght="12"/>'#10'        <rect x="32" y="36" width="12" height="4"/>'#10' ' +
          '   </g>'#10'</svg>'#10
      end
      item
        IconName = 'add_row'
        SVGText = 
          '<svg version="1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0' +
          ' 48 48" enable-background="new 0 0 48 48">'#10'    <path fill="#90CA' +
          'F9" d="M43,30V18c0-2.2-1.8-4-4-4H9c-2.2,0-4,1.8-4,4v12c0,2.2,1.8' +
          ',4,4,4h30C41.2,34,43,32.2,43,30z M9,18h30v12 L9,30V18z"/>'#10'    <c' +
          'ircle fill="#43A047" cx="38" cy="38" r="10"/>'#10'    <g fill="#fff"' +
          '>'#10'        <rect x="32" y="36" width="12" height="4"/>'#10'        <r' +
          'ect x="36" y="32" width="4" height="12"/>'#10'    </g>'#10'</svg>'#10
      end
      item
        IconName = 'grid'
        SVGText = 
          '<svg version="1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0' +
          ' 48 48" enable-background="new 0 0 48 48">'#10'    <path fill="#90CA' +
          'F9" d="M7,7v34h34V7H7z M39,15h-6V9h6V15z M25,15V9h6v6H25z M31,17' +
          'v6h-6v-6H31z M23,15h-6V9h6V15z M23,17v6h-6v-6 H23z M15,23H9v-6h6' +
          'V23z M15,25v6H9v-6H15z M17,25h6v6h-6V25z M23,33v6h-6v-6H23z M25,' +
          '33h6v6h-6V33z M25,31v-6h6v6H25z M33,25h6v6h-6 V25z M33,23v-6h6v6' +
          'H33z M15,9v6H9V9H15z M9,33h6v6H9V33z M33,39v-6h6v6H33z"/>'#10'</svg>' +
          #10
      end
      item
        IconName = 'connected_database'
        SVGText = 
          '<?xml version="1.0" encoding="UTF-8" standalone="no"?>'#10'<svg'#10'   v' +
          'ersion="1"'#10'   viewBox="0 0 48 48"'#10'   enable-background="new 0 0 ' +
          '48 48"'#10'   id="svg3"'#10'   sodipodi:docname="connected_database.svg"' +
          #10'   xml:space="preserve"'#10'   inkscape:version="1.4 (86a8ad7, 2024' +
          '-10-11)"'#10'   xmlns:inkscape="http://www.inkscape.org/namespaces/i' +
          'nkscape"'#10'   xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/' +
          'sodipodi-0.dtd"'#10'   xmlns="http://www.w3.org/2000/svg"'#10'   xmlns:s' +
          'vg="http://www.w3.org/2000/svg"><defs'#10'     id="defs3" /><sodipod' +
          'i:namedview'#10'     id="namedview3"'#10'     pagecolor="#ffffff"'#10'     b' +
          'ordercolor="#666666"'#10'     borderopacity="1.0"'#10'     inkscape:show' +
          'pageshadow="2"'#10'     inkscape:pageopacity="0.0"'#10'     inkscape:pag' +
          'echeckerboard="0"'#10'     inkscape:deskcolor="#d1d1d1"'#10'     showgri' +
          'd="false"'#10'     inkscape:zoom="37.8125"'#10'     inkscape:cx="24.0132' +
          '23"'#10'     inkscape:cy="28.231405"'#10'     inkscape:window-width="384' +
          '0"'#10'     inkscape:window-height="2054"'#10'     inkscape:window-x="57' +
          '49"'#10'     inkscape:window-y="-11"'#10'     inkscape:window-maximized=' +
          '"1"'#10'     inkscape:current-layer="svg3" /><g'#10'     fill="#D1C4E9"'#10 +
          '     id="g3"><path'#10'       d="M38,7H10C8.9,7,8,7.9,8,9v6c0,1.1,0.' +
          '9,2,2,2h28c1.1,0,2-0.9,2-2V9C40,7.9,39.1,7,38,7z"'#10'       id="pat' +
          'h1" /><path'#10'       d="M38,19H10c-1.1,0-2,0.9-2,2v6c0,1.1,0.9,2,2' +
          ',2h28c1.1,0,2-0.9,2-2v-6C40,19.9,39.1,19,38,19z"'#10'       id="path' +
          '2" /><path'#10'       d="M38,31H10c-1.1,0-2,0.9-2,2v6c0,1.1,0.9,2,2,' +
          '2h28c1.1,0,2-0.9,2-2v-6C40,31.9,39.1,31,38,31z"'#10'       id="path3' +
          '" /></g><g'#10'     inkscape:label="Layer 1"'#10'     id="layer1"'#10'     t' +
          'ransform="matrix(1.9850983,0,0,2.1091793,18.813891,20.230398)"><' +
          'rect'#10'       style="fill:none;fill-rule:evenodd;stroke-width:1.06' +
          '5;stroke-linecap:round;stroke-linejoin:round;paint-order:stroke ' +
          'markers fill"'#10'       id="rect1"'#10'       width="4.8784089"'#10'       ' +
          'height="4.806818"'#10'       x="4.2852273"'#10'       y="3.0477273" /><r' +
          'ect'#10'       style="fill:none;fill-rule:evenodd;stroke-width:1.065' +
          ';stroke-linecap:round;stroke-linejoin:round;paint-order:stroke m' +
          'arkers fill"'#10'       id="rect2"'#10'       width="6.7499995"'#10'       h' +
          'eight="4.8375001"'#10'       x="3.0477273"'#10'       y="2.8022726" /><p' +
          'ath'#10'       id="rect3"'#10'       style="fill:#008000;fill-rule:eveno' +
          'dd;stroke-width:1.10866;stroke-linecap:round;stroke-linejoin:rou' +
          'nd;paint-order:stroke markers fill"'#10'       d="m 7.9442179,0.9983' +
          '8867 c -0.1662,0 -0.30024,0.13352333 -0.30024,0.29972333 V 3.027' +
          '2054 H 5.512325 v -1.714624 c 0,-0.1662 -0.1335233,-0.3002401 -0' +
          '.2997233,-0.3002401 h -0.146761 c -0.1662,0 -0.2997233,0.1340401' +
          ' -0.2997233,0.3002401 v 1.714624 H 3.8659139 v 4.2545207 h 0.014' +
          '469 c -0.00252,0.016915 -0.00413,0.033982 -0.00413,0.05116 0,0.4' +
          '646046 0.9367302,0.8387085 2.1001302,0.8387085 h 0.00672 V 11.98' +
          '6348 H 7.3127319 V 8.1690104 c 1.103711,-0.026093 1.973523,-0.38' +
          '85811 1.973523,-0.8361247 0,-0.017177 -0.00161,-0.034244 -0.0041' +
          '3,-0.05116 h 0.014469 V 3.0272054 H 8.3907023 V 1.298112 c 0,-0.' +
          '1662 -0.1335233,-0.29972333 -0.2997233,-0.29972333 z" /></g></sv' +
          'g>'#10
      end
      item
        IconName = 'connector_connect'
        SVGText = 
          '<?xml version="1.0" encoding="UTF-8" standalone="no"?>'#10'<!-- Crea' +
          'ted with Inkscape (http://www.inkscape.org/) -->'#10#10'<svg'#10'   width=' +
          '"50"'#10'   height="50"'#10'   viewBox="0 0 13.229166 13.229167"'#10'   vers' +
          'ion="1.1"'#10'   id="svg1"'#10'   inkscape:version="1.4 (86a8ad7, 2024-1' +
          '0-11)"'#10'   sodipodi:docname="connector_connect.svg"'#10'   xmlns:inks' +
          'cape="http://www.inkscape.org/namespaces/inkscape"'#10'   xmlns:sodi' +
          'podi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"'#10'   xml' +
          'ns="http://www.w3.org/2000/svg"'#10'   xmlns:svg="http://www.w3.org/' +
          '2000/svg">'#10'  <sodipodi:namedview'#10'     id="namedview1"'#10'     pagec' +
          'olor="#ffffff"'#10'     bordercolor="#666666"'#10'     borderopacity="1.' +
          '0"'#10'     inkscape:showpageshadow="2"'#10'     inkscape:pageopacity="0' +
          '.0"'#10'     inkscape:pagecheckerboard="0"'#10'     inkscape:deskcolor="' +
          '#d1d1d1"'#10'     inkscape:document-units="mm"'#10'     inkscape:zoom="2' +
          '5.87037"'#10'     inkscape:cx="35.909807"'#10'     inkscape:cy="24.52612' +
          '7"'#10'     inkscape:window-width="3840"'#10'     inkscape:window-height' +
          '="2054"'#10'     inkscape:window-x="5749"'#10'     inkscape:window-y="-1' +
          '1"'#10'     inkscape:window-maximized="1"'#10'     inkscape:current-laye' +
          'r="layer1" />'#10'  <defs'#10'     id="defs1" />'#10'  <g'#10'     inkscape:labe' +
          'l="Layer 1"'#10'     inkscape:groupmode="layer"'#10'     id="layer1">'#10'  ' +
          '  <rect'#10'       style="fill:none;fill-rule:evenodd;stroke-width:1' +
          '.065;stroke-linecap:round;stroke-linejoin:round;paint-order:stro' +
          'ke markers fill"'#10'       id="rect1"'#10'       width="4.8784089"'#10'    ' +
          '   height="4.806818"'#10'       x="4.2852273"'#10'       y="3.0477273" /' +
          '>'#10'    <rect'#10'       style="fill:none;fill-rule:evenodd;stroke-wid' +
          'th:1.065;stroke-linecap:round;stroke-linejoin:round;paint-order:' +
          'stroke markers fill"'#10'       id="rect2"'#10'       width="6.7499995"'#10 +
          '       height="4.8375001"'#10'       x="3.0477273"'#10'       y="2.80227' +
          '26" />'#10'    <path'#10'       id="rect3"'#10'       style="fill:#008000;fi' +
          'll-rule:evenodd;stroke-width:1.10866;stroke-linecap:round;stroke' +
          '-linejoin:round;paint-order:stroke markers fill"'#10'       d="M 7.9' +
          '442179 0.99838867 C 7.7780179 0.99838867 7.6439779 1.131912 7.64' +
          '39779 1.298112 L 7.6439779 3.0272054 L 5.512325 3.0272054 L 5.51' +
          '2325 1.3125814 C 5.512325 1.1463814 5.3788017 1.0123413 5.212601' +
          '7 1.0123413 L 5.0658407 1.0123413 C 4.8996407 1.0123413 4.766117' +
          '4 1.1463814 4.7661174 1.3125814 L 4.7661174 3.0272054 L 3.865913' +
          '9 3.0272054 L 3.8659139 7.2817261 L 3.8803833 7.2817261 C 3.8778' +
          '583 7.2986416 3.8762492 7.3157085 3.8762492 7.3328857 C 3.876249' +
          '2 7.7974903 4.8129794 8.1715942 5.9763794 8.1715942 L 5.9830973 ' +
          '8.1715942 L 5.9830973 11.986348 L 7.3127319 11.986348 L 7.312731' +
          '9 8.1690104 C 8.4164429 8.1429173 9.2862549 7.7804293 9.2862549 ' +
          '7.3328857 C 9.2862549 7.3157085 9.2846457 7.2986416 9.2821208 7.' +
          '2817261 L 9.2965902 7.2817261 L 9.2965902 3.0272054 L 8.3907023 ' +
          '3.0272054 L 8.3907023 1.298112 C 8.3907023 1.131912 8.257179 0.9' +
          '9838867 8.090979 0.99838867 L 7.9442179 0.99838867 z " />'#10'  </g>' +
          #10'</svg>'#10
      end
      item
        IconName = 'connector_Disconnect'
        SVGText = 
          '<?xml version="1.0" encoding="UTF-8" standalone="no"?>'#10'<!-- Crea' +
          'ted with Inkscape (http://www.inkscape.org/) -->'#10#10'<svg'#10'   width=' +
          '"50"'#10'   height="50"'#10'   viewBox="0 0 13.229166 13.229167"'#10'   vers' +
          'ion="1.1"'#10'   id="svg1"'#10'   inkscape:version="1.4 (86a8ad7, 2024-1' +
          '0-11)"'#10'   sodipodi:docname="connector_Disconnect.svg"'#10'   xmlns:i' +
          'nkscape="http://www.inkscape.org/namespaces/inkscape"'#10'   xmlns:s' +
          'odipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"'#10'   ' +
          'xmlns="http://www.w3.org/2000/svg"'#10'   xmlns:svg="http://www.w3.o' +
          'rg/2000/svg">'#10'  <sodipodi:namedview'#10'     id="namedview1"'#10'     pa' +
          'gecolor="#ffffff"'#10'     bordercolor="#666666"'#10'     borderopacity=' +
          '"1.0"'#10'     inkscape:showpageshadow="2"'#10'     inkscape:pageopacity' +
          '="0.0"'#10'     inkscape:pagecheckerboard="0"'#10'     inkscape:deskcolo' +
          'r="#d1d1d1"'#10'     inkscape:document-units="mm"'#10'     inkscape:zoom' +
          '="25.87037"'#10'     inkscape:cx="35.909807"'#10'     inkscape:cy="24.52' +
          '6127"'#10'     inkscape:window-width="3840"'#10'     inkscape:window-hei' +
          'ght="2054"'#10'     inkscape:window-x="5749"'#10'     inkscape:window-y=' +
          '"-11"'#10'     inkscape:window-maximized="1"'#10'     inkscape:current-l' +
          'ayer="layer1" />'#10'  <defs'#10'     id="defs1" />'#10'  <g'#10'     inkscape:l' +
          'abel="Layer 1"'#10'     inkscape:groupmode="layer"'#10'     id="layer1">' +
          #10'    <rect'#10'       style="fill:none;fill-rule:evenodd;stroke-widt' +
          'h:1.065;stroke-linecap:round;stroke-linejoin:round;paint-order:s' +
          'troke markers fill"'#10'       id="rect1"'#10'       width="4.8784089"'#10' ' +
          '      height="4.806818"'#10'       x="4.2852273"'#10'       y="3.0477273' +
          '" />'#10'    <rect'#10'       style="fill:none;fill-rule:evenodd;stroke-' +
          'width:1.065;stroke-linecap:round;stroke-linejoin:round;paint-ord' +
          'er:stroke markers fill"'#10'       id="rect2"'#10'       width="6.749999' +
          '5"'#10'       height="4.8375001"'#10'       x="3.0477273"'#10'       y="2.80' +
          '22726" />'#10'    <path'#10'       id="rect3"'#10'       style="fill:#d40000' +
          ';fill-rule:evenodd;stroke-width:1.10866;stroke-linecap:round;str' +
          'oke-linejoin:round;paint-order:stroke markers fill"'#10'       d="M ' +
          '7.9442179 0.99838867 C 7.7780179 0.99838867 7.6439779 1.131912 7' +
          '.6439779 1.298112 L 7.6439779 3.0272054 L 5.512325 3.0272054 L 5' +
          '.512325 1.3125814 C 5.512325 1.1463814 5.3788017 1.0123413 5.212' +
          '6017 1.0123413 L 5.0658407 1.0123413 C 4.8996407 1.0123413 4.766' +
          '1174 1.1463814 4.7661174 1.3125814 L 4.7661174 3.0272054 L 3.865' +
          '9139 3.0272054 L 3.8659139 7.2817261 L 3.8803833 7.2817261 C 3.8' +
          '778583 7.2986416 3.8762492 7.3157085 3.8762492 7.3328857 C 3.876' +
          '2492 7.7974903 4.8129794 8.1715942 5.9763794 8.1715942 L 5.98309' +
          '73 8.1715942 L 5.9830973 11.986348 L 7.3127319 11.986348 L 7.312' +
          '7319 8.1690104 C 8.4164429 8.1429173 9.2862549 7.7804293 9.28625' +
          '49 7.3328857 C 9.2862549 7.3157085 9.2846457 7.2986416 9.2821208' +
          ' 7.2817261 L 9.2965902 7.2817261 L 9.2965902 3.0272054 L 8.39070' +
          '23 3.0272054 L 8.3907023 1.298112 C 8.3907023 1.131912 8.257179 ' +
          '0.99838867 8.090979 0.99838867 L 7.9442179 0.99838867 z " />'#10'   ' +
          ' <rect'#10'       style="fill:#800000;fill-rule:evenodd;stroke-width' +
          ':1.21751;stroke-linecap:round;stroke-linejoin:round;paint-order:' +
          'stroke markers fill"'#10'       id="rect8"'#10'       width="1.3417422"'#10 +
          '       height="11.180516"'#10'       x="8.0295153"'#10'       y="-6.6753' +
          '411"'#10'       transform="matrix(0.64836779,0.76132726,-0.85705092,' +
          '0.51523172,0,0)" />'#10'  </g>'#10'</svg>'#10
      end
      item
        IconName = 'Disconnected_database'
        SVGText = 
          '<?xml version="1.0" encoding="UTF-8" standalone="no"?>'#10'<svg'#10'   v' +
          'ersion="1"'#10'   viewBox="0 0 48 48"'#10'   enable-background="new 0 0 ' +
          '48 48"'#10'   id="svg3"'#10'   sodipodi:docname="Disconnected_database.s' +
          'vg"'#10'   xml:space="preserve"'#10'   inkscape:version="1.4 (86a8ad7, 2' +
          '024-10-11)"'#10'   xmlns:inkscape="http://www.inkscape.org/namespace' +
          's/inkscape"'#10'   xmlns:sodipodi="http://sodipodi.sourceforge.net/D' +
          'TD/sodipodi-0.dtd"'#10'   xmlns="http://www.w3.org/2000/svg"'#10'   xmln' +
          's:svg="http://www.w3.org/2000/svg"><defs'#10'     id="defs3" /><sodi' +
          'podi:namedview'#10'     id="namedview3"'#10'     pagecolor="#ffffff"'#10'   ' +
          '  bordercolor="#666666"'#10'     borderopacity="1.0"'#10'     inkscape:s' +
          'howpageshadow="2"'#10'     inkscape:pageopacity="0.0"'#10'     inkscape:' +
          'pagecheckerboard="0"'#10'     inkscape:deskcolor="#d1d1d1"'#10'     show' +
          'grid="false"'#10'     inkscape:zoom="37.8125"'#10'     inkscape:cx="24.0' +
          '13223"'#10'     inkscape:cy="28.231405"'#10'     inkscape:window-width="' +
          '3840"'#10'     inkscape:window-height="2054"'#10'     inkscape:window-x=' +
          '"5749"'#10'     inkscape:window-y="-11"'#10'     inkscape:window-maximiz' +
          'ed="1"'#10'     inkscape:current-layer="svg3" /><g'#10'     fill="#D1C4E' +
          '9"'#10'     id="g3"><path'#10'       d="M38,7H10C8.9,7,8,7.9,8,9v6c0,1.1' +
          ',0.9,2,2,2h28c1.1,0,2-0.9,2-2V9C40,7.9,39.1,7,38,7z"'#10'       id="' +
          'path1" /><path'#10'       d="M38,19H10c-1.1,0-2,0.9-2,2v6c0,1.1,0.9,' +
          '2,2,2h28c1.1,0,2-0.9,2-2v-6C40,19.9,39.1,19,38,19z"'#10'       id="p' +
          'ath2" /><path'#10'       d="M38,31H10c-1.1,0-2,0.9-2,2v6c0,1.1,0.9,2' +
          ',2,2h28c1.1,0,2-0.9,2-2v-6C40,31.9,39.1,31,38,31z"'#10'       id="pa' +
          'th3" /></g><g'#10'     inkscape:label="Layer 1"'#10'     id="layer1-8"'#10' ' +
          '    transform="matrix(1.9678982,0,0,2.1404683,18.92179,19.971061' +
          ')"><rect'#10'       style="fill:none;fill-rule:evenodd;stroke-width:' +
          '1.065;stroke-linecap:round;stroke-linejoin:round;paint-order:str' +
          'oke markers fill"'#10'       id="rect1-2"'#10'       width="4.8784089"'#10' ' +
          '      height="4.806818"'#10'       x="4.2852273"'#10'       y="3.0477273' +
          '" /><rect'#10'       style="fill:none;fill-rule:evenodd;stroke-width' +
          ':1.065;stroke-linecap:round;stroke-linejoin:round;paint-order:st' +
          'roke markers fill"'#10'       id="rect2-4"'#10'       width="6.7499995"'#10 +
          '       height="4.8375001"'#10'       x="3.0477273"'#10'       y="2.80227' +
          '26" /><path'#10'       id="rect3-5"'#10'       style="fill:#d40000;fill-' +
          'rule:evenodd;stroke-width:1.10866;stroke-linecap:round;stroke-li' +
          'nejoin:round;paint-order:stroke markers fill"'#10'       d="m 7.9442' +
          '179,0.99838867 c -0.1662,0 -0.30024,0.13352333 -0.30024,0.299723' +
          '33 V 3.0272054 H 5.512325 v -1.714624 c 0,-0.1662 -0.1335233,-0.' +
          '3002401 -0.2997233,-0.3002401 h -0.146761 c -0.1662,0 -0.2997233' +
          ',0.1340401 -0.2997233,0.3002401 v 1.714624 H 3.8659139 v 4.25452' +
          '07 h 0.014469 c -0.00252,0.016915 -0.00413,0.033982 -0.00413,0.0' +
          '5116 0,0.4646046 0.9367302,0.8387085 2.1001302,0.8387085 h 0.006' +
          '72 V 11.986348 H 7.3127319 V 8.1690104 c 1.103711,-0.026093 1.97' +
          '3523,-0.3885811 1.973523,-0.8361247 0,-0.017177 -0.00161,-0.0342' +
          '44 -0.00413,-0.05116 h 0.014469 V 3.0272054 H 8.3907023 V 1.2981' +
          '12 c 0,-0.1662 -0.1335233,-0.29972333 -0.2997233,-0.29972333 z" ' +
          '/><rect'#10'       style="fill:#800000;fill-rule:evenodd;stroke-widt' +
          'h:1.21751;stroke-linecap:round;stroke-linejoin:round;paint-order' +
          ':stroke markers fill"'#10'       id="rect8"'#10'       width="1.3417422"' +
          #10'       height="11.180516"'#10'       x="8.0295153"'#10'       y="-6.675' +
          '3411"'#10'       transform="matrix(0.64836779,0.76132726,-0.85705092' +
          ',0.51523172,0,0)" /></g></svg>'#10
      end>
    Scaled = True
    Left = 112
    Top = 808
  end
  object TreePopup: TPopupMenu
    Images = TreeImages
    Left = 112
    Top = 744
    object Connect1: TMenuItem
      Caption = 'Connect'
      ImageIndex = 11
      ImageName = 'connector_connect'
      OnClick = Connect1Click
    end
    object Disconnect1: TMenuItem
      Caption = 'Disconnect'
      ImageIndex = 12
      ImageName = 'connector_Disconnect'
      OnClick = Disconnect1Click
    end
  end
end
