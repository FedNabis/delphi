//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit MainUnitMarketStore;

interface

uses
  SysUtils, Classes, ComCtrls, Menus, ExtCtrls, ActnList, DBGridEh, DBCtrls, StdCtrls, Ora, DB, Controls, Buttons, rxToolEdit, OraAlerter, sSkinManager;

type
  TMainFormMarketSklad = class(TForm)
  published
    PageControl1:TPageControl;//f2F8
    TabSheetRsPok:TTabSheet;//f2FC
    TabSheetRsPost:TTabSheet;//f300
    MainMenu1:TMainMenu;//f304
    N1:TMenuItem;//f308
    N2:TMenuItem;//f30C
    N3:TMenuItem;//f310
    CloseTimer:TTimer;//f314
    ActionList1:TActionList;//f318
    Panel1:TPanel;//f31C
    Panel2:TPanel;//f320
    DBGridEh_Ostats:TDBGridEh;//f324
    Panel3:TPanel;//f328
    cbSklad:TDBLookupComboBox;//f32C
    Label1:TLabel;//f330
    Q_Sklads:TOraQuery;//f334
    dsSklads:TDataSource;//f338
    ImageList1:TImageList;//f33C
    Panel4:TPanel;//f340
    BitBtn1:TBitBtn;//f344
    aExit:TAction;//f348
    Panel5:TPanel;//f34C
    BitBtn4:TBitBtn;//f350
    N4:TMenuItem;//f354
    Q_OSTATS:TOraQuery;//f358
    dsOSTATS:TOraDataSource;//f35C
    Q_PRIHODS:TOraQuery;//f360
    dsPRIHODS:TOraDataSource;//f364
    LabelDeBgn:TLabel;//f368
    LabelDeEnd:TLabel;//f36C
    deBgn:TDateEdit;//f370
    deEnd:TDateEdit;//f374
    PopupMenuPrih:TPopupMenu;//f378
    aAddPrih:TAction;//f37C
    aEditPrih:TAction;//f380
    aDelPrih:TAction;//f384
    aProvodPrihod:TAction;//f388
    aUnProvodPrih:TAction;//f38C
    aToExcel_Ostats:TAction;//f390
    Q_RASHODS:TOraQuery;//f394
    dsRASHODS:TOraDataSource;//f398
    PopupMenuRash:TPopupMenu;//f39C
    Panel17:TPanel;//f3A0
    EditFind:TEdit;//f3A4
    Label2:TLabel;//f3A8
    BitBtn29:TBitBtn;//f3AC
    chbShowZerrows:TCheckBox;//f3B0
    BitBtn33:TBitBtn;//f3B4
    aCallCalc:TAction;//f3B8
    OraAlerter1:TOraAlerter;//f3BC
    aAdmin:TAction;//f3C0
    aSprKlients:TAction;//f3C4
    N34:TMenuItem;//f3C8
    TabSheet4:TTabSheet;//f3CC
    Panel6:TPanel;//f3D0
    Panel7:TPanel;//f3D4
    BitBtn3:TBitBtn;//f3D8
    Panel8:TPanel;//f3DC
    Panel9:TPanel;//f3E0
    DBGridEh_Prihods:TDBGridEh;//f3E4
    DBGridEh_Rashods:TDBGridEh;//f3E8
    aSprUsrGroups:TAction;//f3EC
    aSprCehs:TAction;//f3F0
    N18:TMenuItem;//f3F4
    aSprEdIzms:TAction;//f3F8
    N20:TMenuItem;//f3FC
    BitBtn6:TBitBtn;//f400
    BitBtn7:TBitBtn;//f404
    BitBtn8:TBitBtn;//f408
    aAddRash:TAction;//f40C
    aEdtRash:TAction;//f410
    aDelRash:TAction;//f414
    BitBtn9:TBitBtn;//f418
    BitBtn10:TBitBtn;//f41C
    BitBtn11:TBitBtn;//f420
    Label3:TLabel;//f424
    N8:TMenuItem;//f428
    N9:TMenuItem;//f42C
    BitBtn12:TBitBtn;//f430
    BitBtn13:TBitBtn;//f434
    BitBtn14:TBitBtn;//f438
    BitBtn15:TBitBtn;//f43C
    aProvodRashod:TAction;//f440
    aUnProvodRash:TAction;//f444
    N10:TMenuItem;//f448
    N11:TMenuItem;//f44C
    N12:TMenuItem;//f450
    N13:TMenuItem;//f454
    N14:TMenuItem;//f458
    N15:TMenuItem;//f45C
    Q_OSTATSNAME_GROUP:TStringField;//f460
    Q_OSTATSID:TFloatField;//f464
    Q_OSTATSARTICLE:TStringField;//f468
    Q_OSTATSNAME_NOM:TStringField;//f46C
    Q_OSTATSNAME_ED:TStringField;//f470
    Q_OSTATSID_CEH:TFloatField;//f474
    Q_OSTATSID_NOM:TFloatField;//f478
    Q_OSTATSAMT_OSTAT:TFloatField;//f47C
    aHistCard:TAction;//f480
    aOborotka:TAction;//f484
    aUchPeriods:TAction;//f488
    BitBtn22:TBitBtn;//f48C
    aPrintPrihNakl:TAction;//f490
    aPrintRashNakl:TAction;//f494
    aRekvizits:TAction;//f498
    N27:TMenuItem;//f49C
    chbGroups:TCheckBox;//f4A0
    cbGroups:TDBLookupComboBox;//f4A4
    Q_Groups:TOraQuery;//f4A8
    dsGroups:TDataSource;//f4AC
    BitBtn27:TBitBtn;//f4B0
    aDelZerrowOstat:TAction;//f4B4
    N46:TMenuItem;//f4B8
    N47:TMenuItem;//f4BC
    aLogDocs:TAction;//f4C0
    aAdmin1:TMenuItem;//f4C4
    Panel14:TPanel;//f4C8
    Panel15:TPanel;//f4CC
    rgPrihIsProv:TRadioGroup;//f4D0
    rgRashIsProv:TRadioGroup;//f4D4
    Label4:TLabel;//f4D8
    cbVidOper:TDBLookupComboBox;//f4DC
    Button2:TButton;//f4E0
    Q_VidsOper:TOraQuery;//f4E4
    dsVidsOper:TDataSource;//f4E8
    N5:TMenuItem;//f4EC
    aServisLoadNomsFromExcel:TAction;//f4F0
    Excel1:TMenuItem;//f4F4
    N6:TMenuItem;//f4F8
    N7:TMenuItem;//f4FC
    aSettings:TAction;//f500
    Q_OSTATSMINIM_ZAPAS:TFloatField;//f504
    Q_OSTATSID_GR:TFloatField;//f508
    Q_OSTATSCOST:TFloatField;//f50C
    Q_OSTATSSUM_OST_BY_COST:TFloatField;//f510
    BitBtn5:TBitBtn;//f514
    aShowOstats:TAction;//f518
    N16:TMenuItem;//f51C
    N17:TMenuItem;//f520
    N19:TMenuItem;//f524
    N21:TMenuItem;//f528
    N22:TMenuItem;//f52C
    aRaschPostav:TAction;//f530
    aRaschPokup:TAction;//f534
    N23:TMenuItem;//f538
    N24:TMenuItem;//f53C
    N26:TMenuItem;//f540
    aRevision:TAction;//f544
    aVesyExpSettings:TAction;//f548
    N28:TMenuItem;//f54C
    aExpNomsForVesy:TAction;//f550
    N29:TMenuItem;//f554
    Q_OSTATSBAR_CODE:TStringField;//f558
    Q_OSTATSPRICE:TFloatField;//f55C
    rg_find:TRadioGroup;//f560
    Panel10:TPanel;//f564
    Panel11:TPanel;//f568
    Splitter1:TSplitter;//f56C
    DBGridEhPrihDet:TDBGridEh;//f570
    Panel12:TPanel;//f574
    Panel13:TPanel;//f578
    DBGridEhRashDet:TDBGridEh;//f57C
    Splitter2:TSplitter;//f580
    dsPrihLines:TDataSource;//f584
    dsRashLines:TDataSource;//f588
    Q_PrihLines:TOraQuery;//f58C
    Q_RashLines:TOraQuery;//f590
    aRes_DB:TAction;//f594
    aRestore_DB:TAction;//f598
    aClearDatabase:TAction;//f59C
    N31:TMenuItem;//f5A0
    aMassUpdateToNoms:TAction;//f5A4
    N32:TMenuItem;//f5A8
    N33:TMenuItem;//f5AC
    N35:TMenuItem;//f5B0
    aMassDeleteNoms:TAction;//f5B4
    aHandRefreshOstats:TAction;//f5B8
    aSprTovars:TAction;//f5BC
    GroupBox2:TGroupBox;//f5C0
    BitBtn21:TBitBtn;//f5C4
    BitBtn17:TBitBtn;//f5C8
    aPrintPrihOrder:TAction;//f5CC
    N36:TMenuItem;//f5D0
    N37:TMenuItem;//f5D4
    N38:TMenuItem;//f5D8
    N30:TMenuItem;//f5DC
    N39:TMenuItem;//f5E0
    N40:TMenuItem;//f5E4
    aFinPrihod:TAction;//f5E8
    aFinRashod:TAction;//f5EC
    rgSort:TRadioGroup;//f5F0
    Q_OSTATSSUM_OST_BY_PRICE:TFloatField;//f5F4
    PopupMenuOstats:TPopupMenu;//f5F8
    N41:TMenuItem;//f5FC
    N42:TMenuItem;//f600
    rgIsOplacheno:TRadioGroup;//f604
    rgSortPrihs:TRadioGroup;//f608
    rgIsOplacheno_rash:TRadioGroup;//f60C
    rgSortRashs:TRadioGroup;//f610
    Q_PRIHODSID:TFloatField;//f614
    Q_PRIHODSDATE_OPER:TDateTimeField;//f618
    Q_PRIHODSNUM_OPER:TFloatField;//f61C
    Q_PRIHODSID_OPER_TYPE:TFloatField;//f620
    Q_PRIHODSID_KL_CEH_FROM:TFloatField;//f624
    Q_PRIHODSID_KL_CEH_TO:TFloatField;//f628
    Q_PRIHODSDESCR:TStringField;//f62C
    Q_PRIHODSSUMALL_NO_NDS:TFloatField;//f630
    Q_PRIHODSSUMALL_NDS:TFloatField;//f634
    Q_PRIHODSIS_PROV:TFloatField;//f638
    Q_PRIHODSID_ZAK:TFloatField;//f63C
    Q_PRIHODSNUM_NAKL_EXT:TStringField;//f640
    Q_PRIHODSDATE_NAKL_EXT:TDateTimeField;//f644
    Q_PRIHODSNUM_SF_EXT:TStringField;//f648
    Q_PRIHODSDATE_CRE:TDateTimeField;//f64C
    Q_PRIHODSDATE_EDIT:TDateTimeField;//f650
    Q_PRIHODSUSER_CRE:TStringField;//f654
    Q_PRIHODSUSER_EDIT:TStringField;//f658
    Q_PRIHODSOTSROCHKA_OPL:TFloatField;//f65C
    Q_PRIHODSPRIH_SKIDKA_PERC:TFloatField;//f660
    Q_PRIHODSIS_SKIDKA_PRESENT:TFloatField;//f664
    Q_PRIHODSIS_SKIDKA_EXECUTE:TFloatField;//f668
    Q_PRIHODSNAME_KL_CEH:TStringField;//f66C
    Q_PRIHODSIS_SKLAD:TFloatField;//f670
    Q_PRIHODSNAME_OP_TYPE:TStringField;//f674
    Q_PRIHODSIS_PRIHOD:TFloatField;//f678
    Q_PRIHODSIS_PROV_V:TStringField;//f67C
    Q_PRIHODSSUMALL_INCL_NDS:TFloatField;//f680
    Q_PRIHODSUSER_EDT:TStringField;//f684
    Q_PRIHODSSUMMA_OPLATS:TFloatField;//f688
    Q_PRIHODSSUMMA_DOLG:TFloatField;//f68C
    Q_PRIHODSIS_SKIDKA_V:TStringField;//f690
    Q_RASHODSID:TFloatField;//f694
    Q_RASHODSDATE_OPER:TDateTimeField;//f698
    Q_RASHODSNUM_OPER:TFloatField;//f69C
    Q_RASHODSID_OPER_TYPE:TFloatField;//f6A0
    Q_RASHODSID_KL_CEH_FROM:TFloatField;//f6A4
    Q_RASHODSID_KL_CEH_TO:TFloatField;//f6A8
    Q_RASHODSDESCR:TStringField;//f6AC
    Q_RASHODSSUMALL_NO_NDS:TFloatField;//f6B0
    Q_RASHODSSUMALL_NDS:TFloatField;//f6B4
    Q_RASHODSIS_PROV:TFloatField;//f6B8
    Q_RASHODSID_ZAK:TFloatField;//f6BC
    Q_RASHODSNUM_NAKL_EXT:TStringField;//f6C0
    Q_RASHODSDATE_NAKL_EXT:TDateTimeField;//f6C4
    Q_RASHODSNUM_SF_EXT:TStringField;//f6C8
    Q_RASHODSNAME_KL_CEH:TStringField;//f6CC
    Q_RASHODSIS_SKLAD:TFloatField;//f6D0
    Q_RASHODSNAME_OP_TYPE:TStringField;//f6D4
    Q_RASHODSIS_PRIHOD:TFloatField;//f6D8
    Q_RASHODSIS_PROV_V:TStringField;//f6DC
    Q_RASHODSSUMALL_INCL_NDS:TFloatField;//f6E0
    Q_RASHODSSUMMA_OPLATS:TFloatField;//f6E4
    Q_RASHODSSUMMA_DOLG:TFloatField;//f6E8
    Q_PRIHODSOPL_DO:TStringField;//f6EC
    DBText1:TDBText;//f6F0
    DBText2:TDBText;//f6F4
    Label5:TLabel;//f6F8
    Label6:TLabel;//f6FC
    DBText3:TDBText;//f700
    Label7:TLabel;//f704
    Label8:TLabel;//f708
    DBText4:TDBText;//f70C
    DBText5:TDBText;//f710
    Label9:TLabel;//f714
    Label10:TLabel;//f718
    DBText6:TDBText;//f71C
    BitBtn18:TBitBtn;//f720
    aFind:TAction;//f724
    Panel16:TPanel;//f728
    Q_OST_ITOGS:TOraQuery;//f72C
    LBL_CNT_NOMS:TLabel;//f730
    Label11:TLabel;//f734
    Label12:TLabel;//f738
    aCenniksPrint:TAction;//f73C
    BitBtn19:TBitBtn;//f740
    aCenniksByOper:TAction;//f744
    BitBtn20:TBitBtn;//f748
    rgOpTypeSelect:TRadioGroup;//f74C
    DBText7:TDBText;//f750
    dsOST_ITOGS:TDataSource;//f754
    Q_OST_ITOGSCNT:TFloatField;//f758
    Q_OST_ITOGSS_SUM_OST_BY_COST:TFloatField;//f75C
    Q_OST_ITOGSS_SUM_OST_BY_PRICE:TFloatField;//f760
    DBText8:TDBText;//f764
    DBText9:TDBText;//f768
    N43:TMenuItem;//f76C
    Q_OSTATSCNT_ELEMENTS:TFloatField;//f770
    Q_OSTATSAMT_OST_STR:TStringField;//f774
    aServisDopLoadNomsFromExcel:TAction;//f778
    Excel2:TMenuItem;//f77C
    chbSelectBySrokGodnosty:TCheckBox;//f780
    chbShowByMinOstat:TCheckBox;//f784
    chbIsSortDesc:TCheckBox;//f788
    N25:TMenuItem;//f78C
    N44:TMenuItem;//f790
    N45:TMenuItem;//f794
    N48:TMenuItem;//f798
    N49:TMenuItem;//f79C
    N50:TMenuItem;//f7A0
    aCenniksNoBkA4_39_30:TAction;//f7A4
    aCenniksNoBkA4_58_40:TAction;//f7A8
    aCenniksBkA4_39_30:TAction;//f7AC
    aCenniksBkA4_58_40:TAction;//f7B0
    c439301:TMenuItem;//f7B4
    c458401:TMenuItem;//f7B8
    c439302:TMenuItem;//f7BC
    c458402:TMenuItem;//f7C0
    aCennikBkEtiket39_30:TAction;//f7C4
    aCennikBkEtiket58_40:TAction;//f7C8
    N39301:TMenuItem;//f7CC
    N58401:TMenuItem;//f7D0
    aCennikForStellageA4:TAction;//f7D4
    aPriceList:TAction;//f7D8
    Button1:TButton;//f7DC
    Q_PRIHODSVOZVRAT_TO_KASSA_NUM:TStringField;//f7E0
    btn_find_clear:TBitBtn;//f7E4
    Panel18:TPanel;//f7E8
    GroupBox1:TGroupBox;//f7EC
    chbAutoRefresh:TCheckBox;//f7F0
    BitBtn16:TBitBtn;//f7F4
    Panel19:TPanel;//f7F8
    BitBtn2:TBitBtn;//f7FC
    aExpNomsForVesy2:TAction;//f800
    aCennikBkEtiket58_40_2:TAction;//f804
    N58402:TMenuItem;//f808
    aDel_Losted_Zaks:TAction;//f80C
    N51:TMenuItem;//f810
    N52:TMenuItem;//f814
    aSprScales:TAction;//f818
    aExpTovarsToVesy:TAction;//f81C
    N53:TMenuItem;//f820
    Memo1:TMemo;//f824
    chbIsSortDsable:TCheckBox;//f828
    aToExcel_Ostats2:TAction;//f82C
    BitBtn23:TBitBtn;//f830
    Q_OSTATSCOST_AVG:TFloatField;//f834
    N54:TMenuItem;//f838
    aCennikBkEtiket58_40_3:TAction;//f83C
    aClearDatabasePart:TAction;//f840
    N55:TMenuItem;//f844
    Q_OSTATSCNT_DAYS_SROKG_MIN:TFloatField;//f848
    Q_OSTATSCNT_DAYS_SROKG_MAX:TFloatField;//f84C
    Q_OSTATSMIN_SROK_GODNOSTY:TDateTimeField;//f850
    N56:TMenuItem;//f854
    aReSet_All_PLU:TAction;//f858
    chbIzNoZeroOstats:TCheckBox;//f85C
    aCennikForStellageA4_40_65:TAction;//f860
    N440x651:TMenuItem;//f864
    Q_PRIHODSTIME_CRE:TStringField;//f868
    TimerConnTest:TTimer;//f86C
    Label13:TLabel;//f870
    DBText10:TDBText;//f874
    Q_OST_ITOGSS_SUM_OST_BY_COST_AVG:TFloatField;//f878
    Panel20:TPanel;//f87C
    Label14:TLabel;//f880
    Label15:TLabel;//f884
    Label16:TLabel;//f888
    Label17:TLabel;//f88C
    DBText11:TDBText;//f890
    DBText12:TDBText;//f894
    DBText13:TDBText;//f898
    DBText14:TDBText;//f89C
    Q_PRIH_ITOGS:TOraQuery;//f8A0
    dsPRIH_ITOGS:TDataSource;//f8A4
    Q_PRIH_ITOGSCNT_CHKS:TFloatField;//f8A8
    Q_PRIH_ITOGSSUM_NAKLS:TFloatField;//f8AC
    Q_PRIH_ITOGSSUM_OPLS:TFloatField;//f8B0
    Q_PRIH_ITOGSSUM_DOLGS:TFloatField;//f8B4
    lbl_FindNaklCap:TLabel;//f8B8
    EditFindNakl:TEdit;//f8BC
    btnFindNakl:TBitBtn;//f8C0
    btnClearFindNakl:TButton;//f8C4
    rg_find_nakl_type:TRadioGroup;//f8C8
    aSprKlCategories:TAction;//f8CC
    N57:TMenuItem;//f8D0
    N58:TMenuItem;//f8D4
    aKassTablos:TAction;//f8D8
    TimerDahua:TTimer;//f8DC
    Q_PRIHODSID_REVIZ:TFloatField;//f8E0
    rgFilter4:TRadioGroup;//f8E4
    N59:TMenuItem;//f8E8
    aSinhronization:TAction;//f8EC
    BitBtn24:TBitBtn;//f8F0
    aSravnenie:TAction;//f8F4
    aCennikBkEtiket30_20:TAction;//f8F8
    N30201:TMenuItem;//f8FC
    N60:TMenuItem;//f900
    aKassScalesByComPort:TAction;//f904
    aSprValuts:TAction;//f908
    N61:TMenuItem;//f90C
    N62:TMenuItem;//f910
    aCennikBkEtiket50_30:TAction;//f914
    aCennikBkEtiket50301:TMenuItem;//f918
    sSkinManager1:TsSkinManager;//f91C
    aSprNalogs:TAction;//f920
    N63:TMenuItem;//f924
    aFiscalSettings:TAction;//f928
    aCloudSetts:TAction;//f92C
    N64:TMenuItem;//f930
    //procedure DBGridEh_RashodsGetCellParams(?:?; ?:?; ?:?; ?:?; ?:?);//009FCA04
    //procedure DBGridEh_PrihodsGetCellParams(?:?; ?:?; ?:?; ?:?; ?:?);//009FC8EC
    procedure DBText3DblClick(Sender:TObject);//009FCB1C
    procedure aFindExecute;//009FD09C
    procedure DBText6DblClick(Sender:TObject);//009FCE9C
    procedure rgSortClick(Sender:TObject);//009FC884
    procedure aFinRashodExecute;//009FC7DC
    procedure RefreshData;//009F1790
    procedure rgSortRashsClick(Sender:TObject);//009FC8D4
    procedure rgSortPrihsClick(Sender:TObject);//009FC8BC
    procedure aCenniksNoBkA4_39_30Execute;//009FD590
    procedure aCennikForStellageA4Execute;//009FD548
    procedure aCenniksNoBkA4_58_40Execute;//009FD5D8
    procedure aCenniksBkA4_58_40Execute;//009FD664
    procedure aCenniksBkA4_39_30Execute;//009FD620
    procedure aCenniksByOperExecute;//009FD354
    procedure aCenniksPrintExecute;//009FD1E0
    //procedure aCenniksPrintUpdate(?:?);//009FD4C0
    procedure FormKeyDown(Sender:TObject; var Key:Word; Shift:TShiftState);//009FD4EC
    procedure aServisDopLoadNomsFromExcelExecute;//009F9A74
    //procedure Q_PRIHODSAfterOpen(?:?);//009FBC7C
    //procedure Q_RASHODSAfterScroll(?:?);//009FBBD8
    //procedure Q_RASHODSAfterOpen(?:?);//009FBC9C
    procedure aRestore_DBExecute;//009FBE00
    procedure aRes_DBExecute;//009FBCBC
    procedure aVesyExpSettingsExecute;//009FAE24
    procedure aRevisionExecute;//009FAD94
    procedure aExpNomsForVesyExecute;//009FB068
    //procedure Q_PRIHODSAfterScroll(?:?);//009FB840
    procedure rg_findClick(Sender:TObject);//009FB83C
    procedure aSprTovarsExecute;//009FC694
    procedure aHandRefreshOstatsExecute;//009FC67C
    procedure aPrintPrihOrderExecute;//009F8F80
    procedure aFinPrihodExecute;//009FC738
    //procedure aPrintPrihOrderUpdate(?:?);//009FC6D4
    procedure aClearDatabaseExecute;//009FC1D4
    procedure FormCloseQuery(Sender:TObject; var CanClose:Boolean);//009FC020
    procedure aMassUpdateToNomsExecute;//009FC59C
    //procedure aHandRefreshOstatsUpdate(?:?);//009FC64C
    procedure aMassDeleteNomsExecute;//009FC5F4
    procedure aCennikBkEtiket39_30Execute;//009FD6A8
    procedure aSinhronizationExecute;//009FE008
    procedure TimerDahuaTimer;//009FDF8C
    procedure aSravnenieExecute;//009FE218
    procedure aCennikBkEtiket30_20Execute;//009FE2A8
    //procedure aSravnenieUpdate(?:?);//009FE244
    procedure EditFindNaklChange;//009FDE1C
    procedure rg_find_nakl_typeClick(Sender:TObject);//009FDDAC
    procedure EditFindNaklKeyDown(Sender:TObject; var Key:Word; Shift:TShiftState);//009FDE80
    procedure aKassTablosExecute;//009FDF3C
    procedure aSprKlCategoriesExecute;//009FDEEC
    procedure FormActivate(Sender:TObject);//009FE510
    procedure SetSkin;//009FE4E0
    procedure aSprNalogsExecute;//009FE528
    procedure aCloudSettsExecute;//009FE840
    procedure aFiscalSettingsExecute;//009FE578
    procedure aSprValutsExecute;//009FE350
    procedure aKassScalesByComPortExecute;//009FE300
    procedure FormatUzbek;//009EF5F4
    procedure aCennikBkEtiket50_30Execute;//009FE488
    procedure N62Click(Sender:TObject);//009FE3A0
    procedure aExpNomsForVesy2Execute;//009FD854
    procedure chbAutoRefreshClick(Sender:TObject);//009FD820
    procedure aCennikBkEtiket58_40_2Execute;//009FD8A4
    procedure aSprScalesExecute;//009FD940
    procedure aDel_Losted_ZaksExecute;//009FD904
    procedure aPriceListExecute;//009FD758
    procedure aCennikBkEtiket58_40Execute;//009FD700
    procedure Button1Click(Sender:TObject);//009FD794
    procedure btn_find_clearClick(Sender:TObject);//009FD810
    //procedure aPrintPrihNaklUpdate(?:?);//009FD7E4
    procedure aCennikForStellageA4_40_65Execute;//009FDCEC
    procedure aReSet_All_PLUExecute;//009FDC9C
    procedure TimerConnTestTimer;//009FDD44
    procedure btnFindNaklClick(Sender:TObject);//009FDD94
    procedure btnClearFindNaklClick(Sender:TObject);//009FDD6C
    procedure chbIsSortDsableClick(Sender:TObject);//009FD9D0
    procedure aExpTovarsToVesyExecute;//009FD990
    procedure aToExcel_Ostats2Execute;//009FDA8C
    procedure aClearDatabasePartExecute;//009FC3B8
    procedure aCennikBkEtiket58_40_3Execute;//009FDC38
    procedure aRaschPokupExecute;//009FAD10
    procedure aAddPrihExecute;//009F2FE8
    procedure aAddRashExecute;//009F4F20
    procedure aDelPrihExecute;//009F4938
    //function GetNextOpNum(?:Integer; ?:?; ?:?):?;//009F6E24
    procedure aDelRashExecute;//009F6684
    procedure aEditPrihExecute;//009F47B4
    //function GetNextNPP_Nom(?:?; ?:?):?;//009F1DEC
    //procedure aEditPrihUpdate(?:?);//009F6CAC
    procedure aEdtRashExecute;//009F5B74
    //procedure aEdtRashUpdate(?:?);//009F6D9C
    procedure aUnProvodPrihExecute;//009F80C8
    procedure aProvodPrihodExecute;//009F7BF8
    //procedure aProvodPrihodUpdate(?:?);//009F85EC
    //procedure aProvodRashodUpdate(?:?);//009F8784
    //procedure aUnProvodPrihUpdate(?:?);//009F86B8
    //procedure GetNextOpNumNaryad(?:?; ?:?; ?:?);//009F704C
    //function GetNextOpNumTo(?:Integer; ?:?; ?:?):?;//009F6F38
    procedure DBGridEh_PrihodsDblClick(Sender:TObject);//009F7158
    procedure aUnProvodRashExecute;//009F76A0
    procedure aProvodRashodExecute;//009F7174
    //function GetNextNPP(?:?):?;//009F1D04
    procedure aExitExecute;//009F01E4
    procedure CloseTimerTimer;//009F01C8
    procedure N2Click(Sender:TObject);//009F0200
    procedure PageControl1Change;//009F0228
    procedure cbSkladClick(Sender:TObject);//009F0220
    procedure FormShow(Sender:TObject);//009EED48
    procedure N3Click;//009EED40
    procedure GetParams;//009EFC78
    procedure FormCreate(Sender:TObject);//009EFB08
    //function GetSysDate:?;//009F0134
    procedure aSprUsrGroupsExecute;//009F1CBC
    procedure aAdminExecute;//009F1C0C
    procedure aSprKlientsExecute;//009F1CB0
    procedure aSprEdIzmsExecute;//009F1CC4
    procedure aSprCehsExecute;//009F1CC0
    procedure aToExcel_OstatsExecute;//009F17F8
    procedure deBgnChange;//009F1794
    procedure EditFindChange;//009F1988
    //procedure OraAlerter1Event(?:?; ?:?; ?:?);//009F1A24
    procedure aCallCalcExecute;//009F19EC
    procedure rgPrihIsProvClick(Sender:TObject);//009F9704
    procedure Q_PRIHODSFilterRecord;//009F9770
    procedure PrihFiltered;//009F971C
    //procedure Q_RASHODSFilterRecord(?:?; ?:?);//009F97D8
    procedure rgRashIsProvClick(Sender:TObject);//009F9774
    //procedure aObyedNalkUpdate(?:?);//009F95C4
    procedure NewPrihod;//009F1F3C
    //procedure aViewPrihNaklUpdate(?:?);//009F95F0
    procedure Button2Click(Sender:TObject);//009F96A8
    procedure aLogDocsExecute;//009F961C
    procedure aViewPrihNaklExecute;//009FAAE4
    procedure aSettingsExecute;//009FA088
    //procedure aViewRashNaklUpdate(?:?);//009FAAE8
    procedure aRaschPostavExecute;//009FACC0
    procedure aShowOstatsExecute;//009FAB14
    procedure RashFilter;//009F9784
    procedure cbVidOperClick(Sender:TObject);//009F977C
    procedure aServisLoadNomsFromExcelExecute;//009F99C0
    procedure GetSettings;//009F9C04
    //procedure GetIdCehStr(?:?);//009F9B2C
    //procedure aDeleteVozvratUpdate(?:?);//009F9568
    procedure aOborotkaExecute;//009F8A08
    procedure aHistCardExecute;//009F8870
    //procedure aHistCardUpdate(?:?);//009F8AE0
    procedure DBGridEh_OstatsDblClick(Sender:TObject);//009F8E78
    //procedure DBGridEh_OstatsGetCellParams(?:?; ?:?; ?:?; ?:?; ?:?);//009F8B0C
    procedure DBGridEh_RashodsDblClick(Sender:TObject);//009F883C
    //procedure aUnProvodRashUpdate(?:?);//009F87E0
    //procedure aDelRashUpdate(?:?);//009F6DC8
    procedure chbShowZerrowsClick(Sender:TObject);//009F8858
    //procedure aDelPrihUpdate(?:?);//009F6D40
    procedure aDelZerrowOstatExecute;//009F91D0
    procedure cbGroupsClick(Sender:TObject);//009F91B8
    //procedure aDelZerrowOstatUpdate(?:?);//009F943C
    //procedure aEdtVozvratUpdate(?:?);//009F94DC
    procedure EdtPrihod;//009F3140
    procedure aPrintPrihNaklExecute;//009F8ED8
    procedure aUchPeriodsExecute;//009F8E94
    procedure aPrintRashNaklExecute;//009F8FE0
    procedure chbGroupsClick(Sender:TObject);//009F910C
    procedure aRekvizitsExecute;//009F90CC
  public
    f934:String;//f934
    f938:String;//f938
    f93C:String;//f93C
    f940:String;//f940
    f944:String;//f944
    f948:String;//f948
    f94C:String;//f94C
    f950:dword;//f950
    f960:dword;//f960
    f964:dword;//f964
    f968:dword;//f968
    f96C:dword;//f96C
    f970:dword;//f970
    f974:dword;//f974
    f978:dword;//f978
    //f97C:?;//f97C
    f984:Longint;//f984
    f988:Longint;//f988
    f98C:Longint;//f98C
    f990:Longint;//f990
    f994:Longint;//f994
    f998:Longint;//f998
    f99C:Longint;//f99C
    f9A0:Longint;//f9A0
    f9A4:Longint;//f9A4
    f9A8:String;//f9A8
    f9AC:String;//f9AC
    f9B0:String;//f9B0
    f9B4:String;//f9B4
    f9B8:String;//f9B8
    f9BC:String;//f9BC
    f9C0:String;//f9C0
    f9C4:byte;//f9C4
    f9C5:byte;//f9C5
    f9C6:byte;//f9C6
    f9C7:byte;//f9C7
    f9C8:byte;//f9C8
    f9C9:byte;//f9C9
    f9CA:byte;//f9CA
    procedure sub_009F94C4; dynamic;//009F94C4
  end;
  _DynArr_672_3 = array of String;
//elSize = 4
//varType equivalent: varStrArg;
  _DynArr_672_4 = array of ?;
//elSize = 4
//varType equivalent: varInteger;
  _DynArr_672_5 = array of String;
//elSize = 4
//varType equivalent: varStrArg;
  _DynArr_672_6 = array of ?;
//elSize = 4
//varType equivalent: varInteger;
    AdminSystem;//009EED10
    Log_docs;//009EED18
    Un_Cript;//009EED20
    Cript;//009EED28
    //function GetCloudIsTSD:?;//009EED30
    //function GetCloudIsFiscal:?;//009EED38
    procedure sub_009F94C4;//009F94C4
    //procedure sub_009FAE74(?:?);//009FAE74
    //procedure sub_009FAFA4(?:Longint; ?:AnsiString; ?:?; ?:?);//009FAFA4

implementation

{$R *.DFM}

//009EED30
{*function GetCloudEndLicDate.GetCloudIsTSD:?;
begin
 009EED30    jmp         dword ptr ds:[0ACFE28]
end;*}

//009EED38
{*function GetCloudEndLicDate.GetCloudIsFiscal:?;
begin
 009EED38    jmp         dword ptr ds:[0ACFE24]
end;*}

//009EED40
procedure TMainFormMarketSklad.N3Click;
begin
{*
 009EED40    call        TCustomForm.Close
 009EED45    ret
*}
end;

//009EED48
procedure TMainFormMarketSklad.FormShow(Sender:TObject);
begin
{*
 009EED48    push        ebp
 009EED49    mov         ebp,esp
 009EED4B    mov         ecx,0D
 009EED50    push        0
 009EED52    push        0
 009EED54    dec         ecx
>009EED55    jne         009EED50
 009EED57    push        ecx
 009EED58    push        ebx
 009EED59    push        esi
 009EED5A    mov         ebx,eax
 009EED5C    xor         eax,eax
 009EED5E    push        ebp
 009EED5F    push        9EF314
 009EED64    push        dword ptr fs:[eax]
 009EED67    mov         dword ptr fs:[eax],esp
 009EED6A    cmp         byte ptr ds:[0AC6620],1;gvar_00AC6620
>009EED71    jne         009EF2AA
 009EED77    lea         eax,[ebp-0C]
 009EED7A    call        007A3454
 009EED7F    mov         edx,dword ptr [ebp-0C]
 009EED82    mov         eax,0AC6648;^'JJJ'
 009EED87    call        @LStrAsg
 009EED8C    call        007A8CB4
 009EED91    test        al,al
>009EED93    jne         009EEDA7
 009EED95    mov         dl,1
 009EED97    mov         eax,dword ptr [ebx+314];TMainFormMarketSklad.CloseTimer:TTimer
 009EED9D    call        TTimer.SetEnabled
>009EEDA2    jmp         009EF2B7
 009EEDA7    lea         edx,[ebp-4]
 009EEDAA    mov         eax,2
 009EEDAF    call        ParamStr
 009EEDB4    lea         edx,[ebp-8]
 009EEDB7    mov         eax,1
 009EEDBC    call        ParamStr
 009EEDC1    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009EEDC6    mov         eax,dword ptr [eax]
 009EEDC8    mov         esi,dword ptr [eax+60]
 009EEDCB    mov         eax,esi
 009EEDCD    call        TDataSet.Close
 009EEDD2    mov         eax,esi
 009EEDD4    call        TOraQuery.GetSQL
 009EEDD9    mov         edx,dword ptr [eax]
 009EEDDB    call        dword ptr [edx+44]
 009EEDDE    mov         eax,esi
 009EEDE0    call        TOraQuery.GetSQL
 009EEDE5    mov         edx,9EF32C;'SELECT U.* FROM USERS U,USR_ROLES R  '
 009EEDEA    mov         ecx,dword ptr [eax]
 009EEDEC    call        dword ptr [ecx+38]
 009EEDEF    mov         eax,esi
 009EEDF1    call        TOraQuery.GetSQL
 009EEDF6    mov         edx,9EF35C;'WHERE R.ID=U.ID_ROLE AND UPPER(U.PASSWORD)=:PASSWORD'
 009EEDFB    mov         ecx,dword ptr [eax]
 009EEDFD    call        dword ptr [ecx+38]
 009EEE00    mov         eax,esi
 009EEE02    call        TOraQuery.GetSQL
 009EEE07    mov         edx,9EF39C;'AND UPPER(U.LOGIN)=:LOGIN AND U.IS_ARCHIVE=0 '
 009EEE0C    mov         ecx,dword ptr [eax]
 009EEE0E    call        dword ptr [ecx+38]
 009EEE11    mov         eax,esi
 009EEE13    call        TOraQuery.GetSQL
 009EEE18    mov         edx,9EF3D4;'AND R.IS_DOSTUP_TO_SKLAD=1'
 009EEE1D    mov         ecx,dword ptr [eax]
 009EEE1F    call        dword ptr [ecx+38]
 009EEE22    lea         edx,[ebp-10]
 009EEE25    mov         eax,dword ptr [ebp-4]
 009EEE28    call        AnsiUpperCase
 009EEE2D    mov         eax,dword ptr [ebp-10]
 009EEE30    push        eax
 009EEE31    mov         edx,9EF3F8;'PASSWORD'
 009EEE36    mov         eax,esi
 009EEE38    call        006210D4
 009EEE3D    pop         edx
 009EEE3E    mov         ecx,dword ptr [eax]
 009EEE40    call        dword ptr [ecx+48]
 009EEE43    lea         edx,[ebp-14]
 009EEE46    mov         eax,dword ptr [ebp-8]
 009EEE49    call        AnsiUpperCase
 009EEE4E    mov         eax,dword ptr [ebp-14]
 009EEE51    push        eax
 009EEE52    mov         edx,9EF40C;'LOGIN'
 009EEE57    mov         eax,esi
 009EEE59    call        006210D4
 009EEE5E    pop         edx
 009EEE5F    mov         ecx,dword ptr [eax]
 009EEE61    call        dword ptr [ecx+48]
 009EEE64    mov         eax,esi
 009EEE66    call        TDataSet.Open
 009EEE6B    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009EEE70    mov         eax,dword ptr [eax]
 009EEE72    mov         eax,dword ptr [eax+60]
 009EEE75    mov         edx,dword ptr [eax]
 009EEE77    call        dword ptr [edx+14C]
 009EEE7D    dec         eax
>009EEE7E    jne         009EEEE7
 009EEE80    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009EEE85    mov         eax,dword ptr [eax]
 009EEE87    mov         eax,dword ptr [eax+60]
 009EEE8A    mov         edx,9EF41C;'ID'
 009EEE8F    call        TDataSet.FieldByName
 009EEE94    mov         edx,dword ptr [eax]
 009EEE96    call        dword ptr [edx+58];TField.GetAsInteger
 009EEE99    mov         [00AC6614],eax;gvar_00AC6614:Longint
 009EEE9E    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009EEEA3    mov         eax,dword ptr [eax]
 009EEEA5    mov         eax,dword ptr [eax+60]
 009EEEA8    mov         edx,9EF428;'ID_ROLE'
 009EEEAD    call        TDataSet.FieldByName
 009EEEB2    mov         edx,dword ptr [eax]
 009EEEB4    call        dword ptr [edx+58];TField.GetAsInteger
 009EEEB7    mov         [00AC661C],eax;gvar_00AC661C:Longint
 009EEEBC    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009EEEC1    mov         eax,dword ptr [eax]
 009EEEC3    mov         eax,dword ptr [eax+60]
 009EEEC6    mov         edx,9EF438;'NAME_USR'
 009EEECB    call        TDataSet.FieldByName
 009EEED0    lea         edx,[ebp-18]
 009EEED3    mov         ecx,dword ptr [eax]
 009EEED5    call        dword ptr [ecx+60];TField.GetAsString
 009EEED8    mov         edx,dword ptr [ebp-18]
 009EEEDB    mov         eax,0AC6618;gvar_00AC6618
 009EEEE0    call        @LStrAsg
>009EEEE5    jmp         009EEF06
 009EEEE7    lea         eax,[ebp-4]
 009EEEEA    call        @LStrClr
 009EEEEF    lea         eax,[ebp-8]
 009EEEF2    call        @LStrClr
 009EEEF7    mov         eax,[00AC7434];^gvar_00ACBC00:TFormParol
 009EEEFC    mov         eax,dword ptr [eax]
 009EEEFE    mov         edx,dword ptr [eax]
 009EEF00    call        dword ptr [edx+0EC]
 009EEF06    cmp         byte ptr ds:[0AC6620],1;gvar_00AC6620
>009EEF0D    je          009EEF21
 009EEF0F    mov         dl,1
 009EEF11    mov         eax,dword ptr [ebx+314];TMainFormMarketSklad.CloseTimer:TTimer
 009EEF17    call        TTimer.SetEnabled
>009EEF1C    jmp         009EF2B7
 009EEF21    cmp         dword ptr [ebp-4],0
>009EEF25    je          009EEF36
 009EEF27    mov         eax,0AC6644;^'ag8250'
 009EEF2C    mov         edx,dword ptr [ebp-4]
 009EEF2F    call        @LStrAsg
>009EEF34    jmp         009EEF58
 009EEF36    lea         edx,[ebp-1C]
 009EEF39    mov         eax,[00AC7434];^gvar_00ACBC00:TFormParol
 009EEF3E    mov         eax,dword ptr [eax]
 009EEF40    mov         eax,dword ptr [eax+304]
 009EEF46    call        TControl.GetText
 009EEF4B    mov         edx,dword ptr [ebp-1C]
 009EEF4E    mov         eax,0AC6644;^'ag8250'
 009EEF53    call        @LStrAsg
 009EEF58    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009EEF5D    mov         eax,dword ptr [eax]
 009EEF5F    mov         esi,dword ptr [eax+60]
 009EEF62    mov         eax,esi
 009EEF64    call        TDataSet.Close
 009EEF69    mov         eax,esi
 009EEF6B    call        TOraQuery.GetSQL
 009EEF70    mov         edx,dword ptr [eax]
 009EEF72    call        dword ptr [edx+44]
 009EEF75    mov         eax,esi
 009EEF77    call        TOraQuery.GetSQL
 009EEF7C    mov         edx,9EF44C;'SELECT NAME_REKV,FIO_BUH,ADDRESS,PHONE1,PHONE2 FROM SELF_REKVIZITS RR'
 009EEF81    mov         ecx,dword ptr [eax]
 009EEF83    call        dword ptr [ecx+38]
 009EEF86    mov         eax,esi
 009EEF88    call        TOraQuery.GetSQL
 009EEF8D    mov         edx,9EF49C;'WHERE RR.ID=0'
 009EEF92    mov         ecx,dword ptr [eax]
 009EEF94    call        dword ptr [ecx+38]
 009EEF97    mov         eax,esi
 009EEF99    call        TDataSet.Open
 009EEF9E    mov         eax,esi
 009EEFA0    call        TDataSet.IsEmpty
 009EEFA5    test        al,al
>009EEFA7    jne         009EF04F
 009EEFAD    mov         edx,9EF4B4;'NAME_REKV'
 009EEFB2    mov         eax,esi
 009EEFB4    call        TDataSet.FieldByName
 009EEFB9    lea         edx,[ebp-20]
 009EEFBC    mov         ecx,dword ptr [eax]
 009EEFBE    call        dword ptr [ecx+60];TField.GetAsString
 009EEFC1    mov         edx,dword ptr [ebp-20]
 009EEFC4    mov         eax,0AC6638;^'НАША ФИРМА'
 009EEFC9    call        @LStrAsg
 009EEFCE    mov         edx,9EF4C8;'FIO_BUH'
 009EEFD3    mov         eax,esi
 009EEFD5    call        TDataSet.FieldByName
 009EEFDA    lea         edx,[ebp-24]
 009EEFDD    mov         ecx,dword ptr [eax]
 009EEFDF    call        dword ptr [ecx+60];TField.GetAsString
 009EEFE2    mov         edx,dword ptr [ebp-24]
 009EEFE5    mov         eax,0AC663C
 009EEFEA    call        @LStrAsg
 009EEFEF    mov         edx,9EF4D8;'ADDRESS'
 009EEFF4    mov         eax,esi
 009EEFF6    call        TDataSet.FieldByName
 009EEFFB    lea         edx,[ebp-28]
 009EEFFE    mov         ecx,dword ptr [eax]
 009EF000    call        dword ptr [ecx+60];TField.GetAsString
 009EF003    push        dword ptr [ebp-28]
 009EF006    push        9EF4E8;', тел.'
 009EF00B    mov         edx,9EF4F8;'PHONE1'
 009EF010    mov         eax,esi
 009EF012    call        TDataSet.FieldByName
 009EF017    lea         edx,[ebp-2C]
 009EF01A    mov         ecx,dword ptr [eax]
 009EF01C    call        dword ptr [ecx+60];TField.GetAsString
 009EF01F    push        dword ptr [ebp-2C]
 009EF022    push        9EF508;','
 009EF027    mov         edx,9EF514;'PHONE2'
 009EF02C    mov         eax,esi
 009EF02E    call        TDataSet.FieldByName
 009EF033    lea         edx,[ebp-30]
 009EF036    mov         ecx,dword ptr [eax]
 009EF038    call        dword ptr [ecx+60];TField.GetAsString
 009EF03B    push        dword ptr [ebp-30]
 009EF03E    mov         eax,0AC6640;^'г.Москва'
 009EF043    mov         edx,5
 009EF048    call        @LStrCatN
>009EF04D    jmp         009EF05E
 009EF04F    mov         eax,0AC6638;^'НАША ФИРМА'
 009EF054    mov         edx,9EF524;'НАША ФИРМА'
 009EF059    call        @LStrAsg
 009EF05E    lea         ecx,[ebx+97C];TMainFormMarketSklad.?f97C:?
 009EF064    lea         edx,[ebx+978];TMainFormMarketSklad.?f978:dword
 009EF06A    lea         eax,[ebx+974];TMainFormMarketSklad.?f974:dword
 009EF070    call        007A2588
 009EF075    push        9EF538;'Склад магазина v'
 009EF07A    push        dword ptr ds:[0AC6608];^'0.0.0.0'
 009EF080    push        9EF554;' : '
 009EF085    push        dword ptr ds:[0AC6638];^'НАША ФИРМА'
 009EF08B    push        9EF560;'  ('
 009EF090    push        dword ptr ds:[0AC6618];gvar_00AC6618
 009EF096    push        9EF56C;') - текущий учетный период: '
 009EF09B    lea         edx,[ebp-38]
 009EF09E    mov         eax,dword ptr [ebx+978];TMainFormMarketSklad.?f978:dword
 009EF0A4    call        IntToStr
 009EF0A9    push        dword ptr [ebp-38]
 009EF0AC    push        9EF594;' квартал '
 009EF0B1    lea         edx,[ebp-3C]
 009EF0B4    mov         eax,dword ptr [ebx+974];TMainFormMarketSklad.?f974:dword
 009EF0BA    call        IntToStr
 009EF0BF    push        dword ptr [ebp-3C]
 009EF0C2    push        9EF5A8;' года.'
 009EF0C7    lea         eax,[ebp-34]
 009EF0CA    mov         edx,0B
 009EF0CF    call        @LStrCatN
 009EF0D4    mov         edx,dword ptr [ebp-34]
 009EF0D7    mov         eax,ebx
 009EF0D9    call        TControl.SetText
 009EF0DE    call        007A7C94
 009EF0E3    test        al,al
>009EF0E5    je          009EF108
 009EF0E7    lea         edx,[ebp-40]
 009EF0EA    mov         eax,ebx
 009EF0EC    call        TControl.GetText
 009EF0F1    lea         eax,[ebp-40]
 009EF0F4    mov         edx,9EF5B8;' (ТСД разрешено)'
 009EF0F9    call        @LStrCat
 009EF0FE    mov         edx,dword ptr [ebp-40]
 009EF101    mov         eax,ebx
 009EF103    call        TControl.SetText
 009EF108    call        007A7D2C
 009EF10D    test        al,al
>009EF10F    je          009EF132
 009EF111    lea         edx,[ebp-44]
 009EF114    mov         eax,ebx
 009EF116    call        TControl.GetText
 009EF11B    lea         eax,[ebp-44]
 009EF11E    mov         edx,9EF5D4;' (Фискал.включен)'
 009EF123    call        @LStrCat
 009EF128    mov         edx,dword ptr [ebp-44]
 009EF12B    mov         eax,ebx
 009EF12D    call        TControl.SetText
 009EF132    lea         eax,[ebp-48]
 009EF135    call        007A3454
 009EF13A    mov         edx,dword ptr [ebp-48]
 009EF13D    mov         eax,0AC6648;^'JJJ'
 009EF142    call        @LStrAsg
 009EF147    lea         edx,[ebp-4C]
 009EF14A    mov         eax,[00AC6648];^'JJJ'
 009EF14F    call        AnsiUpperCase
 009EF154    mov         edx,dword ptr [ebp-4C]
 009EF157    mov         eax,0AC6648;^'JJJ'
 009EF15C    call        @LStrAsg
 009EF161    mov         eax,ebx
 009EF163    call        TMainFormMarketSklad.GetSettings
 009EF168    mov         eax,dword ptr [ebx+318];TMainFormMarketSklad.ActionList1:TActionList
 009EF16E    call        007A8A5C
 009EF173    mov         eax,ebx
 009EF175    call        TMainFormMarketSklad.GetSysDate
 009EF17A    fstp        qword ptr ds:[0ACEBE0];gvar_00ACEBE0:Double
 009EF180    wait
 009EF181    xor         edx,edx
 009EF183    mov         eax,dword ptr [ebx+2F8];TMainFormMarketSklad.PageControl1:TPageControl
 009EF189    call        TPageControl.SetActivePageIndex
 009EF18E    mov         eax,dword ptr [ebx+334];TMainFormMarketSklad.Q_Sklads:TOraQuery
 009EF194    call        TDataSet.Close
 009EF199    mov         eax,dword ptr [ebx+334];TMainFormMarketSklad.Q_Sklads:TOraQuery
 009EF19F    call        TDataSet.Open
 009EF1A4    mov         al,[009EF5E8];0x0 gvar_009EF5E8
 009EF1A9    push        eax
 009EF1AA    lea         eax,[ebp-5C]
 009EF1AD    mov         edx,dword ptr [ebx+970];TMainFormMarketSklad.?f970:dword
 009EF1B3    mov         cl,0FC
 009EF1B5    call        @VarFromInt
 009EF1BA    lea         ecx,[ebp-5C]
 009EF1BD    mov         edx,9EF41C;'ID'
 009EF1C2    mov         eax,dword ptr [ebx+334];TMainFormMarketSklad.Q_Sklads:TOraQuery
 009EF1C8    mov         esi,dword ptr [eax]
 009EF1CA    call        dword ptr [esi+244];TMemDataSet.Locate
 009EF1D0    mov         edx,9EF41C;'ID'
 009EF1D5    mov         eax,dword ptr [ebx+334];TMainFormMarketSklad.Q_Sklads:TOraQuery
 009EF1DB    call        TDataSet.FieldByName
 009EF1E0    mov         edx,dword ptr [eax]
 009EF1E2    call        dword ptr [edx+58];TField.GetAsInteger
 009EF1E5    mov         edx,eax
 009EF1E7    lea         eax,[ebp-6C]
 009EF1EA    mov         cl,0FC
 009EF1EC    call        @VarFromInt
 009EF1F1    lea         edx,[ebp-6C]
 009EF1F4    mov         eax,dword ptr [ebx+32C];TMainFormMarketSklad.cbSklad:TDBLookupComboBox
 009EF1FA    call        TDBLookupControl.SetKeyValue
 009EF1FF    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009EF205    call        TDataSet.Close
 009EF20A    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009EF210    call        TDataSet.Open
 009EF215    mov         eax,dword ptr [ebx+374];TMainFormMarketSklad.deEnd:TDateEdit
 009EF21B    xor         edx,edx
 009EF21D    mov         dword ptr [eax+218],edx;TDateEdit.FOnChange:TNotifyEvent
 009EF223    mov         dword ptr [eax+21C],edx;TDateEdit.?f21C:TfrxCustomFilterEdit
 009EF229    call        Date
 009EF22E    fsub        dword ptr ds:[9EF5EC];30:Single
 009EF234    add         esp,0FFFFFFF8
 009EF237    fstp        qword ptr [esp]
 009EF23A    wait
 009EF23B    mov         eax,dword ptr [ebx+370];TMainFormMarketSklad.deBgn:TDateEdit
 009EF241    mov         edx,dword ptr [eax]
 009EF243    call        dword ptr [edx+12C];TDateEdit.sub_006A9B78
 009EF249    call        Date
 009EF24E    fadd        dword ptr ds:[9EF5F0];3:Single
 009EF254    add         esp,0FFFFFFF8
 009EF257    fstp        qword ptr [esp]
 009EF25A    wait
 009EF25B    mov         eax,dword ptr [ebx+374];TMainFormMarketSklad.deEnd:TDateEdit
 009EF261    mov         edx,dword ptr [eax]
 009EF263    call        dword ptr [edx+12C];TDateEdit.sub_006A9B78
 009EF269    mov         eax,dword ptr [ebx+374];TMainFormMarketSklad.deEnd:TDateEdit
 009EF26F    mov         dword ptr [eax+21C],ebx;TDateEdit.?f21C:TfrxCustomFilterEdit
 009EF275    mov         dword ptr [eax+218],9F1794;TDateEdit.FOnChange:TNotifyEvent TMainFormMarketSklad.deBgnCh...
 009EF27F    mov         dl,1
 009EF281    mov         eax,dword ptr [ebx+86C];TMainFormMarketSklad.TimerConnTest:TTimer
 009EF287    call        TTimer.SetEnabled
 009EF28C    mov         eax,[00ACEBDC];gvar_00ACEBDC:TMainFormMarketSklad
 009EF291    cmp         dword ptr [eax+998],6
>009EF298    jne         009EF2A1
 009EF29A    mov         eax,ebx
 009EF29C    call        TMainFormMarketSklad.FormatUzbek
 009EF2A1    mov         eax,ebx
 009EF2A3    call        TMainFormMarketSklad.SetSkin
>009EF2A8    jmp         009EF2B7
 009EF2AA    mov         dl,1
 009EF2AC    mov         eax,dword ptr [ebx+314];TMainFormMarketSklad.CloseTimer:TTimer
 009EF2B2    call        TTimer.SetEnabled
 009EF2B7    xor         eax,eax
 009EF2B9    pop         edx
 009EF2BA    pop         ecx
 009EF2BB    pop         ecx
 009EF2BC    mov         dword ptr fs:[eax],edx
 009EF2BF    push        9EF31B
 009EF2C4    lea         eax,[ebp-6C]
 009EF2C7    mov         edx,dword ptr ds:[401160];Variant
 009EF2CD    mov         ecx,2
 009EF2D2    call        @FinalizeArray
 009EF2D7    lea         eax,[ebp-4C]
 009EF2DA    mov         edx,2
 009EF2DF    call        @LStrArrayClr
 009EF2E4    lea         eax,[ebp-44]
 009EF2E7    mov         edx,2
 009EF2EC    call        @LStrArrayClr
 009EF2F1    lea         eax,[ebp-3C]
 009EF2F4    mov         edx,8
 009EF2F9    call        @LStrArrayClr
 009EF2FE    lea         eax,[ebp-1C]
 009EF301    call        @LStrClr
 009EF306    lea         eax,[ebp-18]
 009EF309    mov         edx,6
 009EF30E    call        @LStrArrayClr
 009EF313    ret
>009EF314    jmp         @HandleFinally
>009EF319    jmp         009EF2C4
 009EF31B    pop         esi
 009EF31C    pop         ebx
 009EF31D    mov         esp,ebp
 009EF31F    pop         ebp
 009EF320    ret
*}
end;

//009EF5F4
procedure TMainFormMarketSklad.FormatUzbek;
begin
{*
 009EF5F4    push        ebx
 009EF5F5    push        esi
 009EF5F6    push        edi
 009EF5F7    mov         esi,eax
 009EF5F9    mov         edx,9EFA1C;',0'
 009EF5FE    mov         eax,dword ptr [esi+75C];TMainFormMarketSklad.Q_OST_ITOGSS_SUM_OST_BY_COST:TFloatField
 009EF604    call        TDateTimeField.SetDisplayFormat
 009EF609    mov         edx,9EFA1C;',0'
 009EF60E    mov         eax,dword ptr [esi+760];TMainFormMarketSklad.Q_OST_ITOGSS_SUM_OST_BY_PRICE:TFloatField
 009EF614    call        TDateTimeField.SetDisplayFormat
 009EF619    mov         edx,9EFA1C;',0'
 009EF61E    mov         eax,dword ptr [esi+878];TMainFormMarketSklad.Q_OST_ITOGSS_SUM_OST_BY_COST_AVG:TFloatFiel...
 009EF624    call        TDateTimeField.SetDisplayFormat
 009EF629    mov         edx,9EFA1C;',0'
 009EF62E    mov         eax,dword ptr [esi+8AC];TMainFormMarketSklad.Q_PRIH_ITOGSSUM_NAKLS:TFloatField
 009EF634    call        TDateTimeField.SetDisplayFormat
 009EF639    mov         edx,9EFA1C;',0'
 009EF63E    mov         eax,dword ptr [esi+8B0];TMainFormMarketSklad.Q_PRIH_ITOGSSUM_OPLS:TFloatField
 009EF644    call        TDateTimeField.SetDisplayFormat
 009EF649    mov         edx,9EFA1C;',0'
 009EF64E    mov         eax,dword ptr [esi+8B4];TMainFormMarketSklad.Q_PRIH_ITOGSSUM_DOLGS:TFloatField
 009EF654    call        TDateTimeField.SetDisplayFormat
 009EF659    mov         eax,dword ptr [esi+324];TMainFormMarketSklad.DBGridEh_Ostats:TDBGridEh
 009EF65F    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009EF665    call        TCollection.GetCount
 009EF66A    mov         edi,eax
 009EF66C    dec         edi
 009EF66D    test        edi,edi
>009EF66F    jl          009EF74B
 009EF675    inc         edi
 009EF676    xor         ebx,ebx
 009EF678    mov         eax,dword ptr [esi+324];TMainFormMarketSklad.DBGridEh_Ostats:TDBGridEh
 009EF67E    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009EF684    mov         edx,ebx
 009EF686    call        00676F60
 009EF68B    mov         eax,dword ptr [eax+40]
 009EF68E    mov         edx,9EFA28;'COST'
 009EF693    call        @LStrCmp
>009EF698    je          009EF726
 009EF69E    mov         eax,dword ptr [esi+324];TMainFormMarketSklad.DBGridEh_Ostats:TDBGridEh
 009EF6A4    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009EF6AA    mov         edx,ebx
 009EF6AC    call        00676F60
 009EF6B1    mov         eax,dword ptr [eax+40]
 009EF6B4    mov         edx,9EFA38;'COST_AVG'
 009EF6B9    call        @LStrCmp
>009EF6BE    je          009EF726
 009EF6C0    mov         eax,dword ptr [esi+324];TMainFormMarketSklad.DBGridEh_Ostats:TDBGridEh
 009EF6C6    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009EF6CC    mov         edx,ebx
 009EF6CE    call        00676F60
 009EF6D3    mov         eax,dword ptr [eax+40]
 009EF6D6    mov         edx,9EFA4C;'SUM_OST_BY_COST'
 009EF6DB    call        @LStrCmp
>009EF6E0    je          009EF726
 009EF6E2    mov         eax,dword ptr [esi+324];TMainFormMarketSklad.DBGridEh_Ostats:TDBGridEh
 009EF6E8    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009EF6EE    mov         edx,ebx
 009EF6F0    call        00676F60
 009EF6F5    mov         eax,dword ptr [eax+40]
 009EF6F8    mov         edx,9EFA64;'PRICE'
 009EF6FD    call        @LStrCmp
>009EF702    je          009EF726
 009EF704    mov         eax,dword ptr [esi+324];TMainFormMarketSklad.DBGridEh_Ostats:TDBGridEh
 009EF70A    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009EF710    mov         edx,ebx
 009EF712    call        00676F60
 009EF717    mov         eax,dword ptr [eax+40]
 009EF71A    mov         edx,9EFA74;'SUM_OST_BY_PRICE'
 009EF71F    call        @LStrCmp
>009EF724    jne         009EF743
 009EF726    mov         eax,dword ptr [esi+324];TMainFormMarketSklad.DBGridEh_Ostats:TDBGridEh
 009EF72C    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009EF732    mov         edx,ebx
 009EF734    call        00676F60
 009EF739    mov         edx,9EFA1C;',0'
 009EF73E    call        TDBGridColumnEh.SetDisplayFormat
 009EF743    inc         ebx
 009EF744    dec         edi
>009EF745    jne         009EF678
 009EF74B    mov         eax,dword ptr [esi+3E4];TMainFormMarketSklad.DBGridEh_Prihods:TDBGridEh
 009EF751    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009EF757    call        TCollection.GetCount
 009EF75C    mov         edi,eax
 009EF75E    dec         edi
 009EF75F    test        edi,edi
>009EF761    jl          009EF817
 009EF767    inc         edi
 009EF768    xor         ebx,ebx
 009EF76A    mov         eax,dword ptr [esi+3E4];TMainFormMarketSklad.DBGridEh_Prihods:TDBGridEh
 009EF770    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009EF776    mov         edx,ebx
 009EF778    call        00676F60
 009EF77D    mov         eax,dword ptr [eax+40]
 009EF780    mov         edx,9EFA90;'SUMALL_INCL_NDS'
 009EF785    call        @LStrCmp
>009EF78A    je          009EF7F2
 009EF78C    mov         eax,dword ptr [esi+3E4];TMainFormMarketSklad.DBGridEh_Prihods:TDBGridEh
 009EF792    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009EF798    mov         edx,ebx
 009EF79A    call        00676F60
 009EF79F    mov         eax,dword ptr [eax+40]
 009EF7A2    mov         edx,9EFAA8;'SUMMA_OPLATS'
 009EF7A7    call        @LStrCmp
>009EF7AC    je          009EF7F2
 009EF7AE    mov         eax,dword ptr [esi+3E4];TMainFormMarketSklad.DBGridEh_Prihods:TDBGridEh
 009EF7B4    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009EF7BA    mov         edx,ebx
 009EF7BC    call        00676F60
 009EF7C1    mov         eax,dword ptr [eax+40]
 009EF7C4    mov         edx,9EFAC0;'SUMMA_DOLG'
 009EF7C9    call        @LStrCmp
>009EF7CE    je          009EF7F2
 009EF7D0    mov         eax,dword ptr [esi+3E4];TMainFormMarketSklad.DBGridEh_Prihods:TDBGridEh
 009EF7D6    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009EF7DC    mov         edx,ebx
 009EF7DE    call        00676F60
 009EF7E3    mov         eax,dword ptr [eax+40]
 009EF7E6    mov         edx,9EFAD4;'OPL_DO'
 009EF7EB    call        @LStrCmp
>009EF7F0    jne         009EF80F
 009EF7F2    mov         eax,dword ptr [esi+3E4];TMainFormMarketSklad.DBGridEh_Prihods:TDBGridEh
 009EF7F8    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009EF7FE    mov         edx,ebx
 009EF800    call        00676F60
 009EF805    mov         edx,9EFA1C;',0'
 009EF80A    call        TDBGridColumnEh.SetDisplayFormat
 009EF80F    inc         ebx
 009EF810    dec         edi
>009EF811    jne         009EF76A
 009EF817    mov         eax,dword ptr [esi+3E8];TMainFormMarketSklad.DBGridEh_Rashods:TDBGridEh
 009EF81D    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009EF823    call        TCollection.GetCount
 009EF828    mov         edi,eax
 009EF82A    dec         edi
 009EF82B    test        edi,edi
>009EF82D    jl          009EF8C1
 009EF833    inc         edi
 009EF834    xor         ebx,ebx
 009EF836    mov         eax,dword ptr [esi+3E8];TMainFormMarketSklad.DBGridEh_Rashods:TDBGridEh
 009EF83C    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009EF842    mov         edx,ebx
 009EF844    call        00676F60
 009EF849    mov         eax,dword ptr [eax+40]
 009EF84C    mov         edx,9EFA90;'SUMALL_INCL_NDS'
 009EF851    call        @LStrCmp
>009EF856    je          009EF89C
 009EF858    mov         eax,dword ptr [esi+3E8];TMainFormMarketSklad.DBGridEh_Rashods:TDBGridEh
 009EF85E    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009EF864    mov         edx,ebx
 009EF866    call        00676F60
 009EF86B    mov         eax,dword ptr [eax+40]
 009EF86E    mov         edx,9EFAA8;'SUMMA_OPLATS'
 009EF873    call        @LStrCmp
>009EF878    je          009EF89C
 009EF87A    mov         eax,dword ptr [esi+3E8];TMainFormMarketSklad.DBGridEh_Rashods:TDBGridEh
 009EF880    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009EF886    mov         edx,ebx
 009EF888    call        00676F60
 009EF88D    mov         eax,dword ptr [eax+40]
 009EF890    mov         edx,9EFAC0;'SUMMA_DOLG'
 009EF895    call        @LStrCmp
>009EF89A    jne         009EF8B9
 009EF89C    mov         eax,dword ptr [esi+3E8];TMainFormMarketSklad.DBGridEh_Rashods:TDBGridEh
 009EF8A2    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009EF8A8    mov         edx,ebx
 009EF8AA    call        00676F60
 009EF8AF    mov         edx,9EFA1C;',0'
 009EF8B4    call        TDBGridColumnEh.SetDisplayFormat
 009EF8B9    inc         ebx
 009EF8BA    dec         edi
>009EF8BB    jne         009EF836
 009EF8C1    mov         eax,dword ptr [esi+570];TMainFormMarketSklad.DBGridEhPrihDet:TDBGridEh
 009EF8C7    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009EF8CD    call        TCollection.GetCount
 009EF8D2    mov         edi,eax
 009EF8D4    dec         edi
 009EF8D5    test        edi,edi
>009EF8D7    jl          009EF98D
 009EF8DD    inc         edi
 009EF8DE    xor         ebx,ebx
 009EF8E0    mov         eax,dword ptr [esi+570];TMainFormMarketSklad.DBGridEhPrihDet:TDBGridEh
 009EF8E6    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009EF8EC    mov         edx,ebx
 009EF8EE    call        00676F60
 009EF8F3    mov         eax,dword ptr [eax+40]
 009EF8F6    mov         edx,9EFA28;'COST'
 009EF8FB    call        @LStrCmp
>009EF900    je          009EF968
 009EF902    mov         eax,dword ptr [esi+570];TMainFormMarketSklad.DBGridEhPrihDet:TDBGridEh
 009EF908    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009EF90E    mov         edx,ebx
 009EF910    call        00676F60
 009EF915    mov         eax,dword ptr [eax+40]
 009EF918    mov         edx,9EFA64;'PRICE'
 009EF91D    call        @LStrCmp
>009EF922    je          009EF968
 009EF924    mov         eax,dword ptr [esi+570];TMainFormMarketSklad.DBGridEhPrihDet:TDBGridEh
 009EF92A    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009EF930    mov         edx,ebx
 009EF932    call        00676F60
 009EF937    mov         eax,dword ptr [eax+40]
 009EF93A    mov         edx,9EFAE4;'SUM_LINE'
 009EF93F    call        @LStrCmp
>009EF944    je          009EF968
 009EF946    mov         eax,dword ptr [esi+570];TMainFormMarketSklad.DBGridEhPrihDet:TDBGridEh
 009EF94C    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009EF952    mov         edx,ebx
 009EF954    call        00676F60
 009EF959    mov         eax,dword ptr [eax+40]
 009EF95C    mov         edx,9EFAF8;'SUM_LINE_SALE'
 009EF961    call        @LStrCmp
>009EF966    jne         009EF985
 009EF968    mov         eax,dword ptr [esi+570];TMainFormMarketSklad.DBGridEhPrihDet:TDBGridEh
 009EF96E    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009EF974    mov         edx,ebx
 009EF976    call        00676F60
 009EF97B    mov         edx,9EFA1C;',0'
 009EF980    call        TDBGridColumnEh.SetDisplayFormat
 009EF985    inc         ebx
 009EF986    dec         edi
>009EF987    jne         009EF8E0
 009EF98D    mov         eax,dword ptr [esi+57C];TMainFormMarketSklad.DBGridEhRashDet:TDBGridEh
 009EF993    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009EF999    call        TCollection.GetCount
 009EF99E    mov         edi,eax
 009EF9A0    dec         edi
 009EF9A1    test        edi,edi
>009EF9A3    jl          009EFA0D
 009EF9A5    inc         edi
 009EF9A6    xor         ebx,ebx
 009EF9A8    mov         eax,dword ptr [esi+57C];TMainFormMarketSklad.DBGridEhRashDet:TDBGridEh
 009EF9AE    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009EF9B4    mov         edx,ebx
 009EF9B6    call        00676F60
 009EF9BB    mov         eax,dword ptr [eax+40]
 009EF9BE    mov         edx,9EFA28;'COST'
 009EF9C3    call        @LStrCmp
>009EF9C8    je          009EF9EC
 009EF9CA    mov         eax,dword ptr [esi+57C];TMainFormMarketSklad.DBGridEhRashDet:TDBGridEh
 009EF9D0    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009EF9D6    mov         edx,ebx
 009EF9D8    call        00676F60
 009EF9DD    mov         eax,dword ptr [eax+40]
 009EF9E0    mov         edx,9EFAE4;'SUM_LINE'
 009EF9E5    call        @LStrCmp
>009EF9EA    jne         009EFA09
 009EF9EC    mov         eax,dword ptr [esi+57C];TMainFormMarketSklad.DBGridEhRashDet:TDBGridEh
 009EF9F2    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009EF9F8    mov         edx,ebx
 009EF9FA    call        00676F60
 009EF9FF    mov         edx,9EFA1C;',0'
 009EFA04    call        TDBGridColumnEh.SetDisplayFormat
 009EFA09    inc         ebx
 009EFA0A    dec         edi
>009EFA0B    jne         009EF9A8
 009EFA0D    pop         edi
 009EFA0E    pop         esi
 009EFA0F    pop         ebx
 009EFA10    ret
*}
end;

//009EFB08
procedure TMainFormMarketSklad.FormCreate(Sender:TObject);
begin
{*
 009EFB08    push        ebp
 009EFB09    mov         ebp,esp
 009EFB0B    mov         ecx,4
 009EFB10    push        0
 009EFB12    push        0
 009EFB14    dec         ecx
>009EFB15    jne         009EFB10
 009EFB17    push        ecx
 009EFB18    push        ebx
 009EFB19    mov         ebx,eax
 009EFB1B    xor         eax,eax
 009EFB1D    push        ebp
 009EFB1E    push        9EFC69
 009EFB23    push        dword ptr fs:[eax]
 009EFB26    mov         dword ptr fs:[eax],esp
 009EFB29    mov         eax,ebx
 009EFB2B    call        TMainFormMarketSklad.GetParams
 009EFB30    lea         edx,[ebp-4]
 009EFB33    xor         eax,eax
 009EFB35    call        ParamStr
 009EFB3A    lea         eax,[ebp-0C]
 009EFB3D    call        @LStrClr
 009EFB42    push        eax
 009EFB43    lea         eax,[ebp-8]
 009EFB46    call        @LStrClr
 009EFB4B    push        eax
 009EFB4C    lea         eax,[ebp-10]
 009EFB4F    call        @LStrClr
 009EFB54    mov         edx,eax
 009EFB56    mov         eax,dword ptr [ebp-4]
 009EFB59    pop         ecx
 009EFB5A    call        009C19BC
 009EFB5F    mov         eax,0AC6608;^'0.0.0.0'
 009EFB64    mov         edx,dword ptr [ebp-10]
 009EFB67    call        @LStrAsg
 009EFB6C    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009EFB72    call        TOraQuery.GetSQL
 009EFB77    lea         edx,[ebp-14]
 009EFB7A    mov         ecx,dword ptr [eax]
 009EFB7C    call        dword ptr [ecx+1C]
 009EFB7F    mov         edx,dword ptr [ebp-14]
 009EFB82    lea         eax,[ebx+938];TMainFormMarketSklad.?f938:String
 009EFB88    call        @LStrAsg
 009EFB8D    mov         eax,dword ptr [ebx+72C];TMainFormMarketSklad.Q_OST_ITOGS:TOraQuery
 009EFB93    call        TOraQuery.GetSQL
 009EFB98    lea         edx,[ebp-18]
 009EFB9B    mov         ecx,dword ptr [eax]
 009EFB9D    call        dword ptr [ecx+1C]
 009EFBA0    mov         edx,dword ptr [ebp-18]
 009EFBA3    lea         eax,[ebx+948];TMainFormMarketSklad.?f948:String
 009EFBA9    call        @LStrAsg
 009EFBAE    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009EFBB4    call        TOraQuery.GetSQL
 009EFBB9    lea         edx,[ebp-1C]
 009EFBBC    mov         ecx,dword ptr [eax]
 009EFBBE    call        dword ptr [ecx+1C]
 009EFBC1    mov         edx,dword ptr [ebp-1C]
 009EFBC4    lea         eax,[ebx+93C];TMainFormMarketSklad.?f93C:String
 009EFBCA    call        @LStrAsg
 009EFBCF    mov         eax,dword ptr [ebx+8A0];TMainFormMarketSklad.Q_PRIH_ITOGS:TOraQuery
 009EFBD5    call        TOraQuery.GetSQL
 009EFBDA    lea         edx,[ebp-20]
 009EFBDD    mov         ecx,dword ptr [eax]
 009EFBDF    call        dword ptr [ecx+1C]
 009EFBE2    mov         edx,dword ptr [ebp-20]
 009EFBE5    lea         eax,[ebx+940];TMainFormMarketSklad.?f940:String
 009EFBEB    call        @LStrAsg
 009EFBF0    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009EFBF6    call        TOraQuery.GetSQL
 009EFBFB    lea         edx,[ebp-24]
 009EFBFE    mov         ecx,dword ptr [eax]
 009EFC00    call        dword ptr [ecx+1C]
 009EFC03    mov         edx,dword ptr [ebp-24]
 009EFC06    lea         eax,[ebx+944];TMainFormMarketSklad.?f944:String
 009EFC0C    call        @LStrAsg
 009EFC11    xor         eax,eax
 009EFC13    mov         dword ptr [ebx+968],eax;TMainFormMarketSklad.?f968:dword
 009EFC19    mov         dword ptr [ebx+96C],eax;TMainFormMarketSklad.?f96C:dword
 009EFC1F    xor         eax,eax
 009EFC21    mov         dword ptr [ebx+960],eax;TMainFormMarketSklad.?f960:dword
 009EFC27    xor         eax,eax
 009EFC29    mov         dword ptr [ebx+964],eax;TMainFormMarketSklad.?f964:dword
 009EFC2F    mov         byte ptr [ebx+9C4],0;TMainFormMarketSklad.?f9C4:byte
 009EFC36    mov         byte ptr [ebx+9C5],0;TMainFormMarketSklad.?f9C5:byte
 009EFC3D    mov         byte ptr [ebx+9C6],0;TMainFormMarketSklad.?f9C6:byte
 009EFC44    mov         dword ptr [ebx+950],0FFFFFFFF;TMainFormMarketSklad.?f950:dword
 009EFC4E    xor         eax,eax
 009EFC50    pop         edx
 009EFC51    pop         ecx
 009EFC52    pop         ecx
 009EFC53    mov         dword ptr fs:[eax],edx
 009EFC56    push        9EFC70
 009EFC5B    lea         eax,[ebp-24]
 009EFC5E    mov         edx,9
 009EFC63    call        @LStrArrayClr
 009EFC68    ret
>009EFC69    jmp         @HandleFinally
>009EFC6E    jmp         009EFC5B
 009EFC70    pop         ebx
 009EFC71    mov         esp,ebp
 009EFC73    pop         ebp
 009EFC74    ret
*}
end;

//009EFC78
procedure TMainFormMarketSklad.GetParams;
begin
{*
 009EFC78    push        ebp
 009EFC79    mov         ebp,esp
 009EFC7B    mov         ecx,6
 009EFC80    push        0
 009EFC82    push        0
 009EFC84    dec         ecx
>009EFC85    jne         009EFC80
 009EFC87    push        ecx
 009EFC88    push        ebx
 009EFC89    push        esi
 009EFC8A    push        edi
 009EFC8B    mov         dword ptr [ebp-4],eax
 009EFC8E    xor         eax,eax
 009EFC90    push        ebp
 009EFC91    push        9EFF74
 009EFC96    push        dword ptr fs:[eax]
 009EFC99    mov         dword ptr fs:[eax],esp
 009EFC9C    lea         edx,[ebp-0C]
 009EFC9F    xor         eax,eax
 009EFCA1    call        ParamStr
 009EFCA6    lea         edx,[ebp-14]
 009EFCA9    mov         eax,dword ptr [ebp-0C]
 009EFCAC    call        ExtractFilePath
 009EFCB1    mov         edx,dword ptr [ebp-14]
 009EFCB4    lea         eax,[ebp-0C]
 009EFCB7    call        @LStrLAsg
 009EFCBC    lea         eax,[ebp-10]
 009EFCBF    mov         edx,dword ptr [ebp-0C]
 009EFCC2    call        @LStrLAsg
 009EFCC7    lea         eax,[ebp-18]
 009EFCCA    mov         ecx,9EFF8C;'Params.ini'
 009EFCCF    mov         edx,dword ptr [ebp-10]
 009EFCD2    call        @LStrCat3
 009EFCD7    mov         eax,dword ptr [ebp-18]
 009EFCDA    call        FileExists
 009EFCDF    test        al,al
>009EFCE1    jne         009EFD05
 009EFCE3    push        10
 009EFCE5    mov         ecx,9EFF98
 009EFCEA    mov         edx,9EFFAC
 009EFCEF    mov         eax,[00AC721C];^Application:TApplication
 009EFCF4    mov         eax,dword ptr [eax]
 009EFCF6    call        TApplication.MessageBox
 009EFCFB    call        @Halt0
>009EFD00    jmp         009EFF59
 009EFD05    lea         eax,[ebp-1C]
 009EFD08    mov         ecx,9EFF8C;'Params.ini'
 009EFD0D    mov         edx,dword ptr [ebp-10]
 009EFD10    call        @LStrCat3
 009EFD15    mov         ecx,dword ptr [ebp-1C]
 009EFD18    mov         dl,1
 009EFD1A    mov         eax,[0044F69C];TIniFile
 009EFD1F    call        TCustomIniFile.Create;TIniFile.Create
 009EFD24    mov         dword ptr [ebp-8],eax
 009EFD27    xor         eax,eax
 009EFD29    push        ebp
 009EFD2A    push        9EFF52
 009EFD2F    push        dword ptr fs:[eax]
 009EFD32    mov         dword ptr fs:[eax],esp
 009EFD35    push        0
 009EFD37    lea         eax,[ebp-20]
 009EFD3A    push        eax
 009EFD3B    mov         ecx,9F0000;'HOST'
 009EFD40    mov         edx,9F0010;'CONNECT'
 009EFD45    mov         eax,dword ptr [ebp-8]
 009EFD48    mov         ebx,dword ptr [eax]
 009EFD4A    call        dword ptr [ebx];TIniFile.ReadString
 009EFD4C    mov         edx,dword ptr [ebp-20]
 009EFD4F    mov         eax,0AC6628;^'192.168.0.1'
 009EFD54    call        @LStrAsg
 009EFD59    push        0
 009EFD5B    lea         eax,[ebp-24]
 009EFD5E    push        eax
 009EFD5F    mov         ecx,9F0020;'DATABASE_NAME'
 009EFD64    mov         edx,9F0010;'CONNECT'
 009EFD69    mov         eax,dword ptr [ebp-8]
 009EFD6C    mov         ebx,dword ptr [eax]
 009EFD6E    call        dword ptr [ebx];TIniFile.ReadString
 009EFD70    mov         edx,dword ptr [ebp-24]
 009EFD73    mov         eax,0AC662C;^'OPTTORG_'
 009EFD78    call        @LStrAsg
 009EFD7D    push        0
 009EFD7F    lea         eax,[ebp-28]
 009EFD82    push        eax
 009EFD83    mov         ecx,9F0038;'USER_NAME'
 009EFD88    mov         edx,9F0010;'CONNECT'
 009EFD8D    mov         eax,dword ptr [ebp-8]
 009EFD90    mov         ebx,dword ptr [eax]
 009EFD92    call        dword ptr [ebx];TIniFile.ReadString
 009EFD94    mov         edx,dword ptr [ebp-28]
 009EFD97    mov         eax,0AC6630;^'OPT_USER_'
 009EFD9C    call        @LStrAsg
 009EFDA1    push        0
 009EFDA3    lea         eax,[ebp-0C]
 009EFDA6    push        eax
 009EFDA7    mov         ecx,9F004C;'USER_CARDS'
 009EFDAC    mov         edx,9F0060;'GLOBAL_PARAMS'
 009EFDB1    mov         eax,dword ptr [ebp-8]
 009EFDB4    mov         ebx,dword ptr [eax]
 009EFDB6    call        dword ptr [ebx];TIniFile.ReadString
 009EFDB8    xor         eax,eax
 009EFDBA    push        ebp
 009EFDBB    push        9EFDDD
 009EFDC0    push        dword ptr fs:[eax]
 009EFDC3    mov         dword ptr fs:[eax],esp
 009EFDC6    mov         eax,dword ptr [ebp-0C]
 009EFDC9    call        StrToInt
 009EFDCE    mov         [00AC664C],eax;gvar_00AC664C:Integer
 009EFDD3    xor         eax,eax
 009EFDD5    pop         edx
 009EFDD6    pop         ecx
 009EFDD7    pop         ecx
 009EFDD8    mov         dword ptr fs:[eax],edx
>009EFDDB    jmp         009EFDE7
>009EFDDD    jmp         @HandleAnyException
 009EFDE2    call        @DoneExcept
 009EFDE7    push        0
 009EFDE9    lea         eax,[ebp-0C]
 009EFDEC    push        eax
 009EFDED    mov         ecx,9F0078;'IS_QUESTION_SROK_GODNOSTY_BY_PRIHOD'
 009EFDF2    mov         edx,9F0060;'GLOBAL_PARAMS'
 009EFDF7    mov         eax,dword ptr [ebp-8]
 009EFDFA    mov         ebx,dword ptr [eax]
 009EFDFC    call        dword ptr [ebx];TIniFile.ReadString
 009EFDFE    xor         eax,eax
 009EFE00    push        ebp
 009EFE01    push        9EFE23
 009EFE06    push        dword ptr fs:[eax]
 009EFE09    mov         dword ptr fs:[eax],esp
 009EFE0C    mov         eax,dword ptr [ebp-0C]
 009EFE0F    call        StrToInt
 009EFE14    mov         [00AC6658],eax;gvar_00AC6658:Integer
 009EFE19    xor         eax,eax
 009EFE1B    pop         edx
 009EFE1C    pop         ecx
 009EFE1D    pop         ecx
 009EFE1E    mov         dword ptr fs:[eax],edx
>009EFE21    jmp         009EFE2D
>009EFE23    jmp         @HandleAnyException
 009EFE28    call        @DoneExcept
 009EFE2D    push        0
 009EFE2F    lea         eax,[ebp-0C]
 009EFE32    push        eax
 009EFE33    mov         ecx,9F00A4;'IS_QUESTION_SAVE_COPY_DB'
 009EFE38    mov         edx,9F0060;'GLOBAL_PARAMS'
 009EFE3D    mov         eax,dword ptr [ebp-8]
 009EFE40    mov         ebx,dword ptr [eax]
 009EFE42    call        dword ptr [ebx];TIniFile.ReadString
 009EFE44    xor         eax,eax
 009EFE46    push        ebp
 009EFE47    push        9EFE69
 009EFE4C    push        dword ptr fs:[eax]
 009EFE4F    mov         dword ptr fs:[eax],esp
 009EFE52    mov         eax,dword ptr [ebp-0C]
 009EFE55    call        StrToInt
 009EFE5A    mov         [00AC6654],eax;gvar_00AC6654:Integer
 009EFE5F    xor         eax,eax
 009EFE61    pop         edx
 009EFE62    pop         ecx
 009EFE63    pop         ecx
 009EFE64    mov         dword ptr fs:[eax],edx
>009EFE67    jmp         009EFE73
>009EFE69    jmp         @HandleAnyException
 009EFE6E    call        @DoneExcept
 009EFE73    push        0
 009EFE75    lea         eax,[ebp-0C]
 009EFE78    push        eax
 009EFE79    mov         ecx,9F00C8;'IS_FR'
 009EFE7E    mov         edx,9F00D8;'FISKAL'
 009EFE83    mov         eax,dword ptr [ebp-8]
 009EFE86    mov         ebx,dword ptr [eax]
 009EFE88    call        dword ptr [ebx];TIniFile.ReadString
 009EFE8A    xor         eax,eax
 009EFE8C    push        ebp
 009EFE8D    push        9EFEAF
 009EFE92    push        dword ptr fs:[eax]
 009EFE95    mov         dword ptr fs:[eax],esp
 009EFE98    mov         eax,dword ptr [ebp-0C]
 009EFE9B    call        StrToInt
 009EFEA0    mov         [00AC665C],eax;gvar_00AC665C:Integer
 009EFEA5    xor         eax,eax
 009EFEA7    pop         edx
 009EFEA8    pop         ecx
 009EFEA9    pop         ecx
 009EFEAA    mov         dword ptr fs:[eax],edx
>009EFEAD    jmp         009EFEB9
>009EFEAF    jmp         @HandleAnyException
 009EFEB4    call        @DoneExcept
 009EFEB9    push        0
 009EFEBB    lea         eax,[ebp-2C]
 009EFEBE    push        eax
 009EFEBF    mov         ecx,9F00E8;'DBL'
 009EFEC4    mov         edx,9F00F4;'EXPORT'
 009EFEC9    mov         eax,dword ptr [ebp-8]
 009EFECC    mov         ebx,dword ptr [eax]
 009EFECE    call        dword ptr [ebx];TIniFile.ReadString
 009EFED0    mov         edx,dword ptr [ebp-2C]
 009EFED3    mov         eax,0AC6664;gvar_00AC6664
 009EFED8    call        @LStrAsg
 009EFEDD    push        0
 009EFEDF    lea         eax,[ebp-30]
 009EFEE2    push        eax
 009EFEE3    mov         ecx,9F0104;'DBL_HOST'
 009EFEE8    mov         edx,9F00F4;'EXPORT'
 009EFEED    mov         eax,dword ptr [ebp-8]
 009EFEF0    mov         ebx,dword ptr [eax]
 009EFEF2    call        dword ptr [ebx];TIniFile.ReadString
 009EFEF4    mov         edx,dword ptr [ebp-30]
 009EFEF7    mov         eax,0AC6668;gvar_00AC6668
 009EFEFC    call        @LStrAsg
 009EFF01    push        0
 009EFF03    lea         eax,[ebp-34]
 009EFF06    push        eax
 009EFF07    mov         ecx,9F0118;'CHEK_CLOUD_DATE'
 009EFF0C    mov         edx,9F00F4;'EXPORT'
 009EFF11    mov         eax,dword ptr [ebp-8]
 009EFF14    mov         ebx,dword ptr [eax]
 009EFF16    call        dword ptr [ebx];TIniFile.ReadString
 009EFF18    mov         eax,dword ptr [ebp-34]
 009EFF1B    mov         edx,9F0130;'1'
 009EFF20    call        @LStrCmp
 009EFF25    sete        byte ptr ds:[0AC666C]
 009EFF2C    mov         eax,dword ptr [ebp-4]
 009EFF2F    add         eax,934;TMainFormMarketSklad.?f934:String
 009EFF34    mov         edx,dword ptr [ebp-10]
 009EFF37    call        @LStrAsg
 009EFF3C    xor         eax,eax
 009EFF3E    pop         edx
 009EFF3F    pop         ecx
 009EFF40    pop         ecx
 009EFF41    mov         dword ptr fs:[eax],edx
 009EFF44    push        9EFF59
 009EFF49    mov         eax,dword ptr [ebp-8]
 009EFF4C    call        TObject.Free
 009EFF51    ret
>009EFF52    jmp         @HandleFinally
>009EFF57    jmp         009EFF49
 009EFF59    xor         eax,eax
 009EFF5B    pop         edx
 009EFF5C    pop         ecx
 009EFF5D    pop         ecx
 009EFF5E    mov         dword ptr fs:[eax],edx
 009EFF61    push        9EFF7B
 009EFF66    lea         eax,[ebp-34]
 009EFF69    mov         edx,0B
 009EFF6E    call        @LStrArrayClr
 009EFF73    ret
>009EFF74    jmp         @HandleFinally
>009EFF79    jmp         009EFF66
 009EFF7B    pop         edi
 009EFF7C    pop         esi
 009EFF7D    pop         ebx
 009EFF7E    mov         esp,ebp
 009EFF80    pop         ebp
 009EFF81    ret
*}
end;

//009F0134
{*function TMainFormMarketSklad.GetSysDate:?;
begin
 009F0134    push        ebx
 009F0135    add         esp,0FFFFFFF8
 009F0138    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F013D    mov         eax,dword ptr [eax]
 009F013F    mov         ebx,dword ptr [eax+60]
 009F0142    mov         eax,ebx
 009F0144    call        TDataSet.Close
 009F0149    mov         eax,ebx
 009F014B    call        TOraQuery.GetSQL
 009F0150    mov         edx,dword ptr [eax]
 009F0152    call        dword ptr [edx+44]
 009F0155    mov         eax,ebx
 009F0157    call        TOraQuery.GetSQL
 009F015C    mov         edx,9F019C;'SELECT SYSDATE FROM DUAL'
 009F0161    mov         ecx,dword ptr [eax]
 009F0163    call        dword ptr [ecx+38]
 009F0166    mov         eax,ebx
 009F0168    call        TDataSet.Open
 009F016D    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F0172    mov         eax,dword ptr [eax]
 009F0174    mov         eax,dword ptr [eax+60]
 009F0177    mov         edx,9F01C0;'SYSDATE'
 009F017C    call        TDataSet.FieldByName
 009F0181    mov         edx,dword ptr [eax]
 009F0183    call        dword ptr [edx+50];TField.GetAsDateTime
 009F0186    fstp        qword ptr [esp]
 009F0189    wait
 009F018A    fld         qword ptr [esp]
 009F018D    pop         ecx
 009F018E    pop         edx
 009F018F    pop         ebx
 009F0190    ret
end;*}

//009F01C8
procedure TMainFormMarketSklad.CloseTimerTimer;
begin
{*
 009F01C8    push        ebx
 009F01C9    mov         ebx,eax
 009F01CB    xor         edx,edx
 009F01CD    mov         eax,dword ptr [ebx+314];TMainFormMarketSklad.CloseTimer:TTimer
 009F01D3    call        TTimer.SetEnabled
 009F01D8    mov         eax,ebx
 009F01DA    call        TCustomForm.Close
 009F01DF    pop         ebx
 009F01E0    ret
*}
end;

//009F01E4
procedure TMainFormMarketSklad.aExitExecute;
begin
{*
 009F01E4    push        ebx
 009F01E5    mov         ebx,eax
 009F01E7    xor         edx,edx
 009F01E9    mov         eax,dword ptr [ebx+91C];TMainFormMarketSklad.sSkinManager1:TsSkinManager
 009F01EF    call        TsSkinManager.SetActive
 009F01F4    mov         eax,ebx
 009F01F6    call        TCustomForm.Close
 009F01FB    pop         ebx
 009F01FC    ret
*}
end;

//009F0200
procedure TMainFormMarketSklad.N2Click(Sender:TObject);
begin
{*
 009F0200    mov         eax,[00AC6610];0x0 gvar_00AC6610
 009F0205    push        eax
 009F0206    push        1
 009F0208    mov         ecx,dword ptr ds:[0AC660C];0x0 gvar_00AC660C
 009F020E    mov         edx,dword ptr ds:[0AC6608];^'0.0.0.0'
 009F0214    mov         eax,[00AC6600];^'Модуль "Склад магазина"'
 009F0219    call        006C65AC
 009F021E    ret
*}
end;

//009F0220
procedure TMainFormMarketSklad.cbSkladClick(Sender:TObject);
begin
{*
 009F0220    mov         edx,eax
 009F0222    call        TMainFormMarketSklad.PageControl1Change
 009F0227    ret
*}
end;

//009F0228
procedure TMainFormMarketSklad.PageControl1Change;
begin
{*
 009F0228    push        ebp
 009F0229    mov         ebp,esp
 009F022B    mov         ecx,0B
 009F0230    push        0
 009F0232    push        0
 009F0234    dec         ecx
>009F0235    jne         009F0230
 009F0237    push        ebx
 009F0238    push        esi
 009F0239    push        edi
 009F023A    mov         ebx,eax
 009F023C    xor         eax,eax
 009F023E    push        ebp
 009F023F    push        9F10FF
 009F0244    push        dword ptr fs:[eax]
 009F0247    mov         dword ptr fs:[eax],esp
 009F024A    cmp         byte ptr ds:[0AC6674],0;gvar_00AC6674
>009F0251    je          009F10B2
 009F0257    mov         eax,dword ptr [ebx+2F8];TMainFormMarketSklad.PageControl1:TPageControl
 009F025D    call        TCustomTabControl.GetTabIndex
 009F0262    test        eax,eax
>009F0264    je          009F02F1
 009F026A    mov         eax,dword ptr [ebx+368];TMainFormMarketSklad.LabelDeBgn:TLabel
 009F0270    mov         dl,1
 009F0272    call        TControl.SetVisible
 009F0277    mov         eax,dword ptr [ebx+36C];TMainFormMarketSklad.LabelDeEnd:TLabel
 009F027D    mov         dl,1
 009F027F    call        TControl.SetVisible
 009F0284    mov         eax,dword ptr [ebx+370];TMainFormMarketSklad.deBgn:TDateEdit
 009F028A    mov         dl,1
 009F028C    call        TControl.SetVisible
 009F0291    mov         eax,dword ptr [ebx+374];TMainFormMarketSklad.deEnd:TDateEdit
 009F0297    mov         dl,1
 009F0299    call        TControl.SetVisible
 009F029E    mov         eax,dword ptr [ebx+424];TMainFormMarketSklad.Label3:TLabel
 009F02A4    mov         dl,1
 009F02A6    call        TControl.SetVisible
 009F02AB    mov         eax,dword ptr [ebx+8B8];TMainFormMarketSklad.lbl_FindNaklCap:TLabel
 009F02B1    mov         dl,1
 009F02B3    call        TControl.SetVisible
 009F02B8    mov         eax,dword ptr [ebx+8BC];TMainFormMarketSklad.EditFindNakl:TEdit
 009F02BE    mov         dl,1
 009F02C0    call        TControl.SetVisible
 009F02C5    mov         eax,dword ptr [ebx+8C0];TMainFormMarketSklad.btnFindNakl:TBitBtn
 009F02CB    mov         dl,1
 009F02CD    call        TControl.SetVisible
 009F02D2    mov         eax,dword ptr [ebx+8C4];TMainFormMarketSklad.btnClearFindNakl:TButton
 009F02D8    mov         dl,1
 009F02DA    call        TControl.SetVisible
 009F02DF    mov         eax,dword ptr [ebx+8C8];TMainFormMarketSklad.rg_find_nakl_type:TRadioGroup
 009F02E5    mov         dl,1
 009F02E7    call        TControl.SetVisible
>009F02EC    jmp         009F0373
 009F02F1    mov         eax,dword ptr [ebx+368];TMainFormMarketSklad.LabelDeBgn:TLabel
 009F02F7    xor         edx,edx
 009F02F9    call        TControl.SetVisible
 009F02FE    mov         eax,dword ptr [ebx+36C];TMainFormMarketSklad.LabelDeEnd:TLabel
 009F0304    xor         edx,edx
 009F0306    call        TControl.SetVisible
 009F030B    mov         eax,dword ptr [ebx+370];TMainFormMarketSklad.deBgn:TDateEdit
 009F0311    xor         edx,edx
 009F0313    call        TControl.SetVisible
 009F0318    mov         eax,dword ptr [ebx+374];TMainFormMarketSklad.deEnd:TDateEdit
 009F031E    xor         edx,edx
 009F0320    call        TControl.SetVisible
 009F0325    mov         eax,dword ptr [ebx+424];TMainFormMarketSklad.Label3:TLabel
 009F032B    xor         edx,edx
 009F032D    call        TControl.SetVisible
 009F0332    mov         eax,dword ptr [ebx+8B8];TMainFormMarketSklad.lbl_FindNaklCap:TLabel
 009F0338    xor         edx,edx
 009F033A    call        TControl.SetVisible
 009F033F    mov         eax,dword ptr [ebx+8BC];TMainFormMarketSklad.EditFindNakl:TEdit
 009F0345    xor         edx,edx
 009F0347    call        TControl.SetVisible
 009F034C    mov         eax,dword ptr [ebx+8C0];TMainFormMarketSklad.btnFindNakl:TBitBtn
 009F0352    xor         edx,edx
 009F0354    call        TControl.SetVisible
 009F0359    mov         eax,dword ptr [ebx+8C4];TMainFormMarketSklad.btnClearFindNakl:TButton
 009F035F    xor         edx,edx
 009F0361    call        TControl.SetVisible
 009F0366    mov         eax,dword ptr [ebx+8C8];TMainFormMarketSklad.rg_find_nakl_type:TRadioGroup
 009F036C    xor         edx,edx
 009F036E    call        TControl.SetVisible
 009F0373    lea         edx,[ebp-8]
 009F0376    mov         eax,dword ptr [ebx+8BC];TMainFormMarketSklad.EditFindNakl:TEdit
 009F037C    call        TControl.GetText
 009F0381    cmp         dword ptr [ebp-8],0
>009F0385    je          009F03F0
 009F0387    mov         eax,dword ptr [ebx+8C8];TMainFormMarketSklad.rg_find_nakl_type:TRadioGroup
 009F038D    mov         eax,dword ptr [eax+218];TRadioGroup.FItemIndex:Integer
 009F0393    dec         eax
>009F0394    je          009F0398
>009F0396    jmp         009F03F0
 009F0398    xor         edx,edx
 009F039A    push        ebp
 009F039B    push        9F03C6
 009F03A0    push        dword ptr fs:[edx]
 009F03A3    mov         dword ptr fs:[edx],esp
 009F03A6    lea         edx,[ebp-0C]
 009F03A9    mov         eax,dword ptr [ebx+8BC];TMainFormMarketSklad.EditFindNakl:TEdit
 009F03AF    call        TControl.GetText
 009F03B4    mov         eax,dword ptr [ebp-0C]
 009F03B7    call        StrToInt
 009F03BC    xor         eax,eax
 009F03BE    pop         edx
 009F03BF    pop         ecx
 009F03C0    pop         ecx
 009F03C1    mov         dword ptr fs:[eax],edx
>009F03C4    jmp         009F03F0
>009F03C6    jmp         @HandleOnException
 009F03CB    dd          1
 009F03CF    dd          00408E24;Exception
 009F03D3    dd          009F03D7
 009F03D7    mov         eax,9F1118;'Не корректный номер накладной!'
 009F03DC    call        ShowMessage
 009F03E1    call        @DoneExcept
>009F03E6    jmp         009F10B2
 009F03EB    call        @DoneExcept
 009F03F0    mov         ecx,ebx
 009F03F2    mov         dl,1
 009F03F4    mov         eax,[0079CEB4];TFormProcess
 009F03F9    call        TCustomForm.Create;TFormProcess.Create
 009F03FE    mov         dword ptr [ebp-4],eax
 009F0401    xor         eax,eax
 009F0403    push        ebp
 009F0404    push        9F10AB
 009F0409    push        dword ptr fs:[eax]
 009F040C    mov         dword ptr fs:[eax],esp
 009F040F    mov         eax,dword ptr [ebp-4]
 009F0412    mov         eax,dword ptr [eax+300];TFormProcess.LBL_MESSAGE:TLabel
 009F0418    mov         edx,9F1140;'Идет обработка данных!'
 009F041D    call        TControl.SetText
 009F0422    mov         eax,dword ptr [ebp-4]
 009F0425    mov         eax,dword ptr [eax+2FC];TFormProcess.Gauge1:TGauge
 009F042B    xor         edx,edx
 009F042D    call        TControl.SetVisible
 009F0432    mov         eax,dword ptr [ebp-4]
 009F0435    call        TCustomForm.Show
 009F043A    mov         eax,[00AC721C];^Application:TApplication
 009F043F    mov         eax,dword ptr [eax]
 009F0441    call        TApplication.ProcessMessages
 009F0446    mov         eax,dword ptr [ebx+2F8];TMainFormMarketSklad.PageControl1:TPageControl
 009F044C    call        TCustomTabControl.GetTabIndex
 009F0451    sub         eax,1
>009F0454    jb          009F0468
>009F0456    je          009F0966
 009F045C    dec         eax
>009F045D    je          009F0E67
>009F0463    jmp         009F1095
 009F0468    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F046E    call        TDataSet.Close
 009F0473    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F0479    call        TOraQuery.GetSQL
 009F047E    mov         edx,dword ptr [eax]
 009F0480    call        dword ptr [edx+44]
 009F0483    mov         eax,dword ptr [ebx+72C];TMainFormMarketSklad.Q_OST_ITOGS:TOraQuery
 009F0489    call        TDataSet.Close
 009F048E    mov         eax,dword ptr [ebx+72C];TMainFormMarketSklad.Q_OST_ITOGS:TOraQuery
 009F0494    call        TOraQuery.GetSQL
 009F0499    mov         edx,dword ptr [eax]
 009F049B    call        dword ptr [edx+44]
 009F049E    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F04A4    call        TOraQuery.GetSQL
 009F04A9    mov         edx,dword ptr [ebx+938];TMainFormMarketSklad.?f938:String
 009F04AF    mov         ecx,dword ptr [eax]
 009F04B1    call        dword ptr [ecx+2C]
 009F04B4    mov         eax,dword ptr [ebx+72C];TMainFormMarketSklad.Q_OST_ITOGS:TOraQuery
 009F04BA    call        TOraQuery.GetSQL
 009F04BF    mov         edx,dword ptr [ebx+948];TMainFormMarketSklad.?f948:String
 009F04C5    mov         ecx,dword ptr [eax]
 009F04C7    call        dword ptr [ecx+2C]
 009F04CA    mov         eax,dword ptr [ebx+4A4];TMainFormMarketSklad.cbGroups:TDBLookupComboBox
 009F04D0    cmp         dword ptr [eax+268],0;TDBLookupComboBox.FText:String
>009F04D7    je          009F0555
 009F04D9    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F04DF    call        TOraQuery.GetSQL
 009F04E4    mov         edx,9F1160;'AND SO.ID_GR=:ID_GR'
 009F04E9    mov         ecx,dword ptr [eax]
 009F04EB    call        dword ptr [ecx+38]
 009F04EE    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F04F4    mov         edx,9F117C;'ID_GR'
 009F04F9    call        006210D4
 009F04FE    push        eax
 009F04FF    mov         eax,dword ptr [ebx+4A4];TMainFormMarketSklad.cbGroups:TDBLookupComboBox
 009F0505    add         eax,240;TDBLookupComboBox.FKeyValue:Variant
 009F050A    call        @VarToInteger
 009F050F    mov         edx,eax
 009F0511    pop         eax
 009F0512    mov         ecx,dword ptr [eax]
 009F0514    call        dword ptr [ecx+68]
 009F0517    mov         eax,dword ptr [ebx+72C];TMainFormMarketSklad.Q_OST_ITOGS:TOraQuery
 009F051D    call        TOraQuery.GetSQL
 009F0522    mov         edx,9F1160;'AND SO.ID_GR=:ID_GR'
 009F0527    mov         ecx,dword ptr [eax]
 009F0529    call        dword ptr [ecx+38]
 009F052C    mov         eax,dword ptr [ebx+72C];TMainFormMarketSklad.Q_OST_ITOGS:TOraQuery
 009F0532    mov         edx,9F117C;'ID_GR'
 009F0537    call        006210D4
 009F053C    push        eax
 009F053D    mov         eax,dword ptr [ebx+4A4];TMainFormMarketSklad.cbGroups:TDBLookupComboBox
 009F0543    add         eax,240;TDBLookupComboBox.FKeyValue:Variant
 009F0548    call        @VarToInteger
 009F054D    mov         edx,eax
 009F054F    pop         eax
 009F0550    mov         ecx,dword ptr [eax]
 009F0552    call        dword ptr [ecx+68]
 009F0555    lea         edx,[ebp-10]
 009F0558    mov         eax,dword ptr [ebx+3A4];TMainFormMarketSklad.EditFind:TEdit
 009F055E    call        TControl.GetText
 009F0563    cmp         dword ptr [ebp-10],0
>009F0567    je          009F06B3
 009F056D    mov         eax,dword ptr [ebx+560];TMainFormMarketSklad.rg_find:TRadioGroup
 009F0573    mov         eax,dword ptr [eax+218];TRadioGroup.FItemIndex:Integer
 009F0579    sub         eax,1
>009F057C    jb          009F058C
>009F057E    je          009F05F1
 009F0580    dec         eax
>009F0581    je          009F0653
>009F0587    jmp         009F06B3
 009F058C    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F0592    call        TOraQuery.GetSQL
 009F0597    mov         edx,9F118C;'AND UPPER(SO.NAME_NOM) LIKE '%' || :SUBSTR_FIND || '%' '
 009F059C    mov         ecx,dword ptr [eax]
 009F059E    call        dword ptr [ecx+38]
 009F05A1    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F05A7    mov         edx,9F11CC;'SUBSTR_FIND'
 009F05AC    call        006210D4
 009F05B1    mov         edx,dword ptr [ebx+94C];TMainFormMarketSklad.?f94C:String
 009F05B7    mov         ecx,dword ptr [eax]
 009F05B9    call        dword ptr [ecx+48]
 009F05BC    mov         eax,dword ptr [ebx+72C];TMainFormMarketSklad.Q_OST_ITOGS:TOraQuery
 009F05C2    call        TOraQuery.GetSQL
 009F05C7    mov         edx,9F118C;'AND UPPER(SO.NAME_NOM) LIKE '%' || :SUBSTR_FIND || '%' '
 009F05CC    mov         ecx,dword ptr [eax]
 009F05CE    call        dword ptr [ecx+38]
 009F05D1    mov         eax,dword ptr [ebx+72C];TMainFormMarketSklad.Q_OST_ITOGS:TOraQuery
 009F05D7    mov         edx,9F11CC;'SUBSTR_FIND'
 009F05DC    call        006210D4
 009F05E1    mov         edx,dword ptr [ebx+94C];TMainFormMarketSklad.?f94C:String
 009F05E7    mov         ecx,dword ptr [eax]
 009F05E9    call        dword ptr [ecx+48]
>009F05EC    jmp         009F06B3
 009F05F1    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F05F7    call        TOraQuery.GetSQL
 009F05FC    mov         edx,9F11E0;'AND SO.ARTICLE=:SUBSTR_FIND '
 009F0601    mov         ecx,dword ptr [eax]
 009F0603    call        dword ptr [ecx+38]
 009F0606    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F060C    mov         edx,9F11CC;'SUBSTR_FIND'
 009F0611    call        006210D4
 009F0616    mov         edx,dword ptr [ebx+94C];TMainFormMarketSklad.?f94C:String
 009F061C    mov         ecx,dword ptr [eax]
 009F061E    call        dword ptr [ecx+48]
 009F0621    mov         eax,dword ptr [ebx+72C];TMainFormMarketSklad.Q_OST_ITOGS:TOraQuery
 009F0627    call        TOraQuery.GetSQL
 009F062C    mov         edx,9F11E0;'AND SO.ARTICLE=:SUBSTR_FIND '
 009F0631    mov         ecx,dword ptr [eax]
 009F0633    call        dword ptr [ecx+38]
 009F0636    mov         eax,dword ptr [ebx+72C];TMainFormMarketSklad.Q_OST_ITOGS:TOraQuery
 009F063C    mov         edx,9F11CC;'SUBSTR_FIND'
 009F0641    call        006210D4
 009F0646    mov         edx,dword ptr [ebx+94C];TMainFormMarketSklad.?f94C:String
 009F064C    mov         ecx,dword ptr [eax]
 009F064E    call        dword ptr [ecx+48]
>009F0651    jmp         009F06B3
 009F0653    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F0659    call        TOraQuery.GetSQL
 009F065E    mov         edx,9F1208;'AND SO.ID_NOM=:SUBSTR_FIND '
 009F0663    mov         ecx,dword ptr [eax]
 009F0665    call        dword ptr [ecx+38]
 009F0668    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F066E    mov         edx,9F11CC;'SUBSTR_FIND'
 009F0673    call        006210D4
 009F0678    mov         edx,dword ptr [ebx+94C];TMainFormMarketSklad.?f94C:String
 009F067E    mov         ecx,dword ptr [eax]
 009F0680    call        dword ptr [ecx+48]
 009F0683    mov         eax,dword ptr [ebx+72C];TMainFormMarketSklad.Q_OST_ITOGS:TOraQuery
 009F0689    call        TOraQuery.GetSQL
 009F068E    mov         edx,9F1208;'AND SO.ID_NOM=:SUBSTR_FIND '
 009F0693    mov         ecx,dword ptr [eax]
 009F0695    call        dword ptr [ecx+38]
 009F0698    mov         eax,dword ptr [ebx+72C];TMainFormMarketSklad.Q_OST_ITOGS:TOraQuery
 009F069E    mov         edx,9F11CC;'SUBSTR_FIND'
 009F06A3    call        006210D4
 009F06A8    mov         edx,dword ptr [ebx+94C];TMainFormMarketSklad.?f94C:String
 009F06AE    mov         ecx,dword ptr [eax]
 009F06B0    call        dword ptr [ecx+48]
 009F06B3    mov         eax,dword ptr [ebx+3B0];TMainFormMarketSklad.chbShowZerrows:TCheckBox
 009F06B9    mov         edx,dword ptr [eax]
 009F06BB    call        dword ptr [edx+0C8];TCustomCheckBox.GetChecked
 009F06C1    test        al,al
>009F06C3    je          009F06EF
 009F06C5    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F06CB    call        TOraQuery.GetSQL
 009F06D0    mov         edx,9F122C;'AND SO.AMT_OSTAT=0'
 009F06D5    mov         ecx,dword ptr [eax]
 009F06D7    call        dword ptr [ecx+38]
 009F06DA    mov         eax,dword ptr [ebx+72C];TMainFormMarketSklad.Q_OST_ITOGS:TOraQuery
 009F06E0    call        TOraQuery.GetSQL
 009F06E5    mov         edx,9F122C;'AND SO.AMT_OSTAT=0'
 009F06EA    mov         ecx,dword ptr [eax]
 009F06EC    call        dword ptr [ecx+38]
 009F06EF    mov         eax,dword ptr [ebx+784];TMainFormMarketSklad.chbShowByMinOstat:TCheckBox
 009F06F5    mov         edx,dword ptr [eax]
 009F06F7    call        dword ptr [edx+0C8];TCustomCheckBox.GetChecked
 009F06FD    test        al,al
>009F06FF    je          009F072B
 009F0701    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F0707    call        TOraQuery.GetSQL
 009F070C    mov         edx,9F1248;'AND SO.AMT_OSTAT<SO.MINIM_ZAPAS'
 009F0711    mov         ecx,dword ptr [eax]
 009F0713    call        dword ptr [ecx+38]
 009F0716    mov         eax,dword ptr [ebx+72C];TMainFormMarketSklad.Q_OST_ITOGS:TOraQuery
 009F071C    call        TOraQuery.GetSQL
 009F0721    mov         edx,9F1248;'AND SO.AMT_OSTAT<SO.MINIM_ZAPAS'
 009F0726    mov         ecx,dword ptr [eax]
 009F0728    call        dword ptr [ecx+38]
 009F072B    mov         eax,dword ptr [ebx+780];TMainFormMarketSklad.chbSelectBySrokGodnosty:TCheckBox
 009F0731    mov         edx,dword ptr [eax]
 009F0733    call        dword ptr [edx+0C8];TCustomCheckBox.GetChecked
 009F0739    test        al,al
>009F073B    je          009F0767
 009F073D    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F0743    call        TOraQuery.GetSQL
 009F0748    mov         edx,9F1270;'AND SO.MIN_SROK_GODNOSTY-TRUNC(SYSDATE)<=SO.CNT_DAYS_SROKG_MAX'
 009F074D    mov         ecx,dword ptr [eax]
 009F074F    call        dword ptr [ecx+38]
 009F0752    mov         eax,dword ptr [ebx+72C];TMainFormMarketSklad.Q_OST_ITOGS:TOraQuery
 009F0758    call        TOraQuery.GetSQL
 009F075D    mov         edx,9F1270;'AND SO.MIN_SROK_GODNOSTY-TRUNC(SYSDATE)<=SO.CNT_DAYS_SROKG_MAX'
 009F0762    mov         ecx,dword ptr [eax]
 009F0764    call        dword ptr [ecx+38]
 009F0767    mov         eax,dword ptr [ebx+85C];TMainFormMarketSklad.chbIzNoZeroOstats:TCheckBox
 009F076D    mov         edx,dword ptr [eax]
 009F076F    call        dword ptr [edx+0C8];TCustomCheckBox.GetChecked
 009F0775    test        al,al
>009F0777    je          009F07A3
 009F0779    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F077F    call        TOraQuery.GetSQL
 009F0784    mov         edx,9F12B8;'AND SO.AMT_OSTAT>0'
 009F0789    mov         ecx,dword ptr [eax]
 009F078B    call        dword ptr [ecx+38]
 009F078E    mov         eax,dword ptr [ebx+72C];TMainFormMarketSklad.Q_OST_ITOGS:TOraQuery
 009F0794    call        TOraQuery.GetSQL
 009F0799    mov         edx,9F12B8;'AND SO.AMT_OSTAT>0'
 009F079E    mov         ecx,dword ptr [eax]
 009F07A0    call        dword ptr [ecx+38]
 009F07A3    mov         eax,dword ptr [ebx+828];TMainFormMarketSklad.chbIsSortDsable:TCheckBox
 009F07A9    mov         edx,dword ptr [eax]
 009F07AB    call        dword ptr [edx+0C8];TCustomCheckBox.GetChecked
 009F07B1    test        al,al
>009F07B3    jne         009F0914
 009F07B9    mov         eax,dword ptr [ebx+5F0];TMainFormMarketSklad.rgSort:TRadioGroup
 009F07BF    mov         eax,dword ptr [eax+218];TRadioGroup.FItemIndex:Integer
 009F07C5    cmp         eax,9
>009F07C8    ja          009F08ED
 009F07CE    jmp         dword ptr [eax*4+9F07D5]
 009F07CE    dd          009F07FD
 009F07CE    dd          009F0817
 009F07CE    dd          009F0831
 009F07CE    dd          009F084B
 009F07CE    dd          009F0865
 009F07CE    dd          009F087C
 009F07CE    dd          009F0893
 009F07CE    dd          009F08AA
 009F07CE    dd          009F08C1
 009F07CE    dd          009F08D8
 009F07FD    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F0803    call        TOraQuery.GetSQL
 009F0808    mov         edx,9F12D4;'ORDER BY SO.NAME_GROUP, SO.NAME_NOM'
 009F080D    mov         ecx,dword ptr [eax]
 009F080F    call        dword ptr [ecx+38]
>009F0812    jmp         009F08ED
 009F0817    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F081D    call        TOraQuery.GetSQL
 009F0822    mov         edx,9F1300;'ORDER BY SO.ARTICLE'
 009F0827    mov         ecx,dword ptr [eax]
 009F0829    call        dword ptr [ecx+38]
>009F082C    jmp         009F08ED
 009F0831    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F0837    call        TOraQuery.GetSQL
 009F083C    mov         edx,9F131C;'ORDER BY SO.NAME_ED'
 009F0841    mov         ecx,dword ptr [eax]
 009F0843    call        dword ptr [ecx+38]
>009F0846    jmp         009F08ED
 009F084B    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F0851    call        TOraQuery.GetSQL
 009F0856    mov         edx,9F1338;'ORDER BY SO.AMT_OSTAT'
 009F085B    mov         ecx,dword ptr [eax]
 009F085D    call        dword ptr [ecx+38]
>009F0860    jmp         009F08ED
 009F0865    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F086B    call        TOraQuery.GetSQL
 009F0870    mov         edx,9F1358;'ORDER BY SO.COST'
 009F0875    mov         ecx,dword ptr [eax]
 009F0877    call        dword ptr [ecx+38]
>009F087A    jmp         009F08ED
 009F087C    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F0882    call        TOraQuery.GetSQL
 009F0887    mov         edx,9F1374;'ORDER BY SO.SUM_OST_BY_COST'
 009F088C    mov         ecx,dword ptr [eax]
 009F088E    call        dword ptr [ecx+38]
>009F0891    jmp         009F08ED
 009F0893    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F0899    call        TOraQuery.GetSQL
 009F089E    mov         edx,9F1398;'ORDER BY SO.PRICE'
 009F08A3    mov         ecx,dword ptr [eax]
 009F08A5    call        dword ptr [ecx+38]
>009F08A8    jmp         009F08ED
 009F08AA    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F08B0    call        TOraQuery.GetSQL
 009F08B5    mov         edx,9F13B4;'ORDER BY SO.SUM_OST_BY_PRICE'
 009F08BA    mov         ecx,dword ptr [eax]
 009F08BC    call        dword ptr [ecx+38]
>009F08BF    jmp         009F08ED
 009F08C1    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F08C7    call        TOraQuery.GetSQL
 009F08CC    mov         edx,9F13DC;'ORDER BY SO.MINIM_ZAPAS'
 009F08D1    mov         ecx,dword ptr [eax]
 009F08D3    call        dword ptr [ecx+38]
>009F08D6    jmp         009F08ED
 009F08D8    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F08DE    call        TOraQuery.GetSQL
 009F08E3    mov         edx,9F13FC;'ORDER BY SO.MIN_SROK_GODNOSTY'
 009F08E8    mov         ecx,dword ptr [eax]
 009F08EA    call        dword ptr [ecx+38]
 009F08ED    mov         eax,dword ptr [ebx+788];TMainFormMarketSklad.chbIsSortDesc:TCheckBox
 009F08F3    mov         edx,dword ptr [eax]
 009F08F5    call        dword ptr [edx+0C8];TCustomCheckBox.GetChecked
 009F08FB    test        al,al
>009F08FD    je          009F0914
 009F08FF    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F0905    call        TOraQuery.GetSQL
 009F090A    mov         edx,9F1424;' DESC'
 009F090F    mov         ecx,dword ptr [eax]
 009F0911    call        dword ptr [ecx+38]
 009F0914    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F091A    call        TOraQuery.GetSQL
 009F091F    lea         edx,[ebp-14]
 009F0922    mov         ecx,dword ptr [eax]
 009F0924    call        dword ptr [ecx+1C]
 009F0927    mov         edx,dword ptr [ebp-14]
 009F092A    mov         eax,dword ptr [ebx+824];TMainFormMarketSklad.Memo1:TMemo
 009F0930    call        TControl.SetText
 009F0935    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F093B    call        TDataSet.Open
 009F0940    mov         eax,dword ptr [ebx+72C];TMainFormMarketSklad.Q_OST_ITOGS:TOraQuery
 009F0946    call        TDataSet.Open
 009F094B    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F0951    call        TDataSet.Close
 009F0956    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F095C    call        TDataSet.Close
>009F0961    jmp         009F1095
 009F0966    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F096C    call        TDataSet.GetActive
 009F0971    test        al,al
>009F0973    je          009F098E
 009F0975    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F097B    mov         edx,9F1434;'ID'
 009F0980    call        TDataSet.FieldByName
 009F0985    mov         edx,dword ptr [eax]
 009F0987    call        dword ptr [edx+58];TField.GetAsInteger
 009F098A    mov         esi,eax
>009F098C    jmp         009F0991
 009F098E    or          esi,0FFFFFFFF
 009F0991    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F0997    call        TDataSet.Close
 009F099C    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F09A2    call        TOraQuery.GetSQL
 009F09A7    mov         edx,dword ptr [eax]
 009F09A9    call        dword ptr [edx+44]
 009F09AC    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F09B2    call        TOraQuery.GetSQL
 009F09B7    mov         edx,dword ptr [ebx+93C];TMainFormMarketSklad.?f93C:String
 009F09BD    mov         ecx,dword ptr [eax]
 009F09BF    call        dword ptr [ecx+2C]
 009F09C2    lea         edx,[ebp-18]
 009F09C5    mov         eax,dword ptr [ebx+8BC];TMainFormMarketSklad.EditFindNakl:TEdit
 009F09CB    call        TControl.GetText
 009F09D0    cmp         dword ptr [ebp-18],0
>009F09D4    je          009F0A6B
 009F09DA    mov         eax,dword ptr [ebx+8C8];TMainFormMarketSklad.rg_find_nakl_type:TRadioGroup
 009F09E0    mov         eax,dword ptr [eax+218];TRadioGroup.FItemIndex:Integer
 009F09E6    sub         eax,1
>009F09E9    jb          009F09EF
>009F09EB    je          009F0A2E
>009F09ED    jmp         009F0A6B
 009F09EF    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F09F5    call        TOraQuery.GetSQL
 009F09FA    mov         edx,9F1440;'AND UPPER(PN.NAME_KL_CEH) LIKE '%' || :SUBSTR_FIND || '%''
 009F09FF    mov         ecx,dword ptr [eax]
 009F0A01    call        dword ptr [ecx+38]
 009F0A04    lea         edx,[ebp-1C]
 009F0A07    mov         eax,dword ptr [ebx+8BC];TMainFormMarketSklad.EditFindNakl:TEdit
 009F0A0D    call        TControl.GetText
 009F0A12    mov         eax,dword ptr [ebp-1C]
 009F0A15    push        eax
 009F0A16    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F0A1C    mov         edx,9F11CC;'SUBSTR_FIND'
 009F0A21    call        006210D4
 009F0A26    pop         edx
 009F0A27    mov         ecx,dword ptr [eax]
 009F0A29    call        dword ptr [ecx+48]
>009F0A2C    jmp         009F0A6B
 009F0A2E    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F0A34    call        TOraQuery.GetSQL
 009F0A39    mov         edx,9F1484;'AND PN.NUM_OPER=:NUM_OPER'
 009F0A3E    mov         ecx,dword ptr [eax]
 009F0A40    call        dword ptr [ecx+38]
 009F0A43    lea         edx,[ebp-20]
 009F0A46    mov         eax,dword ptr [ebx+8BC];TMainFormMarketSklad.EditFindNakl:TEdit
 009F0A4C    call        TControl.GetText
 009F0A51    mov         eax,dword ptr [ebp-20]
 009F0A54    push        eax
 009F0A55    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F0A5B    mov         edx,9F14A8;'NUM_OPER'
 009F0A60    call        006210D4
 009F0A65    pop         edx
 009F0A66    mov         ecx,dword ptr [eax]
 009F0A68    call        dword ptr [ecx+48]
 009F0A6B    mov         eax,dword ptr [ebx+4D0];TMainFormMarketSklad.rgPrihIsProv:TRadioGroup
 009F0A71    mov         eax,dword ptr [eax+218];TRadioGroup.FItemIndex:Integer
 009F0A77    dec         eax
>009F0A78    je          009F0A7F
 009F0A7A    dec         eax
>009F0A7B    je          009F0A96
>009F0A7D    jmp         009F0AAB
 009F0A7F    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F0A85    call        TOraQuery.GetSQL
 009F0A8A    mov         edx,9F14BC;'AND PN.IS_PROV=1'
 009F0A8F    mov         ecx,dword ptr [eax]
 009F0A91    call        dword ptr [ecx+38]
>009F0A94    jmp         009F0AAB
 009F0A96    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F0A9C    call        TOraQuery.GetSQL
 009F0AA1    mov         edx,9F14D8;'AND PN.IS_PROV=0'
 009F0AA6    mov         ecx,dword ptr [eax]
 009F0AA8    call        dword ptr [ecx+38]
 009F0AAB    mov         eax,dword ptr [ebx+604];TMainFormMarketSklad.rgIsOplacheno:TRadioGroup
 009F0AB1    mov         eax,dword ptr [eax+218];TRadioGroup.FItemIndex:Integer
 009F0AB7    dec         eax
>009F0AB8    je          009F0ABF
 009F0ABA    dec         eax
>009F0ABB    je          009F0AD6
>009F0ABD    jmp         009F0AEB
 009F0ABF    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F0AC5    call        TOraQuery.GetSQL
 009F0ACA    mov         edx,9F14F4;'AND PN.SUMMA_DOLG=0'
 009F0ACF    mov         ecx,dword ptr [eax]
 009F0AD1    call        dword ptr [ecx+38]
>009F0AD4    jmp         009F0AEB
 009F0AD6    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F0ADC    call        TOraQuery.GetSQL
 009F0AE1    mov         edx,9F1510;'AND PN.SUMMA_DOLG>0'
 009F0AE6    mov         ecx,dword ptr [eax]
 009F0AE8    call        dword ptr [ecx+38]
 009F0AEB    mov         eax,dword ptr [ebx+74C];TMainFormMarketSklad.rgOpTypeSelect:TRadioGroup
 009F0AF1    mov         eax,dword ptr [eax+218];TRadioGroup.FItemIndex:Integer
 009F0AF7    dec         eax
>009F0AF8    je          009F0AFF
 009F0AFA    dec         eax
>009F0AFB    je          009F0B16
>009F0AFD    jmp         009F0B2B
 009F0AFF    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F0B05    call        TOraQuery.GetSQL
 009F0B0A    mov         edx,9F152C;'AND PN.ID_OPER_TYPE=2'
 009F0B0F    mov         ecx,dword ptr [eax]
 009F0B11    call        dword ptr [ecx+38]
>009F0B14    jmp         009F0B2B
 009F0B16    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F0B1C    call        TOraQuery.GetSQL
 009F0B21    mov         edx,9F154C;'AND PN.ID_OPER_TYPE=5'
 009F0B26    mov         ecx,dword ptr [eax]
 009F0B28    call        dword ptr [ecx+38]
 009F0B2B    mov         eax,dword ptr [ebx+8E4];TMainFormMarketSklad.rgFilter4:TRadioGroup
 009F0B31    mov         eax,dword ptr [eax+218];TRadioGroup.FItemIndex:Integer
 009F0B37    dec         eax
>009F0B38    je          009F0B42
 009F0B3A    dec         eax
>009F0B3B    je          009F0B59
 009F0B3D    dec         eax
>009F0B3E    je          009F0B70
>009F0B40    jmp         009F0B85
 009F0B42    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F0B48    call        TOraQuery.GetSQL
 009F0B4D    mov         edx,9F156C;'AND (PN.VOZVRAT_TO_KASSA_NUM IS NULL) AND (PN.ID_REVIZ IS NULL)'
 009F0B52    mov         ecx,dword ptr [eax]
 009F0B54    call        dword ptr [ecx+38]
>009F0B57    jmp         009F0B85
 009F0B59    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F0B5F    call        TOraQuery.GetSQL
 009F0B64    mov         edx,9F15B4;'AND (PN.VOZVRAT_TO_KASSA_NUM IS NOT NULL) AND (PN.ID_REVIZ IS NULL)'
 009F0B69    mov         ecx,dword ptr [eax]
 009F0B6B    call        dword ptr [ecx+38]
>009F0B6E    jmp         009F0B85
 009F0B70    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F0B76    call        TOraQuery.GetSQL
 009F0B7B    mov         edx,9F1600;'AND (PN.VOZVRAT_TO_KASSA_NUM IS NULL) AND (PN.ID_REVIZ IS NOT NULL)'
 009F0B80    mov         ecx,dword ptr [eax]
 009F0B82    call        dword ptr [ecx+38]
 009F0B85    mov         eax,dword ptr [ebx+608];TMainFormMarketSklad.rgSortPrihs:TRadioGroup
 009F0B8B    mov         eax,dword ptr [eax+218];TRadioGroup.FItemIndex:Integer
 009F0B91    sub         eax,1
>009F0B94    jb          009F0B9A
>009F0B96    je          009F0BB1
>009F0B98    jmp         009F0BC6
 009F0B9A    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F0BA0    call        TOraQuery.GetSQL
 009F0BA5    mov         edx,9F164C;'ORDER BY PN.DATE_OPER,PN.DATE_CRE'
 009F0BAA    mov         ecx,dword ptr [eax]
 009F0BAC    call        dword ptr [ecx+38]
>009F0BAF    jmp         009F0BC6
 009F0BB1    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F0BB7    call        TOraQuery.GetSQL
 009F0BBC    mov         edx,9F1678;'ORDER BY PN.NAME_OP_TYPE'
 009F0BC1    mov         ecx,dword ptr [eax]
 009F0BC3    call        dword ptr [ecx+38]
 009F0BC6    mov         eax,dword ptr [ebx+370];TMainFormMarketSklad.deBgn:TDateEdit
 009F0BCC    call        006A90E4
 009F0BD1    add         esp,0FFFFFFF8
 009F0BD4    fstp        qword ptr [esp]
 009F0BD7    wait
 009F0BD8    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F0BDE    mov         edx,9F169C;'DATE_BGN'
 009F0BE3    call        006210D4
 009F0BE8    call        TParam.SetAsDate
 009F0BED    mov         eax,dword ptr [ebx+374];TMainFormMarketSklad.deEnd:TDateEdit
 009F0BF3    call        006A90E4
 009F0BF8    add         esp,0FFFFFFF8
 009F0BFB    fstp        qword ptr [esp]
 009F0BFE    wait
 009F0BFF    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F0C05    mov         edx,9F16B0;'DATE_END'
 009F0C0A    call        006210D4
 009F0C0F    call        TParam.SetAsDate
 009F0C14    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F0C1A    call        TDataSet.Open
 009F0C1F    cmp         esi,0FFFFFFFF
>009F0C22    jne         009F0C31
 009F0C24    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F0C2A    call        TDataSet.Last
>009F0C2F    jmp         009F0C59
 009F0C31    mov         al,[009F16BC];0x0 gvar_009F16BC
 009F0C36    push        eax
 009F0C37    lea         eax,[ebp-30]
 009F0C3A    mov         edx,esi
 009F0C3C    mov         cl,0FC
 009F0C3E    call        @VarFromInt
 009F0C43    lea         ecx,[ebp-30]
 009F0C46    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F0C4C    mov         edx,9F1434;'ID'
 009F0C51    mov         esi,dword ptr [eax]
 009F0C53    call        dword ptr [esi+244];TMemDataSet.Locate
 009F0C59    mov         eax,dword ptr [ebx+8A0];TMainFormMarketSklad.Q_PRIH_ITOGS:TOraQuery
 009F0C5F    call        TDataSet.Close
 009F0C64    mov         eax,dword ptr [ebx+8A0];TMainFormMarketSklad.Q_PRIH_ITOGS:TOraQuery
 009F0C6A    call        TOraQuery.GetSQL
 009F0C6F    mov         edx,dword ptr [eax]
 009F0C71    call        dword ptr [edx+44]
 009F0C74    mov         eax,dword ptr [ebx+8A0];TMainFormMarketSklad.Q_PRIH_ITOGS:TOraQuery
 009F0C7A    call        TOraQuery.GetSQL
 009F0C7F    mov         edx,dword ptr [ebx+940];TMainFormMarketSklad.?f940:String
 009F0C85    mov         ecx,dword ptr [eax]
 009F0C87    call        dword ptr [ecx+2C]
 009F0C8A    lea         edx,[ebp-34]
 009F0C8D    mov         eax,dword ptr [ebx+8BC];TMainFormMarketSklad.EditFindNakl:TEdit
 009F0C93    call        TControl.GetText
 009F0C98    cmp         dword ptr [ebp-34],0
>009F0C9C    je          009F0D33
 009F0CA2    mov         eax,dword ptr [ebx+8C8];TMainFormMarketSklad.rg_find_nakl_type:TRadioGroup
 009F0CA8    mov         eax,dword ptr [eax+218];TRadioGroup.FItemIndex:Integer
 009F0CAE    sub         eax,1
>009F0CB1    jb          009F0CB7
>009F0CB3    je          009F0CF6
>009F0CB5    jmp         009F0D33
 009F0CB7    mov         eax,dword ptr [ebx+8A0];TMainFormMarketSklad.Q_PRIH_ITOGS:TOraQuery
 009F0CBD    call        TOraQuery.GetSQL
 009F0CC2    mov         edx,9F1440;'AND UPPER(PN.NAME_KL_CEH) LIKE '%' || :SUBSTR_FIND || '%''
 009F0CC7    mov         ecx,dword ptr [eax]
 009F0CC9    call        dword ptr [ecx+38]
 009F0CCC    lea         edx,[ebp-38]
 009F0CCF    mov         eax,dword ptr [ebx+8BC];TMainFormMarketSklad.EditFindNakl:TEdit
 009F0CD5    call        TControl.GetText
 009F0CDA    mov         eax,dword ptr [ebp-38]
 009F0CDD    push        eax
 009F0CDE    mov         eax,dword ptr [ebx+8A0];TMainFormMarketSklad.Q_PRIH_ITOGS:TOraQuery
 009F0CE4    mov         edx,9F11CC;'SUBSTR_FIND'
 009F0CE9    call        006210D4
 009F0CEE    pop         edx
 009F0CEF    mov         ecx,dword ptr [eax]
 009F0CF1    call        dword ptr [ecx+48]
>009F0CF4    jmp         009F0D33
 009F0CF6    mov         eax,dword ptr [ebx+8A0];TMainFormMarketSklad.Q_PRIH_ITOGS:TOraQuery
 009F0CFC    call        TOraQuery.GetSQL
 009F0D01    mov         edx,9F1484;'AND PN.NUM_OPER=:NUM_OPER'
 009F0D06    mov         ecx,dword ptr [eax]
 009F0D08    call        dword ptr [ecx+38]
 009F0D0B    lea         edx,[ebp-3C]
 009F0D0E    mov         eax,dword ptr [ebx+8BC];TMainFormMarketSklad.EditFindNakl:TEdit
 009F0D14    call        TControl.GetText
 009F0D19    mov         eax,dword ptr [ebp-3C]
 009F0D1C    push        eax
 009F0D1D    mov         eax,dword ptr [ebx+8A0];TMainFormMarketSklad.Q_PRIH_ITOGS:TOraQuery
 009F0D23    mov         edx,9F14A8;'NUM_OPER'
 009F0D28    call        006210D4
 009F0D2D    pop         edx
 009F0D2E    mov         ecx,dword ptr [eax]
 009F0D30    call        dword ptr [ecx+48]
 009F0D33    mov         eax,dword ptr [ebx+4D0];TMainFormMarketSklad.rgPrihIsProv:TRadioGroup
 009F0D39    mov         eax,dword ptr [eax+218];TRadioGroup.FItemIndex:Integer
 009F0D3F    dec         eax
>009F0D40    je          009F0D47
 009F0D42    dec         eax
>009F0D43    je          009F0D5E
>009F0D45    jmp         009F0D73
 009F0D47    mov         eax,dword ptr [ebx+8A0];TMainFormMarketSklad.Q_PRIH_ITOGS:TOraQuery
 009F0D4D    call        TOraQuery.GetSQL
 009F0D52    mov         edx,9F14BC;'AND PN.IS_PROV=1'
 009F0D57    mov         ecx,dword ptr [eax]
 009F0D59    call        dword ptr [ecx+38]
>009F0D5C    jmp         009F0D73
 009F0D5E    mov         eax,dword ptr [ebx+8A0];TMainFormMarketSklad.Q_PRIH_ITOGS:TOraQuery
 009F0D64    call        TOraQuery.GetSQL
 009F0D69    mov         edx,9F14D8;'AND PN.IS_PROV=0'
 009F0D6E    mov         ecx,dword ptr [eax]
 009F0D70    call        dword ptr [ecx+38]
 009F0D73    mov         eax,dword ptr [ebx+604];TMainFormMarketSklad.rgIsOplacheno:TRadioGroup
 009F0D79    mov         eax,dword ptr [eax+218];TRadioGroup.FItemIndex:Integer
 009F0D7F    dec         eax
>009F0D80    je          009F0D87
 009F0D82    dec         eax
>009F0D83    je          009F0D9E
>009F0D85    jmp         009F0DB3
 009F0D87    mov         eax,dword ptr [ebx+8A0];TMainFormMarketSklad.Q_PRIH_ITOGS:TOraQuery
 009F0D8D    call        TOraQuery.GetSQL
 009F0D92    mov         edx,9F14F4;'AND PN.SUMMA_DOLG=0'
 009F0D97    mov         ecx,dword ptr [eax]
 009F0D99    call        dword ptr [ecx+38]
>009F0D9C    jmp         009F0DB3
 009F0D9E    mov         eax,dword ptr [ebx+8A0];TMainFormMarketSklad.Q_PRIH_ITOGS:TOraQuery
 009F0DA4    call        TOraQuery.GetSQL
 009F0DA9    mov         edx,9F1510;'AND PN.SUMMA_DOLG>0'
 009F0DAE    mov         ecx,dword ptr [eax]
 009F0DB0    call        dword ptr [ecx+38]
 009F0DB3    mov         eax,dword ptr [ebx+74C];TMainFormMarketSklad.rgOpTypeSelect:TRadioGroup
 009F0DB9    mov         eax,dword ptr [eax+218];TRadioGroup.FItemIndex:Integer
 009F0DBF    dec         eax
>009F0DC0    je          009F0DC7
 009F0DC2    dec         eax
>009F0DC3    je          009F0DDE
>009F0DC5    jmp         009F0DF3
 009F0DC7    mov         eax,dword ptr [ebx+8A0];TMainFormMarketSklad.Q_PRIH_ITOGS:TOraQuery
 009F0DCD    call        TOraQuery.GetSQL
 009F0DD2    mov         edx,9F152C;'AND PN.ID_OPER_TYPE=2'
 009F0DD7    mov         ecx,dword ptr [eax]
 009F0DD9    call        dword ptr [ecx+38]
>009F0DDC    jmp         009F0DF3
 009F0DDE    mov         eax,dword ptr [ebx+8A0];TMainFormMarketSklad.Q_PRIH_ITOGS:TOraQuery
 009F0DE4    call        TOraQuery.GetSQL
 009F0DE9    mov         edx,9F154C;'AND PN.ID_OPER_TYPE=5'
 009F0DEE    mov         ecx,dword ptr [eax]
 009F0DF0    call        dword ptr [ecx+38]
 009F0DF3    mov         eax,dword ptr [ebx+370];TMainFormMarketSklad.deBgn:TDateEdit
 009F0DF9    call        006A90E4
 009F0DFE    add         esp,0FFFFFFF8
 009F0E01    fstp        qword ptr [esp]
 009F0E04    wait
 009F0E05    mov         eax,dword ptr [ebx+8A0];TMainFormMarketSklad.Q_PRIH_ITOGS:TOraQuery
 009F0E0B    mov         edx,9F169C;'DATE_BGN'
 009F0E10    call        006210D4
 009F0E15    call        TParam.SetAsDate
 009F0E1A    mov         eax,dword ptr [ebx+374];TMainFormMarketSklad.deEnd:TDateEdit
 009F0E20    call        006A90E4
 009F0E25    add         esp,0FFFFFFF8
 009F0E28    fstp        qword ptr [esp]
 009F0E2B    wait
 009F0E2C    mov         eax,dword ptr [ebx+8A0];TMainFormMarketSklad.Q_PRIH_ITOGS:TOraQuery
 009F0E32    mov         edx,9F16B0;'DATE_END'
 009F0E37    call        006210D4
 009F0E3C    call        TParam.SetAsDate
 009F0E41    mov         eax,dword ptr [ebx+8A0];TMainFormMarketSklad.Q_PRIH_ITOGS:TOraQuery
 009F0E47    call        TDataSet.Open
 009F0E4C    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F0E52    call        TDataSet.Close
 009F0E57    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F0E5D    call        TDataSet.Close
>009F0E62    jmp         009F1095
 009F0E67    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F0E6D    call        TDataSet.GetActive
 009F0E72    test        al,al
>009F0E74    je          009F0E8F
 009F0E76    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F0E7C    mov         edx,9F1434;'ID'
 009F0E81    call        TDataSet.FieldByName
 009F0E86    mov         edx,dword ptr [eax]
 009F0E88    call        dword ptr [edx+58];TField.GetAsInteger
 009F0E8B    mov         esi,eax
>009F0E8D    jmp         009F0E92
 009F0E8F    or          esi,0FFFFFFFF
 009F0E92    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F0E98    call        TDataSet.Close
 009F0E9D    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F0EA3    call        TOraQuery.GetSQL
 009F0EA8    mov         edx,dword ptr [eax]
 009F0EAA    call        dword ptr [edx+44]
 009F0EAD    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F0EB3    call        TOraQuery.GetSQL
 009F0EB8    mov         edx,dword ptr [ebx+944];TMainFormMarketSklad.?f944:String
 009F0EBE    mov         ecx,dword ptr [eax]
 009F0EC0    call        dword ptr [ecx+2C]
 009F0EC3    lea         edx,[ebp-40]
 009F0EC6    mov         eax,dword ptr [ebx+8BC];TMainFormMarketSklad.EditFindNakl:TEdit
 009F0ECC    call        TControl.GetText
 009F0ED1    cmp         dword ptr [ebp-40],0
>009F0ED5    je          009F0F6C
 009F0EDB    mov         eax,dword ptr [ebx+8C8];TMainFormMarketSklad.rg_find_nakl_type:TRadioGroup
 009F0EE1    mov         eax,dword ptr [eax+218];TRadioGroup.FItemIndex:Integer
 009F0EE7    sub         eax,1
>009F0EEA    jb          009F0EF0
>009F0EEC    je          009F0F2F
>009F0EEE    jmp         009F0F6C
 009F0EF0    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F0EF6    call        TOraQuery.GetSQL
 009F0EFB    mov         edx,9F16C8;'AND UPPER(RN.NAME_KL_CEH) LIKE '%' || :SUBSTR_FIND || '%''
 009F0F00    mov         ecx,dword ptr [eax]
 009F0F02    call        dword ptr [ecx+38]
 009F0F05    lea         edx,[ebp-44]
 009F0F08    mov         eax,dword ptr [ebx+8BC];TMainFormMarketSklad.EditFindNakl:TEdit
 009F0F0E    call        TControl.GetText
 009F0F13    mov         eax,dword ptr [ebp-44]
 009F0F16    push        eax
 009F0F17    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F0F1D    mov         edx,9F11CC;'SUBSTR_FIND'
 009F0F22    call        006210D4
 009F0F27    pop         edx
 009F0F28    mov         ecx,dword ptr [eax]
 009F0F2A    call        dword ptr [ecx+48]
>009F0F2D    jmp         009F0F6C
 009F0F2F    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F0F35    call        TOraQuery.GetSQL
 009F0F3A    mov         edx,9F170C;'AND RN.NUM_OPER=:NUM_OPER'
 009F0F3F    mov         ecx,dword ptr [eax]
 009F0F41    call        dword ptr [ecx+38]
 009F0F44    lea         edx,[ebp-48]
 009F0F47    mov         eax,dword ptr [ebx+8BC];TMainFormMarketSklad.EditFindNakl:TEdit
 009F0F4D    call        TControl.GetText
 009F0F52    mov         eax,dword ptr [ebp-48]
 009F0F55    push        eax
 009F0F56    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F0F5C    mov         edx,9F14A8;'NUM_OPER'
 009F0F61    call        006210D4
 009F0F66    pop         edx
 009F0F67    mov         ecx,dword ptr [eax]
 009F0F69    call        dword ptr [ecx+48]
 009F0F6C    mov         eax,dword ptr [ebx+610];TMainFormMarketSklad.rgSortRashs:TRadioGroup
 009F0F72    mov         eax,dword ptr [eax+218];TRadioGroup.FItemIndex:Integer
 009F0F78    sub         eax,1
>009F0F7B    jb          009F0F81
>009F0F7D    je          009F0F98
>009F0F7F    jmp         009F0FAD
 009F0F81    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F0F87    call        TOraQuery.GetSQL
 009F0F8C    mov         edx,9F1730;'ORDER BY RN.DATE_OPER,RN.NAME_KL_CEH'
 009F0F91    mov         ecx,dword ptr [eax]
 009F0F93    call        dword ptr [ecx+38]
>009F0F96    jmp         009F0FAD
 009F0F98    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F0F9E    call        TOraQuery.GetSQL
 009F0FA3    mov         edx,9F1760;'ORDER BY RN.NAME_OP_TYPE'
 009F0FA8    mov         ecx,dword ptr [eax]
 009F0FAA    call        dword ptr [ecx+38]
 009F0FAD    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F0FB3    mov         edx,9F1784;'ID_CEH_FROM'
 009F0FB8    call        006210D4
 009F0FBD    push        eax
 009F0FBE    mov         eax,dword ptr [ebx+32C];TMainFormMarketSklad.cbSklad:TDBLookupComboBox
 009F0FC4    add         eax,240;TDBLookupComboBox.FKeyValue:Variant
 009F0FC9    call        @VarToInteger
 009F0FCE    mov         edx,eax
 009F0FD0    pop         eax
 009F0FD1    mov         ecx,dword ptr [eax]
 009F0FD3    call        dword ptr [ecx+68]
 009F0FD6    mov         eax,dword ptr [ebx+370];TMainFormMarketSklad.deBgn:TDateEdit
 009F0FDC    call        006A90E4
 009F0FE1    add         esp,0FFFFFFF8
 009F0FE4    fstp        qword ptr [esp]
 009F0FE7    wait
 009F0FE8    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F0FEE    mov         edx,9F169C;'DATE_BGN'
 009F0FF3    call        006210D4
 009F0FF8    call        TParam.SetAsDate
 009F0FFD    mov         eax,dword ptr [ebx+374];TMainFormMarketSklad.deEnd:TDateEdit
 009F1003    call        006A90E4
 009F1008    add         esp,0FFFFFFF8
 009F100B    fstp        qword ptr [esp]
 009F100E    wait
 009F100F    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F1015    mov         edx,9F16B0;'DATE_END'
 009F101A    call        006210D4
 009F101F    call        TParam.SetAsDate
 009F1024    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F102A    call        TDataSet.Open
 009F102F    cmp         esi,0FFFFFFFF
>009F1032    jne         009F1041
 009F1034    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F103A    call        TDataSet.Last
>009F103F    jmp         009F1069
 009F1041    mov         al,[009F16BC];0x0 gvar_009F16BC
 009F1046    push        eax
 009F1047    lea         eax,[ebp-58]
 009F104A    mov         edx,esi
 009F104C    mov         cl,0FC
 009F104E    call        @VarFromInt
 009F1053    lea         ecx,[ebp-58]
 009F1056    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F105C    mov         edx,9F1434;'ID'
 009F1061    mov         esi,dword ptr [eax]
 009F1063    call        dword ptr [esi+244];TMemDataSet.Locate
 009F1069    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F106F    call        TDataSet.Close
 009F1074    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F107A    call        TDataSet.Close
 009F107F    mov         eax,dword ptr [ebx+4E4];TMainFormMarketSklad.Q_VidsOper:TOraQuery
 009F1085    call        TDataSet.Close
 009F108A    mov         eax,dword ptr [ebx+4E4];TMainFormMarketSklad.Q_VidsOper:TOraQuery
 009F1090    call        TDataSet.Open
 009F1095    xor         eax,eax
 009F1097    pop         edx
 009F1098    pop         ecx
 009F1099    pop         ecx
 009F109A    mov         dword ptr fs:[eax],edx
 009F109D    push        9F10B2
 009F10A2    mov         eax,dword ptr [ebp-4]
 009F10A5    call        TObject.Free
 009F10AA    ret
>009F10AB    jmp         @HandleFinally
>009F10B0    jmp         009F10A2
 009F10B2    xor         eax,eax
 009F10B4    pop         edx
 009F10B5    pop         ecx
 009F10B6    pop         ecx
 009F10B7    mov         dword ptr fs:[eax],edx
 009F10BA    push        9F1106
 009F10BF    lea         eax,[ebp-58]
 009F10C2    call        @VarClr
 009F10C7    lea         eax,[ebp-48]
 009F10CA    mov         edx,6
 009F10CF    call        @LStrArrayClr
 009F10D4    lea         eax,[ebp-30]
 009F10D7    call        @VarClr
 009F10DC    lea         eax,[ebp-20]
 009F10DF    mov         edx,3
 009F10E4    call        @LStrArrayClr
 009F10E9    lea         eax,[ebp-14]
 009F10EC    call        @LStrClr
 009F10F1    lea         eax,[ebp-10]
 009F10F4    mov         edx,3
 009F10F9    call        @LStrArrayClr
 009F10FE    ret
>009F10FF    jmp         @HandleFinally
>009F1104    jmp         009F10BF
 009F1106    pop         edi
 009F1107    pop         esi
 009F1108    pop         ebx
 009F1109    mov         esp,ebp
 009F110B    pop         ebp
 009F110C    ret
*}
end;

//009F1790
procedure TMainFormMarketSklad.RefreshData;
begin
{*
 009F1790    ret
*}
end;

//009F1794
procedure TMainFormMarketSklad.deBgnChange;
begin
{*
 009F1794    mov         edx,dword ptr [eax+370];TMainFormMarketSklad.deBgn:TDateEdit
 009F179A    call        TMainFormMarketSklad.PageControl1Change
 009F179F    ret
*}
end;

//009F17F8
procedure TMainFormMarketSklad.aToExcel_OstatsExecute;
begin
{*
 009F17F8    push        ebp
 009F17F9    mov         ebp,esp
 009F17FB    xor         ecx,ecx
 009F17FD    push        ecx
 009F17FE    push        ecx
 009F17FF    push        ecx
 009F1800    push        ecx
 009F1801    push        ebx
 009F1802    push        esi
 009F1803    push        edi
 009F1804    mov         esi,eax
 009F1806    xor         eax,eax
 009F1808    push        ebp
 009F1809    push        9F197A
 009F180E    push        dword ptr fs:[eax]
 009F1811    mov         dword ptr fs:[eax],esp
 009F1814    mov         eax,dword ptr [esi+324];TMainFormMarketSklad.DBGridEh_Ostats:TDBGridEh
 009F181A    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009F1820    call        TCollection.GetCount
 009F1825    push        eax
 009F1826    lea         eax,[ebp-4]
 009F1829    mov         ecx,1
 009F182E    mov         edx,dword ptr ds:[9F17A0];_DynArr_672_3
 009F1834    call        @DynArraySetLength
 009F1839    add         esp,4
 009F183C    mov         eax,dword ptr [esi+324];TMainFormMarketSklad.DBGridEh_Ostats:TDBGridEh
 009F1842    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009F1848    call        TCollection.GetCount
 009F184D    push        eax
 009F184E    lea         eax,[ebp-8]
 009F1851    mov         ecx,1
 009F1856    mov         edx,dword ptr ds:[9F17A0];_DynArr_672_3
 009F185C    call        @DynArraySetLength
 009F1861    add         esp,4
 009F1864    mov         eax,dword ptr [esi+324];TMainFormMarketSklad.DBGridEh_Ostats:TDBGridEh
 009F186A    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009F1870    call        TCollection.GetCount
 009F1875    push        eax
 009F1876    lea         eax,[ebp-0C]
 009F1879    mov         ecx,1
 009F187E    mov         edx,dword ptr ds:[9F17CC];_DynArr_672_4
 009F1884    call        @DynArraySetLength
 009F1889    add         esp,4
 009F188C    mov         eax,dword ptr [esi+324];TMainFormMarketSklad.DBGridEh_Ostats:TDBGridEh
 009F1892    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009F1898    call        TCollection.GetCount
 009F189D    mov         edi,eax
 009F189F    dec         edi
 009F18A0    test        edi,edi
>009F18A2    jl          009F1905
 009F18A4    inc         edi
 009F18A5    xor         ebx,ebx
 009F18A7    mov         eax,dword ptr [esi+324];TMainFormMarketSklad.DBGridEh_Ostats:TDBGridEh
 009F18AD    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009F18B3    mov         edx,ebx
 009F18B5    call        00676F60
 009F18BA    mov         eax,dword ptr [eax+0C0]
 009F18C0    lea         edx,[ebp-10]
 009F18C3    call        TColumnTitleEh.GetCaption
 009F18C8    mov         edx,dword ptr [ebp-10]
 009F18CB    mov         eax,dword ptr [ebp-4]
 009F18CE    lea         eax,[eax+ebx*4]
 009F18D1    call        @LStrAsg
 009F18D6    mov         eax,dword ptr [esi+324];TMainFormMarketSklad.DBGridEh_Ostats:TDBGridEh
 009F18DC    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009F18E2    mov         edx,ebx
 009F18E4    call        00676F60
 009F18E9    mov         edx,dword ptr [eax+40]
 009F18EC    mov         eax,dword ptr [ebp-8]
 009F18EF    lea         eax,[eax+ebx*4]
 009F18F2    call        @LStrAsg
 009F18F7    mov         eax,dword ptr [ebp-0C]
 009F18FA    mov         dword ptr [eax+ebx*4],0FFFFFFFF
 009F1901    inc         ebx
 009F1902    dec         edi
>009F1903    jne         009F18A7
 009F1905    mov         eax,dword ptr [ebp-4]
 009F1908    call        @DynArrayHigh
 009F190D    push        eax
 009F190E    mov         eax,dword ptr [ebp-8]
 009F1911    push        eax
 009F1912    mov         eax,dword ptr [ebp-8]
 009F1915    call        @DynArrayHigh
 009F191A    push        eax
 009F191B    mov         eax,dword ptr [ebp-0C]
 009F191E    push        eax
 009F191F    mov         eax,dword ptr [ebp-0C]
 009F1922    call        @DynArrayHigh
 009F1927    push        eax
 009F1928    mov         ecx,dword ptr [ebp-4]
 009F192B    mov         edx,dword ptr [esi+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F1931    xor         eax,eax
 009F1933    call        0079FEF0
 009F1938    mov         eax,dword ptr [esi+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F193E    call        TDataSet.First
 009F1943    xor         eax,eax
 009F1945    pop         edx
 009F1946    pop         ecx
 009F1947    pop         ecx
 009F1948    mov         dword ptr fs:[eax],edx
 009F194B    push        9F1981
 009F1950    lea         eax,[ebp-10]
 009F1953    call        @LStrClr
 009F1958    lea         eax,[ebp-0C]
 009F195B    mov         edx,dword ptr ds:[9F17CC];_DynArr_672_4
 009F1961    call        @DynArrayClear
 009F1966    lea         eax,[ebp-8]
 009F1969    mov         edx,dword ptr ds:[9F17A0];_DynArr_672_3
 009F196F    mov         ecx,2
 009F1974    call        @FinalizeArray
 009F1979    ret
>009F197A    jmp         @HandleFinally
>009F197F    jmp         009F1950
 009F1981    pop         edi
 009F1982    pop         esi
 009F1983    pop         ebx
 009F1984    mov         esp,ebp
 009F1986    pop         ebp
 009F1987    ret
*}
end;

//009F1988
procedure TMainFormMarketSklad.EditFindChange;
begin
{*
 009F1988    push        ebp
 009F1989    mov         ebp,esp
 009F198B    push        0
 009F198D    push        ebx
 009F198E    push        esi
 009F198F    mov         ebx,eax
 009F1991    xor         eax,eax
 009F1993    push        ebp
 009F1994    push        9F19DD
 009F1999    push        dword ptr fs:[eax]
 009F199C    mov         dword ptr fs:[eax],esp
 009F199F    lea         edx,[ebp-4]
 009F19A2    mov         eax,dword ptr [ebx+3A4];TMainFormMarketSklad.EditFind:TEdit
 009F19A8    call        TControl.GetText
 009F19AD    cmp         dword ptr [ebp-4],0
>009F19B1    jne         009F19C7
 009F19B3    mov         esi,dword ptr [ebx+2F8];TMainFormMarketSklad.PageControl1:TPageControl
 009F19B9    mov         edx,ebx
 009F19BB    mov         eax,dword ptr [esi+24C];TPageControl.?f24C:TfrxPreview
 009F19C1    call        dword ptr [esi+248];TPageControl.FOnChange
 009F19C7    xor         eax,eax
 009F19C9    pop         edx
 009F19CA    pop         ecx
 009F19CB    pop         ecx
 009F19CC    mov         dword ptr fs:[eax],edx
 009F19CF    push        9F19E4
 009F19D4    lea         eax,[ebp-4]
 009F19D7    call        @LStrClr
 009F19DC    ret
>009F19DD    jmp         @HandleFinally
>009F19E2    jmp         009F19D4
 009F19E4    pop         esi
 009F19E5    pop         ebx
 009F19E6    pop         ecx
 009F19E7    pop         ebp
 009F19E8    ret
*}
end;

//009F19EC
procedure TMainFormMarketSklad.aCallCalcExecute;
begin
{*
 009F19EC    push        ebx
 009F19ED    mov         ebx,eax
 009F19EF    push        1
 009F19F1    push        0
 009F19F3    push        0
 009F19F5    push        9F1A10
 009F19FA    push        9F1A1C
 009F19FF    mov         eax,ebx
 009F1A01    call        TWinControl.GetHandle
 009F1A06    push        eax
 009F1A07    call        shell32.ShellExecuteA
 009F1A0C    pop         ebx
 009F1A0D    ret
*}
end;

//009F1A24
{*procedure TMainFormMarketSklad.OraAlerter1Event(?:?; ?:?; ?:?);
begin
 009F1A24    push        ebp
 009F1A25    mov         ebp,esp
 009F1A27    add         esp,0FFFFFFF0
 009F1A2A    push        ebx
 009F1A2B    push        esi
 009F1A2C    xor         ebx,ebx
 009F1A2E    mov         dword ptr [ebp-0C],ebx
 009F1A31    mov         dword ptr [ebp-10],ebx
 009F1A34    mov         dword ptr [ebp-4],ecx
 009F1A37    mov         esi,eax
 009F1A39    mov         eax,dword ptr [ebp-4]
 009F1A3C    call        @LStrAddRef
 009F1A41    mov         eax,dword ptr [ebp+8]
 009F1A44    call        @LStrAddRef
 009F1A49    xor         eax,eax
 009F1A4B    push        ebp
 009F1A4C    push        9F1B9D
 009F1A51    push        dword ptr fs:[eax]
 009F1A54    mov         dword ptr fs:[eax],esp
 009F1A57    mov         ecx,esi
 009F1A59    mov         dl,1
 009F1A5B    mov         eax,[0079CEB4];TFormProcess
 009F1A60    call        TCustomForm.Create;TFormProcess.Create
 009F1A65    mov         dword ptr [ebp-8],eax
 009F1A68    xor         edx,edx
 009F1A6A    push        ebp
 009F1A6B    push        9F1B6B
 009F1A70    push        dword ptr fs:[edx]
 009F1A73    mov         dword ptr fs:[edx],esp
 009F1A76    mov         eax,dword ptr [ebp-8]
 009F1A79    mov         eax,dword ptr [eax+300];TFormProcess.LBL_MESSAGE:TLabel
 009F1A7F    mov         edx,9F1BB4;'Идет обработка данных!'
 009F1A84    call        TControl.SetText
 009F1A89    mov         eax,dword ptr [ebp-8]
 009F1A8C    mov         eax,dword ptr [eax+2FC];TFormProcess.Gauge1:TGauge
 009F1A92    xor         edx,edx
 009F1A94    call        TControl.SetVisible
 009F1A99    mov         eax,dword ptr [ebp-8]
 009F1A9C    call        TCustomForm.Show
 009F1AA1    mov         eax,[00AC721C];^Application:TApplication
 009F1AA6    mov         eax,dword ptr [eax]
 009F1AA8    call        TApplication.ProcessMessages
 009F1AAD    mov         edx,dword ptr [ebp+8]
 009F1AB0    mov         eax,9F1BD4;'MARKET_SKLAD'
 009F1AB5    call        @LStrPos
 009F1ABA    test        eax,eax
 009F1ABC    setg        bl
 009F1ABF    mov         edx,dword ptr [ebp+8]
 009F1AC2    mov         eax,[00AC6648];^'JJJ'
 009F1AC7    call        @LStrPos
 009F1ACC    test        eax,eax
 009F1ACE    setg        al
 009F1AD1    test        bl,al
>009F1AD3    je          009F1ADF
 009F1AD5    call        @TryFinallyExit
>009F1ADA    jmp         009F1B72
 009F1ADF    lea         eax,[ebp-0C]
 009F1AE2    push        eax
 009F1AE3    mov         ecx,0A
 009F1AE8    mov         edx,1
 009F1AED    mov         eax,dword ptr [ebp+8]
 009F1AF0    call        @LStrCopy
 009F1AF5    mov         eax,dword ptr [ebp-0C]
 009F1AF8    push        eax
 009F1AF9    lea         edx,[ebp-10]
 009F1AFC    mov         eax,[00ACEBDC];gvar_00ACEBDC:TMainFormMarketSklad
 009F1B01    call        TMainFormMarketSklad.GetIdCehStr
 009F1B06    mov         edx,dword ptr [ebp-10]
 009F1B09    pop         eax
 009F1B0A    call        @LStrCmp
>009F1B0F    jne         009F1B55
 009F1B11    mov         eax,dword ptr [ebp-4]
 009F1B14    mov         edx,9F1BEC;'MARKET_PRIH'
 009F1B19    call        @LStrCmp
>009F1B1E    je          009F1B2F
 009F1B20    mov         eax,dword ptr [ebp-4]
 009F1B23    mov         edx,9F1C00;'MARKET_RASH'
 009F1B28    call        @LStrCmp
>009F1B2D    jne         009F1B55
 009F1B2F    mov         eax,dword ptr [esi+7F0];TMainFormMarketSklad.chbAutoRefresh:TCheckBox
 009F1B35    mov         edx,dword ptr [eax]
 009F1B37    call        dword ptr [edx+0C8];TCustomCheckBox.GetChecked
 009F1B3D    test        al,al
>009F1B3F    je          009F1B55
 009F1B41    mov         ebx,dword ptr [esi+2F8];TMainFormMarketSklad.PageControl1:TPageControl
 009F1B47    mov         edx,esi
 009F1B49    mov         eax,dword ptr [ebx+24C];TPageControl.?f24C:TfrxPreview
 009F1B4F    call        dword ptr [ebx+248];TPageControl.FOnChange
 009F1B55    xor         eax,eax
 009F1B57    pop         edx
 009F1B58    pop         ecx
 009F1B59    pop         ecx
 009F1B5A    mov         dword ptr fs:[eax],edx
 009F1B5D    push        9F1B72
 009F1B62    mov         eax,dword ptr [ebp-8]
 009F1B65    call        TObject.Free
 009F1B6A    ret
>009F1B6B    jmp         @HandleFinally
>009F1B70    jmp         009F1B62
 009F1B72    xor         eax,eax
 009F1B74    pop         edx
 009F1B75    pop         ecx
 009F1B76    pop         ecx
 009F1B77    mov         dword ptr fs:[eax],edx
 009F1B7A    push        9F1BA4
 009F1B7F    lea         eax,[ebp-10]
 009F1B82    mov         edx,2
 009F1B87    call        @LStrArrayClr
 009F1B8C    lea         eax,[ebp-4]
 009F1B8F    call        @LStrClr
 009F1B94    lea         eax,[ebp+8]
 009F1B97    call        @LStrClr
 009F1B9C    ret
>009F1B9D    jmp         @HandleFinally
>009F1BA2    jmp         009F1B7F
 009F1BA4    pop         esi
 009F1BA5    pop         ebx
 009F1BA6    mov         esp,ebp
 009F1BA8    pop         ebp
 009F1BA9    ret         4
end;*}

//009F1C0C
procedure TMainFormMarketSklad.aAdminExecute;
begin
{*
 009F1C0C    push        ebp
 009F1C0D    mov         ebp,esp
 009F1C0F    add         esp,0FFFFFDFC
 009F1C15    push        ebx
 009F1C16    xor         ecx,ecx
 009F1C18    mov         dword ptr [ebp-4],ecx
 009F1C1B    mov         ebx,eax
 009F1C1D    xor         eax,eax
 009F1C1F    push        ebp
 009F1C20    push        9F1CA4
 009F1C25    push        dword ptr fs:[eax]
 009F1C28    mov         dword ptr fs:[eax],esp
 009F1C2B    cmp         dword ptr ds:[0AC661C],0;gvar_00AC661C:Longint
>009F1C32    jne         009F1C8E
 009F1C34    lea         eax,[ebp-204]
 009F1C3A    mov         edx,dword ptr ds:[0AC6624];^'ldaXOA8cIc2LjSFPuYd8en+J'
 009F1C40    mov         ecx,0FF
 009F1C45    call        @LStrToString
 009F1C4A    lea         eax,[ebp-204]
 009F1C50    lea         edx,[ebp-104]
 009F1C56    call        Uncript.Un_Cript
 009F1C5B    lea         edx,[ebp-104]
 009F1C61    lea         eax,[ebp-4]
 009F1C64    call        @LStrFromString
 009F1C69    mov         eax,dword ptr [ebp-4]
 009F1C6C    push        eax
 009F1C6D    mov         ecx,dword ptr ds:[0AC6630];^'OPT_USER_'
 009F1C73    mov         edx,dword ptr ds:[0AC662C];^'OPTTORG_'
 009F1C79    mov         eax,[00AC6628];^'192.168.0.1'
 009F1C7E    call        Admin.AdminSystem
 009F1C83    mov         eax,dword ptr [ebx+318];TMainFormMarketSklad.ActionList1:TActionList
 009F1C89    call        007A8A5C
 009F1C8E    xor         eax,eax
 009F1C90    pop         edx
 009F1C91    pop         ecx
 009F1C92    pop         ecx
 009F1C93    mov         dword ptr fs:[eax],edx
 009F1C96    push        9F1CAB
 009F1C9B    lea         eax,[ebp-4]
 009F1C9E    call        @LStrClr
 009F1CA3    ret
>009F1CA4    jmp         @HandleFinally
>009F1CA9    jmp         009F1C9B
 009F1CAB    pop         ebx
 009F1CAC    mov         esp,ebp
 009F1CAE    pop         ebp
 009F1CAF    ret
*}
end;

//009F1CB0
procedure TMainFormMarketSklad.aSprKlientsExecute;
begin
{*
 009F1CB0    xor         edx,edx
 009F1CB2    or          eax,0FFFFFFFF
 009F1CB5    call        007A347C
 009F1CBA    ret
*}
end;

//009F1CBC
procedure TMainFormMarketSklad.aSprUsrGroupsExecute;
begin
{*
 009F1CBC    ret
*}
end;

//009F1CC0
procedure TMainFormMarketSklad.aSprCehsExecute;
begin
{*
 009F1CC0    ret
*}
end;

//009F1CC4
procedure TMainFormMarketSklad.aSprEdIzmsExecute;
begin
{*
 009F1CC4    push        ebx
 009F1CC5    mov         ebx,eax
 009F1CC7    mov         eax,[00AC66C4];^gvar_00ACBDDC:TFormSprEdIzm
 009F1CCC    cmp         dword ptr [eax],0
>009F1CCF    jne         009F1CE7
 009F1CD1    mov         ecx,ebx
 009F1CD3    mov         dl,1
 009F1CD5    mov         eax,[007AA010];TFormSprEdIzm
 009F1CDA    call        TCustomForm.Create;TFormSprEdIzm.Create
 009F1CDF    mov         edx,dword ptr ds:[0AC66C4];^gvar_00ACBDDC:TFormSprEdIzm
 009F1CE5    mov         dword ptr [edx],eax
 009F1CE7    mov         eax,[00AC66C4];^gvar_00ACBDDC:TFormSprEdIzm
 009F1CEC    mov         eax,dword ptr [eax]
 009F1CEE    xor         edx,edx
 009F1CF0    call        TCustomForm.SetWindowState
 009F1CF5    mov         eax,[00AC66C4];^gvar_00ACBDDC:TFormSprEdIzm
 009F1CFA    mov         eax,dword ptr [eax]
 009F1CFC    call        TCustomForm.Show
 009F1D01    pop         ebx
 009F1D02    ret
*}
end;

//009F1D04
{*function TMainFormMarketSklad.GetNextNPP(?:?):?;
begin
 009F1D04    push        ebp
 009F1D05    mov         ebp,esp
 009F1D07    add         esp,0FFFFFFF8
 009F1D0A    push        ebx
 009F1D0B    xor         ecx,ecx
 009F1D0D    mov         dword ptr [ebp-8],ecx
 009F1D10    mov         dword ptr [ebp-4],edx
 009F1D13    mov         eax,dword ptr [ebp-4]
 009F1D16    call        @LStrAddRef
 009F1D1B    xor         eax,eax
 009F1D1D    push        ebp
 009F1D1E    push        9F1DA5
 009F1D23    push        dword ptr fs:[eax]
 009F1D26    mov         dword ptr fs:[eax],esp
 009F1D29    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F1D2E    mov         eax,dword ptr [eax]
 009F1D30    mov         ebx,dword ptr [eax+60]
 009F1D33    mov         eax,ebx
 009F1D35    call        TDataSet.Close
 009F1D3A    mov         eax,ebx
 009F1D3C    call        TOraQuery.GetSQL
 009F1D41    mov         edx,dword ptr [eax]
 009F1D43    call        dword ptr [edx+44]
 009F1D46    mov         eax,ebx
 009F1D48    call        TOraQuery.GetSQL
 009F1D4D    push        eax
 009F1D4E    lea         eax,[ebp-8]
 009F1D51    mov         ecx,dword ptr [ebp-4]
 009F1D54    mov         edx,9F1DBC;'SELECT MAX(NPP) AS MXNPP FROM '
 009F1D59    call        @LStrCat3
 009F1D5E    mov         edx,dword ptr [ebp-8]
 009F1D61    pop         eax
 009F1D62    mov         ecx,dword ptr [eax]
 009F1D64    call        dword ptr [ecx+38]
 009F1D67    mov         eax,ebx
 009F1D69    call        TDataSet.Open
 009F1D6E    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F1D73    mov         eax,dword ptr [eax]
 009F1D75    mov         eax,dword ptr [eax+60]
 009F1D78    mov         edx,9F1DE4;'MXNPP'
 009F1D7D    call        TDataSet.FieldByName
 009F1D82    mov         edx,dword ptr [eax]
 009F1D84    call        dword ptr [edx+58];TField.GetAsInteger
 009F1D87    mov         ebx,eax
 009F1D89    inc         ebx
 009F1D8A    xor         eax,eax
 009F1D8C    pop         edx
 009F1D8D    pop         ecx
 009F1D8E    pop         ecx
 009F1D8F    mov         dword ptr fs:[eax],edx
 009F1D92    push        9F1DAC
 009F1D97    lea         eax,[ebp-8]
 009F1D9A    mov         edx,2
 009F1D9F    call        @LStrArrayClr
 009F1DA4    ret
>009F1DA5    jmp         @HandleFinally
>009F1DAA    jmp         009F1D97
 009F1DAC    mov         eax,ebx
 009F1DAE    pop         ebx
 009F1DAF    pop         ecx
 009F1DB0    pop         ecx
 009F1DB1    pop         ebp
 009F1DB2    ret
end;*}

//009F1DEC
{*function TMainFormMarketSklad.GetNextNPP_Nom(?:?; ?:?):?;
begin
 009F1DEC    push        ebp
 009F1DED    mov         ebp,esp
 009F1DEF    add         esp,0FFFFFFF8
 009F1DF2    push        ebx
 009F1DF3    push        esi
 009F1DF4    xor         ebx,ebx
 009F1DF6    mov         dword ptr [ebp-8],ebx
 009F1DF9    mov         esi,ecx
 009F1DFB    mov         dword ptr [ebp-4],edx
 009F1DFE    mov         eax,dword ptr [ebp-4]
 009F1E01    call        @LStrAddRef
 009F1E06    xor         eax,eax
 009F1E08    push        ebp
 009F1E09    push        9F1EAD
 009F1E0E    push        dword ptr fs:[eax]
 009F1E11    mov         dword ptr fs:[eax],esp
 009F1E14    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F1E19    mov         eax,dword ptr [eax]
 009F1E1B    mov         ebx,dword ptr [eax+60]
 009F1E1E    mov         eax,ebx
 009F1E20    call        TDataSet.Close
 009F1E25    mov         eax,ebx
 009F1E27    call        TOraQuery.GetSQL
 009F1E2C    mov         edx,dword ptr [eax]
 009F1E2E    call        dword ptr [edx+44]
 009F1E31    mov         eax,ebx
 009F1E33    call        TOraQuery.GetSQL
 009F1E38    push        eax
 009F1E39    push        9F1EC4;'SELECT MAX(NPP) AS MXNPP FROM '
 009F1E3E    push        dword ptr [ebp-4]
 009F1E41    push        9F1EEC;' WHERE IS_PROD_MAT_WRK=:IS_PROD_MAT_WRK'
 009F1E46    lea         eax,[ebp-8]
 009F1E49    mov         edx,3
 009F1E4E    call        @LStrCatN
 009F1E53    mov         edx,dword ptr [ebp-8]
 009F1E56    pop         eax
 009F1E57    mov         ecx,dword ptr [eax]
 009F1E59    call        dword ptr [ecx+38]
 009F1E5C    mov         edx,9F1F1C;'IS_PROD_MAT_WRK'
 009F1E61    mov         eax,ebx
 009F1E63    call        006210D4
 009F1E68    mov         edx,esi
 009F1E6A    mov         ecx,dword ptr [eax]
 009F1E6C    call        dword ptr [ecx+68]
 009F1E6F    mov         eax,ebx
 009F1E71    call        TDataSet.Open
 009F1E76    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F1E7B    mov         eax,dword ptr [eax]
 009F1E7D    mov         eax,dword ptr [eax+60]
 009F1E80    mov         edx,9F1F34;'MXNPP'
 009F1E85    call        TDataSet.FieldByName
 009F1E8A    mov         edx,dword ptr [eax]
 009F1E8C    call        dword ptr [edx+58];TField.GetAsInteger
 009F1E8F    mov         ebx,eax
 009F1E91    inc         ebx
 009F1E92    xor         eax,eax
 009F1E94    pop         edx
 009F1E95    pop         ecx
 009F1E96    pop         ecx
 009F1E97    mov         dword ptr fs:[eax],edx
 009F1E9A    push        9F1EB4
 009F1E9F    lea         eax,[ebp-8]
 009F1EA2    mov         edx,2
 009F1EA7    call        @LStrArrayClr
 009F1EAC    ret
>009F1EAD    jmp         @HandleFinally
>009F1EB2    jmp         009F1E9F
 009F1EB4    mov         eax,ebx
 009F1EB6    pop         esi
 009F1EB7    pop         ebx
 009F1EB8    pop         ecx
 009F1EB9    pop         ecx
 009F1EBA    pop         ebp
 009F1EBB    ret
end;*}

//009F1F3C
procedure TMainFormMarketSklad.NewPrihod;
begin
{*
 009F1F3C    push        ebp
 009F1F3D    mov         ebp,esp
 009F1F3F    mov         ecx,10
 009F1F44    push        0
 009F1F46    push        0
 009F1F48    dec         ecx
>009F1F49    jne         009F1F44
 009F1F4B    push        ebx
 009F1F4C    push        esi
 009F1F4D    push        edi
 009F1F4E    mov         dword ptr [ebp-4],eax
 009F1F51    xor         eax,eax
 009F1F53    push        ebp
 009F1F54    push        9F2A0F
 009F1F59    push        dword ptr fs:[eax]
 009F1F5C    mov         dword ptr fs:[eax],esp
 009F1F5F    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F1F64    cmp         dword ptr [eax],0
>009F1F67    jne         009F1F80
 009F1F69    mov         ecx,dword ptr [ebp-4]
 009F1F6C    mov         dl,1
 009F1F6E    mov         eax,[009854F4];TFormEditOperPrihod
 009F1F73    call        TCustomForm.Create;TFormEditOperPrihod.Create
 009F1F78    mov         edx,dword ptr ds:[0AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F1F7E    mov         dword ptr [edx],eax
 009F1F80    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F1F85    mov         eax,dword ptr [eax]
 009F1F87    call        TFormEditOperPrihod.ClearControls
 009F1F8C    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F1F91    mov         eax,dword ptr [eax]
 009F1F93    mov         eax,dword ptr [eax+58]
 009F1F96    xor         edx,edx
 009F1F98    call        TOraSession.SetAutoCommit
 009F1F9D    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F1FA2    mov         eax,dword ptr [eax]
 009F1FA4    mov         eax,dword ptr [eax+60]
 009F1FA7    xor         edx,edx
 009F1FA9    call        TOraQuery.SetAutoCommit
 009F1FAE    xor         eax,eax
 009F1FB0    push        ebp
 009F1FB1    push        9F2996
 009F1FB6    push        dword ptr fs:[eax]
 009F1FB9    mov         dword ptr fs:[eax],esp
 009F1FBC    xor         eax,eax
 009F1FBE    push        ebp
 009F1FBF    push        9F2090
 009F1FC4    push        dword ptr fs:[eax]
 009F1FC7    mov         dword ptr fs:[eax],esp
 009F1FCA    mov         eax,9F2A28;'OPERS'
 009F1FCF    call        0079EA24
 009F1FD4    mov         dword ptr [ebp-8],eax
 009F1FD7    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F1FDC    mov         eax,dword ptr [eax]
 009F1FDE    mov         ebx,dword ptr [eax+60]
 009F1FE1    mov         eax,ebx
 009F1FE3    call        TDataSet.Close
 009F1FE8    mov         eax,ebx
 009F1FEA    call        TOraQuery.GetSQL
 009F1FEF    mov         edx,dword ptr [eax]
 009F1FF1    call        dword ptr [edx+44]
 009F1FF4    mov         eax,ebx
 009F1FF6    call        TOraQuery.GetSQL
 009F1FFB    mov         edx,9F2A38;'INSERT INTO OPERS(ID,DATE_OPER,NUM_OPER,ID_OPER_TYPE,'
 009F2000    mov         ecx,dword ptr [eax]
 009F2002    call        dword ptr [ecx+38]
 009F2005    mov         eax,ebx
 009F2007    call        TOraQuery.GetSQL
 009F200C    mov         edx,9F2A78;'ID_KL_CEH_FROM,ID_KL_CEH_TO, DATE_CRE, USER_CRE,DESCR)'
 009F2011    mov         ecx,dword ptr [eax]
 009F2013    call        dword ptr [ecx+38]
 009F2016    mov         eax,ebx
 009F2018    call        TOraQuery.GetSQL
 009F201D    mov         edx,9F2AB8;'VALUES(:ID,SYSDATE,0,-1,-1,-1,SYSDATE,:USER_CRE,:DESCR)'
 009F2022    mov         ecx,dword ptr [eax]
 009F2024    call        dword ptr [ecx+38]
 009F2027    mov         edx,9F2AF8;'ID'
 009F202C    mov         eax,ebx
 009F202E    call        006210D4
 009F2033    mov         edx,dword ptr [ebp-8]
 009F2036    mov         ecx,dword ptr [eax]
 009F2038    call        dword ptr [ecx+68]
 009F203B    lea         eax,[ebp-18]
 009F203E    push        eax
 009F203F    mov         ecx,1E
 009F2044    mov         edx,1
 009F2049    mov         eax,[00AC6618];0x0 gvar_00AC6618
 009F204E    call        @LStrCopy
 009F2053    mov         eax,dword ptr [ebp-18]
 009F2056    push        eax
 009F2057    mov         edx,9F2B04;'USER_CRE'
 009F205C    mov         eax,ebx
 009F205E    call        006210D4
 009F2063    pop         edx
 009F2064    mov         ecx,dword ptr [eax]
 009F2066    call        dword ptr [ecx+48]
 009F2069    mov         edx,9F2B18;'DESCR'
 009F206E    mov         eax,ebx
 009F2070    call        006210D4
 009F2075    mov         edx,9F2B28;'== новый приход =='
 009F207A    mov         ecx,dword ptr [eax]
 009F207C    call        dword ptr [ecx+48]
 009F207F    mov         eax,ebx
 009F2081    call        00620CE4
 009F2086    xor         eax,eax
 009F2088    pop         edx
 009F2089    pop         ecx
 009F208A    pop         ecx
 009F208B    mov         dword ptr fs:[eax],edx
>009F208E    jmp         009F20E1
>009F2090    jmp         @HandleOnException
 009F2095    dd          1
 009F2099    dd          00408E24;Exception
 009F209D    dd          009F20A1
 009F20A1    mov         ebx,eax
 009F20A3    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F20A8    mov         eax,dword ptr [eax]
 009F20AA    mov         eax,dword ptr [eax+58]
 009F20AD    mov         edx,dword ptr [eax]
 009F20AF    call        dword ptr [edx+164]
 009F20B5    mov         ecx,dword ptr [ebx+4];Exception.FMessage:String
 009F20B8    lea         eax,[ebp-1C]
 009F20BB    mov         edx,9F2B44;'Ошибка ввода строки прихода!'+#13+#13
 009F20C0    call        @LStrCat3
 009F20C5    mov         eax,dword ptr [ebp-1C]
 009F20C8    call        ShowMessage
 009F20CD    call        @DoneExcept
 009F20D2    call        @TryFinallyExit
>009F20D7    jmp         009F299D
 009F20DC    call        @DoneExcept
 009F20E1    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F20E6    mov         eax,dword ptr [eax]
 009F20E8    mov         eax,dword ptr [eax+358]
 009F20EE    xor         edx,edx
 009F20F0    call        TControl.SetVisible
 009F20F5    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F20FA    mov         eax,dword ptr [eax]
 009F20FC    mov         eax,dword ptr [eax+340]
 009F2102    xor         edx,edx
 009F2104    call        TControl.SetVisible
 009F2109    push        dword ptr ds:[0ACEBE4]
 009F210F    push        dword ptr ds:[0ACEBE0];gvar_00ACEBE0:Double
 009F2115    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F211A    mov         eax,dword ptr [eax]
 009F211C    mov         eax,dword ptr [eax+34C]
 009F2122    mov         edx,dword ptr [eax]
 009F2124    call        dword ptr [edx+12C]
 009F212A    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F212F    mov         eax,dword ptr [eax]
 009F2131    mov         edx,dword ptr [ebp-8]
 009F2134    mov         dword ptr [eax+50C],edx
 009F213A    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F213F    mov         eax,dword ptr [eax]
 009F2141    mov         byte ptr [eax+510],1
 009F2148    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F214D    mov         eax,dword ptr [eax]
 009F214F    mov         byte ptr [eax+511],0
 009F2156    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F215B    mov         eax,dword ptr [eax]
 009F215D    mov         eax,dword ptr [eax+398]
 009F2163    call        TDataSet.Close
 009F2168    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F216D    mov         eax,dword ptr [eax]
 009F216F    mov         eax,dword ptr [eax+398]
 009F2175    call        TDataSet.Open
 009F217A    lea         eax,[ebp-2C]
 009F217D    mov         edx,2
 009F2182    mov         cl,1
 009F2184    call        @VarFromInt
 009F2189    lea         edx,[ebp-2C]
 009F218C    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F2191    mov         eax,dword ptr [eax]
 009F2193    mov         eax,dword ptr [eax+390]
 009F2199    call        TDBLookupControl.SetKeyValue
 009F219E    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F21A3    mov         eax,dword ptr [eax]
 009F21A5    mov         ebx,dword ptr [eax+390]
 009F21AB    mov         edx,dword ptr [ebp-4]
 009F21AE    mov         eax,dword ptr [ebx+124]
 009F21B4    call        dword ptr [ebx+120]
 009F21BA    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F21BF    mov         eax,dword ptr [eax]
 009F21C1    mov         eax,dword ptr [eax+33C]
 009F21C7    call        TDataSet.Close
 009F21CC    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F21D1    mov         eax,dword ptr [eax]
 009F21D3    mov         eax,dword ptr [eax+33C]
 009F21D9    mov         edx,9F2B6C;'ID_OPER'
 009F21DE    call        006210D4
 009F21E3    mov         edx,dword ptr [ebp-8]
 009F21E6    mov         ecx,dword ptr [eax]
 009F21E8    call        dword ptr [ecx+68]
 009F21EB    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F21F0    mov         eax,dword ptr [eax]
 009F21F2    mov         eax,dword ptr [eax+33C]
 009F21F8    call        TDataSet.Open
 009F21FD    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F2202    mov         eax,dword ptr [eax]
 009F2204    mov         edx,dword ptr [eax]
 009F2206    call        dword ptr [edx+0EC]
 009F220C    mov         eax,[00AC721C];^Application:TApplication
 009F2211    mov         eax,dword ptr [eax]
 009F2213    call        TApplication.ProcessMessages
 009F2218    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F221D    mov         eax,dword ptr [eax]
 009F221F    cmp         dword ptr [eax+24C],1
>009F2226    jne         009F2954
 009F222C    xor         eax,eax
 009F222E    push        ebp
 009F222F    push        9F2910
 009F2234    push        dword ptr fs:[eax]
 009F2237    mov         dword ptr fs:[eax],esp
 009F223A    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F223F    mov         eax,dword ptr [eax]
 009F2241    mov         eax,dword ptr [eax+34C]
 009F2247    call        006A90E4
 009F224C    add         esp,0FFFFFFF8
 009F224F    fstp        qword ptr [esp]
 009F2252    wait
 009F2253    mov         eax,dword ptr [ebp-4]
 009F2256    mov         eax,dword ptr [eax+32C];TMainFormMarketSklad.cbSklad:TDBLookupComboBox
 009F225C    add         eax,240;TDBLookupComboBox.FKeyValue:Variant
 009F2261    call        @VarToInteger
 009F2266    mov         edx,eax
 009F2268    mov         eax,dword ptr [ebp-4]
 009F226B    call        TMainFormMarketSklad.GetNextOpNumTo
 009F2270    mov         ebx,eax
 009F2272    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F2277    mov         eax,dword ptr [eax]
 009F2279    mov         eax,dword ptr [eax+60]
 009F227C    mov         dword ptr [ebp-14],eax
 009F227F    mov         eax,dword ptr [ebp-14]
 009F2282    call        TDataSet.Close
 009F2287    mov         eax,dword ptr [ebp-14]
 009F228A    call        TOraQuery.GetSQL
 009F228F    mov         edx,dword ptr [eax]
 009F2291    call        dword ptr [edx+44]
 009F2294    mov         eax,dword ptr [ebp-14]
 009F2297    call        TOraQuery.GetSQL
 009F229C    mov         edx,9F2B7C;'UPDATE OPERS SET DATE_OPER=:DATE_OPER,NUM_OPER=:NUM_OPER,'
 009F22A1    mov         ecx,dword ptr [eax]
 009F22A3    call        dword ptr [ecx+38]
 009F22A6    mov         eax,dword ptr [ebp-14]
 009F22A9    call        TOraQuery.GetSQL
 009F22AE    mov         edx,9F2BC0;'ID_OPER_TYPE=:ID_OPER_TYPE,ID_KL_CEH_FROM=:ID_KL_CEH_FROM,'
 009F22B3    mov         ecx,dword ptr [eax]
 009F22B5    call        dword ptr [ecx+38]
 009F22B8    mov         eax,dword ptr [ebp-14]
 009F22BB    call        TOraQuery.GetSQL
 009F22C0    mov         edx,9F2C04;'ID_KL_CEH_TO=:ID_KL_CEH_TO,DESCR=:DESCR,SUMALL_NO_NDS=:SUMALL_NO_NDS,'
 009F22C5    mov         ecx,dword ptr [eax]
 009F22C7    call        dword ptr [ecx+38]
 009F22CA    mov         eax,dword ptr [ebp-14]
 009F22CD    call        TOraQuery.GetSQL
 009F22D2    mov         edx,9F2C54;'SUMALL_NDS=:SUMALL_NDS,OTSROCHKA_OPL=:OTSROCHKA_OPL,'
 009F22D7    mov         ecx,dword ptr [eax]
 009F22D9    call        dword ptr [ecx+38]
 009F22DC    mov         eax,dword ptr [ebp-14]
 009F22DF    call        TOraQuery.GetSQL
 009F22E4    mov         edx,9F2C94;'NUM_NAKL_EXT=:NUM_NAKL_EXT,DATE_NAKL_EXT=:DATE_NAKL_EXT, NUM_SF_EXT=:NUM_SF_...
 009F22E9    mov         ecx,dword ptr [eax]
 009F22EB    call        dword ptr [ecx+38]
 009F22EE    mov         eax,dword ptr [ebp-14]
 009F22F1    call        TOraQuery.GetSQL
 009F22F6    mov         edx,9F2CF0;'PRIH_SKIDKA_PERC=:PRIH_SKIDKA_PERC,IS_SKIDKA_PRESENT=:IS_SKIDKA_PRESENT,'
 009F22FB    mov         ecx,dword ptr [eax]
 009F22FD    call        dword ptr [ecx+38]
 009F2300    mov         eax,dword ptr [ebp-14]
 009F2303    call        TOraQuery.GetSQL
 009F2308    mov         edx,9F2D44;'IS_SKIDKA_EXECUTE=:IS_SKIDKA_EXECUTE,ID_USER_CRE=:ID_USER_CRE '
 009F230D    mov         ecx,dword ptr [eax]
 009F230F    call        dword ptr [ecx+38]
 009F2312    mov         eax,dword ptr [ebp-14]
 009F2315    call        TOraQuery.GetSQL
 009F231A    mov         edx,9F2D8C;'WHERE ID=:ID'
 009F231F    mov         ecx,dword ptr [eax]
 009F2321    call        dword ptr [ecx+38]
 009F2324    mov         edx,9F2AF8;'ID'
 009F2329    mov         eax,dword ptr [ebp-14]
 009F232C    call        006210D4
 009F2331    mov         edx,dword ptr [ebp-8]
 009F2334    mov         ecx,dword ptr [eax]
 009F2336    call        dword ptr [ecx+68]
 009F2339    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F233E    mov         eax,dword ptr [eax]
 009F2340    mov         eax,dword ptr [eax+34C]
 009F2346    call        006A90E4
 009F234B    add         esp,0FFFFFFF8
 009F234E    fstp        qword ptr [esp]
 009F2351    wait
 009F2352    mov         edx,9F2DA4;'DATE_OPER'
 009F2357    mov         eax,dword ptr [ebp-14]
 009F235A    call        006210D4
 009F235F    call        TParam.SetAsDate
 009F2364    mov         edx,9F2DB8;'NUM_OPER'
 009F2369    mov         eax,dword ptr [ebp-14]
 009F236C    call        006210D4
 009F2371    mov         edx,ebx
 009F2373    mov         ecx,dword ptr [eax]
 009F2375    call        dword ptr [ecx+68]
 009F2378    mov         edx,9F2DCC;'ID_OPER_TYPE'
 009F237D    mov         eax,dword ptr [ebp-14]
 009F2380    call        006210D4
 009F2385    push        eax
 009F2386    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F238B    mov         eax,dword ptr [eax]
 009F238D    mov         eax,dword ptr [eax+390]
 009F2393    add         eax,240
 009F2398    call        @VarToInteger
 009F239D    mov         edx,eax
 009F239F    pop         eax
 009F23A0    mov         ecx,dword ptr [eax]
 009F23A2    call        dword ptr [ecx+68]
 009F23A5    mov         edx,9F2DE4;'ID_KL_CEH_FROM'
 009F23AA    mov         eax,dword ptr [ebp-14]
 009F23AD    call        006210D4
 009F23B2    mov         edx,dword ptr ds:[0AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F23B8    mov         edx,dword ptr [edx]
 009F23BA    mov         edx,dword ptr [edx+508]
 009F23C0    mov         ecx,dword ptr [eax]
 009F23C2    call        dword ptr [ecx+68]
 009F23C5    mov         edx,9F2DFC;'ID_KL_CEH_TO'
 009F23CA    mov         eax,dword ptr [ebp-14]
 009F23CD    call        006210D4
 009F23D2    push        eax
 009F23D3    mov         eax,dword ptr [ebp-4]
 009F23D6    mov         eax,dword ptr [eax+32C];TMainFormMarketSklad.cbSklad:TDBLookupComboBox
 009F23DC    add         eax,240;TDBLookupComboBox.FKeyValue:Variant
 009F23E1    call        @VarToInteger
 009F23E6    mov         edx,eax
 009F23E8    pop         eax
 009F23E9    mov         ecx,dword ptr [eax]
 009F23EB    call        dword ptr [ecx+68]
 009F23EE    lea         edx,[ebp-30]
 009F23F1    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F23F6    mov         eax,dword ptr [eax]
 009F23F8    mov         eax,dword ptr [eax+354]
 009F23FE    call        TControl.GetText
 009F2403    mov         eax,dword ptr [ebp-30]
 009F2406    push        eax
 009F2407    mov         edx,9F2B18;'DESCR'
 009F240C    mov         eax,dword ptr [ebp-14]
 009F240F    call        006210D4
 009F2414    pop         edx
 009F2415    mov         ecx,dword ptr [eax]
 009F2417    call        dword ptr [ecx+48]
 009F241A    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F241F    mov         eax,dword ptr [eax]
 009F2421    cmp         byte ptr [eax+512],0
>009F2428    je          009F2467
 009F242A    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F242F    mov         eax,dword ptr [eax]
 009F2431    mov         eax,dword ptr [eax+36C]
 009F2437    mov         edx,9F2E14;'SUMMA_ALL_BY_PRICES'
 009F243C    call        TDataSet.FieldByName
 009F2441    mov         edx,dword ptr [eax]
 009F2443    call        dword ptr [edx+4C];TField.GetAsCurrency
 009F2446    fdiv        dword ptr ds:[9F2E28];10000:Single
 009F244C    add         esp,0FFFFFFF8
 009F244F    fstp        qword ptr [esp]
 009F2452    wait
 009F2453    mov         edx,9F2E34;'SUMALL_NO_NDS'
 009F2458    mov         eax,dword ptr [ebp-14]
 009F245B    call        006210D4
 009F2460    mov         edx,dword ptr [eax]
 009F2462    call        dword ptr [edx+78]
>009F2465    jmp         009F24A2
 009F2467    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F246C    mov         eax,dword ptr [eax]
 009F246E    mov         eax,dword ptr [eax+36C]
 009F2474    mov         edx,9F2E4C;'SUMMA_ALL'
 009F2479    call        TDataSet.FieldByName
 009F247E    mov         edx,dword ptr [eax]
 009F2480    call        dword ptr [edx+4C];TField.GetAsCurrency
 009F2483    fdiv        dword ptr ds:[9F2E28];10000:Single
 009F2489    add         esp,0FFFFFFF8
 009F248C    fstp        qword ptr [esp]
 009F248F    wait
 009F2490    mov         edx,9F2E34;'SUMALL_NO_NDS'
 009F2495    mov         eax,dword ptr [ebp-14]
 009F2498    call        006210D4
 009F249D    mov         edx,dword ptr [eax]
 009F249F    call        dword ptr [edx+78]
 009F24A2    push        0
 009F24A4    push        0
 009F24A6    mov         edx,9F2E60;'SUMALL_NDS'
 009F24AB    mov         eax,dword ptr [ebp-14]
 009F24AE    call        006210D4
 009F24B3    mov         edx,dword ptr [eax]
 009F24B5    call        dword ptr [edx+78]
 009F24B8    lea         edx,[ebp-34]
 009F24BB    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F24C0    mov         eax,dword ptr [eax]
 009F24C2    mov         eax,dword ptr [eax+380]
 009F24C8    call        TControl.GetText
 009F24CD    mov         eax,dword ptr [ebp-34]
 009F24D0    push        eax
 009F24D1    mov         edx,9F2E74;'NUM_NAKL_EXT'
 009F24D6    mov         eax,dword ptr [ebp-14]
 009F24D9    call        006210D4
 009F24DE    pop         edx
 009F24DF    mov         ecx,dword ptr [eax]
 009F24E1    call        dword ptr [ecx+48]
 009F24E4    lea         edx,[ebp-38]
 009F24E7    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F24EC    mov         eax,dword ptr [eax]
 009F24EE    mov         eax,dword ptr [eax+388]
 009F24F4    call        TControl.GetText
 009F24F9    mov         eax,dword ptr [ebp-38]
 009F24FC    push        eax
 009F24FD    mov         edx,9F2E8C;'NUM_SF_EXT'
 009F2502    mov         eax,dword ptr [ebp-14]
 009F2505    call        006210D4
 009F250A    pop         edx
 009F250B    mov         ecx,dword ptr [eax]
 009F250D    call        dword ptr [ecx+48]
 009F2510    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F2515    mov         eax,dword ptr [eax]
 009F2517    mov         eax,dword ptr [eax+3F0]
 009F251D    mov         edx,dword ptr [eax]
 009F251F    call        dword ptr [edx+0C8]
 009F2525    test        al,al
>009F2527    je          009F2564
 009F2529    mov         edx,9F2EA0;'OTSROCHKA_OPL'
 009F252E    mov         eax,dword ptr [ebp-14]
 009F2531    call        006210D4
 009F2536    push        eax
 009F2537    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F253C    mov         eax,dword ptr [eax]
 009F253E    mov         eax,dword ptr [eax+3F4]
 009F2544    call        006A90E4
 009F2549    fstp        qword ptr [ebp-40]
 009F254C    wait
 009F254D    call        Date
 009F2552    fsubr       qword ptr [ebp-40]
 009F2555    call        @TRUNC
 009F255A    mov         edx,eax
 009F255C    pop         eax
 009F255D    mov         ecx,dword ptr [eax]
 009F255F    call        dword ptr [ecx+68]
>009F2562    jmp         009F2578
 009F2564    mov         edx,9F2EA0;'OTSROCHKA_OPL'
 009F2569    mov         eax,dword ptr [ebp-14]
 009F256C    call        006210D4
 009F2571    xor         edx,edx
 009F2573    mov         ecx,dword ptr [eax]
 009F2575    call        dword ptr [ecx+68]
 009F2578    xor         eax,eax
 009F257A    push        ebp
 009F257B    push        9F25DA
 009F2580    push        dword ptr fs:[eax]
 009F2583    mov         dword ptr fs:[eax],esp
 009F2586    lea         edx,[ebp-44]
 009F2589    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F258E    mov         eax,dword ptr [eax]
 009F2590    mov         eax,dword ptr [eax+384]
 009F2596    call        TCustomMaskEdit.GetText
 009F259B    mov         eax,dword ptr [ebp-44]
 009F259E    call        StrToDate
 009F25A3    fstp        st(0)
 009F25A5    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F25AA    mov         eax,dword ptr [eax]
 009F25AC    mov         eax,dword ptr [eax+384]
 009F25B2    call        006A90E4
 009F25B7    add         esp,0FFFFFFF8
 009F25BA    fstp        qword ptr [esp]
 009F25BD    wait
 009F25BE    mov         edx,9F2EB8;'DATE_NAKL_EXT'
 009F25C3    mov         eax,dword ptr [ebp-14]
 009F25C6    call        006210D4
 009F25CB    call        TParam.SetAsDate
 009F25D0    xor         eax,eax
 009F25D2    pop         edx
 009F25D3    pop         ecx
 009F25D4    pop         ecx
 009F25D5    mov         dword ptr fs:[eax],edx
>009F25D8    jmp         009F2606
>009F25DA    jmp         @HandleAnyException
 009F25DF    mov         edx,9F2EB8;'DATE_NAKL_EXT'
 009F25E4    mov         eax,dword ptr [ebp-14]
 009F25E7    call        006210D4
 009F25EC    push        eax
 009F25ED    lea         eax,[ebp-54]
 009F25F0    call        Null
 009F25F5    lea         edx,[ebp-54]
 009F25F8    pop         eax
 009F25F9    mov         ecx,dword ptr [eax]
 009F25FB    call        dword ptr [ecx+0A0]
 009F2601    call        @DoneExcept
 009F2606    mov         edx,9F2ED0;'IS_SKIDKA_PRESENT'
 009F260B    mov         eax,dword ptr [ebp-14]
 009F260E    call        006210D4
 009F2613    mov         edx,dword ptr ds:[0AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F2619    mov         edx,dword ptr [edx]
 009F261B    mov         edx,dword ptr [edx+41C]
 009F2621    mov         edx,dword ptr [edx+218]
 009F2627    mov         ecx,dword ptr [eax]
 009F2629    call        dword ptr [ecx+68]
 009F262C    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F2631    mov         eax,dword ptr [eax]
 009F2633    mov         eax,dword ptr [eax+448]
 009F2639    mov         edx,dword ptr [eax]
 009F263B    call        dword ptr [edx+0C8]
 009F2641    test        al,al
>009F2643    je          009F2689
 009F2645    mov         edx,9F2EEC;'IS_SKIDKA_EXECUTE'
 009F264A    mov         eax,dword ptr [ebp-14]
 009F264D    call        006210D4
 009F2652    mov         edx,1
 009F2657    mov         ecx,dword ptr [eax]
 009F2659    call        dword ptr [ecx+68]
 009F265C    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F2661    mov         eax,dword ptr [eax]
 009F2663    mov         eax,dword ptr [eax+43C]
 009F2669    call        TCurrencyEdit.GetValue
 009F266E    add         esp,0FFFFFFF8
 009F2671    fstp        qword ptr [esp]
 009F2674    wait
 009F2675    mov         edx,9F2F08;'PRIH_SKIDKA_PERC'
 009F267A    mov         eax,dword ptr [ebp-14]
 009F267D    call        006210D4
 009F2682    mov         edx,dword ptr [eax]
 009F2684    call        dword ptr [edx+78]
>009F2687    jmp         009F26B3
 009F2689    mov         edx,9F2EEC;'IS_SKIDKA_EXECUTE'
 009F268E    mov         eax,dword ptr [ebp-14]
 009F2691    call        006210D4
 009F2696    xor         edx,edx
 009F2698    mov         ecx,dword ptr [eax]
 009F269A    call        dword ptr [ecx+68]
 009F269D    push        0
 009F269F    push        0
 009F26A1    mov         edx,9F2F08;'PRIH_SKIDKA_PERC'
 009F26A6    mov         eax,dword ptr [ebp-14]
 009F26A9    call        006210D4
 009F26AE    mov         edx,dword ptr [eax]
 009F26B0    call        dword ptr [edx+78]
 009F26B3    mov         edx,9F2F24;'ID_USER_CRE'
 009F26B8    mov         eax,dword ptr [ebp-14]
 009F26BB    call        006210D4
 009F26C0    mov         edx,dword ptr ds:[0AC6614];0x1 gvar_00AC6614:Longint
 009F26C6    mov         ecx,dword ptr [eax]
 009F26C8    call        dword ptr [ecx+68]
 009F26CB    mov         eax,dword ptr [ebp-14]
 009F26CE    call        00620CE4
 009F26D3    mov         eax,dword ptr [ebp-8]
 009F26D6    cdq
 009F26D7    push        edx
 009F26D8    push        eax
 009F26D9    call        009763A4
 009F26DE    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F26E3    mov         eax,dword ptr [eax]
 009F26E5    mov         eax,dword ptr [eax+3A8]
 009F26EB    call        TCurrencyEdit.GetValue
 009F26F0    fmul        dword ptr ds:[9F2E28];10000:Single
 009F26F6    fistp       qword ptr [ebp-10]
 009F26F9    wait
 009F26FA    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F26FF    mov         eax,dword ptr [eax]
 009F2701    cmp         dword ptr [eax+508],0
>009F2708    jne         009F272A
 009F270A    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F270F    mov         eax,dword ptr [eax]
 009F2711    mov         eax,dword ptr [eax+36C]
 009F2717    mov         edx,9F2E14;'SUMMA_ALL_BY_PRICES'
 009F271C    call        TDataSet.FieldByName
 009F2721    mov         edx,dword ptr [eax]
 009F2723    call        dword ptr [edx+4C];TField.GetAsCurrency
 009F2726    fistp       qword ptr [ebp-10]
 009F2729    wait
 009F272A    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F272F    mov         eax,dword ptr [eax]
 009F2731    cmp         dword ptr [eax+508],3
>009F2738    jne         009F275A
 009F273A    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F273F    mov         eax,dword ptr [eax]
 009F2741    mov         eax,dword ptr [eax+36C]
 009F2747    mov         edx,9F2E4C;'SUMMA_ALL'
 009F274C    call        TDataSet.FieldByName
 009F2751    mov         edx,dword ptr [eax]
 009F2753    call        dword ptr [edx+4C];TField.GetAsCurrency
 009F2756    fistp       qword ptr [ebp-10]
 009F2759    wait
 009F275A    mov         eax,dword ptr [ebp-8]
 009F275D    cdq
 009F275E    push        edx
 009F275F    push        eax
 009F2760    push        dword ptr [ebp-0C]
 009F2763    push        dword ptr [ebp-10]
 009F2766    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F276B    mov         eax,dword ptr [eax]
 009F276D    mov         eax,dword ptr [eax+3AC]
 009F2773    add         eax,240
 009F2778    call        @VarToInteger
 009F277D    mov         edx,eax
 009F277F    mov         eax,1
 009F2784    call        007A5028
 009F2789    push        9F2F38;'Ввод нового прихода от '
 009F278E    lea         edx,[ebp-5C]
 009F2791    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F2796    mov         eax,dword ptr [eax]
 009F2798    mov         eax,dword ptr [eax+350]
 009F279E    call        TControl.GetText
 009F27A3    push        dword ptr [ebp-5C]
 009F27A6    push        9F2F58;':'
 009F27AB    lea         edx,[ebp-60]
 009F27AE    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F27B3    mov         eax,dword ptr [eax]
 009F27B5    mov         eax,dword ptr [eax+354]
 009F27BB    call        TControl.GetText
 009F27C0    push        dword ptr [ebp-60]
 009F27C3    lea         eax,[ebp-58]
 009F27C6    mov         edx,4
 009F27CB    call        @LStrCatN
 009F27D0    mov         eax,dword ptr [ebp-58]
 009F27D3    push        eax
 009F27D4    lea         eax,[ebp-64]
 009F27D7    push        eax
 009F27D8    mov         ecx,19
 009F27DD    mov         edx,1
 009F27E2    mov         eax,[00AC6618];0x0 gvar_00AC6618
 009F27E7    call        @LStrCopy
 009F27EC    mov         eax,dword ptr [ebp-64]
 009F27EF    push        eax
 009F27F0    mov         ecx,dword ptr [ebp-8]
 009F27F3    xor         edx,edx
 009F27F5    mov         al,1
 009F27F7    call        007A35C0
 009F27FC    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F2801    mov         eax,dword ptr [eax]
 009F2803    mov         eax,dword ptr [eax+58]
 009F2806    mov         edx,dword ptr [eax]
 009F2808    call        dword ptr [edx+160]
 009F280E    lea         edx,[ebp-6C]
 009F2811    mov         eax,[00ACEBDC];gvar_00ACEBDC:TMainFormMarketSklad
 009F2816    call        TMainFormMarketSklad.GetIdCehStr
 009F281B    push        dword ptr [ebp-6C]
 009F281E    push        9F2F64;'-'
 009F2823    push        dword ptr ds:[0AC6648];^'JJJ'
 009F2829    push        9F2F70;'-MARKET_SKLAD'
 009F282E    lea         eax,[ebp-68]
 009F2831    mov         edx,4
 009F2836    call        @LStrCatN
 009F283B    mov         ecx,dword ptr [ebp-68]
 009F283E    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F2843    mov         eax,dword ptr [eax]
 009F2845    mov         eax,dword ptr [eax+74]
 009F2848    mov         edx,9F2F88;'MARKET_PRIH'
 009F284D    call        006AAFE8
 009F2852    mov         eax,dword ptr [ebp-4]
 009F2855    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F285B    call        TDataSet.Close
 009F2860    mov         eax,dword ptr [ebp-4]
 009F2863    mov         eax,dword ptr [eax+370];TMainFormMarketSklad.deBgn:TDateEdit
 009F2869    call        006A90E4
 009F286E    add         esp,0FFFFFFF8
 009F2871    fstp        qword ptr [esp]
 009F2874    wait
 009F2875    mov         eax,dword ptr [ebp-4]
 009F2878    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F287E    mov         edx,9F2F9C;'DATE_BGN'
 009F2883    call        006210D4
 009F2888    call        TParam.SetAsDate
 009F288D    mov         eax,dword ptr [ebp-4]
 009F2890    mov         eax,dword ptr [eax+374];TMainFormMarketSklad.deEnd:TDateEdit
 009F2896    call        006A90E4
 009F289B    add         esp,0FFFFFFF8
 009F289E    fstp        qword ptr [esp]
 009F28A1    wait
 009F28A2    mov         eax,dword ptr [ebp-4]
 009F28A5    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F28AB    mov         edx,9F2FB0;'DATE_END'
 009F28B0    call        006210D4
 009F28B5    call        TParam.SetAsDate
 009F28BA    mov         eax,dword ptr [ebp-4]
 009F28BD    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F28C3    call        TDataSet.Open
 009F28C8    mov         al,[009F2FBC];0x0 gvar_009F2FBC
 009F28CD    push        eax
 009F28CE    lea         eax,[ebp-7C]
 009F28D1    mov         edx,dword ptr [ebp-8]
 009F28D4    mov         cl,0FC
 009F28D6    call        @VarFromInt
 009F28DB    lea         ecx,[ebp-7C]
 009F28DE    mov         eax,dword ptr [ebp-4]
 009F28E1    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F28E7    mov         edx,9F2AF8;'ID'
 009F28EC    mov         ebx,dword ptr [eax]
 009F28EE    call        dword ptr [ebx+244];TMemDataSet.Locate
 009F28F4    mov         eax,dword ptr [ebp-4]
 009F28F7    mov         eax,dword ptr [eax+388];TMainFormMarketSklad.aProvodPrihod:TAction
 009F28FD    mov         si,0FFEF
 009F2901    call        @CallDynaInst;TCustomAction.Execute
 009F2906    xor         eax,eax
 009F2908    pop         edx
 009F2909    pop         ecx
 009F290A    pop         ecx
 009F290B    mov         dword ptr fs:[eax],edx
>009F290E    jmp         009F2966
>009F2910    jmp         @HandleOnException
 009F2915    dd          1
 009F2919    dd          00408E24;Exception
 009F291D    dd          009F2921
 009F2921    mov         ebx,eax
 009F2923    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F2928    mov         eax,dword ptr [eax]
 009F292A    mov         eax,dword ptr [eax+58]
 009F292D    mov         edx,dword ptr [eax]
 009F292F    call        dword ptr [edx+164]
 009F2935    mov         ecx,dword ptr [ebx+4];Exception.FMessage:String
 009F2938    lea         eax,[ebp-80]
 009F293B    mov         edx,9F2FC8;'Ошибка сохранения прихода!'+#13+#13
 009F2940    call        @LStrCat3
 009F2945    mov         eax,dword ptr [ebp-80]
 009F2948    call        ShowMessage
 009F294D    call        @DoneExcept
>009F2952    jmp         009F2966
 009F2954    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F2959    mov         eax,dword ptr [eax]
 009F295B    mov         eax,dword ptr [eax+58]
 009F295E    mov         edx,dword ptr [eax]
 009F2960    call        dword ptr [edx+164]
 009F2966    xor         eax,eax
 009F2968    pop         edx
 009F2969    pop         ecx
 009F296A    pop         ecx
 009F296B    mov         dword ptr fs:[eax],edx
 009F296E    push        9F299D
 009F2973    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F2978    mov         eax,dword ptr [eax]
 009F297A    mov         eax,dword ptr [eax+58]
 009F297D    mov         dl,1
 009F297F    call        TOraSession.SetAutoCommit
 009F2984    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F2989    mov         eax,dword ptr [eax]
 009F298B    mov         eax,dword ptr [eax+60]
 009F298E    mov         dl,1
 009F2990    call        TOraQuery.SetAutoCommit
 009F2995    ret
>009F2996    jmp         @HandleFinally
>009F299B    jmp         009F2973
 009F299D    xor         eax,eax
 009F299F    pop         edx
 009F29A0    pop         ecx
 009F29A1    pop         ecx
 009F29A2    mov         dword ptr fs:[eax],edx
 009F29A5    push        9F2A16
 009F29AA    lea         eax,[ebp-80]
 009F29AD    call        @LStrClr
 009F29B2    lea         eax,[ebp-7C]
 009F29B5    call        @VarClr
 009F29BA    lea         eax,[ebp-6C]
 009F29BD    mov         edx,3
 009F29C2    call        @LStrArrayClr
 009F29C7    lea         eax,[ebp-60]
 009F29CA    mov         edx,2
 009F29CF    call        @LStrArrayClr
 009F29D4    lea         eax,[ebp-58]
 009F29D7    call        @LStrClr
 009F29DC    lea         eax,[ebp-54]
 009F29DF    call        @VarClr
 009F29E4    lea         eax,[ebp-44]
 009F29E7    call        @LStrClr
 009F29EC    lea         eax,[ebp-38]
 009F29EF    mov         edx,3
 009F29F4    call        @LStrArrayClr
 009F29F9    lea         eax,[ebp-2C]
 009F29FC    call        @VarClr
 009F2A01    lea         eax,[ebp-1C]
 009F2A04    mov         edx,2
 009F2A09    call        @LStrArrayClr
 009F2A0E    ret
>009F2A0F    jmp         @HandleFinally
>009F2A14    jmp         009F29AA
 009F2A16    pop         edi
 009F2A17    pop         esi
 009F2A18    pop         ebx
 009F2A19    mov         esp,ebp
 009F2A1B    pop         ebp
 009F2A1C    ret
*}
end;

//009F2FE8
procedure TMainFormMarketSklad.aAddPrihExecute;
begin
{*
 009F2FE8    push        ebp
 009F2FE9    mov         ebp,esp
 009F2FEB    push        0
 009F2FED    push        0
 009F2FEF    push        ebx
 009F2FF0    push        esi
 009F2FF1    mov         ebx,eax
 009F2FF3    xor         eax,eax
 009F2FF5    push        ebp
 009F2FF6    push        9F30D6
 009F2FFB    push        dword ptr fs:[eax]
 009F2FFE    mov         dword ptr fs:[eax],esp
 009F3001    lea         edx,[ebp-8]
 009F3004    mov         eax,dword ptr [ebx+8BC];TMainFormMarketSklad.EditFindNakl:TEdit
 009F300A    call        TControl.GetText
 009F300F    cmp         dword ptr [ebp-8],0
>009F3013    je          009F3036
 009F3015    xor         edx,edx
 009F3017    mov         eax,dword ptr [ebx+8BC];TMainFormMarketSklad.EditFindNakl:TEdit
 009F301D    call        TControl.SetText
 009F3022    mov         esi,dword ptr [ebx+2F8];TMainFormMarketSklad.PageControl1:TPageControl
 009F3028    mov         edx,ebx
 009F302A    mov         eax,dword ptr [esi+24C];TPageControl.?f24C:TfrxPreview
 009F3030    call        dword ptr [esi+248];TPageControl.FOnChange
 009F3036    mov         eax,ebx
 009F3038    call        TMainFormMarketSklad.NewPrihod
 009F303D    cmp         byte ptr [ebx+9C6],0;TMainFormMarketSklad.?f9C6:byte
>009F3044    je          009F30B8
 009F3046    lea         eax,[ebp-4]
 009F3049    mov         edx,9F30EC;'Необходима синхронизация товаров в весах!'+#13+#13+Cделать это сейчас?'
 009F304E    call        @LStrLAsg
 009F3053    push        24
 009F3055    mov         eax,dword ptr [ebp-4]
 009F3058    call        @LStrToPChar
 009F305D    mov         edx,eax
 009F305F    mov         ecx,9F312C
 009F3064    mov         eax,[00AC721C];^Application:TApplication
 009F3069    mov         eax,dword ptr [eax]
 009F306B    call        TApplication.MessageBox
 009F3070    cmp         eax,6
>009F3073    jne         009F30B8
 009F3075    mov         byte ptr [ebx+9C6],0;TMainFormMarketSklad.?f9C6:byte
 009F307C    mov         eax,[00AC7594];^gvar_00ACE90C:TFormScalesSelect
 009F3081    cmp         dword ptr [eax],0
>009F3084    jne         009F309E
 009F3086    mov         ecx,dword ptr ds:[0AC7594];^gvar_00ACE90C:TFormScalesSelect
 009F308C    mov         eax,[00AC721C];^Application:TApplication
 009F3091    mov         eax,dword ptr [eax]
 009F3093    mov         edx,dword ptr ds:[96FA08];TFormScalesSelect
 009F3099    call        TApplication.CreateForm
 009F309E    mov         eax,[00AC7594];^gvar_00ACE90C:TFormScalesSelect
 009F30A3    mov         eax,dword ptr [eax]
 009F30A5    mov         byte ptr [eax+374],1
 009F30AC    mov         eax,[00AC7594];^gvar_00ACE90C:TFormScalesSelect
 009F30B1    mov         eax,dword ptr [eax]
 009F30B3    call        TCustomForm.Show
 009F30B8    xor         eax,eax
 009F30BA    pop         edx
 009F30BB    pop         ecx
 009F30BC    pop         ecx
 009F30BD    mov         dword ptr fs:[eax],edx
 009F30C0    push        9F30DD
 009F30C5    lea         eax,[ebp-8]
 009F30C8    call        @LStrClr
 009F30CD    lea         eax,[ebp-4]
 009F30D0    call        @LStrClr
 009F30D5    ret
>009F30D6    jmp         @HandleFinally
>009F30DB    jmp         009F30C5
 009F30DD    pop         esi
 009F30DE    pop         ebx
 009F30DF    pop         ecx
 009F30E0    pop         ecx
 009F30E1    pop         ebp
 009F30E2    ret
*}
end;

//009F3140
procedure TMainFormMarketSklad.EdtPrihod;
begin
{*
 009F3140    push        ebp
 009F3141    mov         ebp,esp
 009F3143    mov         ecx,2B
 009F3148    push        0
 009F314A    push        0
 009F314C    dec         ecx
>009F314D    jne         009F3148
 009F314F    push        ecx
 009F3150    push        ebx
 009F3151    push        esi
 009F3152    push        edi
 009F3153    mov         dword ptr [ebp-4],eax
 009F3156    xor         eax,eax
 009F3158    push        ebp
 009F3159    push        9F42BE
 009F315E    push        dword ptr fs:[eax]
 009F3161    mov         dword ptr fs:[eax],esp
 009F3164    lea         ecx,[ebp-34]
 009F3167    mov         eax,dword ptr [ebp-4]
 009F316A    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F3170    mov         edx,9F42D8;'ID'
 009F3175    call        TDataSet.GetFieldValue
 009F317A    lea         eax,[ebp-34]
 009F317D    call        @VarToInteger
 009F3182    mov         dword ptr [ebp-8],eax
 009F3185    mov         edx,dword ptr [ebp-8]
 009F3188    mov         eax,9F42E4;'OPERS'
 009F318D    call        007A1E78
 009F3192    test        al,al
>009F3194    jne         009F41E2
 009F319A    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F319F    mov         eax,dword ptr [eax]
 009F31A1    mov         eax,dword ptr [eax+58]
 009F31A4    xor         edx,edx
 009F31A6    call        TOraSession.SetAutoCommit
 009F31AB    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F31B0    mov         eax,dword ptr [eax]
 009F31B2    mov         eax,dword ptr [eax+60]
 009F31B5    xor         edx,edx
 009F31B7    call        TOraQuery.SetAutoCommit
 009F31BC    xor         eax,eax
 009F31BE    mov         dword ptr [ebp-20],eax
 009F31C1    mov         dword ptr [ebp-1C],eax
 009F31C4    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F31C9    cmp         dword ptr [eax],0
>009F31CC    jne         009F31E5
 009F31CE    mov         ecx,dword ptr [ebp-4]
 009F31D1    mov         dl,1
 009F31D3    mov         eax,[009854F4];TFormEditOperPrihod
 009F31D8    call        TCustomForm.Create;TFormEditOperPrihod.Create
 009F31DD    mov         edx,dword ptr ds:[0AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F31E3    mov         dword ptr [edx],eax
 009F31E5    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F31EA    mov         eax,dword ptr [eax]
 009F31EC    call        TFormEditOperPrihod.ClearControls
 009F31F1    xor         edx,edx
 009F31F3    push        ebp
 009F31F4    push        9F41DB
 009F31F9    push        dword ptr fs:[edx]
 009F31FC    mov         dword ptr fs:[edx],esp
 009F31FF    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3204    mov         eax,dword ptr [eax]
 009F3206    mov         byte ptr [eax+510],0
 009F320D    lea         ecx,[ebp-44]
 009F3210    mov         eax,dword ptr [ebp-4]
 009F3213    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F3219    mov         edx,9F42F4;'IS_PROV'
 009F321E    call        TDataSet.GetFieldValue
 009F3223    lea         eax,[ebp-44]
 009F3226    push        eax
 009F3227    lea         eax,[ebp-54]
 009F322A    mov         edx,1
 009F322F    mov         cl,1
 009F3231    call        @VarFromInt
 009F3236    lea         edx,[ebp-54]
 009F3239    pop         eax
 009F323A    call        @VarCmpEQ
 009F323F    sete        al
 009F3242    mov         edx,dword ptr ds:[0AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3248    mov         edx,dword ptr [edx]
 009F324A    mov         byte ptr [edx+511],al
 009F3250    lea         ecx,[ebp-68]
 009F3253    mov         eax,dword ptr [ebp-4]
 009F3256    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F325C    mov         edx,9F4304;'NUM_OPER'
 009F3261    call        TDataSet.GetFieldValue
 009F3266    lea         edx,[ebp-68]
 009F3269    lea         eax,[ebp-58]
 009F326C    call        @VarToLStr
 009F3271    mov         edx,dword ptr [ebp-58]
 009F3274    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3279    mov         eax,dword ptr [eax]
 009F327B    mov         eax,dword ptr [eax+358]
 009F3281    call        TControl.SetText
 009F3286    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F328B    mov         eax,dword ptr [eax]
 009F328D    mov         eax,dword ptr [eax+358]
 009F3293    mov         dl,1
 009F3295    call        TControl.SetVisible
 009F329A    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F329F    mov         eax,dword ptr [eax]
 009F32A1    mov         eax,dword ptr [eax+340]
 009F32A7    mov         dl,1
 009F32A9    call        TControl.SetVisible
 009F32AE    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F32B3    mov         eax,dword ptr [eax]
 009F32B5    mov         eax,dword ptr [eax+4C0]
 009F32BB    xor         edx,edx
 009F32BD    call        TControl.SetText
 009F32C2    lea         ecx,[ebp-78]
 009F32C5    mov         eax,dword ptr [ebp-4]
 009F32C8    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F32CE    mov         edx,9F4304;'NUM_OPER'
 009F32D3    call        TDataSet.GetFieldValue
 009F32D8    lea         eax,[ebp-78]
 009F32DB    call        @VarToInteger
 009F32E0    mov         dword ptr [ebp-0C],eax
 009F32E3    lea         ecx,[ebp-88]
 009F32E9    mov         eax,dword ptr [ebp-4]
 009F32EC    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F32F2    mov         edx,9F4318;'DATE_OPER'
 009F32F7    call        TDataSet.GetFieldValue
 009F32FC    lea         eax,[ebp-88]
 009F3302    call        @VarToReal
 009F3307    add         esp,0FFFFFFF8
 009F330A    fstp        qword ptr [esp]
 009F330D    wait
 009F330E    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3313    mov         eax,dword ptr [eax]
 009F3315    mov         eax,dword ptr [eax+34C]
 009F331B    mov         edx,dword ptr [eax]
 009F331D    call        dword ptr [edx+12C]
 009F3323    lea         ecx,[ebp-98]
 009F3329    mov         eax,dword ptr [ebp-4]
 009F332C    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F3332    mov         edx,9F4318;'DATE_OPER'
 009F3337    call        TDataSet.GetFieldValue
 009F333C    lea         eax,[ebp-98]
 009F3342    call        @VarToReal
 009F3347    fstp        qword ptr [ebp-18]
 009F334A    wait
 009F334B    lea         ecx,[ebp-0A8]
 009F3351    mov         eax,dword ptr [ebp-4]
 009F3354    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F335A    mov         edx,9F432C;'IS_SKIDKA_PRESENT'
 009F335F    call        TDataSet.GetFieldValue
 009F3364    lea         eax,[ebp-0A8]
 009F336A    push        eax
 009F336B    lea         eax,[ebp-0B8]
 009F3371    mov         edx,1
 009F3376    mov         cl,1
 009F3378    call        @VarFromInt
 009F337D    lea         edx,[ebp-0B8]
 009F3383    pop         eax
 009F3384    call        @VarCmpEQ
 009F3389    sete        al
 009F338C    mov         edx,dword ptr ds:[0AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3392    mov         edx,dword ptr [edx]
 009F3394    mov         byte ptr [edx+513],al
 009F339A    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F339F    mov         eax,dword ptr [eax]
 009F33A1    mov         eax,dword ptr [eax+398]
 009F33A7    call        TDataSet.Close
 009F33AC    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F33B1    mov         eax,dword ptr [eax]
 009F33B3    mov         eax,dword ptr [eax+398]
 009F33B9    call        TDataSet.Open
 009F33BE    lea         ecx,[ebp-0C8]
 009F33C4    mov         eax,dword ptr [ebp-4]
 009F33C7    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F33CD    mov         edx,9F4348;'ID_OPER_TYPE'
 009F33D2    call        TDataSet.GetFieldValue
 009F33D7    lea         edx,[ebp-0C8]
 009F33DD    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F33E2    mov         eax,dword ptr [eax]
 009F33E4    mov         eax,dword ptr [eax+390]
 009F33EA    call        TDBLookupControl.SetKeyValue
 009F33EF    lea         eax,[ebp-0D8]
 009F33F5    mov         edx,5
 009F33FA    mov         cl,1
 009F33FC    call        @VarFromInt
 009F3401    lea         edx,[ebp-0D8]
 009F3407    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F340C    mov         eax,dword ptr [eax]
 009F340E    mov         eax,dword ptr [eax+390]
 009F3414    add         eax,240
 009F3419    call        @VarCmpEQ
>009F341E    jne         009F3546
 009F3424    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3429    mov         eax,dword ptr [eax]
 009F342B    mov         byte ptr [eax+512],1
 009F3432    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3437    mov         eax,dword ptr [eax]
 009F3439    mov         eax,dword ptr [eax+3A4]
 009F343F    mov         edx,9F4360;'Возращено покупателю'
 009F3444    call        TControl.SetText
 009F3449    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F344E    mov         eax,dword ptr [eax]
 009F3450    mov         eax,dword ptr [eax+3B8]
 009F3456    mov         edx,dword ptr [eax+40]
 009F3459    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F345E    mov         eax,dword ptr [eax]
 009F3460    mov         eax,dword ptr [eax+3E4]
 009F3466    call        TControl.SetLeft
 009F346B    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3470    mov         eax,dword ptr [eax]
 009F3472    mov         eax,dword ptr [eax+3E4]
 009F3478    mov         dl,1
 009F347A    call        TControl.SetVisible
 009F347F    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3484    mov         eax,dword ptr [eax]
 009F3486    mov         eax,dword ptr [eax+3B8]
 009F348C    xor         edx,edx
 009F348E    call        TControl.SetVisible
 009F3493    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3498    mov         eax,dword ptr [eax]
 009F349A    mov         eax,dword ptr [eax+414]
 009F34A0    mov         eax,dword ptr [eax+2EC]
 009F34A6    mov         edx,9
 009F34AB    call        00676F60
 009F34B0    xor         edx,edx
 009F34B2    call        TDBLookupGridColumnEh.SetVisible
 009F34B7    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F34BC    mov         eax,dword ptr [eax]
 009F34BE    mov         eax,dword ptr [eax+414]
 009F34C4    mov         eax,dword ptr [eax+2EC]
 009F34CA    mov         edx,0A
 009F34CF    call        00676F60
 009F34D4    mov         dl,1
 009F34D6    call        TDBLookupGridColumnEh.SetVisible
 009F34DB    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F34E0    mov         eax,dword ptr [eax]
 009F34E2    mov         eax,dword ptr [eax+414]
 009F34E8    mov         eax,dword ptr [eax+2EC]
 009F34EE    mov         edx,0B
 009F34F3    call        00676F60
 009F34F8    xor         edx,edx
 009F34FA    call        TDBLookupGridColumnEh.SetVisible
 009F34FF    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3504    mov         eax,dword ptr [eax]
 009F3506    mov         eax,dword ptr [eax+414]
 009F350C    mov         eax,dword ptr [eax+2EC]
 009F3512    mov         edx,0C
 009F3517    call        00676F60
 009F351C    mov         dl,1
 009F351E    call        TDBLookupGridColumnEh.SetVisible
 009F3523    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3528    mov         eax,dword ptr [eax]
 009F352A    mov         eax,dword ptr [eax+408]
 009F3530    mov         edx,1
 009F3535    call        TPageControl.GetPage
 009F353A    xor         edx,edx
 009F353C    call        TTabSheet.SetTabVisible
>009F3541    jmp         009F3641
 009F3546    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F354B    mov         eax,dword ptr [eax]
 009F354D    mov         byte ptr [eax+512],0
 009F3554    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3559    mov         eax,dword ptr [eax]
 009F355B    mov         eax,dword ptr [eax+3A4]
 009F3561    mov         edx,9F4380;'Оплачено поставщику'
 009F3566    call        TControl.SetText
 009F356B    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3570    mov         eax,dword ptr [eax]
 009F3572    mov         eax,dword ptr [eax+3B8]
 009F3578    mov         dl,1
 009F357A    call        TControl.SetVisible
 009F357F    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3584    mov         eax,dword ptr [eax]
 009F3586    mov         eax,dword ptr [eax+3E4]
 009F358C    xor         edx,edx
 009F358E    call        TControl.SetVisible
 009F3593    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3598    mov         eax,dword ptr [eax]
 009F359A    mov         eax,dword ptr [eax+414]
 009F35A0    mov         eax,dword ptr [eax+2EC]
 009F35A6    mov         edx,9
 009F35AB    call        00676F60
 009F35B0    mov         dl,1
 009F35B2    call        TDBLookupGridColumnEh.SetVisible
 009F35B7    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F35BC    mov         eax,dword ptr [eax]
 009F35BE    mov         eax,dword ptr [eax+414]
 009F35C4    mov         eax,dword ptr [eax+2EC]
 009F35CA    mov         edx,0A
 009F35CF    call        00676F60
 009F35D4    xor         edx,edx
 009F35D6    call        TDBLookupGridColumnEh.SetVisible
 009F35DB    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F35E0    mov         eax,dword ptr [eax]
 009F35E2    mov         eax,dword ptr [eax+414]
 009F35E8    mov         eax,dword ptr [eax+2EC]
 009F35EE    mov         edx,0B
 009F35F3    call        00676F60
 009F35F8    mov         dl,1
 009F35FA    call        TDBLookupGridColumnEh.SetVisible
 009F35FF    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3604    mov         eax,dword ptr [eax]
 009F3606    mov         eax,dword ptr [eax+414]
 009F360C    mov         eax,dword ptr [eax+2EC]
 009F3612    mov         edx,0C
 009F3617    call        00676F60
 009F361C    xor         edx,edx
 009F361E    call        TDBLookupGridColumnEh.SetVisible
 009F3623    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3628    mov         eax,dword ptr [eax]
 009F362A    mov         eax,dword ptr [eax+408]
 009F3630    mov         edx,1
 009F3635    call        TPageControl.GetPage
 009F363A    mov         dl,1
 009F363C    call        TTabSheet.SetTabVisible
 009F3641    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3646    mov         eax,dword ptr [eax]
 009F3648    mov         eax,dword ptr [eax+390]
 009F364E    xor         edx,edx
 009F3650    mov         ecx,dword ptr [eax]
 009F3652    call        dword ptr [ecx+64]
 009F3655    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F365A    mov         eax,dword ptr [eax]
 009F365C    mov         eax,dword ptr [eax+33C]
 009F3662    call        TDataSet.Close
 009F3667    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F366C    mov         eax,dword ptr [eax]
 009F366E    mov         eax,dword ptr [eax+33C]
 009F3674    mov         edx,9F439C;'ID_OPER'
 009F3679    call        006210D4
 009F367E    mov         edx,dword ptr [ebp-8]
 009F3681    mov         ecx,dword ptr [eax]
 009F3683    call        dword ptr [ecx+68]
 009F3686    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F368B    mov         eax,dword ptr [eax]
 009F368D    mov         eax,dword ptr [eax+33C]
 009F3693    call        TDataSet.Open
 009F3698    mov         eax,dword ptr [ebp-4]
 009F369B    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F36A1    mov         edx,9F43AC;'NAME_KL_CEH'
 009F36A6    call        TDataSet.FieldByName
 009F36AB    lea         edx,[ebp-0DC]
 009F36B1    mov         ecx,dword ptr [eax]
 009F36B3    call        dword ptr [ecx+60];TField.GetAsString
 009F36B6    mov         edx,dword ptr [ebp-0DC]
 009F36BC    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F36C1    mov         eax,dword ptr [eax]
 009F36C3    mov         eax,dword ptr [eax+350]
 009F36C9    call        TControl.SetText
 009F36CE    mov         eax,dword ptr [ebp-4]
 009F36D1    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F36D7    mov         edx,9F43C0;'DESCR'
 009F36DC    call        TDataSet.FieldByName
 009F36E1    lea         edx,[ebp-0E0]
 009F36E7    mov         ecx,dword ptr [eax]
 009F36E9    call        dword ptr [ecx+60];TField.GetAsString
 009F36EC    mov         edx,dword ptr [ebp-0E0]
 009F36F2    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F36F7    mov         eax,dword ptr [eax]
 009F36F9    mov         eax,dword ptr [eax+354]
 009F36FF    call        TControl.SetText
 009F3704    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3709    mov         eax,dword ptr [eax]
 009F370B    mov         edx,dword ptr [ebp-8]
 009F370E    mov         dword ptr [eax+50C],edx
 009F3714    lea         ecx,[ebp-0F0]
 009F371A    mov         eax,dword ptr [ebp-4]
 009F371D    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F3723    mov         edx,9F43D0;'ID_KL_CEH_FROM'
 009F3728    call        TDataSet.GetFieldValue
 009F372D    lea         eax,[ebp-0F0]
 009F3733    call        @VarToInteger
 009F3738    mov         edx,dword ptr ds:[0AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F373E    mov         edx,dword ptr [edx]
 009F3740    mov         dword ptr [edx+508],eax
 009F3746    mov         eax,dword ptr [ebp-4]
 009F3749    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F374F    mov         edx,9F42F4;'IS_PROV'
 009F3754    call        TDataSet.FieldByName
 009F3759    mov         edx,dword ptr [eax]
 009F375B    call        dword ptr [edx+58];TField.GetAsInteger
 009F375E    dec         eax
 009F375F    sete        al
 009F3762    mov         edx,dword ptr ds:[0AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3768    mov         edx,dword ptr [edx]
 009F376A    mov         byte ptr [edx+511],al
 009F3770    mov         eax,dword ptr [ebp-4]
 009F3773    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F3779    mov         edx,9F43E8;'NUM_NAKL_EXT'
 009F377E    call        TDataSet.FieldByName
 009F3783    lea         edx,[ebp-0F4]
 009F3789    mov         ecx,dword ptr [eax]
 009F378B    call        dword ptr [ecx+60];TField.GetAsString
 009F378E    mov         edx,dword ptr [ebp-0F4]
 009F3794    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3799    mov         eax,dword ptr [eax]
 009F379B    mov         eax,dword ptr [eax+380]
 009F37A1    call        TControl.SetText
 009F37A6    mov         eax,dword ptr [ebp-4]
 009F37A9    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F37AF    mov         edx,9F4400;'NUM_SF_EXT'
 009F37B4    call        TDataSet.FieldByName
 009F37B9    lea         edx,[ebp-0F8]
 009F37BF    mov         ecx,dword ptr [eax]
 009F37C1    call        dword ptr [ecx+60];TField.GetAsString
 009F37C4    mov         edx,dword ptr [ebp-0F8]
 009F37CA    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F37CF    mov         eax,dword ptr [eax]
 009F37D1    mov         eax,dword ptr [eax+388]
 009F37D7    call        TControl.SetText
 009F37DC    mov         eax,dword ptr [ebp-4]
 009F37DF    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F37E5    mov         edx,9F4414;'DATE_NAKL_EXT'
 009F37EA    call        TDataSet.FieldByName
 009F37EF    mov         edx,dword ptr [eax]
 009F37F1    call        dword ptr [edx+50];TField.GetAsDateTime
 009F37F4    add         esp,0FFFFFFF8
 009F37F7    fstp        qword ptr [esp]
 009F37FA    wait
 009F37FB    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3800    mov         eax,dword ptr [eax]
 009F3802    mov         eax,dword ptr [eax+384]
 009F3808    mov         edx,dword ptr [eax]
 009F380A    call        dword ptr [edx+12C]
 009F3810    push        0
 009F3812    push        0
 009F3814    push        0
 009F3816    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F381B    mov         eax,dword ptr [eax]
 009F381D    mov         eax,dword ptr [eax+3A8]
 009F3823    call        TCurrencyEdit.SetValue
 009F3828    lea         eax,[ebp-108]
 009F382E    call        Null
 009F3833    lea         edx,[ebp-108]
 009F3839    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F383E    mov         eax,dword ptr [eax]
 009F3840    mov         eax,dword ptr [eax+3AC]
 009F3846    call        TDBLookupControl.SetKeyValue
 009F384B    mov         eax,dword ptr [ebp-4]
 009F384E    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F3854    mov         edx,9F432C;'IS_SKIDKA_PRESENT'
 009F3859    call        TDataSet.FieldByName
 009F385E    mov         edx,dword ptr [eax]
 009F3860    call        dword ptr [edx+58];TField.GetAsInteger
 009F3863    mov         edx,eax
 009F3865    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F386A    mov         eax,dword ptr [eax]
 009F386C    mov         eax,dword ptr [eax+41C]
 009F3872    call        TCustomRadioGroup.SetItemIndex
 009F3877    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F387C    mov         eax,dword ptr [eax]
 009F387E    mov         eax,dword ptr [eax+438]
 009F3884    xor         edx,edx
 009F3886    mov         dword ptr [eax+218],edx
 009F388C    mov         dword ptr [eax+21C],edx
 009F3892    mov         eax,dword ptr [ebp-4]
 009F3895    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F389B    mov         edx,9F442C;'PRIH_SKIDKA_PERC'
 009F38A0    call        TDataSet.FieldByName
 009F38A5    mov         edx,dword ptr [eax]
 009F38A7    call        dword ptr [edx+54];TField.GetAsFloat
 009F38AA    add         esp,0FFFFFFF4
 009F38AD    fstp        tbyte ptr [esp]
 009F38B0    wait
 009F38B1    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F38B6    mov         eax,dword ptr [eax]
 009F38B8    mov         eax,dword ptr [eax+43C]
 009F38BE    call        TCurrencyEdit.SetValue
 009F38C3    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F38C8    mov         eax,dword ptr [eax]
 009F38CA    mov         edx,dword ptr ds:[0AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F38D0    mov         edx,dword ptr [edx]
 009F38D2    mov         edx,dword ptr [edx+438]
 009F38D8    mov         dword ptr [edx+21C],eax
 009F38DE    mov         dword ptr [edx+218],98BF68;TFormEditOperPrihod.ceSkidkaSummaChange
 009F38E8    xor         eax,eax
 009F38EA    push        ebp
 009F38EB    push        9F3946
 009F38F0    push        dword ptr fs:[eax]
 009F38F3    mov         dword ptr fs:[eax],esp
 009F38F6    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F38FB    mov         eax,dword ptr [eax]
 009F38FD    mov         ebx,dword ptr [eax+448]
 009F3903    xor         eax,eax
 009F3905    mov         dword ptr [ebx+120],eax
 009F390B    mov         dword ptr [ebx+124],eax
 009F3911    mov         eax,dword ptr [ebp-4]
 009F3914    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F391A    mov         edx,9F4448;'IS_SKIDKA_EXECUTE'
 009F391F    call        TDataSet.FieldByName
 009F3924    mov         edx,dword ptr [eax]
 009F3926    call        dword ptr [edx+58];TField.GetAsInteger
 009F3929    dec         eax
 009F392A    sete        dl
 009F392D    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3932    mov         eax,ebx
 009F3934    mov         ecx,dword ptr [eax]
 009F3936    call        dword ptr [ecx+0CC]
 009F393C    xor         eax,eax
 009F393E    pop         edx
 009F393F    pop         ecx
 009F3940    pop         ecx
 009F3941    mov         dword ptr fs:[eax],edx
>009F3944    jmp         009F3950
>009F3946    jmp         @HandleAnyException
 009F394B    call        @DoneExcept
 009F3950    mov         eax,dword ptr [ebp-4]
 009F3953    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F3959    mov         edx,9F4448;'IS_SKIDKA_EXECUTE'
 009F395E    call        TDataSet.FieldByName
 009F3963    mov         edx,dword ptr [eax]
 009F3965    call        dword ptr [edx+58];TField.GetAsInteger
 009F3968    dec         eax
 009F3969    sete        dl
 009F396C    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3971    mov         eax,dword ptr [eax]
 009F3973    mov         eax,dword ptr [eax+468]
 009F3979    call        TControl.SetVisible
 009F397E    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3983    mov         eax,dword ptr [eax]
 009F3985    mov         edx,dword ptr ds:[0AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F398B    mov         edx,dword ptr [edx]
 009F398D    mov         edx,dword ptr [edx+448]
 009F3993    mov         dword ptr [edx+124],eax
 009F3999    mov         dword ptr [edx+120],98BCC4;TFormEditOperPrihod.chbIsSkidkaExecuteClick
 009F39A3    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F39A8    mov         eax,dword ptr [eax]
 009F39AA    mov         edx,dword ptr [eax]
 009F39AC    call        dword ptr [edx+0EC]
 009F39B2    mov         eax,[00AC721C];^Application:TApplication
 009F39B7    mov         eax,dword ptr [eax]
 009F39B9    call        TApplication.ProcessMessages
 009F39BE    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F39C3    mov         eax,dword ptr [eax]
 009F39C5    cmp         dword ptr [eax+24C],1
>009F39CC    jne         009F4199
 009F39D2    xor         edx,edx
 009F39D4    push        ebp
 009F39D5    push        9F414F
 009F39DA    push        dword ptr fs:[edx]
 009F39DD    mov         dword ptr fs:[edx],esp
 009F39E0    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F39E5    mov         eax,dword ptr [eax]
 009F39E7    mov         eax,dword ptr [eax+34C]
 009F39ED    call        006A90E4
 009F39F2    fcomp       qword ptr [ebp-18]
 009F39F5    fnstsw      al
 009F39F7    sahf
>009F39F8    je          009F3A33
 009F39FA    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F39FF    mov         eax,dword ptr [eax]
 009F3A01    mov         eax,dword ptr [eax+34C]
 009F3A07    call        006A90E4
 009F3A0C    add         esp,0FFFFFFF8
 009F3A0F    fstp        qword ptr [esp]
 009F3A12    wait
 009F3A13    mov         eax,dword ptr [ebp-4]
 009F3A16    mov         eax,dword ptr [eax+32C];TMainFormMarketSklad.cbSklad:TDBLookupComboBox
 009F3A1C    add         eax,240;TDBLookupComboBox.FKeyValue:Variant
 009F3A21    call        @VarToInteger
 009F3A26    mov         edx,eax
 009F3A28    mov         eax,dword ptr [ebp-4]
 009F3A2B    call        TMainFormMarketSklad.GetNextOpNumTo
 009F3A30    mov         dword ptr [ebp-0C],eax
 009F3A33    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F3A38    mov         eax,dword ptr [eax]
 009F3A3A    mov         eax,dword ptr [eax+60]
 009F3A3D    mov         dword ptr [ebp-24],eax
 009F3A40    mov         eax,dword ptr [ebp-24]
 009F3A43    call        TDataSet.Close
 009F3A48    mov         eax,dword ptr [ebp-24]
 009F3A4B    call        TOraQuery.GetSQL
 009F3A50    mov         edx,dword ptr [eax]
 009F3A52    call        dword ptr [edx+44]
 009F3A55    mov         eax,dword ptr [ebp-24]
 009F3A58    call        TOraQuery.GetSQL
 009F3A5D    mov         edx,9F4464;'UPDATE OPERS SET DATE_OPER=:DATE_OPER,NUM_OPER=:NUM_OPER,'
 009F3A62    mov         ecx,dword ptr [eax]
 009F3A64    call        dword ptr [ecx+38]
 009F3A67    mov         eax,dword ptr [ebp-24]
 009F3A6A    call        TOraQuery.GetSQL
 009F3A6F    mov         edx,9F44A8;'ID_OPER_TYPE=:ID_OPER_TYPE,ID_KL_CEH_FROM=:ID_KL_CEH_FROM,'
 009F3A74    mov         ecx,dword ptr [eax]
 009F3A76    call        dword ptr [ecx+38]
 009F3A79    mov         eax,dword ptr [ebp-24]
 009F3A7C    call        TOraQuery.GetSQL
 009F3A81    mov         edx,9F44EC;'ID_KL_CEH_TO=:ID_KL_CEH_TO,DESCR=:DESCR,SUMALL_NO_NDS=:SUMALL_NO_NDS,'
 009F3A86    mov         ecx,dword ptr [eax]
 009F3A88    call        dword ptr [ecx+38]
 009F3A8B    mov         eax,dword ptr [ebp-24]
 009F3A8E    call        TOraQuery.GetSQL
 009F3A93    mov         edx,9F453C;'SUMALL_NDS=:SUMALL_NDS,OTSROCHKA_OPL=:OTSROCHKA_OPL,'
 009F3A98    mov         ecx,dword ptr [eax]
 009F3A9A    call        dword ptr [ecx+38]
 009F3A9D    mov         eax,dword ptr [ebp-24]
 009F3AA0    call        TOraQuery.GetSQL
 009F3AA5    mov         edx,9F457C;'NUM_NAKL_EXT=:NUM_NAKL_EXT,DATE_NAKL_EXT=:DATE_NAKL_EXT, NUM_SF_EXT=:NUM_SF_...
 009F3AAA    mov         ecx,dword ptr [eax]
 009F3AAC    call        dword ptr [ecx+38]
 009F3AAF    mov         eax,dword ptr [ebp-24]
 009F3AB2    call        TOraQuery.GetSQL
 009F3AB7    mov         edx,9F45D8;'PRIH_SKIDKA_PERC=:PRIH_SKIDKA_PERC,IS_SKIDKA_PRESENT=:IS_SKIDKA_PRESENT,'
 009F3ABC    mov         ecx,dword ptr [eax]
 009F3ABE    call        dword ptr [ecx+38]
 009F3AC1    mov         eax,dword ptr [ebp-24]
 009F3AC4    call        TOraQuery.GetSQL
 009F3AC9    mov         edx,9F462C;'IS_SKIDKA_EXECUTE=:IS_SKIDKA_EXECUTE '
 009F3ACE    mov         ecx,dword ptr [eax]
 009F3AD0    call        dword ptr [ecx+38]
 009F3AD3    mov         eax,dword ptr [ebp-24]
 009F3AD6    call        TOraQuery.GetSQL
 009F3ADB    mov         edx,9F465C;'WHERE ID=:ID'
 009F3AE0    mov         ecx,dword ptr [eax]
 009F3AE2    call        dword ptr [ecx+38]
 009F3AE5    mov         edx,9F42D8;'ID'
 009F3AEA    mov         eax,dword ptr [ebp-24]
 009F3AED    call        006210D4
 009F3AF2    mov         edx,dword ptr [ebp-8]
 009F3AF5    mov         ecx,dword ptr [eax]
 009F3AF7    call        dword ptr [ecx+68]
 009F3AFA    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3AFF    mov         eax,dword ptr [eax]
 009F3B01    mov         eax,dword ptr [eax+34C]
 009F3B07    call        006A90E4
 009F3B0C    add         esp,0FFFFFFF8
 009F3B0F    fstp        qword ptr [esp]
 009F3B12    wait
 009F3B13    mov         edx,9F4318;'DATE_OPER'
 009F3B18    mov         eax,dword ptr [ebp-24]
 009F3B1B    call        006210D4
 009F3B20    call        TParam.SetAsDate
 009F3B25    mov         edx,9F4304;'NUM_OPER'
 009F3B2A    mov         eax,dword ptr [ebp-24]
 009F3B2D    call        006210D4
 009F3B32    mov         edx,dword ptr [ebp-0C]
 009F3B35    mov         ecx,dword ptr [eax]
 009F3B37    call        dword ptr [ecx+68]
 009F3B3A    mov         edx,9F4348;'ID_OPER_TYPE'
 009F3B3F    mov         eax,dword ptr [ebp-24]
 009F3B42    call        006210D4
 009F3B47    push        eax
 009F3B48    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3B4D    mov         eax,dword ptr [eax]
 009F3B4F    mov         eax,dword ptr [eax+390]
 009F3B55    add         eax,240
 009F3B5A    call        @VarToInteger
 009F3B5F    mov         edx,eax
 009F3B61    pop         eax
 009F3B62    mov         ecx,dword ptr [eax]
 009F3B64    call        dword ptr [ecx+68]
 009F3B67    mov         edx,9F4674;'ID_KL_CEH_TO'
 009F3B6C    mov         eax,dword ptr [ebp-24]
 009F3B6F    call        006210D4
 009F3B74    push        eax
 009F3B75    mov         eax,dword ptr [ebp-4]
 009F3B78    mov         eax,dword ptr [eax+32C];TMainFormMarketSklad.cbSklad:TDBLookupComboBox
 009F3B7E    add         eax,240;TDBLookupComboBox.FKeyValue:Variant
 009F3B83    call        @VarToInteger
 009F3B88    mov         edx,eax
 009F3B8A    pop         eax
 009F3B8B    mov         ecx,dword ptr [eax]
 009F3B8D    call        dword ptr [ecx+68]
 009F3B90    mov         edx,9F43D0;'ID_KL_CEH_FROM'
 009F3B95    mov         eax,dword ptr [ebp-24]
 009F3B98    call        006210D4
 009F3B9D    mov         edx,dword ptr ds:[0AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3BA3    mov         edx,dword ptr [edx]
 009F3BA5    mov         edx,dword ptr [edx+508]
 009F3BAB    mov         ecx,dword ptr [eax]
 009F3BAD    call        dword ptr [ecx+68]
 009F3BB0    lea         edx,[ebp-10C]
 009F3BB6    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3BBB    mov         eax,dword ptr [eax]
 009F3BBD    mov         eax,dword ptr [eax+354]
 009F3BC3    call        TControl.GetText
 009F3BC8    mov         eax,dword ptr [ebp-10C]
 009F3BCE    push        eax
 009F3BCF    mov         edx,9F43C0;'DESCR'
 009F3BD4    mov         eax,dword ptr [ebp-24]
 009F3BD7    call        006210D4
 009F3BDC    pop         edx
 009F3BDD    mov         ecx,dword ptr [eax]
 009F3BDF    call        dword ptr [ecx+48]
 009F3BE2    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3BE7    mov         eax,dword ptr [eax]
 009F3BE9    cmp         byte ptr [eax+512],0
>009F3BF0    je          009F3C2F
 009F3BF2    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3BF7    mov         eax,dword ptr [eax]
 009F3BF9    mov         eax,dword ptr [eax+36C]
 009F3BFF    mov         edx,9F468C;'SUMMA_ALL_BY_PRICES'
 009F3C04    call        TDataSet.FieldByName
 009F3C09    mov         edx,dword ptr [eax]
 009F3C0B    call        dword ptr [edx+4C];TField.GetAsCurrency
 009F3C0E    fdiv        dword ptr ds:[9F46A0];10000:Single
 009F3C14    add         esp,0FFFFFFF8
 009F3C17    fstp        qword ptr [esp]
 009F3C1A    wait
 009F3C1B    mov         edx,9F46AC;'SUMALL_NO_NDS'
 009F3C20    mov         eax,dword ptr [ebp-24]
 009F3C23    call        006210D4
 009F3C28    mov         edx,dword ptr [eax]
 009F3C2A    call        dword ptr [edx+78]
>009F3C2D    jmp         009F3C6A
 009F3C2F    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3C34    mov         eax,dword ptr [eax]
 009F3C36    mov         eax,dword ptr [eax+36C]
 009F3C3C    mov         edx,9F46C4;'SUMMA_ALL'
 009F3C41    call        TDataSet.FieldByName
 009F3C46    mov         edx,dword ptr [eax]
 009F3C48    call        dword ptr [edx+4C];TField.GetAsCurrency
 009F3C4B    fdiv        dword ptr ds:[9F46A0];10000:Single
 009F3C51    add         esp,0FFFFFFF8
 009F3C54    fstp        qword ptr [esp]
 009F3C57    wait
 009F3C58    mov         edx,9F46AC;'SUMALL_NO_NDS'
 009F3C5D    mov         eax,dword ptr [ebp-24]
 009F3C60    call        006210D4
 009F3C65    mov         edx,dword ptr [eax]
 009F3C67    call        dword ptr [edx+78]
 009F3C6A    push        0
 009F3C6C    push        0
 009F3C6E    mov         edx,9F46D8;'SUMALL_NDS'
 009F3C73    mov         eax,dword ptr [ebp-24]
 009F3C76    call        006210D4
 009F3C7B    mov         edx,dword ptr [eax]
 009F3C7D    call        dword ptr [edx+78]
 009F3C80    lea         edx,[ebp-110]
 009F3C86    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3C8B    mov         eax,dword ptr [eax]
 009F3C8D    mov         eax,dword ptr [eax+380]
 009F3C93    call        TControl.GetText
 009F3C98    mov         eax,dword ptr [ebp-110]
 009F3C9E    push        eax
 009F3C9F    mov         edx,9F43E8;'NUM_NAKL_EXT'
 009F3CA4    mov         eax,dword ptr [ebp-24]
 009F3CA7    call        006210D4
 009F3CAC    pop         edx
 009F3CAD    mov         ecx,dword ptr [eax]
 009F3CAF    call        dword ptr [ecx+48]
 009F3CB2    lea         edx,[ebp-114]
 009F3CB8    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3CBD    mov         eax,dword ptr [eax]
 009F3CBF    mov         eax,dword ptr [eax+388]
 009F3CC5    call        TControl.GetText
 009F3CCA    mov         eax,dword ptr [ebp-114]
 009F3CD0    push        eax
 009F3CD1    mov         edx,9F4400;'NUM_SF_EXT'
 009F3CD6    mov         eax,dword ptr [ebp-24]
 009F3CD9    call        006210D4
 009F3CDE    pop         edx
 009F3CDF    mov         ecx,dword ptr [eax]
 009F3CE1    call        dword ptr [ecx+48]
 009F3CE4    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3CE9    mov         eax,dword ptr [eax]
 009F3CEB    mov         eax,dword ptr [eax+3F0]
 009F3CF1    mov         edx,dword ptr [eax]
 009F3CF3    call        dword ptr [edx+0C8]
 009F3CF9    test        al,al
>009F3CFB    je          009F3D3E
 009F3CFD    mov         edx,9F46EC;'OTSROCHKA_OPL'
 009F3D02    mov         eax,dword ptr [ebp-24]
 009F3D05    call        006210D4
 009F3D0A    push        eax
 009F3D0B    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3D10    mov         eax,dword ptr [eax]
 009F3D12    mov         eax,dword ptr [eax+3F4]
 009F3D18    call        006A90E4
 009F3D1D    fstp        qword ptr [ebp-11C]
 009F3D23    wait
 009F3D24    call        Date
 009F3D29    fsubr       qword ptr [ebp-11C]
 009F3D2F    call        @TRUNC
 009F3D34    mov         edx,eax
 009F3D36    pop         eax
 009F3D37    mov         ecx,dword ptr [eax]
 009F3D39    call        dword ptr [ecx+68]
>009F3D3C    jmp         009F3D52
 009F3D3E    mov         edx,9F46EC;'OTSROCHKA_OPL'
 009F3D43    mov         eax,dword ptr [ebp-24]
 009F3D46    call        006210D4
 009F3D4B    xor         edx,edx
 009F3D4D    mov         ecx,dword ptr [eax]
 009F3D4F    call        dword ptr [ecx+68]
 009F3D52    xor         eax,eax
 009F3D54    push        ebp
 009F3D55    push        9F3DBA
 009F3D5A    push        dword ptr fs:[eax]
 009F3D5D    mov         dword ptr fs:[eax],esp
 009F3D60    lea         edx,[ebp-120]
 009F3D66    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3D6B    mov         eax,dword ptr [eax]
 009F3D6D    mov         eax,dword ptr [eax+384]
 009F3D73    call        TCustomMaskEdit.GetText
 009F3D78    mov         eax,dword ptr [ebp-120]
 009F3D7E    call        StrToDate
 009F3D83    fstp        st(0)
 009F3D85    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3D8A    mov         eax,dword ptr [eax]
 009F3D8C    mov         eax,dword ptr [eax+384]
 009F3D92    call        006A90E4
 009F3D97    add         esp,0FFFFFFF8
 009F3D9A    fstp        qword ptr [esp]
 009F3D9D    wait
 009F3D9E    mov         edx,9F4414;'DATE_NAKL_EXT'
 009F3DA3    mov         eax,dword ptr [ebp-24]
 009F3DA6    call        006210D4
 009F3DAB    call        TParam.SetAsDate
 009F3DB0    xor         eax,eax
 009F3DB2    pop         edx
 009F3DB3    pop         ecx
 009F3DB4    pop         ecx
 009F3DB5    mov         dword ptr fs:[eax],edx
>009F3DB8    jmp         009F3DEC
>009F3DBA    jmp         @HandleAnyException
 009F3DBF    mov         edx,9F4414;'DATE_NAKL_EXT'
 009F3DC4    mov         eax,dword ptr [ebp-24]
 009F3DC7    call        006210D4
 009F3DCC    push        eax
 009F3DCD    lea         eax,[ebp-130]
 009F3DD3    call        Null
 009F3DD8    lea         edx,[ebp-130]
 009F3DDE    pop         eax
 009F3DDF    mov         ecx,dword ptr [eax]
 009F3DE1    call        dword ptr [ecx+0A0]
 009F3DE7    call        @DoneExcept
 009F3DEC    mov         edx,9F432C;'IS_SKIDKA_PRESENT'
 009F3DF1    mov         eax,dword ptr [ebp-24]
 009F3DF4    call        006210D4
 009F3DF9    mov         edx,dword ptr ds:[0AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3DFF    mov         edx,dword ptr [edx]
 009F3E01    mov         edx,dword ptr [edx+41C]
 009F3E07    mov         edx,dword ptr [edx+218]
 009F3E0D    mov         ecx,dword ptr [eax]
 009F3E0F    call        dword ptr [ecx+68]
 009F3E12    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3E17    mov         eax,dword ptr [eax]
 009F3E19    mov         eax,dword ptr [eax+448]
 009F3E1F    mov         edx,dword ptr [eax]
 009F3E21    call        dword ptr [edx+0C8]
 009F3E27    test        al,al
>009F3E29    je          009F3E6F
 009F3E2B    mov         edx,9F4448;'IS_SKIDKA_EXECUTE'
 009F3E30    mov         eax,dword ptr [ebp-24]
 009F3E33    call        006210D4
 009F3E38    mov         edx,1
 009F3E3D    mov         ecx,dword ptr [eax]
 009F3E3F    call        dword ptr [ecx+68]
 009F3E42    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3E47    mov         eax,dword ptr [eax]
 009F3E49    mov         eax,dword ptr [eax+43C]
 009F3E4F    call        TCurrencyEdit.GetValue
 009F3E54    add         esp,0FFFFFFF8
 009F3E57    fstp        qword ptr [esp]
 009F3E5A    wait
 009F3E5B    mov         edx,9F442C;'PRIH_SKIDKA_PERC'
 009F3E60    mov         eax,dword ptr [ebp-24]
 009F3E63    call        006210D4
 009F3E68    mov         edx,dword ptr [eax]
 009F3E6A    call        dword ptr [edx+78]
>009F3E6D    jmp         009F3E99
 009F3E6F    mov         edx,9F4448;'IS_SKIDKA_EXECUTE'
 009F3E74    mov         eax,dword ptr [ebp-24]
 009F3E77    call        006210D4
 009F3E7C    xor         edx,edx
 009F3E7E    mov         ecx,dword ptr [eax]
 009F3E80    call        dword ptr [ecx+68]
 009F3E83    push        0
 009F3E85    push        0
 009F3E87    mov         edx,9F442C;'PRIH_SKIDKA_PERC'
 009F3E8C    mov         eax,dword ptr [ebp-24]
 009F3E8F    call        006210D4
 009F3E94    mov         edx,dword ptr [eax]
 009F3E96    call        dword ptr [edx+78]
 009F3E99    mov         eax,dword ptr [ebp-24]
 009F3E9C    call        00620CE4
 009F3EA1    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3EA6    mov         eax,dword ptr [eax]
 009F3EA8    cmp         byte ptr [eax+511],0
>009F3EAF    jne         009F3EBC
 009F3EB1    mov         eax,dword ptr [ebp-8]
 009F3EB4    cdq
 009F3EB5    push        edx
 009F3EB6    push        eax
 009F3EB7    call        009763A4
 009F3EBC    mov         eax,dword ptr [ebp-8]
 009F3EBF    cdq
 009F3EC0    push        edx
 009F3EC1    push        eax
 009F3EC2    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3EC7    mov         eax,dword ptr [eax]
 009F3EC9    mov         eax,dword ptr [eax+508]
 009F3ECF    call        009774EC
 009F3ED4    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3ED9    mov         eax,dword ptr [eax]
 009F3EDB    mov         eax,dword ptr [eax+508]
 009F3EE1    test        eax,eax
>009F3EE3    je          009F3EF4
 009F3EE5    mov         edx,dword ptr ds:[0AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3EEB    cmp         eax,3
>009F3EEE    jne         009F3F8E
 009F3EF4    mov         eax,dword ptr [ebp-8]
 009F3EF7    cdq
 009F3EF8    push        edx
 009F3EF9    push        eax
 009F3EFA    call        007A51D4
 009F3EFF    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3F04    mov         eax,dword ptr [eax]
 009F3F06    cmp         dword ptr [eax+508],0
>009F3F0D    jne         009F3F2F
 009F3F0F    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3F14    mov         eax,dword ptr [eax]
 009F3F16    mov         eax,dword ptr [eax+36C]
 009F3F1C    mov         edx,9F468C;'SUMMA_ALL_BY_PRICES'
 009F3F21    call        TDataSet.FieldByName
 009F3F26    mov         edx,dword ptr [eax]
 009F3F28    call        dword ptr [edx+4C];TField.GetAsCurrency
 009F3F2B    fistp       qword ptr [ebp-20]
 009F3F2E    wait
 009F3F2F    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3F34    mov         eax,dword ptr [eax]
 009F3F36    cmp         dword ptr [eax+508],3
>009F3F3D    jne         009F3F5F
 009F3F3F    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3F44    mov         eax,dword ptr [eax]
 009F3F46    mov         eax,dword ptr [eax+36C]
 009F3F4C    mov         edx,9F46C4;'SUMMA_ALL'
 009F3F51    call        TDataSet.FieldByName
 009F3F56    mov         edx,dword ptr [eax]
 009F3F58    call        dword ptr [edx+4C];TField.GetAsCurrency
 009F3F5B    fistp       qword ptr [ebp-20]
 009F3F5E    wait
 009F3F5F    mov         eax,dword ptr [ebp-8]
 009F3F62    cdq
 009F3F63    push        edx
 009F3F64    push        eax
 009F3F65    push        dword ptr [ebp-1C]
 009F3F68    push        dword ptr [ebp-20]
 009F3F6B    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3F70    mov         eax,dword ptr [eax]
 009F3F72    mov         eax,dword ptr [eax+3AC]
 009F3F78    add         eax,240
 009F3F7D    call        @VarToInteger
 009F3F82    mov         edx,eax
 009F3F84    mov         eax,1
 009F3F89    call        007A5028
 009F3F8E    push        9F4704;'Редактир.прихода от '
 009F3F93    lea         edx,[ebp-138]
 009F3F99    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3F9E    mov         eax,dword ptr [eax]
 009F3FA0    mov         eax,dword ptr [eax+350]
 009F3FA6    call        TControl.GetText
 009F3FAB    push        dword ptr [ebp-138]
 009F3FB1    push        9F4724;':'
 009F3FB6    lea         edx,[ebp-13C]
 009F3FBC    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F3FC1    mov         eax,dword ptr [eax]
 009F3FC3    mov         eax,dword ptr [eax+354]
 009F3FC9    call        TControl.GetText
 009F3FCE    push        dword ptr [ebp-13C]
 009F3FD4    lea         eax,[ebp-134]
 009F3FDA    mov         edx,4
 009F3FDF    call        @LStrCatN
 009F3FE4    mov         eax,dword ptr [ebp-134]
 009F3FEA    push        eax
 009F3FEB    lea         eax,[ebp-140]
 009F3FF1    push        eax
 009F3FF2    mov         ecx,19
 009F3FF7    mov         edx,1
 009F3FFC    mov         eax,[00AC6618];0x0 gvar_00AC6618
 009F4001    call        @LStrCopy
 009F4006    mov         eax,dword ptr [ebp-140]
 009F400C    push        eax
 009F400D    mov         ecx,dword ptr [ebp-8]
 009F4010    mov         dl,1
 009F4012    mov         al,2
 009F4014    call        007A35C0
 009F4019    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F401E    mov         eax,dword ptr [eax]
 009F4020    mov         eax,dword ptr [eax+58]
 009F4023    mov         edx,dword ptr [eax]
 009F4025    call        dword ptr [edx+160]
 009F402B    lea         edx,[ebp-148]
 009F4031    mov         eax,[00ACEBDC];gvar_00ACEBDC:TMainFormMarketSklad
 009F4036    call        TMainFormMarketSklad.GetIdCehStr
 009F403B    push        dword ptr [ebp-148]
 009F4041    push        9F4730;'-'
 009F4046    push        dword ptr ds:[0AC6648];^'JJJ'
 009F404C    push        9F473C;'-MARKET_SKLAD'
 009F4051    lea         eax,[ebp-144]
 009F4057    mov         edx,4
 009F405C    call        @LStrCatN
 009F4061    mov         ecx,dword ptr [ebp-144]
 009F4067    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F406C    mov         eax,dword ptr [eax]
 009F406E    mov         eax,dword ptr [eax+74]
 009F4071    mov         edx,9F4754;'MARKET_PRIH'
 009F4076    call        006AAFE8
 009F407B    mov         eax,dword ptr [ebp-4]
 009F407E    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F4084    call        TDataSet.Close
 009F4089    mov         eax,dword ptr [ebp-4]
 009F408C    mov         eax,dword ptr [eax+370];TMainFormMarketSklad.deBgn:TDateEdit
 009F4092    call        006A90E4
 009F4097    add         esp,0FFFFFFF8
 009F409A    fstp        qword ptr [esp]
 009F409D    wait
 009F409E    mov         eax,dword ptr [ebp-4]
 009F40A1    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F40A7    mov         edx,9F4768;'DATE_BGN'
 009F40AC    call        006210D4
 009F40B1    call        TParam.SetAsDate
 009F40B6    mov         eax,dword ptr [ebp-4]
 009F40B9    mov         eax,dword ptr [eax+374];TMainFormMarketSklad.deEnd:TDateEdit
 009F40BF    call        006A90E4
 009F40C4    add         esp,0FFFFFFF8
 009F40C7    fstp        qword ptr [esp]
 009F40CA    wait
 009F40CB    mov         eax,dword ptr [ebp-4]
 009F40CE    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F40D4    mov         edx,9F477C;'DATE_END'
 009F40D9    call        006210D4
 009F40DE    call        TParam.SetAsDate
 009F40E3    mov         eax,dword ptr [ebp-4]
 009F40E6    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F40EC    call        TDataSet.Open
 009F40F1    mov         al,[009F4788];0x0 gvar_009F4788
 009F40F6    push        eax
 009F40F7    lea         eax,[ebp-158]
 009F40FD    mov         edx,dword ptr [ebp-8]
 009F4100    mov         cl,0FC
 009F4102    call        @VarFromInt
 009F4107    lea         ecx,[ebp-158]
 009F410D    mov         eax,dword ptr [ebp-4]
 009F4110    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F4116    mov         edx,9F42D8;'ID'
 009F411B    mov         ebx,dword ptr [eax]
 009F411D    call        dword ptr [ebx+244];TMemDataSet.Locate
 009F4123    mov         eax,[00AC6A74];^gvar_00ACEA10:TFormEditOperPrihod
 009F4128    mov         eax,dword ptr [eax]
 009F412A    cmp         byte ptr [eax+511],0
>009F4131    jne         009F4145
 009F4133    mov         eax,dword ptr [ebp-4]
 009F4136    mov         eax,dword ptr [eax+388];TMainFormMarketSklad.aProvodPrihod:TAction
 009F413C    mov         si,0FFEF
 009F4140    call        @CallDynaInst;TCustomAction.Execute
 009F4145    xor         eax,eax
 009F4147    pop         edx
 009F4148    pop         ecx
 009F4149    pop         ecx
 009F414A    mov         dword ptr fs:[eax],edx
>009F414D    jmp         009F41AB
>009F414F    jmp         @HandleOnException
 009F4154    dd          1
 009F4158    dd          00408E24;Exception
 009F415C    dd          009F4160
 009F4160    mov         ebx,eax
 009F4162    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F4167    mov         eax,dword ptr [eax]
 009F4169    mov         eax,dword ptr [eax+58]
 009F416C    mov         edx,dword ptr [eax]
 009F416E    call        dword ptr [edx+164]
 009F4174    mov         ecx,dword ptr [ebx+4];Exception.FMessage:String
 009F4177    lea         eax,[ebp-15C]
 009F417D    mov         edx,9F4794;'Ошибка сохранения прихода!'+#13+#13
 009F4182    call        @LStrCat3
 009F4187    mov         eax,dword ptr [ebp-15C]
 009F418D    call        ShowMessage
 009F4192    call        @DoneExcept
>009F4197    jmp         009F41AB
 009F4199    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F419E    mov         eax,dword ptr [eax]
 009F41A0    mov         eax,dword ptr [eax+58]
 009F41A3    mov         edx,dword ptr [eax]
 009F41A5    call        dword ptr [edx+164]
 009F41AB    xor         eax,eax
 009F41AD    pop         edx
 009F41AE    pop         ecx
 009F41AF    pop         ecx
 009F41B0    mov         dword ptr fs:[eax],edx
 009F41B3    push        9F41E2
 009F41B8    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F41BD    mov         eax,dword ptr [eax]
 009F41BF    mov         eax,dword ptr [eax+58]
 009F41C2    mov         dl,1
 009F41C4    call        TOraSession.SetAutoCommit
 009F41C9    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F41CE    mov         eax,dword ptr [eax]
 009F41D0    mov         eax,dword ptr [eax+60]
 009F41D3    mov         dl,1
 009F41D5    call        TOraQuery.SetAutoCommit
 009F41DA    ret
>009F41DB    jmp         @HandleFinally
>009F41E0    jmp         009F41B8
 009F41E2    xor         eax,eax
 009F41E4    pop         edx
 009F41E5    pop         ecx
 009F41E6    pop         ecx
 009F41E7    mov         dword ptr fs:[eax],edx
 009F41EA    push        9F42C8
 009F41EF    lea         eax,[ebp-15C]
 009F41F5    call        @LStrClr
 009F41FA    lea         eax,[ebp-158]
 009F4200    call        @VarClr
 009F4205    lea         eax,[ebp-148]
 009F420B    mov         edx,3
 009F4210    call        @LStrArrayClr
 009F4215    lea         eax,[ebp-13C]
 009F421B    mov         edx,2
 009F4220    call        @LStrArrayClr
 009F4225    lea         eax,[ebp-134]
 009F422B    call        @LStrClr
 009F4230    lea         eax,[ebp-130]
 009F4236    call        @VarClr
 009F423B    lea         eax,[ebp-120]
 009F4241    call        @LStrClr
 009F4246    lea         eax,[ebp-114]
 009F424C    mov         edx,3
 009F4251    call        @LStrArrayClr
 009F4256    lea         eax,[ebp-108]
 009F425C    call        @VarClr
 009F4261    lea         eax,[ebp-0F8]
 009F4267    mov         edx,2
 009F426C    call        @LStrArrayClr
 009F4271    lea         eax,[ebp-0F0]
 009F4277    call        @VarClr
 009F427C    lea         eax,[ebp-0E0]
 009F4282    mov         edx,2
 009F4287    call        @LStrArrayClr
 009F428C    lea         eax,[ebp-0D8]
 009F4292    mov         edx,dword ptr ds:[401160];Variant
 009F4298    mov         ecx,8
 009F429D    call        @FinalizeArray
 009F42A2    lea         eax,[ebp-58]
 009F42A5    call        @LStrClr
 009F42AA    lea         eax,[ebp-54]
 009F42AD    mov         edx,dword ptr ds:[401160];Variant
 009F42B3    mov         ecx,3
 009F42B8    call        @FinalizeArray
 009F42BD    ret
>009F42BE    jmp         @HandleFinally
>009F42C3    jmp         009F41EF
 009F42C8    pop         edi
 009F42C9    pop         esi
 009F42CA    pop         ebx
 009F42CB    mov         esp,ebp
 009F42CD    pop         ebp
 009F42CE    ret
*}
end;

//009F47B4
procedure TMainFormMarketSklad.aEditPrihExecute;
begin
{*
 009F47B4    push        ebp
 009F47B5    mov         ebp,esp
 009F47B7    push        0
 009F47B9    push        ebx
 009F47BA    mov         ebx,eax
 009F47BC    xor         eax,eax
 009F47BE    push        ebp
 009F47BF    push        9F488B
 009F47C4    push        dword ptr fs:[eax]
 009F47C7    mov         dword ptr fs:[eax],esp
 009F47CA    mov         edx,9F48A0;'ID_OPER_TYPE'
 009F47CF    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F47D5    call        TDataSet.FieldByName
 009F47DA    mov         edx,dword ptr [eax]
 009F47DC    call        dword ptr [edx+58];TField.GetAsInteger
 009F47DF    cmp         eax,6
>009F47E2    jne         009F47F3
 009F47E4    mov         eax,9F48B8;'Приход по ревизии изменить нельзя!'
 009F47E9    call        ShowMessage
>009F47EE    jmp         009F4875
 009F47F3    mov         eax,ebx
 009F47F5    call        TMainFormMarketSklad.EdtPrihod
 009F47FA    cmp         byte ptr [ebx+9C6],0;TMainFormMarketSklad.?f9C6:byte
>009F4801    je          009F4875
 009F4803    lea         eax,[ebp-4]
 009F4806    mov         edx,9F48E4;'Необходима синхронизация товаров в весах!'+#13+#13+Cделать это сейчас?'
 009F480B    call        @LStrLAsg
 009F4810    push        24
 009F4812    mov         eax,dword ptr [ebp-4]
 009F4815    call        @LStrToPChar
 009F481A    mov         edx,eax
 009F481C    mov         ecx,9F4924
 009F4821    mov         eax,[00AC721C];^Application:TApplication
 009F4826    mov         eax,dword ptr [eax]
 009F4828    call        TApplication.MessageBox
 009F482D    cmp         eax,6
>009F4830    jne         009F4875
 009F4832    mov         byte ptr [ebx+9C6],0;TMainFormMarketSklad.?f9C6:byte
 009F4839    mov         eax,[00AC7594];^gvar_00ACE90C:TFormScalesSelect
 009F483E    cmp         dword ptr [eax],0
>009F4841    jne         009F485B
 009F4843    mov         ecx,dword ptr ds:[0AC7594];^gvar_00ACE90C:TFormScalesSelect
 009F4849    mov         eax,[00AC721C];^Application:TApplication
 009F484E    mov         eax,dword ptr [eax]
 009F4850    mov         edx,dword ptr ds:[96FA08];TFormScalesSelect
 009F4856    call        TApplication.CreateForm
 009F485B    mov         eax,[00AC7594];^gvar_00ACE90C:TFormScalesSelect
 009F4860    mov         eax,dword ptr [eax]
 009F4862    mov         byte ptr [eax+374],1
 009F4869    mov         eax,[00AC7594];^gvar_00ACE90C:TFormScalesSelect
 009F486E    mov         eax,dword ptr [eax]
 009F4870    call        TCustomForm.Show
 009F4875    xor         eax,eax
 009F4877    pop         edx
 009F4878    pop         ecx
 009F4879    pop         ecx
 009F487A    mov         dword ptr fs:[eax],edx
 009F487D    push        9F4892
 009F4882    lea         eax,[ebp-4]
 009F4885    call        @LStrClr
 009F488A    ret
>009F488B    jmp         @HandleFinally
>009F4890    jmp         009F4882
 009F4892    pop         ebx
 009F4893    pop         ecx
 009F4894    pop         ebp
 009F4895    ret
*}
end;

//009F4938
procedure TMainFormMarketSklad.aDelPrihExecute;
begin
{*
 009F4938    push        ebp
 009F4939    mov         ebp,esp
 009F493B    mov         ecx,0B
 009F4940    push        0
 009F4942    push        0
 009F4944    dec         ecx
>009F4945    jne         009F4940
 009F4947    push        ebx
 009F4948    push        esi
 009F4949    push        edi
 009F494A    mov         ebx,eax
 009F494C    xor         eax,eax
 009F494E    push        ebp
 009F494F    push        9F4D05
 009F4954    push        dword ptr fs:[eax]
 009F4957    mov         dword ptr fs:[eax],esp
 009F495A    lea         ecx,[ebp-24]
 009F495D    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F4963    mov         edx,9F4D1C;'ID'
 009F4968    call        TDataSet.GetFieldValue
 009F496D    lea         eax,[ebp-24]
 009F4970    call        @VarToInt64
 009F4975    mov         dword ptr [ebp-8],eax
 009F4978    mov         dword ptr [ebp-4],edx
 009F497B    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F4981    mov         edx,9F4D28;'ID_OPER_TYPE'
 009F4986    call        TDataSet.FieldByName
 009F498B    mov         edx,dword ptr [eax]
 009F498D    call        dword ptr [edx+58];TField.GetAsInteger
 009F4990    cmp         eax,6
>009F4993    jne         009F49B3
 009F4995    push        dword ptr [ebp-4]
 009F4998    push        dword ptr [ebp-8]
 009F499B    call        007A6AF8
 009F49A0    test        al,al
>009F49A2    je          009F49B3
 009F49A4    mov         eax,9F4D40;'Приход по ревизии удалить нельзя!'
 009F49A9    call        ShowMessage
>009F49AE    jmp         009F4CBF
 009F49B3    mov         edi,dword ptr [ebp-8]
 009F49B6    mov         eax,edi
 009F49B8    call        007A2228
 009F49BD    test        al,al
>009F49BF    jne         009F4CBF
 009F49C5    mov         edx,edi
 009F49C7    mov         eax,9F4D6C;'OPERS'
 009F49CC    call        007A1E78
 009F49D1    test        al,al
>009F49D3    jne         009F4CBF
 009F49D9    mov         edx,9F4D7C;'Удалить выбранный документ?'
 009F49DE    mov         eax,9F4DA0;'В Н И М А Н И Е !!!'
 009F49E3    call        006C64E0
 009F49E8    dec         eax
>009F49E9    jne         009F4CBF
 009F49EF    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F49F5    mov         edx,9F4DBC;'SUMMA_OPLATS'
 009F49FA    call        TDataSet.FieldByName
 009F49FF    mov         edx,dword ptr [eax]
 009F4A01    call        dword ptr [edx+4C];TField.GetAsCurrency
 009F4A04    fcomp       dword ptr ds:[9F4DCC];0:Single
 009F4A0A    fnstsw      al
 009F4A0C    sahf
>009F4A0D    jbe         009F4A42
 009F4A0F    lea         eax,[ebp-14]
 009F4A12    mov         edx,9F4DD8;'Имеются платежи по операции!'+#13+Они будут удалены.'+#13+#13+ПРОДОЛЖИТЬ?'
 009F4A17    call        @LStrLAsg
 009F4A1C    push        24
 009F4A1E    mov         eax,dword ptr [ebp-14]
 009F4A21    call        @LStrToPChar
 009F4A26    mov         edx,eax
 009F4A28    mov         ecx,9F4E18
 009F4A2D    mov         eax,[00AC721C];^Application:TApplication
 009F4A32    mov         eax,dword ptr [eax]
 009F4A34    call        TApplication.MessageBox
 009F4A39    cmp         eax,6
>009F4A3C    jne         009F4CBF
 009F4A42    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F4A48    call        TDataSet.Next
 009F4A4D    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F4A53    cmp         byte ptr [eax+0A1],0;TOraQuery.FEOF:Boolean
>009F4A5A    je          009F4A61
 009F4A5C    call        TDataSet.Prior
 009F4A61    lea         ecx,[ebp-34]
 009F4A64    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F4A6A    mov         edx,9F4D1C;'ID'
 009F4A6F    call        TDataSet.GetFieldValue
 009F4A74    lea         eax,[ebp-34]
 009F4A77    call        @VarToInt64
 009F4A7C    mov         dword ptr [ebp-10],eax
 009F4A7F    mov         dword ptr [ebp-0C],edx
 009F4A82    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F4A87    mov         eax,dword ptr [eax]
 009F4A89    mov         eax,dword ptr [eax+58]
 009F4A8C    xor         edx,edx
 009F4A8E    call        TOraSession.SetAutoCommit
 009F4A93    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F4A98    mov         eax,dword ptr [eax]
 009F4A9A    mov         eax,dword ptr [eax+60]
 009F4A9D    xor         edx,edx
 009F4A9F    call        TOraQuery.SetAutoCommit
 009F4AA4    xor         eax,eax
 009F4AA6    push        ebp
 009F4AA7    push        9F4CB8
 009F4AAC    push        dword ptr fs:[eax]
 009F4AAF    mov         dword ptr fs:[eax],esp
 009F4AB2    xor         eax,eax
 009F4AB4    push        ebp
 009F4AB5    push        9F4C41
 009F4ABA    push        dword ptr fs:[eax]
 009F4ABD    mov         dword ptr fs:[eax],esp
 009F4AC0    push        9F4E34;'Удаление прихода от '
 009F4AC5    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F4ACB    mov         edx,9F4E54;'NAME_KL_CEH'
 009F4AD0    call        TDataSet.FieldByName
 009F4AD5    lea         edx,[ebp-3C]
 009F4AD8    mov         ecx,dword ptr [eax]
 009F4ADA    call        dword ptr [ecx+60];TField.GetAsString
 009F4ADD    push        dword ptr [ebp-3C]
 009F4AE0    push        9F4E68;':'
 009F4AE5    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F4AEB    mov         edx,9F4E74;'DESCR'
 009F4AF0    call        TDataSet.FieldByName
 009F4AF5    lea         edx,[ebp-40]
 009F4AF8    mov         ecx,dword ptr [eax]
 009F4AFA    call        dword ptr [ecx+60];TField.GetAsString
 009F4AFD    push        dword ptr [ebp-40]
 009F4B00    lea         eax,[ebp-38]
 009F4B03    mov         edx,4
 009F4B08    call        @LStrCatN
 009F4B0D    mov         eax,dword ptr [ebp-38]
 009F4B10    push        eax
 009F4B11    lea         eax,[ebp-44]
 009F4B14    push        eax
 009F4B15    mov         ecx,19
 009F4B1A    mov         edx,1
 009F4B1F    mov         eax,[00AC6618];0x0 gvar_00AC6618
 009F4B24    call        @LStrCopy
 009F4B29    mov         eax,dword ptr [ebp-44]
 009F4B2C    push        eax
 009F4B2D    mov         ecx,edi
 009F4B2F    mov         dl,2
 009F4B31    mov         al,3
 009F4B33    call        007A35C0
 009F4B38    push        dword ptr [ebp-4]
 009F4B3B    push        dword ptr [ebp-8]
 009F4B3E    call        007A51D4
 009F4B43    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F4B48    mov         eax,dword ptr [eax]
 009F4B4A    mov         esi,dword ptr [eax+60]
 009F4B4D    mov         eax,esi
 009F4B4F    call        TDataSet.Close
 009F4B54    mov         eax,esi
 009F4B56    call        TOraQuery.GetSQL
 009F4B5B    mov         edx,dword ptr [eax]
 009F4B5D    call        dword ptr [edx+44]
 009F4B60    mov         eax,esi
 009F4B62    mov         edx,dword ptr [eax]
 009F4B64    call        dword ptr [edx+2D8]
 009F4B6A    mov         eax,esi
 009F4B6C    call        TOraQuery.GetSQL
 009F4B71    mov         edx,9F4E84;'DELETE FROM OPERS WHERE ID=:ID'
 009F4B76    mov         ecx,dword ptr [eax]
 009F4B78    call        dword ptr [ecx+38]
 009F4B7B    mov         edx,9F4D1C;'ID'
 009F4B80    mov         eax,esi
 009F4B82    call        006210D4
 009F4B87    mov         edx,edi
 009F4B89    mov         ecx,dword ptr [eax]
 009F4B8B    call        dword ptr [ecx+68]
 009F4B8E    mov         eax,esi
 009F4B90    call        00620CE4
 009F4B95    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F4B9A    mov         eax,dword ptr [eax]
 009F4B9C    mov         eax,dword ptr [eax+58]
 009F4B9F    mov         edx,dword ptr [eax]
 009F4BA1    call        dword ptr [edx+160]
 009F4BA7    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F4BAD    call        TDataSet.Close
 009F4BB2    mov         eax,dword ptr [ebx+370];TMainFormMarketSklad.deBgn:TDateEdit
 009F4BB8    call        006A90E4
 009F4BBD    add         esp,0FFFFFFF8
 009F4BC0    fstp        qword ptr [esp]
 009F4BC3    wait
 009F4BC4    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F4BCA    mov         edx,9F4EAC;'DATE_BGN'
 009F4BCF    call        006210D4
 009F4BD4    call        TParam.SetAsDate
 009F4BD9    mov         eax,dword ptr [ebx+374];TMainFormMarketSklad.deEnd:TDateEdit
 009F4BDF    call        006A90E4
 009F4BE4    add         esp,0FFFFFFF8
 009F4BE7    fstp        qword ptr [esp]
 009F4BEA    wait
 009F4BEB    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F4BF1    mov         edx,9F4EC0;'DATE_END'
 009F4BF6    call        006210D4
 009F4BFB    call        TParam.SetAsDate
 009F4C00    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F4C06    call        TDataSet.Open
 009F4C0B    mov         al,[009F4ECC];0x0 gvar_009F4ECC
 009F4C10    push        eax
 009F4C11    mov         eax,dword ptr [ebp-10]
 009F4C14    mov         edx,dword ptr [ebp-0C]
 009F4C17    push        edx
 009F4C18    push        eax
 009F4C19    lea         eax,[ebp-54]
 009F4C1C    call        @VarFromInt64
 009F4C21    lea         ecx,[ebp-54]
 009F4C24    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F4C2A    mov         edx,9F4D1C;'ID'
 009F4C2F    mov         ebx,dword ptr [eax]
 009F4C31    call        dword ptr [ebx+244];TMemDataSet.Locate
 009F4C37    xor         eax,eax
 009F4C39    pop         edx
 009F4C3A    pop         ecx
 009F4C3B    pop         ecx
 009F4C3C    mov         dword ptr fs:[eax],edx
>009F4C3F    jmp         009F4C88
>009F4C41    jmp         @HandleOnException
 009F4C46    dd          1
 009F4C4A    dd          00408E24;Exception
 009F4C4E    dd          009F4C52
 009F4C52    mov         ebx,eax
 009F4C54    mov         ecx,dword ptr [ebx+4];Exception.FMessage:String
 009F4C57    lea         eax,[ebp-58]
 009F4C5A    mov         edx,9F4ED8;'Не удается удалить документ!'+#13+ Доп.информация: '
 009F4C5F    call        @LStrCat3
 009F4C64    mov         edx,dword ptr [ebp-58]
 009F4C67    mov         eax,9F4F10;'Ошибка удаления'
 009F4C6C    call        006C683C
 009F4C71    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F4C76    mov         eax,dword ptr [eax]
 009F4C78    mov         eax,dword ptr [eax+58]
 009F4C7B    mov         edx,dword ptr [eax]
 009F4C7D    call        dword ptr [edx+164]
 009F4C83    call        @DoneExcept
 009F4C88    xor         eax,eax
 009F4C8A    pop         edx
 009F4C8B    pop         ecx
 009F4C8C    pop         ecx
 009F4C8D    mov         dword ptr fs:[eax],edx
 009F4C90    push        9F4CBF
 009F4C95    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F4C9A    mov         eax,dword ptr [eax]
 009F4C9C    mov         eax,dword ptr [eax+58]
 009F4C9F    mov         dl,1
 009F4CA1    call        TOraSession.SetAutoCommit
 009F4CA6    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F4CAB    mov         eax,dword ptr [eax]
 009F4CAD    mov         eax,dword ptr [eax+60]
 009F4CB0    mov         dl,1
 009F4CB2    call        TOraQuery.SetAutoCommit
 009F4CB7    ret
>009F4CB8    jmp         @HandleFinally
>009F4CBD    jmp         009F4C95
 009F4CBF    xor         eax,eax
 009F4CC1    pop         edx
 009F4CC2    pop         ecx
 009F4CC3    pop         ecx
 009F4CC4    mov         dword ptr fs:[eax],edx
 009F4CC7    push        9F4D0C
 009F4CCC    lea         eax,[ebp-58]
 009F4CCF    call        @LStrClr
 009F4CD4    lea         eax,[ebp-54]
 009F4CD7    call        @VarClr
 009F4CDC    lea         eax,[ebp-44]
 009F4CDF    mov         edx,4
 009F4CE4    call        @LStrArrayClr
 009F4CE9    lea         eax,[ebp-34]
 009F4CEC    mov         edx,dword ptr ds:[401160];Variant
 009F4CF2    mov         ecx,2
 009F4CF7    call        @FinalizeArray
 009F4CFC    lea         eax,[ebp-14]
 009F4CFF    call        @LStrClr
 009F4D04    ret
>009F4D05    jmp         @HandleFinally
>009F4D0A    jmp         009F4CCC
 009F4D0C    pop         edi
 009F4D0D    pop         esi
 009F4D0E    pop         ebx
 009F4D0F    mov         esp,ebp
 009F4D11    pop         ebp
 009F4D12    ret
*}
end;

//009F4F20
procedure TMainFormMarketSklad.aAddRashExecute;
begin
{*
 009F4F20    push        ebp
 009F4F21    mov         ebp,esp
 009F4F23    mov         ecx,0C
 009F4F28    push        0
 009F4F2A    push        0
 009F4F2C    dec         ecx
>009F4F2D    jne         009F4F28
 009F4F2F    push        ecx
 009F4F30    push        ebx
 009F4F31    push        esi
 009F4F32    push        edi
 009F4F33    mov         ebx,eax
 009F4F35    xor         eax,eax
 009F4F37    push        ebp
 009F4F38    push        9F574D
 009F4F3D    push        dword ptr fs:[eax]
 009F4F40    mov         dword ptr fs:[eax],esp
 009F4F43    lea         edx,[ebp-14]
 009F4F46    mov         eax,dword ptr [ebx+8BC];TMainFormMarketSklad.EditFindNakl:TEdit
 009F4F4C    call        TControl.GetText
 009F4F51    cmp         dword ptr [ebp-14],0
>009F4F55    je          009F4F78
 009F4F57    mov         eax,dword ptr [ebx+8BC];TMainFormMarketSklad.EditFindNakl:TEdit
 009F4F5D    xor         edx,edx
 009F4F5F    call        TControl.SetText
 009F4F64    mov         esi,dword ptr [ebx+2F8];TMainFormMarketSklad.PageControl1:TPageControl
 009F4F6A    mov         edx,ebx
 009F4F6C    mov         eax,dword ptr [esi+24C];TPageControl.?f24C:TfrxPreview
 009F4F72    call        dword ptr [esi+248];TPageControl.FOnChange
 009F4F78    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F4F7D    mov         eax,dword ptr [eax]
 009F4F7F    mov         eax,dword ptr [eax+58]
 009F4F82    xor         edx,edx
 009F4F84    call        TOraSession.SetAutoCommit
 009F4F89    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F4F8E    mov         eax,dword ptr [eax]
 009F4F90    mov         eax,dword ptr [eax+60]
 009F4F93    xor         edx,edx
 009F4F95    call        TOraQuery.SetAutoCommit
 009F4F9A    mov         eax,[00AC6EC8];^gvar_00ACEA1C:TFormEditOperRashod
 009F4F9F    cmp         dword ptr [eax],0
>009F4FA2    jne         009F4FBA
 009F4FA4    mov         ecx,ebx
 009F4FA6    mov         dl,1
 009F4FA8    mov         eax,[0098DA20];TFormEditOperRashod
 009F4FAD    call        TCustomForm.Create;TFormEditOperRashod.Create
 009F4FB2    mov         edx,dword ptr ds:[0AC6EC8];^gvar_00ACEA1C:TFormEditOperRashod
 009F4FB8    mov         dword ptr [edx],eax
 009F4FBA    mov         eax,[00AC6EC8];^gvar_00ACEA1C:TFormEditOperRashod
 009F4FBF    mov         eax,dword ptr [eax]
 009F4FC1    call        TFormEditOperRashod.ClearControls
 009F4FC6    xor         eax,eax
 009F4FC8    push        ebp
 009F4FC9    push        9F56DE
 009F4FCE    push        dword ptr fs:[eax]
 009F4FD1    mov         dword ptr fs:[eax],esp
 009F4FD4    xor         eax,eax
 009F4FD6    push        ebp
 009F4FD7    push        9F50A8
 009F4FDC    push        dword ptr fs:[eax]
 009F4FDF    mov         dword ptr fs:[eax],esp
 009F4FE2    mov         eax,9F5764;'OPERS'
 009F4FE7    call        0079EA24
 009F4FEC    mov         dword ptr [ebp-4],eax
 009F4FEF    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F4FF4    mov         eax,dword ptr [eax]
 009F4FF6    mov         esi,dword ptr [eax+60]
 009F4FF9    mov         eax,esi
 009F4FFB    call        TDataSet.Close
 009F5000    mov         eax,esi
 009F5002    call        TOraQuery.GetSQL
 009F5007    mov         edx,dword ptr [eax]
 009F5009    call        dword ptr [edx+44]
 009F500C    mov         eax,esi
 009F500E    call        TOraQuery.GetSQL
 009F5013    mov         edx,9F5774;'INSERT INTO OPERS(ID,DATE_OPER,NUM_OPER,ID_OPER_TYPE,'
 009F5018    mov         ecx,dword ptr [eax]
 009F501A    call        dword ptr [ecx+38]
 009F501D    mov         eax,esi
 009F501F    call        TOraQuery.GetSQL
 009F5024    mov         edx,9F57B4;'ID_KL_CEH_FROM,ID_KL_CEH_TO, DATE_CRE, USER_CRE, DESCR)'
 009F5029    mov         ecx,dword ptr [eax]
 009F502B    call        dword ptr [ecx+38]
 009F502E    mov         eax,esi
 009F5030    call        TOraQuery.GetSQL
 009F5035    mov         edx,9F57F4;'VALUES(:ID,SYSDATE,0,-1,-1,-1,SYSDATE,:USER_CRE,:DESCR)'
 009F503A    mov         ecx,dword ptr [eax]
 009F503C    call        dword ptr [ecx+38]
 009F503F    mov         edx,9F5834;'ID'
 009F5044    mov         eax,esi
 009F5046    call        006210D4
 009F504B    mov         edx,dword ptr [ebp-4]
 009F504E    mov         ecx,dword ptr [eax]
 009F5050    call        dword ptr [ecx+68]
 009F5053    lea         eax,[ebp-18]
 009F5056    push        eax
 009F5057    mov         ecx,1E
 009F505C    mov         edx,1
 009F5061    mov         eax,[00AC6618];0x0 gvar_00AC6618
 009F5066    call        @LStrCopy
 009F506B    mov         eax,dword ptr [ebp-18]
 009F506E    push        eax
 009F506F    mov         edx,9F5840;'USER_CRE'
 009F5074    mov         eax,esi
 009F5076    call        006210D4
 009F507B    pop         edx
 009F507C    mov         ecx,dword ptr [eax]
 009F507E    call        dword ptr [ecx+48]
 009F5081    mov         edx,9F5854;'DESCR'
 009F5086    mov         eax,esi
 009F5088    call        006210D4
 009F508D    mov         edx,9F5864;'== новый расход =='
 009F5092    mov         ecx,dword ptr [eax]
 009F5094    call        dword ptr [ecx+48]
 009F5097    mov         eax,esi
 009F5099    call        00620CE4
 009F509E    xor         eax,eax
 009F50A0    pop         edx
 009F50A1    pop         ecx
 009F50A2    pop         ecx
 009F50A3    mov         dword ptr fs:[eax],edx
>009F50A6    jmp         009F50F9
>009F50A8    jmp         @HandleOnException
 009F50AD    dd          1
 009F50B1    dd          00408E24;Exception
 009F50B5    dd          009F50B9
 009F50B9    mov         ebx,eax
 009F50BB    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F50C0    mov         eax,dword ptr [eax]
 009F50C2    mov         eax,dword ptr [eax+58]
 009F50C5    mov         edx,dword ptr [eax]
 009F50C7    call        dword ptr [edx+164]
 009F50CD    mov         ecx,dword ptr [ebx+4];Exception.FMessage:String
 009F50D0    lea         eax,[ebp-1C]
 009F50D3    mov         edx,9F5880;'Ошибка ввода строки расхода!'+#13+#13
 009F50D8    call        @LStrCat3
 009F50DD    mov         eax,dword ptr [ebp-1C]
 009F50E0    call        ShowMessage
 009F50E5    call        @DoneExcept
 009F50EA    call        @TryFinallyExit
>009F50EF    jmp         009F56E5
 009F50F4    call        @DoneExcept
 009F50F9    mov         eax,[00AC6EC8];^gvar_00ACEA1C:TFormEditOperRashod
 009F50FE    mov         eax,dword ptr [eax]
 009F5100    mov         eax,dword ptr [eax+35C]
 009F5106    xor         edx,edx
 009F5108    call        TControl.SetVisible
 009F510D    mov         eax,[00AC6EC8];^gvar_00ACEA1C:TFormEditOperRashod
 009F5112    mov         eax,dword ptr [eax]
 009F5114    mov         eax,dword ptr [eax+344]
 009F511A    xor         edx,edx
 009F511C    call        TControl.SetVisible
 009F5121    push        dword ptr ds:[0ACEBE4]
 009F5127    push        dword ptr ds:[0ACEBE0];gvar_00ACEBE0:Double
 009F512D    mov         eax,[00AC6EC8];^gvar_00ACEA1C:TFormEditOperRashod
 009F5132    mov         eax,dword ptr [eax]
 009F5134    mov         eax,dword ptr [eax+350]
 009F513A    mov         edx,dword ptr [eax]
 009F513C    call        dword ptr [edx+12C]
 009F5142    mov         eax,[00AC6EC8];^gvar_00ACEA1C:TFormEditOperRashod
 009F5147    mov         eax,dword ptr [eax]
 009F5149    mov         eax,dword ptr [eax+374]
 009F514F    call        TDataSet.Close
 009F5154    mov         eax,[00AC6EC8];^gvar_00ACEA1C:TFormEditOperRashod
 009F5159    mov         eax,dword ptr [eax]
 009F515B    mov         eax,dword ptr [eax+374]
 009F5161    call        TDataSet.Open
 009F5166    lea         ecx,[ebp-2C]
 009F5169    mov         eax,[00AC6EC8];^gvar_00ACEA1C:TFormEditOperRashod
 009F516E    mov         eax,dword ptr [eax]
 009F5170    mov         eax,dword ptr [eax+374]
 009F5176    mov         edx,9F5834;'ID'
 009F517B    call        TDataSet.GetFieldValue
 009F5180    lea         edx,[ebp-2C]
 009F5183    mov         eax,[00AC6EC8];^gvar_00ACEA1C:TFormEditOperRashod
 009F5188    mov         eax,dword ptr [eax]
 009F518A    mov         eax,dword ptr [eax+368]
 009F5190    call        TDBLookupControl.SetKeyValue
 009F5195    mov         eax,[00AC6EC8];^gvar_00ACEA1C:TFormEditOperRashod
 009F519A    mov         eax,dword ptr [eax]
 009F519C    mov         esi,dword ptr [eax+368]
 009F51A2    mov         edx,ebx
 009F51A4    mov         eax,dword ptr [esi+124]
 009F51AA    call        dword ptr [esi+120]
 009F51B0    mov         eax,[00AC6EC8];^gvar_00ACEA1C:TFormEditOperRashod
 009F51B5    mov         eax,dword ptr [eax]
 009F51B7    mov         edx,dword ptr [ebp-4]
 009F51BA    mov         dword ptr [eax+420],edx
 009F51C0    mov         eax,[00AC6EC8];^gvar_00ACEA1C:TFormEditOperRashod
 009F51C5    mov         eax,dword ptr [eax]
 009F51C7    mov         byte ptr [eax+424],1
 009F51CE    mov         eax,[00AC6EC8];^gvar_00ACEA1C:TFormEditOperRashod
 009F51D3    mov         eax,dword ptr [eax]
 009F51D5    mov         byte ptr [eax+425],0
 009F51DC    mov         eax,[00AC6EC8];^gvar_00ACEA1C:TFormEditOperRashod
 009F51E1    mov         eax,dword ptr [eax]
 009F51E3    mov         eax,dword ptr [eax+340]
 009F51E9    call        TDataSet.Close
 009F51EE    mov         eax,[00AC6EC8];^gvar_00ACEA1C:TFormEditOperRashod
 009F51F3    mov         eax,dword ptr [eax]
 009F51F5    mov         eax,dword ptr [eax+340]
 009F51FB    mov         edx,9F58A8;'ID_OPER'
 009F5200    call        006210D4
 009F5205    mov         edx,dword ptr [ebp-4]
 009F5208    mov         ecx,dword ptr [eax]
 009F520A    call        dword ptr [ecx+68]
 009F520D    mov         eax,[00AC6EC8];^gvar_00ACEA1C:TFormEditOperRashod
 009F5212    mov         eax,dword ptr [eax]
 009F5214    mov         eax,dword ptr [eax+340]
 009F521A    call        TDataSet.Open
 009F521F    mov         eax,[00AC6EC8];^gvar_00ACEA1C:TFormEditOperRashod
 009F5224    mov         eax,dword ptr [eax]
 009F5226    mov         edx,dword ptr [eax]
 009F5228    call        dword ptr [edx+0EC]
 009F522E    mov         eax,[00AC6EC8];^gvar_00ACEA1C:TFormEditOperRashod
 009F5233    mov         eax,dword ptr [eax]
 009F5235    cmp         dword ptr [eax+24C],1
>009F523C    jne         009F569C
 009F5242    xor         eax,eax
 009F5244    push        ebp
 009F5245    push        9F5658
 009F524A    push        dword ptr fs:[eax]
 009F524D    mov         dword ptr fs:[eax],esp
 009F5250    mov         eax,[00AC6EC8];^gvar_00ACEA1C:TFormEditOperRashod
 009F5255    mov         eax,dword ptr [eax]
 009F5257    mov         eax,dword ptr [eax+350]
 009F525D    call        006A90E4
 009F5262    add         esp,0FFFFFFF8
 009F5265    fstp        qword ptr [esp]
 009F5268    wait
 009F5269    mov         eax,dword ptr [ebx+32C]
 009F526F    add         eax,240
 009F5274    call        @VarToInteger
 009F5279    mov         edx,eax
 009F527B    mov         eax,ebx
 009F527D    call        TMainFormMarketSklad.GetNextOpNum
 009F5282    mov         edi,eax
 009F5284    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F5289    mov         eax,dword ptr [eax]
 009F528B    mov         esi,dword ptr [eax+60]
 009F528E    mov         eax,esi
 009F5290    call        TDataSet.Close
 009F5295    mov         eax,esi
 009F5297    call        TOraQuery.GetSQL
 009F529C    mov         edx,dword ptr [eax]
 009F529E    call        dword ptr [edx+44]
 009F52A1    mov         eax,esi
 009F52A3    call        TOraQuery.GetSQL
 009F52A8    mov         edx,9F58B8;'UPDATE OPERS SET DATE_OPER=:DATE_OPER,NUM_OPER=:NUM_OPER,'
 009F52AD    mov         ecx,dword ptr [eax]
 009F52AF    call        dword ptr [ecx+38]
 009F52B2    mov         eax,esi
 009F52B4    call        TOraQuery.GetSQL
 009F52B9    mov         edx,9F58FC;'ID_OPER_TYPE=:ID_OPER_TYPE,ID_KL_CEH_FROM=:ID_KL_CEH_FROM,'
 009F52BE    mov         ecx,dword ptr [eax]
 009F52C0    call        dword ptr [ecx+38]
 009F52C3    mov         eax,esi
 009F52C5    call        TOraQuery.GetSQL
 009F52CA    mov         edx,9F5940;'ID_KL_CEH_TO=:ID_KL_CEH_TO,DESCR=:DESCR,SUMALL_NO_NDS=:SUMALL_NO_NDS,'
 009F52CF    mov         ecx,dword ptr [eax]
 009F52D1    call        dword ptr [ecx+38]
 009F52D4    mov         eax,esi
 009F52D6    call        TOraQuery.GetSQL
 009F52DB    mov         edx,9F5990;'SUMALL_NDS=:SUMALL_NDS,DATE_CRE=SYSDATE,ID_USER_CRE=:ID_USER_CRE '
 009F52E0    mov         ecx,dword ptr [eax]
 009F52E2    call        dword ptr [ecx+38]
 009F52E5    mov         eax,esi
 009F52E7    call        TOraQuery.GetSQL
 009F52EC    mov         edx,9F59DC;'WHERE ID=:ID'
 009F52F1    mov         ecx,dword ptr [eax]
 009F52F3    call        dword ptr [ecx+38]
 009F52F6    mov         edx,9F5834;'ID'
 009F52FB    mov         eax,esi
 009F52FD    call        006210D4
 009F5302    mov         edx,dword ptr [ebp-4]
 009F5305    mov         ecx,dword ptr [eax]
 009F5307    call        dword ptr [ecx+68]
 009F530A    mov         eax,[00AC6EC8];^gvar_00ACEA1C:TFormEditOperRashod
 009F530F    mov         eax,dword ptr [eax]
 009F5311    mov         eax,dword ptr [eax+350]
 009F5317    call        006A90E4
 009F531C    add         esp,0FFFFFFF8
 009F531F    fstp        qword ptr [esp]
 009F5322    wait
 009F5323    mov         edx,9F59F4;'DATE_OPER'
 009F5328    mov         eax,esi
 009F532A    call        006210D4
 009F532F    call        TParam.SetAsDate
 009F5334    mov         edx,9F5A08;'NUM_OPER'
 009F5339    mov         eax,esi
 009F533B    call        006210D4
 009F5340    mov         edx,edi
 009F5342    mov         ecx,dword ptr [eax]
 009F5344    call        dword ptr [ecx+68]
 009F5347    mov         edx,9F5A1C;'ID_OPER_TYPE'
 009F534C    mov         eax,esi
 009F534E    call        006210D4
 009F5353    push        eax
 009F5354    mov         eax,[00AC6EC8];^gvar_00ACEA1C:TFormEditOperRashod
 009F5359    mov         eax,dword ptr [eax]
 009F535B    mov         eax,dword ptr [eax+368]
 009F5361    add         eax,240
 009F5366    call        @VarToInteger
 009F536B    mov         edx,eax
 009F536D    pop         eax
 009F536E    mov         ecx,dword ptr [eax]
 009F5370    call        dword ptr [ecx+68]
 009F5373    mov         edx,9F5A34;'ID_KL_CEH_FROM'
 009F5378    mov         eax,esi
 009F537A    call        006210D4
 009F537F    push        eax
 009F5380    mov         eax,dword ptr [ebx+32C]
 009F5386    add         eax,240
 009F538B    call        @VarToInteger
 009F5390    mov         edx,eax
 009F5392    pop         eax
 009F5393    mov         ecx,dword ptr [eax]
 009F5395    call        dword ptr [ecx+68]
 009F5398    mov         edx,9F5A4C;'ID_KL_CEH_TO'
 009F539D    mov         eax,esi
 009F539F    call        006210D4
 009F53A4    mov         edx,dword ptr ds:[0AC6EC8];^gvar_00ACEA1C:TFormEditOperRashod
 009F53AA    mov         edx,dword ptr [edx]
 009F53AC    mov         edx,dword ptr [edx+41C]
 009F53B2    mov         ecx,dword ptr [eax]
 009F53B4    call        dword ptr [ecx+68]
 009F53B7    lea         edx,[ebp-30]
 009F53BA    mov         eax,[00AC6EC8];^gvar_00ACEA1C:TFormEditOperRashod
 009F53BF    mov         eax,dword ptr [eax]
 009F53C1    mov         eax,dword ptr [eax+358]
 009F53C7    call        TControl.GetText
 009F53CC    mov         eax,dword ptr [ebp-30]
 009F53CF    push        eax
 009F53D0    mov         edx,9F5854;'DESCR'
 009F53D5    mov         eax,esi
 009F53D7    call        006210D4
 009F53DC    pop         edx
 009F53DD    mov         ecx,dword ptr [eax]
 009F53DF    call        dword ptr [ecx+48]
 009F53E2    mov         eax,[00AC6EC8];^gvar_00ACEA1C:TFormEditOperRashod
 009F53E7    mov         eax,dword ptr [eax]
 009F53E9    mov         eax,dword ptr [eax+380]
 009F53EF    mov         edx,9F5A64;'SUMMA_ALL'
 009F53F4    call        TDataSet.FieldByName
 009F53F9    mov         edx,dword ptr [eax]
 009F53FB    call        dword ptr [edx+4C];TField.GetAsCurrency
 009F53FE    fdiv        dword ptr ds:[9F5A70];10000:Single
 009F5404    add         esp,0FFFFFFF8
 009F5407    fstp        qword ptr [esp]
 009F540A    wait
 009F540B    mov         edx,9F5A7C;'SUMALL_NO_NDS'
 009F5410    mov         eax,esi
 009F5412    call        006210D4
 009F5417    mov         edx,dword ptr [eax]
 009F5419    call        dword ptr [edx+78]
 009F541C    push        0
 009F541E    push        0
 009F5420    mov         edx,9F5A94;'SUMALL_NDS'
 009F5425    mov         eax,esi
 009F5427    call        006210D4
 009F542C    mov         edx,dword ptr [eax]
 009F542E    call        dword ptr [edx+78]
 009F5431    mov         edx,9F5AA8;'ID_USER_CRE'
 009F5436    mov         eax,esi
 009F5438    call        006210D4
 009F543D    mov         edx,dword ptr ds:[0AC6614];0x1 gvar_00AC6614:Longint
 009F5443    mov         ecx,dword ptr [eax]
 009F5445    call        dword ptr [ecx+68]
 009F5448    mov         eax,esi
 009F544A    call        00620CE4
 009F544F    lea         eax,[ebp-40]
 009F5452    mov         edx,3
 009F5457    mov         cl,1
 009F5459    call        @VarFromInt
 009F545E    lea         edx,[ebp-40]
 009F5461    mov         eax,[00AC6EC8];^gvar_00ACEA1C:TFormEditOperRashod
 009F5466    mov         eax,dword ptr [eax]
 009F5468    mov         eax,dword ptr [eax+368]
 009F546E    add         eax,240
 009F5473    call        @VarCmpEQ
>009F5478    jne         009F54F5
 009F547A    mov         eax,[00AC6EC8];^gvar_00ACEA1C:TFormEditOperRashod
 009F547F    mov         eax,dword ptr [eax]
 009F5481    mov         eax,dword ptr [eax+3D0]
 009F5487    call        TCurrencyEdit.GetValue
 009F548C    fmul        dword ptr ds:[9F5A70];10000:Single
 009F5492    fistp       qword ptr [ebp-10]
 009F5495    wait
 009F5496    mov         eax,[00AC6EC8];^gvar_00ACEA1C:TFormEditOperRashod
 009F549B    mov         eax,dword ptr [eax]
 009F549D    cmp         dword ptr [eax+41C],3
>009F54A4    jne         009F54C6
 009F54A6    mov         eax,[00AC6EC8];^gvar_00ACEA1C:TFormEditOperRashod
 009F54AB    mov         eax,dword ptr [eax]
 009F54AD    mov         eax,dword ptr [eax+380]
 009F54B3    mov         edx,9F5A64;'SUMMA_ALL'
 009F54B8    call        TDataSet.FieldByName
 009F54BD    mov         edx,dword ptr [eax]
 009F54BF    call        dword ptr [edx+4C];TField.GetAsCurrency
 009F54C2    fistp       qword ptr [ebp-10]
 009F54C5    wait
 009F54C6    mov         eax,dword ptr [ebp-4]
 009F54C9    cdq
 009F54CA    push        edx
 009F54CB    push        eax
 009F54CC    push        dword ptr [ebp-0C]
 009F54CF    push        dword ptr [ebp-10]
 009F54D2    mov         eax,[00AC6EC8];^gvar_00ACEA1C:TFormEditOperRashod
 009F54D7    mov         eax,dword ptr [eax]
 009F54D9    mov         eax,dword ptr [eax+3D4]
 009F54DF    add         eax,240
 009F54E4    call        @VarToInteger
 009F54E9    mov         edx,eax
 009F54EB    mov         eax,1
 009F54F0    call        007A5028
 009F54F5    push        9F5ABC;'Ввод.расхода контрагенту: '
 009F54FA    lea         edx,[ebp-48]
 009F54FD    mov         eax,[00AC6EC8];^gvar_00ACEA1C:TFormEditOperRashod
 009F5502    mov         eax,dword ptr [eax]
 009F5504    mov         eax,dword ptr [eax+354]
 009F550A    call        TControl.GetText
 009F550F    push        dword ptr [ebp-48]
 009F5512    push        9F5AE0;':'
 009F5517    lea         edx,[ebp-4C]
 009F551A    mov         eax,[00AC6EC8];^gvar_00ACEA1C:TFormEditOperRashod
 009F551F    mov         eax,dword ptr [eax]
 009F5521    mov         eax,dword ptr [eax+358]
 009F5527    call        TControl.GetText
 009F552C    push        dword ptr [ebp-4C]
 009F552F    lea         eax,[ebp-44]
 009F5532    mov         edx,4
 009F5537    call        @LStrCatN
 009F553C    mov         eax,dword ptr [ebp-44]
 009F553F    push        eax
 009F5540    lea         eax,[ebp-50]
 009F5543    push        eax
 009F5544    mov         ecx,19
 009F5549    mov         edx,1
 009F554E    mov         eax,[00AC6618];0x0 gvar_00AC6618
 009F5553    call        @LStrCopy
 009F5558    mov         eax,dword ptr [ebp-50]
 009F555B    push        eax
 009F555C    mov         ecx,dword ptr [ebp-4]
 009F555F    xor         edx,edx
 009F5561    mov         al,6
 009F5563    call        007A35C0
 009F5568    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F556D    mov         eax,dword ptr [eax]
 009F556F    mov         eax,dword ptr [eax+58]
 009F5572    mov         edx,dword ptr [eax]
 009F5574    call        dword ptr [edx+160]
 009F557A    mov         eax,dword ptr [ebx+394]
 009F5580    call        TDataSet.Close
 009F5585    mov         eax,dword ptr [ebx+394]
 009F558B    mov         edx,9F5AEC;'ID_CEH_FROM'
 009F5590    call        006210D4
 009F5595    push        eax
 009F5596    mov         eax,dword ptr [ebx+32C]
 009F559C    add         eax,240
 009F55A1    call        @VarToInteger
 009F55A6    mov         edx,eax
 009F55A8    pop         eax
 009F55A9    mov         ecx,dword ptr [eax]
 009F55AB    call        dword ptr [ecx+68]
 009F55AE    mov         eax,dword ptr [ebx+370]
 009F55B4    call        006A90E4
 009F55B9    add         esp,0FFFFFFF8
 009F55BC    fstp        qword ptr [esp]
 009F55BF    wait
 009F55C0    mov         eax,dword ptr [ebx+394]
 009F55C6    mov         edx,9F5B00;'DATE_BGN'
 009F55CB    call        006210D4
 009F55D0    call        TParam.SetAsDate
 009F55D5    mov         eax,dword ptr [ebx+374]
 009F55DB    call        006A90E4
 009F55E0    add         esp,0FFFFFFF8
 009F55E3    fstp        qword ptr [esp]
 009F55E6    wait
 009F55E7    mov         eax,dword ptr [ebx+394]
 009F55ED    mov         edx,9F5B14;'DATE_END'
 009F55F2    call        006210D4
 009F55F7    call        TParam.SetAsDate
 009F55FC    mov         eax,dword ptr [ebx+394]
 009F5602    call        TDataSet.Open
 009F5607    mov         al,[009F5B20];0x0 gvar_009F5B20
 009F560C    push        eax
 009F560D    lea         eax,[ebp-60]
 009F5610    mov         edx,dword ptr [ebp-4]
 009F5613    mov         cl,0FC
 009F5615    call        @VarFromInt
 009F561A    lea         ecx,[ebp-60]
 009F561D    mov         eax,dword ptr [ebx+394]
 009F5623    mov         edx,9F5834;'ID'
 009F5628    mov         esi,dword ptr [eax]
 009F562A    call        dword ptr [esi+244]
 009F5630    mov         edx,9F5B2C;'Провести расходную операцию?'
 009F5635    xor         eax,eax
 009F5637    call        006C64E0
 009F563C    dec         eax
>009F563D    jne         009F564E
 009F563F    mov         eax,dword ptr [ebx+440]
 009F5645    mov         si,0FFEF
 009F5649    call        @CallDynaInst
 009F564E    xor         eax,eax
 009F5650    pop         edx
 009F5651    pop         ecx
 009F5652    pop         ecx
 009F5653    mov         dword ptr fs:[eax],edx
>009F5656    jmp         009F56AE
>009F5658    jmp         @HandleOnException
 009F565D    dd          1
 009F5661    dd          00408E24;Exception
 009F5665    dd          009F5669
 009F5669    mov         ebx,eax
 009F566B    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F5670    mov         eax,dword ptr [eax]
 009F5672    mov         eax,dword ptr [eax+58]
 009F5675    mov         edx,dword ptr [eax]
 009F5677    call        dword ptr [edx+164]
 009F567D    mov         ecx,dword ptr [ebx+4];Exception.FMessage:String
 009F5680    lea         eax,[ebp-64]
 009F5683    mov         edx,9F5B54;'Ошибка сохранения расхода!'+#13+#13
 009F5688    call        @LStrCat3
 009F568D    mov         eax,dword ptr [ebp-64]
 009F5690    call        ShowMessage
 009F5695    call        @DoneExcept
>009F569A    jmp         009F56AE
 009F569C    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F56A1    mov         eax,dword ptr [eax]
 009F56A3    mov         eax,dword ptr [eax+58]
 009F56A6    mov         edx,dword ptr [eax]
 009F56A8    call        dword ptr [edx+164]
 009F56AE    xor         eax,eax
 009F56B0    pop         edx
 009F56B1    pop         ecx
 009F56B2    pop         ecx
 009F56B3    mov         dword ptr fs:[eax],edx
 009F56B6    push        9F56E5
 009F56BB    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F56C0    mov         eax,dword ptr [eax]
 009F56C2    mov         eax,dword ptr [eax+58]
 009F56C5    mov         dl,1
 009F56C7    call        TOraSession.SetAutoCommit
 009F56CC    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F56D1    mov         eax,dword ptr [eax]
 009F56D3    mov         eax,dword ptr [eax+60]
 009F56D6    mov         dl,1
 009F56D8    call        TOraQuery.SetAutoCommit
 009F56DD    ret
>009F56DE    jmp         @HandleFinally
>009F56E3    jmp         009F56BB
 009F56E5    xor         eax,eax
 009F56E7    pop         edx
 009F56E8    pop         ecx
 009F56E9    pop         ecx
 009F56EA    mov         dword ptr fs:[eax],edx
 009F56ED    push        9F5754
 009F56F2    lea         eax,[ebp-64]
 009F56F5    call        @LStrClr
 009F56FA    lea         eax,[ebp-60]
 009F56FD    call        @VarClr
 009F5702    lea         eax,[ebp-50]
 009F5705    call        @LStrClr
 009F570A    lea         eax,[ebp-4C]
 009F570D    mov         edx,2
 009F5712    call        @LStrArrayClr
 009F5717    lea         eax,[ebp-44]
 009F571A    call        @LStrClr
 009F571F    lea         eax,[ebp-40]
 009F5722    call        @VarClr
 009F5727    lea         eax,[ebp-30]
 009F572A    call        @LStrClr
 009F572F    lea         eax,[ebp-2C]
 009F5732    call        @VarClr
 009F5737    lea         eax,[ebp-1C]
 009F573A    mov         edx,2
 009F573F    call        @LStrArrayClr
 009F5744    lea         eax,[ebp-14]
 009F5747    call        @LStrClr
 009F574C    ret
>009F574D    jmp         @HandleFinally
>009F5752    jmp         009F56F2
 009F5754    pop         edi
 009F5755    pop         esi
 009F5756    pop         ebx
 009F5757    mov         esp,ebp
 009F5759    pop         ebp
 009F575A    ret
*}
end;

//009F5B74
procedure TMainFormMarketSklad.aEdtRashExecute;
begin
{*
 009F5B74    push        ebp
 009F5B75    mov         ebp,esp
 009F5B77    mov         ecx,1B
 009F5B7C    push        0
 009F5B7E    push        0
 009F5B80    dec         ecx
>009F5B81    jne         009F5B7C
 009F5B83    push        ebx
 009F5B84    push        esi
 009F5B85    push        edi
 009F5B86    mov         ebx,eax
 009F5B88    mov         esi,dword ptr ds:[0AC6EC8];^gvar_00ACEA1C:TFormEditOperRashod
 009F5B8E    xor         eax,eax
 009F5B90    push        ebp
 009F5B91    push        9F635A
 009F5B96    push        dword ptr fs:[eax]
 009F5B99    mov         dword ptr fs:[eax],esp
 009F5B9C    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F5BA2    mov         edx,9F6374;'ID_OPER_TYPE'
 009F5BA7    call        TDataSet.FieldByName
 009F5BAC    mov         edx,dword ptr [eax]
 009F5BAE    call        dword ptr [edx+58];TField.GetAsInteger
 009F5BB1    cmp         eax,7
>009F5BB4    jne         009F5BC5
 009F5BB6    mov         eax,9F638C;'Списание по ревизии изменить нельзя!'
 009F5BBB    call        ShowMessage
>009F5BC0    jmp         009F62B9
 009F5BC5    lea         ecx,[ebp-24]
 009F5BC8    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F5BCE    mov         edx,9F63BC;'ID'
 009F5BD3    call        TDataSet.GetFieldValue
 009F5BD8    lea         eax,[ebp-24]
 009F5BDB    call        @VarToInteger
 009F5BE0    mov         dword ptr [ebp-4],eax
 009F5BE3    mov         edx,dword ptr [ebp-4]
 009F5BE6    mov         eax,9F63C8;'OPERS'
 009F5BEB    call        007A1E78
 009F5BF0    test        al,al
>009F5BF2    jne         009F62B9
 009F5BF8    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F5BFD    mov         eax,dword ptr [eax]
 009F5BFF    mov         eax,dword ptr [eax+58]
 009F5C02    xor         edx,edx
 009F5C04    call        TOraSession.SetAutoCommit
 009F5C09    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F5C0E    mov         eax,dword ptr [eax]
 009F5C10    mov         eax,dword ptr [eax+60]
 009F5C13    xor         edx,edx
 009F5C15    call        TOraQuery.SetAutoCommit
 009F5C1A    cmp         dword ptr [esi],0
>009F5C1D    jne         009F5C2F
 009F5C1F    mov         ecx,ebx
 009F5C21    mov         dl,1
 009F5C23    mov         eax,[0098DA20];TFormEditOperRashod
 009F5C28    call        TCustomForm.Create;TFormEditOperRashod.Create
 009F5C2D    mov         dword ptr [esi],eax
 009F5C2F    mov         eax,dword ptr [esi]
 009F5C31    call        TFormEditOperRashod.ClearControls
 009F5C36    xor         eax,eax
 009F5C38    push        ebp
 009F5C39    push        9F62B2
 009F5C3E    push        dword ptr fs:[eax]
 009F5C41    mov         dword ptr fs:[eax],esp
 009F5C44    lea         ecx,[ebp-34]
 009F5C47    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F5C4D    mov         edx,9F63D8;'IS_PROV'
 009F5C52    call        TDataSet.GetFieldValue
 009F5C57    lea         eax,[ebp-34]
 009F5C5A    push        eax
 009F5C5B    lea         eax,[ebp-44]
 009F5C5E    mov         edx,1
 009F5C63    mov         cl,1
 009F5C65    call        @VarFromInt
 009F5C6A    lea         edx,[ebp-44]
 009F5C6D    pop         eax
 009F5C6E    call        @VarCmpEQ
 009F5C73    sete        al
 009F5C76    mov         edx,dword ptr [esi]
 009F5C78    mov         byte ptr [edx+425],al
 009F5C7E    lea         ecx,[ebp-58]
 009F5C81    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F5C87    mov         edx,9F63E8;'NUM_OPER'
 009F5C8C    call        TDataSet.GetFieldValue
 009F5C91    lea         edx,[ebp-58]
 009F5C94    lea         eax,[ebp-48]
 009F5C97    call        @VarToLStr
 009F5C9C    mov         edx,dword ptr [ebp-48]
 009F5C9F    mov         eax,dword ptr [esi]
 009F5CA1    mov         eax,dword ptr [eax+35C]
 009F5CA7    call        TControl.SetText
 009F5CAC    mov         eax,dword ptr [esi]
 009F5CAE    mov         eax,dword ptr [eax+35C]
 009F5CB4    mov         dl,1
 009F5CB6    call        TControl.SetVisible
 009F5CBB    mov         eax,dword ptr [esi]
 009F5CBD    mov         eax,dword ptr [eax+344]
 009F5CC3    mov         dl,1
 009F5CC5    call        TControl.SetVisible
 009F5CCA    lea         ecx,[ebp-68]
 009F5CCD    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F5CD3    mov         edx,9F63E8;'NUM_OPER'
 009F5CD8    call        TDataSet.GetFieldValue
 009F5CDD    lea         eax,[ebp-68]
 009F5CE0    call        @VarToInteger
 009F5CE5    mov         dword ptr [ebp-8],eax
 009F5CE8    lea         ecx,[ebp-78]
 009F5CEB    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F5CF1    mov         edx,9F63FC;'DATE_OPER'
 009F5CF6    call        TDataSet.GetFieldValue
 009F5CFB    lea         eax,[ebp-78]
 009F5CFE    call        @VarToReal
 009F5D03    add         esp,0FFFFFFF8
 009F5D06    fstp        qword ptr [esp]
 009F5D09    wait
 009F5D0A    mov         eax,dword ptr [esi]
 009F5D0C    mov         eax,dword ptr [eax+350]
 009F5D12    mov         edx,dword ptr [eax]
 009F5D14    call        dword ptr [edx+12C]
 009F5D1A    lea         ecx,[ebp-88]
 009F5D20    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F5D26    mov         edx,9F63FC;'DATE_OPER'
 009F5D2B    call        TDataSet.GetFieldValue
 009F5D30    lea         eax,[ebp-88]
 009F5D36    call        @VarToReal
 009F5D3B    fstp        qword ptr [ebp-10]
 009F5D3E    wait
 009F5D3F    mov         eax,dword ptr [esi]
 009F5D41    mov         eax,dword ptr [eax+374]
 009F5D47    call        TDataSet.Close
 009F5D4C    mov         eax,dword ptr [esi]
 009F5D4E    mov         eax,dword ptr [eax+374]
 009F5D54    call        TDataSet.Open
 009F5D59    lea         ecx,[ebp-98]
 009F5D5F    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F5D65    mov         edx,9F6374;'ID_OPER_TYPE'
 009F5D6A    call        TDataSet.GetFieldValue
 009F5D6F    lea         edx,[ebp-98]
 009F5D75    mov         eax,dword ptr [esi]
 009F5D77    mov         eax,dword ptr [eax+368]
 009F5D7D    call        TDBLookupControl.SetKeyValue
 009F5D82    mov         eax,dword ptr [esi]
 009F5D84    mov         byte ptr [eax+424],0
 009F5D8B    mov         eax,dword ptr [esi]
 009F5D8D    mov         eax,dword ptr [eax+340]
 009F5D93    call        TDataSet.Close
 009F5D98    mov         eax,dword ptr [esi]
 009F5D9A    mov         eax,dword ptr [eax+340]
 009F5DA0    mov         edx,9F6410;'ID_OPER'
 009F5DA5    call        006210D4
 009F5DAA    mov         edx,dword ptr [ebp-4]
 009F5DAD    mov         ecx,dword ptr [eax]
 009F5DAF    call        dword ptr [ecx+68]
 009F5DB2    mov         eax,dword ptr [esi]
 009F5DB4    mov         eax,dword ptr [eax+340]
 009F5DBA    call        TDataSet.Open
 009F5DBF    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F5DC5    mov         edx,9F6420;'NAME_KL_CEH'
 009F5DCA    call        TDataSet.FieldByName
 009F5DCF    lea         edx,[ebp-9C]
 009F5DD5    mov         ecx,dword ptr [eax]
 009F5DD7    call        dword ptr [ecx+60];TField.GetAsString
 009F5DDA    mov         edx,dword ptr [ebp-9C]
 009F5DE0    mov         eax,dword ptr [esi]
 009F5DE2    mov         eax,dword ptr [eax+354]
 009F5DE8    call        TControl.SetText
 009F5DED    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F5DF3    mov         edx,9F6434;'DESCR'
 009F5DF8    call        TDataSet.FieldByName
 009F5DFD    lea         edx,[ebp-0A0]
 009F5E03    mov         ecx,dword ptr [eax]
 009F5E05    call        dword ptr [ecx+60];TField.GetAsString
 009F5E08    mov         edx,dword ptr [ebp-0A0]
 009F5E0E    mov         eax,dword ptr [esi]
 009F5E10    mov         eax,dword ptr [eax+358]
 009F5E16    call        TControl.SetText
 009F5E1B    mov         eax,dword ptr [esi]
 009F5E1D    mov         edx,dword ptr [ebp-4]
 009F5E20    mov         dword ptr [eax+420],edx
 009F5E26    lea         ecx,[ebp-0B0]
 009F5E2C    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F5E32    mov         edx,9F6444;'ID_KL_CEH_TO'
 009F5E37    call        TDataSet.GetFieldValue
 009F5E3C    lea         eax,[ebp-0B0]
 009F5E42    call        @VarToInteger
 009F5E47    mov         edx,dword ptr [esi]
 009F5E49    mov         dword ptr [edx+41C],eax
 009F5E4F    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F5E55    mov         edx,9F63D8;'IS_PROV'
 009F5E5A    call        TDataSet.FieldByName
 009F5E5F    mov         edx,dword ptr [eax]
 009F5E61    call        dword ptr [edx+58];TField.GetAsInteger
 009F5E64    dec         eax
 009F5E65    sete        al
 009F5E68    mov         edx,dword ptr [esi]
 009F5E6A    mov         byte ptr [edx+425],al
 009F5E70    mov         eax,dword ptr [esi]
 009F5E72    mov         edx,dword ptr [eax]
 009F5E74    call        dword ptr [edx+0EC]
 009F5E7A    mov         eax,dword ptr [esi]
 009F5E7C    cmp         dword ptr [eax+24C],1
>009F5E83    jne         009F6270
 009F5E89    xor         eax,eax
 009F5E8B    push        ebp
 009F5E8C    push        9F6226
 009F5E91    push        dword ptr fs:[eax]
 009F5E94    mov         dword ptr fs:[eax],esp
 009F5E97    mov         eax,dword ptr [esi]
 009F5E99    mov         eax,dword ptr [eax+350]
 009F5E9F    call        006A90E4
 009F5EA4    fcomp       qword ptr [ebp-10]
 009F5EA7    fnstsw      al
 009F5EA9    sahf
>009F5EAA    je          009F5EDC
 009F5EAC    mov         eax,dword ptr [esi]
 009F5EAE    mov         eax,dword ptr [eax+350]
 009F5EB4    call        006A90E4
 009F5EB9    add         esp,0FFFFFFF8
 009F5EBC    fstp        qword ptr [esp]
 009F5EBF    wait
 009F5EC0    mov         eax,dword ptr [ebx+32C];TMainFormMarketSklad.cbSklad:TDBLookupComboBox
 009F5EC6    add         eax,240;TDBLookupComboBox.FKeyValue:Variant
 009F5ECB    call        @VarToInteger
 009F5ED0    mov         edx,eax
 009F5ED2    mov         eax,ebx
 009F5ED4    call        TMainFormMarketSklad.GetNextOpNum
 009F5ED9    mov         dword ptr [ebp-8],eax
 009F5EDC    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F5EE1    mov         eax,dword ptr [eax]
 009F5EE3    mov         eax,dword ptr [eax+60]
 009F5EE6    mov         dword ptr [ebp-14],eax
 009F5EE9    mov         eax,dword ptr [ebp-14]
 009F5EEC    call        TDataSet.Close
 009F5EF1    mov         eax,dword ptr [ebp-14]
 009F5EF4    call        TOraQuery.GetSQL
 009F5EF9    mov         edx,dword ptr [eax]
 009F5EFB    call        dword ptr [edx+44]
 009F5EFE    mov         eax,dword ptr [ebp-14]
 009F5F01    call        TOraQuery.GetSQL
 009F5F06    mov         edx,9F645C;'UPDATE OPERS SET DATE_OPER=:DATE_OPER,NUM_OPER=:NUM_OPER,'
 009F5F0B    mov         ecx,dword ptr [eax]
 009F5F0D    call        dword ptr [ecx+38]
 009F5F10    mov         eax,dword ptr [ebp-14]
 009F5F13    call        TOraQuery.GetSQL
 009F5F18    mov         edx,9F64A0;'ID_OPER_TYPE=:ID_OPER_TYPE,ID_KL_CEH_FROM=:ID_KL_CEH_FROM,'
 009F5F1D    mov         ecx,dword ptr [eax]
 009F5F1F    call        dword ptr [ecx+38]
 009F5F22    mov         eax,dword ptr [ebp-14]
 009F5F25    call        TOraQuery.GetSQL
 009F5F2A    mov         edx,9F64E4;'ID_KL_CEH_TO=:ID_KL_CEH_TO,DESCR=:DESCR,SUMALL_NO_NDS=:SUMALL_NO_NDS,'
 009F5F2F    mov         ecx,dword ptr [eax]
 009F5F31    call        dword ptr [ecx+38]
 009F5F34    mov         eax,dword ptr [ebp-14]
 009F5F37    call        TOraQuery.GetSQL
 009F5F3C    mov         edx,9F6534;'SUMALL_NDS=:SUMALL_NDS'
 009F5F41    mov         ecx,dword ptr [eax]
 009F5F43    call        dword ptr [ecx+38]
 009F5F46    mov         eax,dword ptr [ebp-14]
 009F5F49    call        TOraQuery.GetSQL
 009F5F4E    mov         edx,9F6554;'WHERE ID=:ID'
 009F5F53    mov         ecx,dword ptr [eax]
 009F5F55    call        dword ptr [ecx+38]
 009F5F58    mov         edx,9F63BC;'ID'
 009F5F5D    mov         eax,dword ptr [ebp-14]
 009F5F60    call        006210D4
 009F5F65    mov         edx,dword ptr [ebp-4]
 009F5F68    mov         ecx,dword ptr [eax]
 009F5F6A    call        dword ptr [ecx+68]
 009F5F6D    mov         edx,9F63E8;'NUM_OPER'
 009F5F72    mov         eax,dword ptr [ebp-14]
 009F5F75    call        006210D4
 009F5F7A    mov         edx,dword ptr [ebp-8]
 009F5F7D    mov         ecx,dword ptr [eax]
 009F5F7F    call        dword ptr [ecx+68]
 009F5F82    mov         eax,dword ptr [esi]
 009F5F84    mov         eax,dword ptr [eax+350]
 009F5F8A    call        006A90E4
 009F5F8F    add         esp,0FFFFFFF8
 009F5F92    fstp        qword ptr [esp]
 009F5F95    wait
 009F5F96    mov         edx,9F63FC;'DATE_OPER'
 009F5F9B    mov         eax,dword ptr [ebp-14]
 009F5F9E    call        006210D4
 009F5FA3    call        TParam.SetAsDate
 009F5FA8    mov         edx,9F6374;'ID_OPER_TYPE'
 009F5FAD    mov         eax,dword ptr [ebp-14]
 009F5FB0    call        006210D4
 009F5FB5    push        eax
 009F5FB6    mov         eax,dword ptr [esi]
 009F5FB8    mov         eax,dword ptr [eax+368]
 009F5FBE    add         eax,240
 009F5FC3    call        @VarToInteger
 009F5FC8    mov         edx,eax
 009F5FCA    pop         eax
 009F5FCB    mov         ecx,dword ptr [eax]
 009F5FCD    call        dword ptr [ecx+68]
 009F5FD0    mov         edx,9F656C;'ID_KL_CEH_FROM'
 009F5FD5    mov         eax,dword ptr [ebp-14]
 009F5FD8    call        006210D4
 009F5FDD    push        eax
 009F5FDE    mov         eax,dword ptr [ebx+32C];TMainFormMarketSklad.cbSklad:TDBLookupComboBox
 009F5FE4    add         eax,240;TDBLookupComboBox.FKeyValue:Variant
 009F5FE9    call        @VarToInteger
 009F5FEE    mov         edx,eax
 009F5FF0    pop         eax
 009F5FF1    mov         ecx,dword ptr [eax]
 009F5FF3    call        dword ptr [ecx+68]
 009F5FF6    mov         edx,9F6444;'ID_KL_CEH_TO'
 009F5FFB    mov         eax,dword ptr [ebp-14]
 009F5FFE    call        006210D4
 009F6003    mov         edx,dword ptr [esi]
 009F6005    mov         edx,dword ptr [edx+41C]
 009F600B    mov         ecx,dword ptr [eax]
 009F600D    call        dword ptr [ecx+68]
 009F6010    lea         edx,[ebp-0B4]
 009F6016    mov         eax,dword ptr [esi]
 009F6018    mov         eax,dword ptr [eax+358]
 009F601E    call        TControl.GetText
 009F6023    mov         eax,dword ptr [ebp-0B4]
 009F6029    push        eax
 009F602A    mov         edx,9F6434;'DESCR'
 009F602F    mov         eax,dword ptr [ebp-14]
 009F6032    call        006210D4
 009F6037    pop         edx
 009F6038    mov         ecx,dword ptr [eax]
 009F603A    call        dword ptr [ecx+48]
 009F603D    mov         eax,dword ptr [esi]
 009F603F    mov         eax,dword ptr [eax+380]
 009F6045    mov         edx,9F6584;'SUMMA_ALL'
 009F604A    call        TDataSet.FieldByName
 009F604F    mov         edx,dword ptr [eax]
 009F6051    call        dword ptr [edx+4C];TField.GetAsCurrency
 009F6054    fdiv        dword ptr ds:[9F6590];10000:Single
 009F605A    add         esp,0FFFFFFF8
 009F605D    fstp        qword ptr [esp]
 009F6060    wait
 009F6061    mov         edx,9F659C;'SUMALL_NO_NDS'
 009F6066    mov         eax,dword ptr [ebp-14]
 009F6069    call        006210D4
 009F606E    mov         edx,dword ptr [eax]
 009F6070    call        dword ptr [edx+78]
 009F6073    push        0
 009F6075    push        0
 009F6077    mov         edx,9F65B4;'SUMALL_NDS'
 009F607C    mov         eax,dword ptr [ebp-14]
 009F607F    call        006210D4
 009F6084    mov         edx,dword ptr [eax]
 009F6086    call        dword ptr [edx+78]
 009F6089    mov         eax,dword ptr [ebp-14]
 009F608C    call        00620CE4
 009F6091    mov         eax,dword ptr [ebp-4]
 009F6094    cdq
 009F6095    push        edx
 009F6096    push        eax
 009F6097    mov         eax,dword ptr [esi]
 009F6099    mov         eax,dword ptr [eax+41C]
 009F609F    call        009774EC
 009F60A4    push        9F65C8;'Редактир.расхода контрагенту: '
 009F60A9    lea         edx,[ebp-0BC]
 009F60AF    mov         eax,dword ptr [esi]
 009F60B1    mov         eax,dword ptr [eax+354]
 009F60B7    call        TControl.GetText
 009F60BC    push        dword ptr [ebp-0BC]
 009F60C2    push        9F65F0;':'
 009F60C7    lea         edx,[ebp-0C0]
 009F60CD    mov         eax,dword ptr [esi]
 009F60CF    mov         eax,dword ptr [eax+358]
 009F60D5    call        TControl.GetText
 009F60DA    push        dword ptr [ebp-0C0]
 009F60E0    lea         eax,[ebp-0B8]
 009F60E6    mov         edx,4
 009F60EB    call        @LStrCatN
 009F60F0    mov         eax,dword ptr [ebp-0B8]
 009F60F6    push        eax
 009F60F7    lea         eax,[ebp-0C4]
 009F60FD    push        eax
 009F60FE    mov         ecx,19
 009F6103    mov         edx,1
 009F6108    mov         eax,[00AC6618];0x0 gvar_00AC6618
 009F610D    call        @LStrCopy
 009F6112    mov         eax,dword ptr [ebp-0C4]
 009F6118    push        eax
 009F6119    mov         ecx,dword ptr [ebp-4]
 009F611C    mov         dl,1
 009F611E    mov         al,7
 009F6120    call        007A35C0
 009F6125    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F612A    mov         eax,dword ptr [eax]
 009F612C    mov         eax,dword ptr [eax+58]
 009F612F    mov         edx,dword ptr [eax]
 009F6131    call        dword ptr [edx+160]
 009F6137    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F613D    call        TDataSet.Close
 009F6142    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F6148    mov         edx,9F65FC;'ID_CEH_FROM'
 009F614D    call        006210D4
 009F6152    push        eax
 009F6153    mov         eax,dword ptr [ebx+32C];TMainFormMarketSklad.cbSklad:TDBLookupComboBox
 009F6159    add         eax,240;TDBLookupComboBox.FKeyValue:Variant
 009F615E    call        @VarToInteger
 009F6163    mov         edx,eax
 009F6165    pop         eax
 009F6166    mov         ecx,dword ptr [eax]
 009F6168    call        dword ptr [ecx+68]
 009F616B    mov         eax,dword ptr [ebx+370];TMainFormMarketSklad.deBgn:TDateEdit
 009F6171    call        006A90E4
 009F6176    add         esp,0FFFFFFF8
 009F6179    fstp        qword ptr [esp]
 009F617C    wait
 009F617D    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F6183    mov         edx,9F6610;'DATE_BGN'
 009F6188    call        006210D4
 009F618D    call        TParam.SetAsDate
 009F6192    mov         eax,dword ptr [ebx+374];TMainFormMarketSklad.deEnd:TDateEdit
 009F6198    call        006A90E4
 009F619D    add         esp,0FFFFFFF8
 009F61A0    fstp        qword ptr [esp]
 009F61A3    wait
 009F61A4    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F61AA    mov         edx,9F6624;'DATE_END'
 009F61AF    call        006210D4
 009F61B4    call        TParam.SetAsDate
 009F61B9    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F61BF    call        TDataSet.Open
 009F61C4    mov         al,[009F6630];0x0 gvar_009F6630
 009F61C9    push        eax
 009F61CA    lea         eax,[ebp-0D4]
 009F61D0    mov         edx,dword ptr [ebp-4]
 009F61D3    mov         cl,0FC
 009F61D5    call        @VarFromInt
 009F61DA    lea         ecx,[ebp-0D4]
 009F61E0    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F61E6    mov         edx,9F63BC;'ID'
 009F61EB    mov         edi,dword ptr [eax]
 009F61ED    call        dword ptr [edi+244];TMemDataSet.Locate
 009F61F3    mov         eax,dword ptr [esi]
 009F61F5    cmp         byte ptr [eax+425],0
>009F61FC    jne         009F621C
 009F61FE    mov         edx,9F663C;'Провести расходную операцию?'
 009F6203    xor         eax,eax
 009F6205    call        006C64E0
 009F620A    dec         eax
>009F620B    jne         009F621C
 009F620D    mov         eax,dword ptr [ebx+440];TMainFormMarketSklad.aProvodRashod:TAction
 009F6213    mov         si,0FFEF
 009F6217    call        @CallDynaInst;TCustomAction.Execute
 009F621C    xor         eax,eax
 009F621E    pop         edx
 009F621F    pop         ecx
 009F6220    pop         ecx
 009F6221    mov         dword ptr fs:[eax],edx
>009F6224    jmp         009F6282
>009F6226    jmp         @HandleOnException
 009F622B    dd          1
 009F622F    dd          00408E24;Exception
 009F6233    dd          009F6237
 009F6237    mov         ebx,eax
 009F6239    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F623E    mov         eax,dword ptr [eax]
 009F6240    mov         eax,dword ptr [eax+58]
 009F6243    mov         edx,dword ptr [eax]
 009F6245    call        dword ptr [edx+164]
 009F624B    mov         ecx,dword ptr [ebx+4];Exception.FMessage:String
 009F624E    lea         eax,[ebp-0D8]
 009F6254    mov         edx,9F6664;'Ошибка сохранения прихода!'+#13+#13
 009F6259    call        @LStrCat3
 009F625E    mov         eax,dword ptr [ebp-0D8]
 009F6264    call        ShowMessage
 009F6269    call        @DoneExcept
>009F626E    jmp         009F6282
 009F6270    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F6275    mov         eax,dword ptr [eax]
 009F6277    mov         eax,dword ptr [eax+58]
 009F627A    mov         edx,dword ptr [eax]
 009F627C    call        dword ptr [edx+164]
 009F6282    xor         eax,eax
 009F6284    pop         edx
 009F6285    pop         ecx
 009F6286    pop         ecx
 009F6287    mov         dword ptr fs:[eax],edx
 009F628A    push        9F62B9
 009F628F    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F6294    mov         eax,dword ptr [eax]
 009F6296    mov         eax,dword ptr [eax+58]
 009F6299    mov         dl,1
 009F629B    call        TOraSession.SetAutoCommit
 009F62A0    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F62A5    mov         eax,dword ptr [eax]
 009F62A7    mov         eax,dword ptr [eax+60]
 009F62AA    mov         dl,1
 009F62AC    call        TOraQuery.SetAutoCommit
 009F62B1    ret
>009F62B2    jmp         @HandleFinally
>009F62B7    jmp         009F628F
 009F62B9    xor         eax,eax
 009F62BB    pop         edx
 009F62BC    pop         ecx
 009F62BD    pop         ecx
 009F62BE    mov         dword ptr fs:[eax],edx
 009F62C1    push        9F6364
 009F62C6    lea         eax,[ebp-0D8]
 009F62CC    call        @LStrClr
 009F62D1    lea         eax,[ebp-0D4]
 009F62D7    call        @VarClr
 009F62DC    lea         eax,[ebp-0C4]
 009F62E2    call        @LStrClr
 009F62E7    lea         eax,[ebp-0C0]
 009F62ED    mov         edx,2
 009F62F2    call        @LStrArrayClr
 009F62F7    lea         eax,[ebp-0B8]
 009F62FD    call        @LStrClr
 009F6302    lea         eax,[ebp-0B4]
 009F6308    call        @LStrClr
 009F630D    lea         eax,[ebp-0B0]
 009F6313    call        @VarClr
 009F6318    lea         eax,[ebp-0A0]
 009F631E    mov         edx,2
 009F6323    call        @LStrArrayClr
 009F6328    lea         eax,[ebp-98]
 009F632E    mov         edx,dword ptr ds:[401160];Variant
 009F6334    mov         ecx,5
 009F6339    call        @FinalizeArray
 009F633E    lea         eax,[ebp-48]
 009F6341    call        @LStrClr
 009F6346    lea         eax,[ebp-44]
 009F6349    mov         edx,dword ptr ds:[401160];Variant
 009F634F    mov         ecx,3
 009F6354    call        @FinalizeArray
 009F6359    ret
>009F635A    jmp         @HandleFinally
>009F635F    jmp         009F62C6
 009F6364    pop         edi
 009F6365    pop         esi
 009F6366    pop         ebx
 009F6367    mov         esp,ebp
 009F6369    pop         ebp
 009F636A    ret
*}
end;

//009F6684
procedure TMainFormMarketSklad.aDelRashExecute;
begin
{*
 009F6684    push        ebp
 009F6685    mov         ebp,esp
 009F6687    mov         ecx,0B
 009F668C    push        0
 009F668E    push        0
 009F6690    dec         ecx
>009F6691    jne         009F668C
 009F6693    push        ebx
 009F6694    push        esi
 009F6695    push        edi
 009F6696    mov         ebx,eax
 009F6698    xor         eax,eax
 009F669A    push        ebp
 009F669B    push        9F6A75
 009F66A0    push        dword ptr fs:[eax]
 009F66A3    mov         dword ptr fs:[eax],esp
 009F66A6    lea         ecx,[ebp-24]
 009F66A9    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F66AF    mov         edx,9F6A8C;'ID'
 009F66B4    call        TDataSet.GetFieldValue
 009F66B9    lea         eax,[ebp-24]
 009F66BC    call        @VarToInt64
 009F66C1    mov         dword ptr [ebp-8],eax
 009F66C4    mov         dword ptr [ebp-4],edx
 009F66C7    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F66CD    mov         edx,9F6A98;'ID_OPER_TYPE'
 009F66D2    call        TDataSet.FieldByName
 009F66D7    mov         edx,dword ptr [eax]
 009F66D9    call        dword ptr [edx+58];TField.GetAsInteger
 009F66DC    cmp         eax,7
>009F66DF    jne         009F66FF
 009F66E1    push        dword ptr [ebp-4]
 009F66E4    push        dword ptr [ebp-8]
 009F66E7    call        007A6C44
 009F66EC    test        al,al
>009F66EE    je          009F66FF
 009F66F0    mov         eax,9F6AB0;'Списание по ревизии удалить нельзя!'
 009F66F5    call        ShowMessage
>009F66FA    jmp         009F6A2F
 009F66FF    mov         edi,dword ptr [ebp-8]
 009F6702    mov         eax,edi
 009F6704    call        007A2228
 009F6709    test        al,al
>009F670B    jne         009F6A2F
 009F6711    mov         edx,edi
 009F6713    mov         eax,9F6ADC;'OPERS'
 009F6718    call        007A1E78
 009F671D    test        al,al
>009F671F    jne         009F6A2F
 009F6725    mov         edx,9F6AEC;'Удалить выбранный документ?'
 009F672A    mov         eax,9F6B10;'В Н И М А Н И Е !!!'
 009F672F    call        006C64E0
 009F6734    dec         eax
>009F6735    jne         009F6A2F
 009F673B    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F6741    mov         edx,9F6B2C;'SUMMA_OPLATS'
 009F6746    call        TDataSet.FieldByName
 009F674B    mov         edx,dword ptr [eax]
 009F674D    call        dword ptr [edx+4C];TField.GetAsCurrency
 009F6750    fcomp       dword ptr ds:[9F6B3C];0:Single
 009F6756    fnstsw      al
 009F6758    sahf
>009F6759    jbe         009F678E
 009F675B    lea         eax,[ebp-14]
 009F675E    mov         edx,9F6B48;'Имеются платежи по операции!'+#13+Они будут удалены.'+#13+#13+ПРОДОЛЖИТЬ?'
 009F6763    call        @LStrLAsg
 009F6768    push        24
 009F676A    mov         eax,dword ptr [ebp-14]
 009F676D    call        @LStrToPChar
 009F6772    mov         edx,eax
 009F6774    mov         ecx,9F6B88
 009F6779    mov         eax,[00AC721C];^Application:TApplication
 009F677E    mov         eax,dword ptr [eax]
 009F6780    call        TApplication.MessageBox
 009F6785    cmp         eax,6
>009F6788    jne         009F6A2F
 009F678E    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F6794    call        TDataSet.Next
 009F6799    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F679F    cmp         byte ptr [eax+0A1],0;TOraQuery.FEOF:Boolean
>009F67A6    je          009F67AD
 009F67A8    call        TDataSet.Prior
 009F67AD    lea         ecx,[ebp-34]
 009F67B0    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F67B6    mov         edx,9F6A8C;'ID'
 009F67BB    call        TDataSet.GetFieldValue
 009F67C0    lea         eax,[ebp-34]
 009F67C3    call        @VarToInt64
 009F67C8    mov         dword ptr [ebp-10],eax
 009F67CB    mov         dword ptr [ebp-0C],edx
 009F67CE    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F67D3    mov         eax,dword ptr [eax]
 009F67D5    mov         eax,dword ptr [eax+58]
 009F67D8    xor         edx,edx
 009F67DA    call        TOraSession.SetAutoCommit
 009F67DF    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F67E4    mov         eax,dword ptr [eax]
 009F67E6    mov         eax,dword ptr [eax+60]
 009F67E9    xor         edx,edx
 009F67EB    call        TOraQuery.SetAutoCommit
 009F67F0    xor         eax,eax
 009F67F2    push        ebp
 009F67F3    push        9F6A28
 009F67F8    push        dword ptr fs:[eax]
 009F67FB    mov         dword ptr fs:[eax],esp
 009F67FE    xor         eax,eax
 009F6800    push        ebp
 009F6801    push        9F69AC
 009F6806    push        dword ptr fs:[eax]
 009F6809    mov         dword ptr fs:[eax],esp
 009F680C    push        9F6BA4;'Удаление расхода контрагенту: '
 009F6811    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F6817    mov         edx,9F6BCC;'NAME_KL_CEH'
 009F681C    call        TDataSet.FieldByName
 009F6821    lea         edx,[ebp-3C]
 009F6824    mov         ecx,dword ptr [eax]
 009F6826    call        dword ptr [ecx+60];TField.GetAsString
 009F6829    push        dword ptr [ebp-3C]
 009F682C    push        9F6BE0;':'
 009F6831    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F6837    mov         edx,9F6BEC;'DESCR'
 009F683C    call        TDataSet.FieldByName
 009F6841    lea         edx,[ebp-40]
 009F6844    mov         ecx,dword ptr [eax]
 009F6846    call        dword ptr [ecx+60];TField.GetAsString
 009F6849    push        dword ptr [ebp-40]
 009F684C    lea         eax,[ebp-38]
 009F684F    mov         edx,4
 009F6854    call        @LStrCatN
 009F6859    mov         eax,dword ptr [ebp-38]
 009F685C    push        eax
 009F685D    lea         eax,[ebp-44]
 009F6860    push        eax
 009F6861    mov         ecx,19
 009F6866    mov         edx,1
 009F686B    mov         eax,[00AC6618];0x0 gvar_00AC6618
 009F6870    call        @LStrCopy
 009F6875    mov         eax,dword ptr [ebp-44]
 009F6878    push        eax
 009F6879    mov         ecx,edi
 009F687B    mov         dl,2
 009F687D    mov         al,8
 009F687F    call        007A35C0
 009F6884    push        dword ptr [ebp-4]
 009F6887    push        dword ptr [ebp-8]
 009F688A    call        007A51D4
 009F688F    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F6894    mov         eax,dword ptr [eax]
 009F6896    mov         esi,dword ptr [eax+60]
 009F6899    mov         eax,esi
 009F689B    call        TDataSet.Close
 009F68A0    mov         eax,esi
 009F68A2    call        TOraQuery.GetSQL
 009F68A7    mov         edx,dword ptr [eax]
 009F68A9    call        dword ptr [edx+44]
 009F68AC    mov         eax,esi
 009F68AE    call        TOraQuery.GetSQL
 009F68B3    mov         edx,9F6BFC;'DELETE FROM OPERS WHERE ID=:ID'
 009F68B8    mov         ecx,dword ptr [eax]
 009F68BA    call        dword ptr [ecx+38]
 009F68BD    mov         edx,9F6A8C;'ID'
 009F68C2    mov         eax,esi
 009F68C4    call        006210D4
 009F68C9    mov         edx,edi
 009F68CB    mov         ecx,dword ptr [eax]
 009F68CD    call        dword ptr [ecx+68]
 009F68D0    mov         eax,esi
 009F68D2    call        00620CE4
 009F68D7    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F68DC    mov         eax,dword ptr [eax]
 009F68DE    mov         eax,dword ptr [eax+58]
 009F68E1    mov         edx,dword ptr [eax]
 009F68E3    call        dword ptr [edx+160]
 009F68E9    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F68EF    call        TDataSet.Close
 009F68F4    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F68FA    mov         edx,9F6C24;'ID_CEH_FROM'
 009F68FF    call        006210D4
 009F6904    push        eax
 009F6905    mov         eax,dword ptr [ebx+32C];TMainFormMarketSklad.cbSklad:TDBLookupComboBox
 009F690B    add         eax,240;TDBLookupComboBox.FKeyValue:Variant
 009F6910    call        @VarToInteger
 009F6915    mov         edx,eax
 009F6917    pop         eax
 009F6918    mov         ecx,dword ptr [eax]
 009F691A    call        dword ptr [ecx+68]
 009F691D    mov         eax,dword ptr [ebx+370];TMainFormMarketSklad.deBgn:TDateEdit
 009F6923    call        006A90E4
 009F6928    add         esp,0FFFFFFF8
 009F692B    fstp        qword ptr [esp]
 009F692E    wait
 009F692F    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F6935    mov         edx,9F6C38;'DATE_BGN'
 009F693A    call        006210D4
 009F693F    call        TParam.SetAsDate
 009F6944    mov         eax,dword ptr [ebx+374];TMainFormMarketSklad.deEnd:TDateEdit
 009F694A    call        006A90E4
 009F694F    add         esp,0FFFFFFF8
 009F6952    fstp        qword ptr [esp]
 009F6955    wait
 009F6956    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F695C    mov         edx,9F6C4C;'DATE_END'
 009F6961    call        006210D4
 009F6966    call        TParam.SetAsDate
 009F696B    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F6971    call        TDataSet.Open
 009F6976    mov         al,[009F6C58];0x0 gvar_009F6C58
 009F697B    push        eax
 009F697C    mov         eax,dword ptr [ebp-10]
 009F697F    mov         edx,dword ptr [ebp-0C]
 009F6982    push        edx
 009F6983    push        eax
 009F6984    lea         eax,[ebp-54]
 009F6987    call        @VarFromInt64
 009F698C    lea         ecx,[ebp-54]
 009F698F    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F6995    mov         edx,9F6A8C;'ID'
 009F699A    mov         ebx,dword ptr [eax]
 009F699C    call        dword ptr [ebx+244];TMemDataSet.Locate
 009F69A2    xor         eax,eax
 009F69A4    pop         edx
 009F69A5    pop         ecx
 009F69A6    pop         ecx
 009F69A7    mov         dword ptr fs:[eax],edx
>009F69AA    jmp         009F69F8
>009F69AC    jmp         @HandleOnException
 009F69B1    dd          1
 009F69B5    dd          00408E24;Exception
 009F69B9    dd          009F69BD
 009F69BD    mov         ebx,eax
 009F69BF    mov         ecx,dword ptr [ebx+4];Exception.FMessage:String
 009F69C2    lea         eax,[ebp-58]
 009F69C5    mov         edx,9F6C64;'Не удается удалить документ!'+#13+ Доп.информация: '
 009F69CA    call        @LStrCat3
 009F69CF    mov         edx,dword ptr [ebp-58]
 009F69D2    mov         eax,9F6C9C;'Ошибка удаления'
 009F69D7    call        006C683C
 009F69DC    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F69E1    mov         eax,dword ptr [eax]
 009F69E3    mov         eax,dword ptr [eax+60]
 009F69E6    call        TOraQuery.GetSession
 009F69EB    mov         edx,dword ptr [eax]
 009F69ED    call        dword ptr [edx+164]
 009F69F3    call        @DoneExcept
 009F69F8    xor         eax,eax
 009F69FA    pop         edx
 009F69FB    pop         ecx
 009F69FC    pop         ecx
 009F69FD    mov         dword ptr fs:[eax],edx
 009F6A00    push        9F6A2F
 009F6A05    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F6A0A    mov         eax,dword ptr [eax]
 009F6A0C    mov         eax,dword ptr [eax+58]
 009F6A0F    mov         dl,1
 009F6A11    call        TOraSession.SetAutoCommit
 009F6A16    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F6A1B    mov         eax,dword ptr [eax]
 009F6A1D    mov         eax,dword ptr [eax+60]
 009F6A20    mov         dl,1
 009F6A22    call        TOraQuery.SetAutoCommit
 009F6A27    ret
>009F6A28    jmp         @HandleFinally
>009F6A2D    jmp         009F6A05
 009F6A2F    xor         eax,eax
 009F6A31    pop         edx
 009F6A32    pop         ecx
 009F6A33    pop         ecx
 009F6A34    mov         dword ptr fs:[eax],edx
 009F6A37    push        9F6A7C
 009F6A3C    lea         eax,[ebp-58]
 009F6A3F    call        @LStrClr
 009F6A44    lea         eax,[ebp-54]
 009F6A47    call        @VarClr
 009F6A4C    lea         eax,[ebp-44]
 009F6A4F    mov         edx,4
 009F6A54    call        @LStrArrayClr
 009F6A59    lea         eax,[ebp-34]
 009F6A5C    mov         edx,dword ptr ds:[401160];Variant
 009F6A62    mov         ecx,2
 009F6A67    call        @FinalizeArray
 009F6A6C    lea         eax,[ebp-14]
 009F6A6F    call        @LStrClr
 009F6A74    ret
>009F6A75    jmp         @HandleFinally
>009F6A7A    jmp         009F6A3C
 009F6A7C    pop         edi
 009F6A7D    pop         esi
 009F6A7E    pop         ebx
 009F6A7F    mov         esp,ebp
 009F6A81    pop         ebp
 009F6A82    ret
*}
end;

//009F6CAC
{*procedure TMainFormMarketSklad.aEditPrihUpdate(?:?);
begin
 009F6CAC    push        ebp
 009F6CAD    mov         ebp,esp
 009F6CAF    push        0
 009F6CB1    push        ebx
 009F6CB2    push        esi
 009F6CB3    mov         esi,edx
 009F6CB5    mov         ebx,eax
 009F6CB7    xor         eax,eax
 009F6CB9    push        ebp
 009F6CBA    push        9F6D22
 009F6CBF    push        dword ptr fs:[eax]
 009F6CC2    mov         dword ptr fs:[eax],esp
 009F6CC5    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F6CCB    call        TDataSet.IsEmpty
 009F6CD0    test        al,al
>009F6CD2    jne         009F6CF2
 009F6CD4    mov         edx,9F6D38;'ID_ZAK'
 009F6CD9    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F6CDF    call        TDataSet.FieldByName
 009F6CE4    lea         edx,[ebp-4]
 009F6CE7    mov         ecx,dword ptr [eax]
 009F6CE9    call        dword ptr [ecx+60];TField.GetAsString
 009F6CEC    cmp         dword ptr [ebp-4],0
>009F6CF0    je          009F6CF6
 009F6CF2    xor         eax,eax
>009F6CF4    jmp         009F6CF8
 009F6CF6    mov         al,1
 009F6CF8    push        eax
 009F6CF9    mov         eax,esi
 009F6CFB    mov         edx,dword ptr ds:[497794];TCustomAction
 009F6D01    call        @AsClass
 009F6D06    pop         edx
 009F6D07    call        TCustomAction.SetEnabled
 009F6D0C    xor         eax,eax
 009F6D0E    pop         edx
 009F6D0F    pop         ecx
 009F6D10    pop         ecx
 009F6D11    mov         dword ptr fs:[eax],edx
 009F6D14    push        9F6D29
 009F6D19    lea         eax,[ebp-4]
 009F6D1C    call        @LStrClr
 009F6D21    ret
>009F6D22    jmp         @HandleFinally
>009F6D27    jmp         009F6D19
 009F6D29    pop         esi
 009F6D2A    pop         ebx
 009F6D2B    pop         ecx
 009F6D2C    pop         ebp
 009F6D2D    ret
end;*}

//009F6D40
{*procedure TMainFormMarketSklad.aDelPrihUpdate(?:?);
begin
 009F6D40    push        ebx
 009F6D41    push        esi
 009F6D42    mov         esi,edx
 009F6D44    mov         ebx,eax
 009F6D46    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F6D4C    call        TDataSet.IsEmpty
 009F6D51    test        al,al
>009F6D53    jne         009F6D6E
 009F6D55    mov         edx,9F6D94;'IS_PROV'
 009F6D5A    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F6D60    call        TDataSet.FieldByName
 009F6D65    mov         edx,dword ptr [eax]
 009F6D67    call        dword ptr [edx+58];TField.GetAsInteger
 009F6D6A    test        eax,eax
>009F6D6C    je          009F6D72
 009F6D6E    xor         eax,eax
>009F6D70    jmp         009F6D74
 009F6D72    mov         al,1
 009F6D74    push        eax
 009F6D75    mov         eax,esi
 009F6D77    mov         edx,dword ptr ds:[497794];TCustomAction
 009F6D7D    call        @AsClass
 009F6D82    pop         edx
 009F6D83    call        TCustomAction.SetEnabled
 009F6D88    pop         esi
 009F6D89    pop         ebx
 009F6D8A    ret
end;*}

//009F6D9C
{*procedure TMainFormMarketSklad.aEdtRashUpdate(?:?);
begin
 009F6D9C    push        ebx
 009F6D9D    push        esi
 009F6D9E    mov         esi,edx
 009F6DA0    mov         ebx,eax
 009F6DA2    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F6DA8    call        TDataSet.IsEmpty
 009F6DAD    xor         al,1
 009F6DAF    push        eax
 009F6DB0    mov         eax,esi
 009F6DB2    mov         edx,dword ptr ds:[497794];TCustomAction
 009F6DB8    call        @AsClass
 009F6DBD    pop         edx
 009F6DBE    call        TCustomAction.SetEnabled
 009F6DC3    pop         esi
 009F6DC4    pop         ebx
 009F6DC5    ret
end;*}

//009F6DC8
{*procedure TMainFormMarketSklad.aDelRashUpdate(?:?);
begin
 009F6DC8    push        ebx
 009F6DC9    push        esi
 009F6DCA    mov         esi,edx
 009F6DCC    mov         ebx,eax
 009F6DCE    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F6DD4    call        TDataSet.IsEmpty
 009F6DD9    test        al,al
>009F6DDB    jne         009F6DF6
 009F6DDD    mov         edx,9F6E1C;'IS_PROV'
 009F6DE2    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F6DE8    call        TDataSet.FieldByName
 009F6DED    mov         edx,dword ptr [eax]
 009F6DEF    call        dword ptr [edx+58];TField.GetAsInteger
 009F6DF2    test        eax,eax
>009F6DF4    je          009F6DFA
 009F6DF6    xor         eax,eax
>009F6DF8    jmp         009F6DFC
 009F6DFA    mov         al,1
 009F6DFC    push        eax
 009F6DFD    mov         eax,esi
 009F6DFF    mov         edx,dword ptr ds:[497794];TCustomAction
 009F6E05    call        @AsClass
 009F6E0A    pop         edx
 009F6E0B    call        TCustomAction.SetEnabled
 009F6E10    pop         esi
 009F6E11    pop         ebx
 009F6E12    ret
end;*}

//009F6E24
{*function TMainFormMarketSklad.GetNextOpNum(?:Integer; ?:?; ?:?):?;
begin
 009F6E24    push        ebp
 009F6E25    mov         ebp,esp
 009F6E27    push        ebx
 009F6E28    push        esi
 009F6E29    mov         esi,edx
 009F6E2B    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F6E30    mov         eax,dword ptr [eax]
 009F6E32    mov         ebx,dword ptr [eax+60]
 009F6E35    mov         eax,ebx
 009F6E37    call        TDataSet.Close
 009F6E3C    mov         eax,ebx
 009F6E3E    call        TOraQuery.GetSQL
 009F6E43    mov         edx,dword ptr [eax]
 009F6E45    call        dword ptr [edx+44]
 009F6E48    mov         eax,ebx
 009F6E4A    call        TOraQuery.GetSQL
 009F6E4F    mov         edx,9F6EB4;'SELECT CEH_UCHET.GET_NEXT_OP_NUM(:ID_CEH_FROM,:DATE_OP) AS NEW_NUM FROM DUAL...
 009F6E54    mov         ecx,dword ptr [eax]
 009F6E56    call        dword ptr [ecx+38]
 009F6E59    mov         edx,9F6F0C;'ID_CEH_FROM'
 009F6E5E    mov         eax,ebx
 009F6E60    call        006210D4
 009F6E65    mov         edx,esi
 009F6E67    mov         ecx,dword ptr [eax]
 009F6E69    call        dword ptr [ecx+68]
 009F6E6C    push        dword ptr [ebp+0C]
 009F6E6F    push        dword ptr [ebp+8]
 009F6E72    mov         edx,9F6F20;'DATE_OP'
 009F6E77    mov         eax,ebx
 009F6E79    call        006210D4
 009F6E7E    call        TParam.SetAsDate
 009F6E83    mov         eax,ebx
 009F6E85    call        00620CE4
 009F6E8A    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F6E8F    mov         eax,dword ptr [eax]
 009F6E91    mov         eax,dword ptr [eax+60]
 009F6E94    mov         edx,9F6F30;'NEW_NUM'
 009F6E99    call        TDataSet.FieldByName
 009F6E9E    mov         edx,dword ptr [eax]
 009F6EA0    call        dword ptr [edx+58];TField.GetAsInteger
 009F6EA3    pop         esi
 009F6EA4    pop         ebx
 009F6EA5    pop         ebp
 009F6EA6    ret         8
end;*}

//009F6F38
{*function TMainFormMarketSklad.GetNextOpNumTo(?:Integer; ?:?; ?:?):?;
begin
 009F6F38    push        ebp
 009F6F39    mov         ebp,esp
 009F6F3B    push        ebx
 009F6F3C    push        esi
 009F6F3D    mov         esi,edx
 009F6F3F    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F6F44    mov         eax,dword ptr [eax]
 009F6F46    mov         ebx,dword ptr [eax+60]
 009F6F49    mov         eax,ebx
 009F6F4B    call        TDataSet.Close
 009F6F50    mov         eax,ebx
 009F6F52    call        TOraQuery.GetSQL
 009F6F57    mov         edx,dword ptr [eax]
 009F6F59    call        dword ptr [edx+44]
 009F6F5C    mov         eax,ebx
 009F6F5E    call        TOraQuery.GetSQL
 009F6F63    mov         edx,9F6FC8;'SELECT CEH_UCHET.GET_NEXT_OP_NUM_TO(:ID_CEH_TO,:DATE_OP) AS NEW_NUM FROM DUA...
 009F6F68    mov         ecx,dword ptr [eax]
 009F6F6A    call        dword ptr [ecx+38]
 009F6F6D    mov         edx,9F7020;'ID_CEH_TO'
 009F6F72    mov         eax,ebx
 009F6F74    call        006210D4
 009F6F79    mov         edx,esi
 009F6F7B    mov         ecx,dword ptr [eax]
 009F6F7D    call        dword ptr [ecx+68]
 009F6F80    push        dword ptr [ebp+0C]
 009F6F83    push        dword ptr [ebp+8]
 009F6F86    mov         edx,9F7034;'DATE_OP'
 009F6F8B    mov         eax,ebx
 009F6F8D    call        006210D4
 009F6F92    call        TParam.SetAsDate
 009F6F97    mov         eax,ebx
 009F6F99    call        00620CE4
 009F6F9E    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F6FA3    mov         eax,dword ptr [eax]
 009F6FA5    mov         eax,dword ptr [eax+60]
 009F6FA8    mov         edx,9F7044;'NEW_NUM'
 009F6FAD    call        TDataSet.FieldByName
 009F6FB2    mov         edx,dword ptr [eax]
 009F6FB4    call        dword ptr [edx+58];TField.GetAsInteger
 009F6FB7    pop         esi
 009F6FB8    pop         ebx
 009F6FB9    pop         ebp
 009F6FBA    ret         8
end;*}

//009F704C
{*procedure TMainFormMarketSklad.GetNextOpNumNaryad(?:?; ?:?; ?:?);
begin
 009F704C    push        ebp
 009F704D    mov         ebp,esp
 009F704F    push        ebx
 009F7050    push        esi
 009F7051    mov         esi,edx
 009F7053    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F7058    mov         eax,dword ptr [eax]
 009F705A    mov         ebx,dword ptr [eax+60]
 009F705D    mov         eax,ebx
 009F705F    call        TDataSet.Close
 009F7064    mov         eax,ebx
 009F7066    call        TOraQuery.GetSQL
 009F706B    mov         edx,dword ptr [eax]
 009F706D    call        dword ptr [edx+44]
 009F7070    mov         eax,ebx
 009F7072    call        TOraQuery.GetSQL
 009F7077    mov         edx,9F70DC;'SELECT CEH_UCHET.GET_NEXT_NARYAD_NUM(:ID_CEH,:DATE_) AS NEW_NUM FROM DUAL'
 009F707C    mov         ecx,dword ptr [eax]
 009F707E    call        dword ptr [ecx+38]
 009F7081    mov         edx,9F7130;'ID_CEH'
 009F7086    mov         eax,ebx
 009F7088    call        006210D4
 009F708D    mov         edx,esi
 009F708F    mov         ecx,dword ptr [eax]
 009F7091    call        dword ptr [ecx+68]
 009F7094    push        dword ptr [ebp+0C]
 009F7097    push        dword ptr [ebp+8]
 009F709A    mov         edx,9F7140;'DATE_'
 009F709F    mov         eax,ebx
 009F70A1    call        006210D4
 009F70A6    call        TParam.SetAsDate
 009F70AB    mov         eax,ebx
 009F70AD    call        00620CE4
 009F70B2    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F70B7    mov         eax,dword ptr [eax]
 009F70B9    mov         eax,dword ptr [eax+60]
 009F70BC    mov         edx,9F7150;'NEW_NUM'
 009F70C1    call        TDataSet.FieldByName
 009F70C6    mov         edx,dword ptr [eax]
 009F70C8    call        dword ptr [edx+58];TField.GetAsInteger
 009F70CB    pop         esi
 009F70CC    pop         ebx
 009F70CD    pop         ebp
 009F70CE    ret         8
end;*}

//009F7158
procedure TMainFormMarketSklad.DBGridEh_PrihodsDblClick(Sender:TObject);
begin
{*
 009F7158    push        esi
 009F7159    mov         edx,dword ptr [eax+380];TMainFormMarketSklad.aEditPrih:TAction
 009F715F    cmp         byte ptr [edx+6A],0;TAction.FEnabled:Boolean
>009F7163    je          009F7170
 009F7165    mov         eax,edx
 009F7167    mov         si,0FFEF
 009F716B    call        @CallDynaInst;TCustomAction.Execute
 009F7170    pop         esi
 009F7171    ret
*}
end;

//009F7174
procedure TMainFormMarketSklad.aProvodRashodExecute;
begin
{*
 009F7174    push        ebp
 009F7175    mov         ebp,esp
 009F7177    mov         ecx,7
 009F717C    push        0
 009F717E    push        0
 009F7180    dec         ecx
>009F7181    jne         009F717C
 009F7183    push        ebx
 009F7184    push        esi
 009F7185    push        edi
 009F7186    mov         ebx,eax
 009F7188    xor         eax,eax
 009F718A    push        ebp
 009F718B    push        9F74A7
 009F7190    push        dword ptr fs:[eax]
 009F7193    mov         dword ptr fs:[eax],esp
 009F7196    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F719C    mov         edx,9F74C0;'DATE_OPER'
 009F71A1    call        TDataSet.FieldByName
 009F71A6    mov         edx,dword ptr [eax]
 009F71A8    call        dword ptr [edx+50];TField.GetAsDateTime
 009F71AB    fstp        qword ptr [ebp-8]
 009F71AE    wait
 009F71AF    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F71B5    mov         edx,9F74D4;'ID'
 009F71BA    call        TDataSet.FieldByName
 009F71BF    mov         edx,dword ptr [eax]
 009F71C1    call        dword ptr [edx+58];TField.GetAsInteger
 009F71C4    mov         esi,eax
 009F71C6    mov         edx,esi
 009F71C8    mov         eax,9F74E0;'OPERS'
 009F71CD    call        007A1E78
 009F71D2    test        al,al
>009F71D4    jne         009F747C
 009F71DA    push        dword ptr [ebp-4]
 009F71DD    push        dword ptr [ebp-8]
 009F71E0    call        007A28EC
 009F71E5    test        al,al
>009F71E7    jne         009F7259
 009F71E9    lea         eax,[ebp-0C]
 009F71EC    mov         edx,9F74F0;'Дата документа выходит за учетный период!'+#13+Необходимо изменить текущий у...
 009F71F1    call        @LStrLAsg
 009F71F6    push        dword ptr [ebp-4]
 009F71F9    push        dword ptr [ebp-8]
 009F71FC    call        007A2940
 009F7201    mov         edi,eax
 009F7203    cmp         edi,5A
>009F7206    jle         009F7217
 009F7208    mov         eax,9F757C;'Критическая ошибка даты!'
 009F720D    call        ShowMessage
>009F7212    jmp         009F747C
 009F7217    push        dword ptr [ebp-4]
 009F721A    push        dword ptr [ebp-8]
 009F721D    call        00973258
 009F7222    test        al,al
>009F7224    jne         009F723A
 009F7226    cmp         edi,14
>009F7229    jle         009F724C
 009F722B    push        dword ptr [ebp-4]
 009F722E    push        dword ptr [ebp-8]
 009F7231    call        007A2998
 009F7236    test        al,al
>009F7238    je          009F724C
 009F723A    mov         edx,dword ptr [ebp-0C]
 009F723D    mov         eax,9F75A0;'Внимание!'
 009F7242    call        006C629C
>009F7247    jmp         009F747C
 009F724C    mov         edx,dword ptr [ebp-0C]
 009F724F    mov         eax,9F75A0;'Внимание!'
 009F7254    call        006C6350
 009F7259    mov         cl,1
 009F725B    xor         edx,edx
 009F725D    mov         eax,esi
 009F725F    call        007A2AE4
 009F7264    test        al,al
>009F7266    je          009F747C
 009F726C    mov         ecx,ebx
 009F726E    mov         dl,1
 009F7270    mov         eax,[0079CEB4];TFormProcess
 009F7275    call        TCustomForm.Create;TFormProcess.Create
 009F727A    mov         dword ptr [ebp-10],eax
 009F727D    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F7282    mov         eax,dword ptr [eax]
 009F7284    mov         eax,dword ptr [eax+58]
 009F7287    xor         edx,edx
 009F7289    call        TOraSession.SetAutoCommit
 009F728E    xor         eax,eax
 009F7290    push        ebp
 009F7291    push        9F7475
 009F7296    push        dword ptr fs:[eax]
 009F7299    mov         dword ptr fs:[eax],esp
 009F729C    mov         eax,dword ptr [ebp-10]
 009F729F    mov         eax,dword ptr [eax+300];TFormProcess.LBL_MESSAGE:TLabel
 009F72A5    mov         edx,9F75B4;'Идет обработка данных!'
 009F72AA    call        TControl.SetText
 009F72AF    mov         eax,dword ptr [ebp-10]
 009F72B2    mov         eax,dword ptr [eax+2FC];TFormProcess.Gauge1:TGauge
 009F72B8    xor         edx,edx
 009F72BA    call        TControl.SetVisible
 009F72BF    mov         eax,dword ptr [ebp-10]
 009F72C2    call        TCustomForm.Show
 009F72C7    mov         eax,[00AC721C];^Application:TApplication
 009F72CC    mov         eax,dword ptr [eax]
 009F72CE    call        TApplication.ProcessMessages
 009F72D3    mov         eax,esi
 009F72D5    cdq
 009F72D6    push        edx
 009F72D7    push        eax
 009F72D8    call        0097201C
 009F72DD    push        9F75D4;'Проведение расхода контрагенту: '
 009F72E2    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F72E8    mov         edx,9F7600;'NAME_KL_CEH'
 009F72ED    call        TDataSet.FieldByName
 009F72F2    lea         edx,[ebp-18]
 009F72F5    mov         ecx,dword ptr [eax]
 009F72F7    call        dword ptr [ecx+60];TField.GetAsString
 009F72FA    push        dword ptr [ebp-18]
 009F72FD    push        9F7614;':'
 009F7302    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F7308    mov         edx,9F7620;'DESCR'
 009F730D    call        TDataSet.FieldByName
 009F7312    lea         edx,[ebp-1C]
 009F7315    mov         ecx,dword ptr [eax]
 009F7317    call        dword ptr [ecx+60];TField.GetAsString
 009F731A    push        dword ptr [ebp-1C]
 009F731D    lea         eax,[ebp-14]
 009F7320    mov         edx,4
 009F7325    call        @LStrCatN
 009F732A    mov         eax,dword ptr [ebp-14]
 009F732D    push        eax
 009F732E    lea         eax,[ebp-20]
 009F7331    push        eax
 009F7332    mov         ecx,19
 009F7337    mov         edx,1
 009F733C    mov         eax,[00AC6618];0x0 gvar_00AC6618
 009F7341    call        @LStrCopy
 009F7346    mov         eax,dword ptr [ebp-20]
 009F7349    push        eax
 009F734A    mov         ecx,esi
 009F734C    mov         dl,1
 009F734E    mov         al,9
 009F7350    call        007A35C0
 009F7355    lea         edx,[ebp-28]
 009F7358    mov         eax,[00ACEBDC];gvar_00ACEBDC:TMainFormMarketSklad
 009F735D    call        TMainFormMarketSklad.GetIdCehStr
 009F7362    push        dword ptr [ebp-28]
 009F7365    push        9F7630;'-'
 009F736A    push        dword ptr ds:[0AC6648];^'JJJ'
 009F7370    push        9F763C;'-MARKET_SKLAD'
 009F7375    lea         eax,[ebp-24]
 009F7378    mov         edx,4
 009F737D    call        @LStrCatN
 009F7382    mov         ecx,dword ptr [ebp-24]
 009F7385    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F738A    mov         eax,dword ptr [eax]
 009F738C    mov         eax,dword ptr [eax+74]
 009F738F    mov         edx,9F7654;'MARKET_RASH'
 009F7394    call        006AAFE8
 009F7399    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F739F    call        TDataSet.Close
 009F73A4    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F73AA    mov         edx,9F7668;'ID_CEH_FROM'
 009F73AF    call        006210D4
 009F73B4    push        eax
 009F73B5    mov         eax,dword ptr [ebx+32C];TMainFormMarketSklad.cbSklad:TDBLookupComboBox
 009F73BB    add         eax,240;TDBLookupComboBox.FKeyValue:Variant
 009F73C0    call        @VarToInteger
 009F73C5    mov         edx,eax
 009F73C7    pop         eax
 009F73C8    mov         ecx,dword ptr [eax]
 009F73CA    call        dword ptr [ecx+68]
 009F73CD    mov         eax,dword ptr [ebx+370];TMainFormMarketSklad.deBgn:TDateEdit
 009F73D3    call        006A90E4
 009F73D8    add         esp,0FFFFFFF8
 009F73DB    fstp        qword ptr [esp]
 009F73DE    wait
 009F73DF    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F73E5    mov         edx,9F767C;'DATE_BGN'
 009F73EA    call        006210D4
 009F73EF    call        TParam.SetAsDate
 009F73F4    mov         eax,dword ptr [ebx+374];TMainFormMarketSklad.deEnd:TDateEdit
 009F73FA    call        006A90E4
 009F73FF    add         esp,0FFFFFFF8
 009F7402    fstp        qword ptr [esp]
 009F7405    wait
 009F7406    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F740C    mov         edx,9F7690;'DATE_END'
 009F7411    call        006210D4
 009F7416    call        TParam.SetAsDate
 009F741B    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F7421    call        TDataSet.Open
 009F7426    mov         al,[009F769C];0x0 gvar_009F769C
 009F742B    push        eax
 009F742C    lea         eax,[ebp-38]
 009F742F    mov         edx,esi
 009F7431    mov         cl,0FC
 009F7433    call        @VarFromInt
 009F7438    lea         ecx,[ebp-38]
 009F743B    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F7441    mov         edx,9F74D4;'ID'
 009F7446    mov         ebx,dword ptr [eax]
 009F7448    call        dword ptr [ebx+244];TMemDataSet.Locate
 009F744E    xor         eax,eax
 009F7450    pop         edx
 009F7451    pop         ecx
 009F7452    pop         ecx
 009F7453    mov         dword ptr fs:[eax],edx
 009F7456    push        9F747C
 009F745B    mov         eax,dword ptr [ebp-10]
 009F745E    call        TObject.Free
 009F7463    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F7468    mov         eax,dword ptr [eax]
 009F746A    mov         eax,dword ptr [eax+58]
 009F746D    mov         dl,1
 009F746F    call        TOraSession.SetAutoCommit
 009F7474    ret
>009F7475    jmp         @HandleFinally
>009F747A    jmp         009F745B
 009F747C    xor         eax,eax
 009F747E    pop         edx
 009F747F    pop         ecx
 009F7480    pop         ecx
 009F7481    mov         dword ptr fs:[eax],edx
 009F7484    push        9F74AE
 009F7489    lea         eax,[ebp-38]
 009F748C    call        @VarClr
 009F7491    lea         eax,[ebp-28]
 009F7494    mov         edx,6
 009F7499    call        @LStrArrayClr
 009F749E    lea         eax,[ebp-0C]
 009F74A1    call        @LStrClr
 009F74A6    ret
>009F74A7    jmp         @HandleFinally
>009F74AC    jmp         009F7489
 009F74AE    pop         edi
 009F74AF    pop         esi
 009F74B0    pop         ebx
 009F74B1    mov         esp,ebp
 009F74B3    pop         ebp
 009F74B4    ret
*}
end;

//009F76A0
procedure TMainFormMarketSklad.aUnProvodRashExecute;
begin
{*
 009F76A0    push        ebp
 009F76A1    mov         ebp,esp
 009F76A3    mov         ecx,7
 009F76A8    push        0
 009F76AA    push        0
 009F76AC    dec         ecx
>009F76AD    jne         009F76A8
 009F76AF    push        ebx
 009F76B0    push        esi
 009F76B1    push        edi
 009F76B2    mov         ebx,eax
 009F76B4    xor         eax,eax
 009F76B6    push        ebp
 009F76B7    push        9F79DB
 009F76BC    push        dword ptr fs:[eax]
 009F76BF    mov         dword ptr fs:[eax],esp
 009F76C2    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F76C8    mov         edx,9F79F4;'ID_OPER_TYPE'
 009F76CD    call        TDataSet.FieldByName
 009F76D2    mov         edx,dword ptr [eax]
 009F76D4    call        dword ptr [edx+58];TField.GetAsInteger
 009F76D7    cmp         eax,7
>009F76DA    jne         009F76EB
 009F76DC    mov         eax,9F7A0C;'Списание по ревизии распровести нельзя!'
 009F76E1    call        ShowMessage
>009F76E6    jmp         009F79B0
 009F76EB    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F76F1    mov         edx,9F7A3C;'ID'
 009F76F6    call        TDataSet.FieldByName
 009F76FB    mov         edx,dword ptr [eax]
 009F76FD    call        dword ptr [edx+58];TField.GetAsInteger
 009F7700    mov         esi,eax
 009F7702    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F7708    mov         edx,9F7A48;'DATE_OPER'
 009F770D    call        TDataSet.FieldByName
 009F7712    mov         edx,dword ptr [eax]
 009F7714    call        dword ptr [edx+50];TField.GetAsDateTime
 009F7717    fstp        qword ptr [ebp-8]
 009F771A    wait
 009F771B    push        dword ptr [ebp-4]
 009F771E    push        dword ptr [ebp-8]
 009F7721    call        007A28EC
 009F7726    test        al,al
>009F7728    jne         009F7786
 009F772A    lea         eax,[ebp-0C]
 009F772D    mov         edx,9F7A5C;'Дата документа выходит за учетный период!'+#13+Необходимо изменить текущий у...
 009F7732    call        @LStrLAsg
 009F7737    push        dword ptr [ebp-4]
 009F773A    push        dword ptr [ebp-8]
 009F773D    call        007A2940
 009F7742    mov         edi,eax
 009F7744    push        dword ptr [ebp-4]
 009F7747    push        dword ptr [ebp-8]
 009F774A    call        00973258
 009F774F    test        al,al
>009F7751    jne         009F7767
 009F7753    cmp         edi,14
>009F7756    jle         009F7779
 009F7758    push        dword ptr [ebp-4]
 009F775B    push        dword ptr [ebp-8]
 009F775E    call        007A2998
 009F7763    test        al,al
>009F7765    je          009F7779
 009F7767    mov         edx,dword ptr [ebp-0C]
 009F776A    mov         eax,9F7AE8;'Внимание!'
 009F776F    call        006C629C
>009F7774    jmp         009F79B0
 009F7779    mov         edx,dword ptr [ebp-0C]
 009F777C    mov         eax,9F7AE8;'Внимание!'
 009F7781    call        006C6350
 009F7786    mov         ecx,ebx
 009F7788    mov         dl,1
 009F778A    mov         eax,[0079CEB4];TFormProcess
 009F778F    call        TCustomForm.Create;TFormProcess.Create
 009F7794    mov         dword ptr [ebp-10],eax
 009F7797    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F779C    mov         eax,dword ptr [eax]
 009F779E    mov         eax,dword ptr [eax+58]
 009F77A1    xor         edx,edx
 009F77A3    call        TOraSession.SetAutoCommit
 009F77A8    xor         eax,eax
 009F77AA    push        ebp
 009F77AB    push        9F79A9
 009F77B0    push        dword ptr fs:[eax]
 009F77B3    mov         dword ptr fs:[eax],esp
 009F77B6    mov         eax,dword ptr [ebp-10]
 009F77B9    mov         eax,dword ptr [eax+300];TFormProcess.LBL_MESSAGE:TLabel
 009F77BF    mov         edx,9F7AFC;'Идет обработка данных!'
 009F77C4    call        TControl.SetText
 009F77C9    mov         eax,dword ptr [ebp-10]
 009F77CC    mov         eax,dword ptr [eax+2FC];TFormProcess.Gauge1:TGauge
 009F77D2    xor         edx,edx
 009F77D4    call        TControl.SetVisible
 009F77D9    mov         eax,dword ptr [ebp-10]
 009F77DC    call        TCustomForm.Show
 009F77E1    mov         eax,[00AC721C];^Application:TApplication
 009F77E6    mov         eax,dword ptr [eax]
 009F77E8    call        TApplication.ProcessMessages
 009F77ED    mov         edx,esi
 009F77EF    mov         eax,9F7B1C;'OPERS'
 009F77F4    call        007A1E78
 009F77F9    test        al,al
>009F77FB    je          009F7807
 009F77FD    call        @TryFinallyExit
>009F7802    jmp         009F79B0
 009F7807    push        9F7B2C;'Распроведение расхода контрагенту: '
 009F780C    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F7812    mov         edx,9F7B58;'NAME_KL_CEH'
 009F7817    call        TDataSet.FieldByName
 009F781C    lea         edx,[ebp-18]
 009F781F    mov         ecx,dword ptr [eax]
 009F7821    call        dword ptr [ecx+60];TField.GetAsString
 009F7824    push        dword ptr [ebp-18]
 009F7827    push        9F7B6C;':'
 009F782C    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F7832    mov         edx,9F7B78;'DESCR'
 009F7837    call        TDataSet.FieldByName
 009F783C    lea         edx,[ebp-1C]
 009F783F    mov         ecx,dword ptr [eax]
 009F7841    call        dword ptr [ecx+60];TField.GetAsString
 009F7844    push        dword ptr [ebp-1C]
 009F7847    lea         eax,[ebp-14]
 009F784A    mov         edx,4
 009F784F    call        @LStrCatN
 009F7854    mov         eax,dword ptr [ebp-14]
 009F7857    push        eax
 009F7858    lea         eax,[ebp-20]
 009F785B    push        eax
 009F785C    mov         ecx,19
 009F7861    mov         edx,1
 009F7866    mov         eax,[00AC6618];0x0 gvar_00AC6618
 009F786B    call        @LStrCopy
 009F7870    mov         eax,dword ptr [ebp-20]
 009F7873    push        eax
 009F7874    mov         ecx,esi
 009F7876    mov         dl,1
 009F7878    mov         al,0A
 009F787A    call        007A35C0
 009F787F    mov         eax,esi
 009F7881    cdq
 009F7882    push        edx
 009F7883    push        eax
 009F7884    call        0097225C
 009F7889    lea         edx,[ebp-28]
 009F788C    mov         eax,[00ACEBDC];gvar_00ACEBDC:TMainFormMarketSklad
 009F7891    call        TMainFormMarketSklad.GetIdCehStr
 009F7896    push        dword ptr [ebp-28]
 009F7899    push        9F7B88;'-'
 009F789E    push        dword ptr ds:[0AC6648];^'JJJ'
 009F78A4    push        9F7B94;'-MARKET_SKLAD'
 009F78A9    lea         eax,[ebp-24]
 009F78AC    mov         edx,4
 009F78B1    call        @LStrCatN
 009F78B6    mov         ecx,dword ptr [ebp-24]
 009F78B9    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F78BE    mov         eax,dword ptr [eax]
 009F78C0    mov         eax,dword ptr [eax+74]
 009F78C3    mov         edx,9F7BAC;'MARKET_RASH'
 009F78C8    call        006AAFE8
 009F78CD    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F78D3    call        TDataSet.Close
 009F78D8    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F78DE    mov         edx,9F7BC0;'ID_CEH_FROM'
 009F78E3    call        006210D4
 009F78E8    push        eax
 009F78E9    mov         eax,dword ptr [ebx+32C];TMainFormMarketSklad.cbSklad:TDBLookupComboBox
 009F78EF    add         eax,240;TDBLookupComboBox.FKeyValue:Variant
 009F78F4    call        @VarToInteger
 009F78F9    mov         edx,eax
 009F78FB    pop         eax
 009F78FC    mov         ecx,dword ptr [eax]
 009F78FE    call        dword ptr [ecx+68]
 009F7901    mov         eax,dword ptr [ebx+370];TMainFormMarketSklad.deBgn:TDateEdit
 009F7907    call        006A90E4
 009F790C    add         esp,0FFFFFFF8
 009F790F    fstp        qword ptr [esp]
 009F7912    wait
 009F7913    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F7919    mov         edx,9F7BD4;'DATE_BGN'
 009F791E    call        006210D4
 009F7923    call        TParam.SetAsDate
 009F7928    mov         eax,dword ptr [ebx+374];TMainFormMarketSklad.deEnd:TDateEdit
 009F792E    call        006A90E4
 009F7933    add         esp,0FFFFFFF8
 009F7936    fstp        qword ptr [esp]
 009F7939    wait
 009F793A    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F7940    mov         edx,9F7BE8;'DATE_END'
 009F7945    call        006210D4
 009F794A    call        TParam.SetAsDate
 009F794F    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F7955    call        TDataSet.Open
 009F795A    mov         al,[009F7BF4];0x0 gvar_009F7BF4
 009F795F    push        eax
 009F7960    lea         eax,[ebp-38]
 009F7963    mov         edx,esi
 009F7965    mov         cl,0FC
 009F7967    call        @VarFromInt
 009F796C    lea         ecx,[ebp-38]
 009F796F    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F7975    mov         edx,9F7A3C;'ID'
 009F797A    mov         ebx,dword ptr [eax]
 009F797C    call        dword ptr [ebx+244];TMemDataSet.Locate
 009F7982    xor         eax,eax
 009F7984    pop         edx
 009F7985    pop         ecx
 009F7986    pop         ecx
 009F7987    mov         dword ptr fs:[eax],edx
 009F798A    push        9F79B0
 009F798F    mov         eax,dword ptr [ebp-10]
 009F7992    call        TObject.Free
 009F7997    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F799C    mov         eax,dword ptr [eax]
 009F799E    mov         eax,dword ptr [eax+58]
 009F79A1    mov         dl,1
 009F79A3    call        TOraSession.SetAutoCommit
 009F79A8    ret
>009F79A9    jmp         @HandleFinally
>009F79AE    jmp         009F798F
 009F79B0    xor         eax,eax
 009F79B2    pop         edx
 009F79B3    pop         ecx
 009F79B4    pop         ecx
 009F79B5    mov         dword ptr fs:[eax],edx
 009F79B8    push        9F79E2
 009F79BD    lea         eax,[ebp-38]
 009F79C0    call        @VarClr
 009F79C5    lea         eax,[ebp-28]
 009F79C8    mov         edx,6
 009F79CD    call        @LStrArrayClr
 009F79D2    lea         eax,[ebp-0C]
 009F79D5    call        @LStrClr
 009F79DA    ret
>009F79DB    jmp         @HandleFinally
>009F79E0    jmp         009F79BD
 009F79E2    pop         edi
 009F79E3    pop         esi
 009F79E4    pop         ebx
 009F79E5    mov         esp,ebp
 009F79E7    pop         ebp
 009F79E8    ret
*}
end;

//009F7BF8
procedure TMainFormMarketSklad.aProvodPrihodExecute;
begin
{*
 009F7BF8    push        ebp
 009F7BF9    mov         ebp,esp
 009F7BFB    mov         ecx,7
 009F7C00    push        0
 009F7C02    push        0
 009F7C04    dec         ecx
>009F7C05    jne         009F7C00
 009F7C07    push        ebx
 009F7C08    push        esi
 009F7C09    push        edi
 009F7C0A    mov         ebx,eax
 009F7C0C    xor         eax,eax
 009F7C0E    push        ebp
 009F7C0F    push        9F7EEF
 009F7C14    push        dword ptr fs:[eax]
 009F7C17    mov         dword ptr fs:[eax],esp
 009F7C1A    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F7C20    mov         edx,9F7F08;'DATE_OPER'
 009F7C25    call        TDataSet.FieldByName
 009F7C2A    mov         edx,dword ptr [eax]
 009F7C2C    call        dword ptr [edx+50];TField.GetAsDateTime
 009F7C2F    fstp        qword ptr [ebp-8]
 009F7C32    wait
 009F7C33    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F7C39    mov         edx,9F7F1C;'ID'
 009F7C3E    call        TDataSet.FieldByName
 009F7C43    mov         edx,dword ptr [eax]
 009F7C45    call        dword ptr [edx+58];TField.GetAsInteger
 009F7C48    mov         esi,eax
 009F7C4A    mov         edx,esi
 009F7C4C    mov         eax,9F7F28;'OPERS'
 009F7C51    call        007A1E78
 009F7C56    test        al,al
>009F7C58    jne         009F7EC4
 009F7C5E    push        dword ptr [ebp-4]
 009F7C61    push        dword ptr [ebp-8]
 009F7C64    call        007A28EC
 009F7C69    test        al,al
>009F7C6B    jne         009F7CDD
 009F7C6D    lea         eax,[ebp-0C]
 009F7C70    mov         edx,9F7F38;'Дата документа выходит за учетный период!'+#13+Необходимо изменить текущий у...
 009F7C75    call        @LStrLAsg
 009F7C7A    push        dword ptr [ebp-4]
 009F7C7D    push        dword ptr [ebp-8]
 009F7C80    call        007A2940
 009F7C85    mov         edi,eax
 009F7C87    cmp         edi,5A
>009F7C8A    jle         009F7C9B
 009F7C8C    mov         eax,9F7FC4;'Критическая ошибка даты!'
 009F7C91    call        ShowMessage
>009F7C96    jmp         009F7EC4
 009F7C9B    push        dword ptr [ebp-4]
 009F7C9E    push        dword ptr [ebp-8]
 009F7CA1    call        00973258
 009F7CA6    test        al,al
>009F7CA8    jne         009F7CBE
 009F7CAA    cmp         edi,14
>009F7CAD    jle         009F7CD0
 009F7CAF    push        dword ptr [ebp-4]
 009F7CB2    push        dword ptr [ebp-8]
 009F7CB5    call        007A2998
 009F7CBA    test        al,al
>009F7CBC    je          009F7CD0
 009F7CBE    mov         edx,dword ptr [ebp-0C]
 009F7CC1    mov         eax,9F7FE8;'Внимание!'
 009F7CC6    call        006C629C
>009F7CCB    jmp         009F7EC4
 009F7CD0    mov         edx,dword ptr [ebp-0C]
 009F7CD3    mov         eax,9F7FE8;'Внимание!'
 009F7CD8    call        006C6350
 009F7CDD    mov         ecx,ebx
 009F7CDF    mov         dl,1
 009F7CE1    mov         eax,[0079CEB4];TFormProcess
 009F7CE6    call        TCustomForm.Create;TFormProcess.Create
 009F7CEB    mov         dword ptr [ebp-10],eax
 009F7CEE    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F7CF3    mov         eax,dword ptr [eax]
 009F7CF5    mov         eax,dword ptr [eax+58]
 009F7CF8    xor         edx,edx
 009F7CFA    call        TOraSession.SetAutoCommit
 009F7CFF    xor         eax,eax
 009F7D01    push        ebp
 009F7D02    push        9F7EBD
 009F7D07    push        dword ptr fs:[eax]
 009F7D0A    mov         dword ptr fs:[eax],esp
 009F7D0D    mov         eax,dword ptr [ebp-10]
 009F7D10    mov         eax,dword ptr [eax+300];TFormProcess.LBL_MESSAGE:TLabel
 009F7D16    mov         edx,9F7FFC;'Идет обработка данных!'
 009F7D1B    call        TControl.SetText
 009F7D20    mov         eax,dword ptr [ebp-10]
 009F7D23    mov         eax,dword ptr [eax+2FC];TFormProcess.Gauge1:TGauge
 009F7D29    xor         edx,edx
 009F7D2B    call        TControl.SetVisible
 009F7D30    mov         eax,dword ptr [ebp-10]
 009F7D33    call        TCustomForm.Show
 009F7D38    mov         eax,[00AC721C];^Application:TApplication
 009F7D3D    mov         eax,dword ptr [eax]
 009F7D3F    call        TApplication.ProcessMessages
 009F7D44    push        9F801C;'Проведение прихода от: '
 009F7D49    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F7D4F    mov         edx,9F803C;'NAME_KL_CEH'
 009F7D54    call        TDataSet.FieldByName
 009F7D59    lea         edx,[ebp-18]
 009F7D5C    mov         ecx,dword ptr [eax]
 009F7D5E    call        dword ptr [ecx+60];TField.GetAsString
 009F7D61    push        dword ptr [ebp-18]
 009F7D64    push        9F8050;':'
 009F7D69    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F7D6F    mov         edx,9F805C;'DESCR'
 009F7D74    call        TDataSet.FieldByName
 009F7D79    lea         edx,[ebp-1C]
 009F7D7C    mov         ecx,dword ptr [eax]
 009F7D7E    call        dword ptr [ecx+60];TField.GetAsString
 009F7D81    push        dword ptr [ebp-1C]
 009F7D84    lea         eax,[ebp-14]
 009F7D87    mov         edx,4
 009F7D8C    call        @LStrCatN
 009F7D91    mov         eax,dword ptr [ebp-14]
 009F7D94    push        eax
 009F7D95    lea         eax,[ebp-20]
 009F7D98    push        eax
 009F7D99    mov         ecx,19
 009F7D9E    mov         edx,1
 009F7DA3    mov         eax,[00AC6618];0x0 gvar_00AC6618
 009F7DA8    call        @LStrCopy
 009F7DAD    mov         eax,dword ptr [ebp-20]
 009F7DB0    push        eax
 009F7DB1    mov         ecx,esi
 009F7DB3    mov         dl,1
 009F7DB5    mov         al,4
 009F7DB7    call        007A35C0
 009F7DBC    mov         eax,esi
 009F7DBE    cdq
 009F7DBF    push        edx
 009F7DC0    push        eax
 009F7DC1    call        0097201C
 009F7DC6    lea         edx,[ebp-28]
 009F7DC9    mov         eax,[00ACEBDC];gvar_00ACEBDC:TMainFormMarketSklad
 009F7DCE    call        TMainFormMarketSklad.GetIdCehStr
 009F7DD3    push        dword ptr [ebp-28]
 009F7DD6    push        9F806C;'-'
 009F7DDB    push        dword ptr ds:[0AC6648];^'JJJ'
 009F7DE1    push        9F8078;'-MARKET_SKLAD'
 009F7DE6    lea         eax,[ebp-24]
 009F7DE9    mov         edx,4
 009F7DEE    call        @LStrCatN
 009F7DF3    mov         ecx,dword ptr [ebp-24]
 009F7DF6    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F7DFB    mov         eax,dword ptr [eax]
 009F7DFD    mov         eax,dword ptr [eax+74]
 009F7E00    mov         edx,9F8090;'MARKET_PRIH'
 009F7E05    call        006AAFE8
 009F7E0A    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F7E10    call        TDataSet.Close
 009F7E15    mov         eax,dword ptr [ebx+370];TMainFormMarketSklad.deBgn:TDateEdit
 009F7E1B    call        006A90E4
 009F7E20    add         esp,0FFFFFFF8
 009F7E23    fstp        qword ptr [esp]
 009F7E26    wait
 009F7E27    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F7E2D    mov         edx,9F80A4;'DATE_BGN'
 009F7E32    call        006210D4
 009F7E37    call        TParam.SetAsDate
 009F7E3C    mov         eax,dword ptr [ebx+374];TMainFormMarketSklad.deEnd:TDateEdit
 009F7E42    call        006A90E4
 009F7E47    add         esp,0FFFFFFF8
 009F7E4A    fstp        qword ptr [esp]
 009F7E4D    wait
 009F7E4E    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F7E54    mov         edx,9F80B8;'DATE_END'
 009F7E59    call        006210D4
 009F7E5E    call        TParam.SetAsDate
 009F7E63    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F7E69    call        TDataSet.Open
 009F7E6E    mov         al,[009F80C4];0x0 gvar_009F80C4
 009F7E73    push        eax
 009F7E74    lea         eax,[ebp-38]
 009F7E77    mov         edx,esi
 009F7E79    mov         cl,0FC
 009F7E7B    call        @VarFromInt
 009F7E80    lea         ecx,[ebp-38]
 009F7E83    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F7E89    mov         edx,9F7F1C;'ID'
 009F7E8E    mov         ebx,dword ptr [eax]
 009F7E90    call        dword ptr [ebx+244];TMemDataSet.Locate
 009F7E96    xor         eax,eax
 009F7E98    pop         edx
 009F7E99    pop         ecx
 009F7E9A    pop         ecx
 009F7E9B    mov         dword ptr fs:[eax],edx
 009F7E9E    push        9F7EC4
 009F7EA3    mov         eax,dword ptr [ebp-10]
 009F7EA6    call        TObject.Free
 009F7EAB    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F7EB0    mov         eax,dword ptr [eax]
 009F7EB2    mov         eax,dword ptr [eax+58]
 009F7EB5    mov         dl,1
 009F7EB7    call        TOraSession.SetAutoCommit
 009F7EBC    ret
>009F7EBD    jmp         @HandleFinally
>009F7EC2    jmp         009F7EA3
 009F7EC4    xor         eax,eax
 009F7EC6    pop         edx
 009F7EC7    pop         ecx
 009F7EC8    pop         ecx
 009F7EC9    mov         dword ptr fs:[eax],edx
 009F7ECC    push        9F7EF6
 009F7ED1    lea         eax,[ebp-38]
 009F7ED4    call        @VarClr
 009F7ED9    lea         eax,[ebp-28]
 009F7EDC    mov         edx,6
 009F7EE1    call        @LStrArrayClr
 009F7EE6    lea         eax,[ebp-0C]
 009F7EE9    call        @LStrClr
 009F7EEE    ret
>009F7EEF    jmp         @HandleFinally
>009F7EF4    jmp         009F7ED1
 009F7EF6    pop         edi
 009F7EF7    pop         esi
 009F7EF8    pop         ebx
 009F7EF9    mov         esp,ebp
 009F7EFB    pop         ebp
 009F7EFC    ret
*}
end;

//009F80C8
procedure TMainFormMarketSklad.aUnProvodPrihExecute;
begin
{*
 009F80C8    push        ebp
 009F80C9    mov         ebp,esp
 009F80CB    mov         ecx,7
 009F80D0    push        0
 009F80D2    push        0
 009F80D4    dec         ecx
>009F80D5    jne         009F80D0
 009F80D7    push        ebx
 009F80D8    push        esi
 009F80D9    push        edi
 009F80DA    mov         ebx,eax
 009F80DC    xor         eax,eax
 009F80DE    push        ebp
 009F80DF    push        9F83ED
 009F80E4    push        dword ptr fs:[eax]
 009F80E7    mov         dword ptr fs:[eax],esp
 009F80EA    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F80F0    mov         edx,9F8404;'ID_OPER_TYPE'
 009F80F5    call        TDataSet.FieldByName
 009F80FA    mov         edx,dword ptr [eax]
 009F80FC    call        dword ptr [edx+58];TField.GetAsInteger
 009F80FF    cmp         eax,6
>009F8102    jne         009F8113
 009F8104    mov         eax,9F841C;'Приход по ревизии распровести нельзя!'
 009F8109    call        ShowMessage
>009F810E    jmp         009F83C2
 009F8113    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F8119    mov         edx,9F844C;'ID'
 009F811E    call        TDataSet.FieldByName
 009F8123    mov         edx,dword ptr [eax]
 009F8125    call        dword ptr [edx+58];TField.GetAsInteger
 009F8128    mov         esi,eax
 009F812A    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F8130    mov         edx,9F8458;'DATE_OPER'
 009F8135    call        TDataSet.FieldByName
 009F813A    mov         edx,dword ptr [eax]
 009F813C    call        dword ptr [edx+50];TField.GetAsDateTime
 009F813F    fstp        qword ptr [ebp-8]
 009F8142    wait
 009F8143    push        dword ptr [ebp-4]
 009F8146    push        dword ptr [ebp-8]
 009F8149    call        007A28EC
 009F814E    test        al,al
>009F8150    jne         009F81AE
 009F8152    lea         eax,[ebp-0C]
 009F8155    mov         edx,9F846C;'Дата документа выходит за учетный период!'+#13+Необходимо изменить текущий у...
 009F815A    call        @LStrLAsg
 009F815F    push        dword ptr [ebp-4]
 009F8162    push        dword ptr [ebp-8]
 009F8165    call        007A2940
 009F816A    mov         edi,eax
 009F816C    push        dword ptr [ebp-4]
 009F816F    push        dword ptr [ebp-8]
 009F8172    call        00973258
 009F8177    test        al,al
>009F8179    jne         009F818F
 009F817B    cmp         edi,14
>009F817E    jle         009F81A1
 009F8180    push        dword ptr [ebp-4]
 009F8183    push        dword ptr [ebp-8]
 009F8186    call        007A2998
 009F818B    test        al,al
>009F818D    je          009F81A1
 009F818F    mov         edx,dword ptr [ebp-0C]
 009F8192    mov         eax,9F84F8;'Внимание!'
 009F8197    call        006C629C
>009F819C    jmp         009F83C2
 009F81A1    mov         edx,dword ptr [ebp-0C]
 009F81A4    mov         eax,9F84F8;'Внимание!'
 009F81A9    call        006C6350
 009F81AE    mov         cl,1
 009F81B0    mov         dl,1
 009F81B2    mov         eax,esi
 009F81B4    call        007A2AE4
 009F81B9    test        al,al
>009F81BB    je          009F83C2
 009F81C1    mov         ecx,ebx
 009F81C3    mov         dl,1
 009F81C5    mov         eax,[0079CEB4];TFormProcess
 009F81CA    call        TCustomForm.Create;TFormProcess.Create
 009F81CF    mov         dword ptr [ebp-10],eax
 009F81D2    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F81D7    mov         eax,dword ptr [eax]
 009F81D9    mov         eax,dword ptr [eax+58]
 009F81DC    xor         edx,edx
 009F81DE    call        TOraSession.SetAutoCommit
 009F81E3    xor         eax,eax
 009F81E5    push        ebp
 009F81E6    push        9F83BB
 009F81EB    push        dword ptr fs:[eax]
 009F81EE    mov         dword ptr fs:[eax],esp
 009F81F1    mov         eax,dword ptr [ebp-10]
 009F81F4    mov         eax,dword ptr [eax+300];TFormProcess.LBL_MESSAGE:TLabel
 009F81FA    mov         edx,9F850C;'Идет обработка данных!'
 009F81FF    call        TControl.SetText
 009F8204    mov         eax,dword ptr [ebp-10]
 009F8207    mov         eax,dword ptr [eax+2FC];TFormProcess.Gauge1:TGauge
 009F820D    xor         edx,edx
 009F820F    call        TControl.SetVisible
 009F8214    mov         eax,dword ptr [ebp-10]
 009F8217    call        TCustomForm.Show
 009F821C    mov         eax,[00AC721C];^Application:TApplication
 009F8221    mov         eax,dword ptr [eax]
 009F8223    call        TApplication.ProcessMessages
 009F8228    mov         edx,esi
 009F822A    mov         eax,9F852C;'OPERS'
 009F822F    call        007A1E78
 009F8234    test        al,al
>009F8236    je          009F8242
 009F8238    call        @TryFinallyExit
>009F823D    jmp         009F83C2
 009F8242    push        9F853C;'Распроведение прихода от: '
 009F8247    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F824D    mov         edx,9F8560;'NAME_KL_CEH'
 009F8252    call        TDataSet.FieldByName
 009F8257    lea         edx,[ebp-18]
 009F825A    mov         ecx,dword ptr [eax]
 009F825C    call        dword ptr [ecx+60];TField.GetAsString
 009F825F    push        dword ptr [ebp-18]
 009F8262    push        9F8574;':'
 009F8267    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F826D    mov         edx,9F8580;'DESCR'
 009F8272    call        TDataSet.FieldByName
 009F8277    lea         edx,[ebp-1C]
 009F827A    mov         ecx,dword ptr [eax]
 009F827C    call        dword ptr [ecx+60];TField.GetAsString
 009F827F    push        dword ptr [ebp-1C]
 009F8282    lea         eax,[ebp-14]
 009F8285    mov         edx,4
 009F828A    call        @LStrCatN
 009F828F    mov         eax,dword ptr [ebp-14]
 009F8292    push        eax
 009F8293    lea         eax,[ebp-20]
 009F8296    push        eax
 009F8297    mov         ecx,19
 009F829C    mov         edx,1
 009F82A1    mov         eax,[00AC6618];0x0 gvar_00AC6618
 009F82A6    call        @LStrCopy
 009F82AB    mov         eax,dword ptr [ebp-20]
 009F82AE    push        eax
 009F82AF    mov         ecx,esi
 009F82B1    mov         dl,1
 009F82B3    mov         al,5
 009F82B5    call        007A35C0
 009F82BA    mov         eax,esi
 009F82BC    cdq
 009F82BD    push        edx
 009F82BE    push        eax
 009F82BF    call        0097225C
 009F82C4    lea         edx,[ebp-28]
 009F82C7    mov         eax,[00ACEBDC];gvar_00ACEBDC:TMainFormMarketSklad
 009F82CC    call        TMainFormMarketSklad.GetIdCehStr
 009F82D1    push        dword ptr [ebp-28]
 009F82D4    push        9F8590;'-'
 009F82D9    push        dword ptr ds:[0AC6648];^'JJJ'
 009F82DF    push        9F859C;'-MARKET_SKLAD'
 009F82E4    lea         eax,[ebp-24]
 009F82E7    mov         edx,4
 009F82EC    call        @LStrCatN
 009F82F1    mov         ecx,dword ptr [ebp-24]
 009F82F4    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F82F9    mov         eax,dword ptr [eax]
 009F82FB    mov         eax,dword ptr [eax+74]
 009F82FE    mov         edx,9F85B4;'MARKET_PRIH'
 009F8303    call        006AAFE8
 009F8308    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F830E    call        TDataSet.Close
 009F8313    mov         eax,dword ptr [ebx+370];TMainFormMarketSklad.deBgn:TDateEdit
 009F8319    call        006A90E4
 009F831E    add         esp,0FFFFFFF8
 009F8321    fstp        qword ptr [esp]
 009F8324    wait
 009F8325    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F832B    mov         edx,9F85C8;'DATE_BGN'
 009F8330    call        006210D4
 009F8335    call        TParam.SetAsDate
 009F833A    mov         eax,dword ptr [ebx+374];TMainFormMarketSklad.deEnd:TDateEdit
 009F8340    call        006A90E4
 009F8345    add         esp,0FFFFFFF8
 009F8348    fstp        qword ptr [esp]
 009F834B    wait
 009F834C    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F8352    mov         edx,9F85DC;'DATE_END'
 009F8357    call        006210D4
 009F835C    call        TParam.SetAsDate
 009F8361    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F8367    call        TDataSet.Open
 009F836C    mov         al,[009F85E8];0x0 gvar_009F85E8
 009F8371    push        eax
 009F8372    lea         eax,[ebp-38]
 009F8375    mov         edx,esi
 009F8377    mov         cl,0FC
 009F8379    call        @VarFromInt
 009F837E    lea         ecx,[ebp-38]
 009F8381    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F8387    mov         edx,9F844C;'ID'
 009F838C    mov         ebx,dword ptr [eax]
 009F838E    call        dword ptr [ebx+244];TMemDataSet.Locate
 009F8394    xor         eax,eax
 009F8396    pop         edx
 009F8397    pop         ecx
 009F8398    pop         ecx
 009F8399    mov         dword ptr fs:[eax],edx
 009F839C    push        9F83C2
 009F83A1    mov         eax,dword ptr [ebp-10]
 009F83A4    call        TObject.Free
 009F83A9    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F83AE    mov         eax,dword ptr [eax]
 009F83B0    mov         eax,dword ptr [eax+58]
 009F83B3    mov         dl,1
 009F83B5    call        TOraSession.SetAutoCommit
 009F83BA    ret
>009F83BB    jmp         @HandleFinally
>009F83C0    jmp         009F83A1
 009F83C2    xor         eax,eax
 009F83C4    pop         edx
 009F83C5    pop         ecx
 009F83C6    pop         ecx
 009F83C7    mov         dword ptr fs:[eax],edx
 009F83CA    push        9F83F4
 009F83CF    lea         eax,[ebp-38]
 009F83D2    call        @VarClr
 009F83D7    lea         eax,[ebp-28]
 009F83DA    mov         edx,6
 009F83DF    call        @LStrArrayClr
 009F83E4    lea         eax,[ebp-0C]
 009F83E7    call        @LStrClr
 009F83EC    ret
>009F83ED    jmp         @HandleFinally
>009F83F2    jmp         009F83CF
 009F83F4    pop         edi
 009F83F5    pop         esi
 009F83F6    pop         ebx
 009F83F7    mov         esp,ebp
 009F83F9    pop         ebp
 009F83FA    ret
*}
end;

//009F85EC
{*procedure TMainFormMarketSklad.aProvodPrihodUpdate(?:?);
begin
 009F85EC    push        ebp
 009F85ED    mov         ebp,esp
 009F85EF    push        0
 009F85F1    push        ebx
 009F85F2    push        esi
 009F85F3    mov         esi,edx
 009F85F5    mov         ebx,eax
 009F85F7    xor         eax,eax
 009F85F9    push        ebp
 009F85FA    push        9F867B
 009F85FF    push        dword ptr fs:[eax]
 009F8602    mov         dword ptr fs:[eax],esp
 009F8605    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F860B    call        TDataSet.IsEmpty
 009F8610    test        al,al
>009F8612    jne         009F864B
 009F8614    mov         edx,9F8690;'IS_PROV'
 009F8619    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F861F    call        TDataSet.FieldByName
 009F8624    mov         edx,dword ptr [eax]
 009F8626    call        dword ptr [edx+58];TField.GetAsInteger
 009F8629    test        eax,eax
>009F862B    jne         009F864B
 009F862D    mov         edx,9F86A0;'VOZVRAT_TO_KASSA_NUM'
 009F8632    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F8638    call        TDataSet.FieldByName
 009F863D    lea         edx,[ebp-4]
 009F8640    mov         ecx,dword ptr [eax]
 009F8642    call        dword ptr [ecx+60];TField.GetAsString
 009F8645    cmp         dword ptr [ebp-4],0
>009F8649    je          009F864F
 009F864B    xor         eax,eax
>009F864D    jmp         009F8651
 009F864F    mov         al,1
 009F8651    push        eax
 009F8652    mov         eax,esi
 009F8654    mov         edx,dword ptr ds:[497794];TCustomAction
 009F865A    call        @AsClass
 009F865F    pop         edx
 009F8660    call        TCustomAction.SetEnabled
 009F8665    xor         eax,eax
 009F8667    pop         edx
 009F8668    pop         ecx
 009F8669    pop         ecx
 009F866A    mov         dword ptr fs:[eax],edx
 009F866D    push        9F8682
 009F8672    lea         eax,[ebp-4]
 009F8675    call        @LStrClr
 009F867A    ret
>009F867B    jmp         @HandleFinally
>009F8680    jmp         009F8672
 009F8682    pop         esi
 009F8683    pop         ebx
 009F8684    pop         ecx
 009F8685    pop         ebp
 009F8686    ret
end;*}

//009F86B8
{*procedure TMainFormMarketSklad.aUnProvodPrihUpdate(?:?);
begin
 009F86B8    push        ebp
 009F86B9    mov         ebp,esp
 009F86BB    push        0
 009F86BD    push        ebx
 009F86BE    push        esi
 009F86BF    mov         esi,edx
 009F86C1    mov         ebx,eax
 009F86C3    xor         eax,eax
 009F86C5    push        ebp
 009F86C6    push        9F8746
 009F86CB    push        dword ptr fs:[eax]
 009F86CE    mov         dword ptr fs:[eax],esp
 009F86D1    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F86D7    call        TDataSet.IsEmpty
 009F86DC    test        al,al
>009F86DE    jne         009F8716
 009F86E0    mov         edx,9F875C;'IS_PROV'
 009F86E5    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F86EB    call        TDataSet.FieldByName
 009F86F0    mov         edx,dword ptr [eax]
 009F86F2    call        dword ptr [edx+58];TField.GetAsInteger
 009F86F5    dec         eax
>009F86F6    jne         009F8716
 009F86F8    mov         edx,9F876C;'VOZVRAT_TO_KASSA_NUM'
 009F86FD    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F8703    call        TDataSet.FieldByName
 009F8708    lea         edx,[ebp-4]
 009F870B    mov         ecx,dword ptr [eax]
 009F870D    call        dword ptr [ecx+60];TField.GetAsString
 009F8710    cmp         dword ptr [ebp-4],0
>009F8714    je          009F871A
 009F8716    xor         eax,eax
>009F8718    jmp         009F871C
 009F871A    mov         al,1
 009F871C    push        eax
 009F871D    mov         eax,esi
 009F871F    mov         edx,dword ptr ds:[497794];TCustomAction
 009F8725    call        @AsClass
 009F872A    pop         edx
 009F872B    call        TCustomAction.SetEnabled
 009F8730    xor         eax,eax
 009F8732    pop         edx
 009F8733    pop         ecx
 009F8734    pop         ecx
 009F8735    mov         dword ptr fs:[eax],edx
 009F8738    push        9F874D
 009F873D    lea         eax,[ebp-4]
 009F8740    call        @LStrClr
 009F8745    ret
>009F8746    jmp         @HandleFinally
>009F874B    jmp         009F873D
 009F874D    pop         esi
 009F874E    pop         ebx
 009F874F    pop         ecx
 009F8750    pop         ebp
 009F8751    ret
end;*}

//009F8784
{*procedure TMainFormMarketSklad.aProvodRashodUpdate(?:?);
begin
 009F8784    push        ebx
 009F8785    push        esi
 009F8786    mov         esi,edx
 009F8788    mov         ebx,eax
 009F878A    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F8790    call        TDataSet.IsEmpty
 009F8795    test        al,al
>009F8797    jne         009F87B2
 009F8799    mov         edx,9F87D8;'IS_PROV'
 009F879E    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F87A4    call        TDataSet.FieldByName
 009F87A9    mov         edx,dword ptr [eax]
 009F87AB    call        dword ptr [edx+58];TField.GetAsInteger
 009F87AE    test        eax,eax
>009F87B0    je          009F87B6
 009F87B2    xor         eax,eax
>009F87B4    jmp         009F87B8
 009F87B6    mov         al,1
 009F87B8    push        eax
 009F87B9    mov         eax,esi
 009F87BB    mov         edx,dword ptr ds:[497794];TCustomAction
 009F87C1    call        @AsClass
 009F87C6    pop         edx
 009F87C7    call        TCustomAction.SetEnabled
 009F87CC    pop         esi
 009F87CD    pop         ebx
 009F87CE    ret
end;*}

//009F87E0
{*procedure TMainFormMarketSklad.aUnProvodRashUpdate(?:?);
begin
 009F87E0    push        ebx
 009F87E1    push        esi
 009F87E2    mov         esi,edx
 009F87E4    mov         ebx,eax
 009F87E6    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F87EC    call        TDataSet.IsEmpty
 009F87F1    test        al,al
>009F87F3    jne         009F880D
 009F87F5    mov         edx,9F8834;'IS_PROV'
 009F87FA    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F8800    call        TDataSet.FieldByName
 009F8805    mov         edx,dword ptr [eax]
 009F8807    call        dword ptr [edx+58];TField.GetAsInteger
 009F880A    dec         eax
>009F880B    je          009F8811
 009F880D    xor         eax,eax
>009F880F    jmp         009F8813
 009F8811    mov         al,1
 009F8813    push        eax
 009F8814    mov         eax,esi
 009F8816    mov         edx,dword ptr ds:[497794];TCustomAction
 009F881C    call        @AsClass
 009F8821    pop         edx
 009F8822    call        TCustomAction.SetEnabled
 009F8827    pop         esi
 009F8828    pop         ebx
 009F8829    ret
end;*}

//009F883C
procedure TMainFormMarketSklad.DBGridEh_RashodsDblClick(Sender:TObject);
begin
{*
 009F883C    push        esi
 009F883D    mov         edx,dword ptr [eax+410];TMainFormMarketSklad.aEdtRash:TAction
 009F8843    cmp         byte ptr [edx+6A],0;TAction.FEnabled:Boolean
>009F8847    je          009F8854
 009F8849    mov         eax,edx
 009F884B    mov         si,0FFEF
 009F884F    call        @CallDynaInst;TCustomAction.Execute
 009F8854    pop         esi
 009F8855    ret
*}
end;

//009F8858
procedure TMainFormMarketSklad.chbShowZerrowsClick(Sender:TObject);
begin
{*
 009F8858    push        ebx
 009F8859    mov         ebx,dword ptr [eax+2F8];TMainFormMarketSklad.PageControl1:TPageControl
 009F885F    mov         edx,eax
 009F8861    mov         eax,dword ptr [ebx+24C];TPageControl.?f24C:TfrxPreview
 009F8867    call        dword ptr [ebx+248];TPageControl.FOnChange
 009F886D    pop         ebx
 009F886E    ret
*}
end;

//009F8870
procedure TMainFormMarketSklad.aHistCardExecute;
begin
{*
 009F8870    push        ebp
 009F8871    mov         ebp,esp
 009F8873    push        0
 009F8875    push        0
 009F8877    push        0
 009F8879    push        ebx
 009F887A    push        esi
 009F887B    mov         ebx,eax
 009F887D    mov         esi,dword ptr ds:[0AC6748];^gvar_00ACEA6C:TFormMaterHistoryCard
 009F8883    xor         eax,eax
 009F8885    push        ebp
 009F8886    push        9F8997
 009F888B    push        dword ptr fs:[eax]
 009F888E    mov         dword ptr fs:[eax],esp
 009F8891    cmp         dword ptr [esi],0
>009F8894    jne         009F88A6
 009F8896    mov         ecx,ebx
 009F8898    mov         dl,1
 009F889A    mov         eax,[009AD75C];TFormMaterHistoryCard
 009F889F    call        TCustomForm.Create;TFormMaterHistoryCard.Create
 009F88A4    mov         dword ptr [esi],eax
 009F88A6    mov         edx,9F89AC;'ID'
 009F88AB    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F88B1    call        TDataSet.FieldByName
 009F88B6    mov         edx,dword ptr [eax]
 009F88B8    call        dword ptr [edx+58];TField.GetAsInteger
 009F88BB    mov         edx,dword ptr [esi]
 009F88BD    mov         dword ptr [edx+41C],eax
 009F88C3    mov         eax,dword ptr [ebx+32C];TMainFormMarketSklad.cbSklad:TDBLookupComboBox
 009F88C9    add         eax,240;TDBLookupComboBox.FKeyValue:Variant
 009F88CE    call        @VarToInteger
 009F88D3    mov         edx,dword ptr [esi]
 009F88D5    mov         dword ptr [edx+420],eax
 009F88DB    mov         edx,9F89B8;'NAME_NOM'
 009F88E0    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F88E6    call        TDataSet.FieldByName
 009F88EB    lea         edx,[ebp-4]
 009F88EE    mov         ecx,dword ptr [eax]
 009F88F0    call        dword ptr [ecx+60];TField.GetAsString
 009F88F3    mov         edx,dword ptr [ebp-4]
 009F88F6    mov         eax,dword ptr [esi]
 009F88F8    add         eax,424
 009F88FD    call        @LStrAsg
 009F8902    mov         eax,dword ptr [esi]
 009F8904    add         eax,428
 009F8909    mov         edx,dword ptr [ebx+32C];TMainFormMarketSklad.cbSklad:TDBLookupComboBox
 009F890F    mov         edx,dword ptr [edx+268];TDBLookupComboBox.FText:String
 009F8915    call        @LStrAsg
 009F891A    mov         edx,9F89CC;'NAME_ED'
 009F891F    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F8925    call        TDataSet.FieldByName
 009F892A    lea         edx,[ebp-8]
 009F892D    mov         ecx,dword ptr [eax]
 009F892F    call        dword ptr [ecx+60];TField.GetAsString
 009F8932    mov         edx,dword ptr [ebp-8]
 009F8935    mov         eax,dword ptr [esi]
 009F8937    add         eax,42C
 009F893C    call        @LStrAsg
 009F8941    push        9F89DC;'История движения : '
 009F8946    mov         eax,dword ptr [esi]
 009F8948    push        dword ptr [eax+424]
 009F894E    push        9F89F8;' - Ед.изм:  '
 009F8953    mov         eax,dword ptr [esi]
 009F8955    push        dword ptr [eax+42C]
 009F895B    lea         eax,[ebp-0C]
 009F895E    mov         edx,4
 009F8963    call        @LStrCatN
 009F8968    mov         edx,dword ptr [ebp-0C]
 009F896B    mov         eax,dword ptr [esi]
 009F896D    call        TControl.SetText
 009F8972    mov         eax,dword ptr [esi]
 009F8974    mov         edx,dword ptr [eax]
 009F8976    call        dword ptr [edx+0EC]
 009F897C    xor         eax,eax
 009F897E    pop         edx
 009F897F    pop         ecx
 009F8980    pop         ecx
 009F8981    mov         dword ptr fs:[eax],edx
 009F8984    push        9F899E
 009F8989    lea         eax,[ebp-0C]
 009F898C    mov         edx,3
 009F8991    call        @LStrArrayClr
 009F8996    ret
>009F8997    jmp         @HandleFinally
>009F899C    jmp         009F8989
 009F899E    pop         esi
 009F899F    pop         ebx
 009F89A0    mov         esp,ebp
 009F89A2    pop         ebp
 009F89A3    ret
*}
end;

//009F8A08
procedure TMainFormMarketSklad.aOborotkaExecute;
begin
{*
 009F8A08    push        ebp
 009F8A09    mov         ebp,esp
 009F8A0B    push        0
 009F8A0D    push        ebx
 009F8A0E    push        esi
 009F8A0F    mov         ebx,eax
 009F8A11    mov         esi,dword ptr ds:[0AC6F04];^gvar_00ACEA78:TFormMatOborotka
 009F8A17    xor         eax,eax
 009F8A19    push        ebp
 009F8A1A    push        9F8AB3
 009F8A1F    push        dword ptr fs:[eax]
 009F8A22    mov         dword ptr fs:[eax],esp
 009F8A25    cmp         dword ptr [esi],0
>009F8A28    jne         009F8A3A
 009F8A2A    mov         ecx,ebx
 009F8A2C    mov         dl,1
 009F8A2E    mov         eax,[009AF4CC];TFormMatOborotka
 009F8A33    call        TCustomForm.Create;TFormMatOborotka.Create
 009F8A38    mov         dword ptr [esi],eax
 009F8A3A    mov         eax,dword ptr [ebx+32C];TMainFormMarketSklad.cbSklad:TDBLookupComboBox
 009F8A40    add         eax,240;TDBLookupComboBox.FKeyValue:Variant
 009F8A45    call        @VarToInteger
 009F8A4A    mov         edx,dword ptr [esi]
 009F8A4C    mov         dword ptr [edx+39C],eax
 009F8A52    mov         eax,dword ptr [esi]
 009F8A54    add         eax,3A4
 009F8A59    mov         edx,dword ptr [ebx+32C];TMainFormMarketSklad.cbSklad:TDBLookupComboBox
 009F8A5F    mov         edx,dword ptr [edx+268];TDBLookupComboBox.FText:String
 009F8A65    call        @LStrAsg
 009F8A6A    mov         eax,dword ptr [ebx+32C];TMainFormMarketSklad.cbSklad:TDBLookupComboBox
 009F8A70    mov         ecx,dword ptr [eax+268];TDBLookupComboBox.FText:String
 009F8A76    lea         eax,[ebp-4]
 009F8A79    mov         edx,9F8AC8;'Оборотока по складу - '
 009F8A7E    call        @LStrCat3
 009F8A83    mov         edx,dword ptr [ebp-4]
 009F8A86    mov         eax,dword ptr [esi]
 009F8A88    call        TControl.SetText
 009F8A8D    mov         eax,dword ptr [esi]
 009F8A8F    xor         edx,edx
 009F8A91    call        TCustomForm.SetWindowState
 009F8A96    mov         eax,dword ptr [esi]
 009F8A98    call        TCustomForm.Show
 009F8A9D    xor         eax,eax
 009F8A9F    pop         edx
 009F8AA0    pop         ecx
 009F8AA1    pop         ecx
 009F8AA2    mov         dword ptr fs:[eax],edx
 009F8AA5    push        9F8ABA
 009F8AAA    lea         eax,[ebp-4]
 009F8AAD    call        @LStrClr
 009F8AB2    ret
>009F8AB3    jmp         @HandleFinally
>009F8AB8    jmp         009F8AAA
 009F8ABA    pop         esi
 009F8ABB    pop         ebx
 009F8ABC    pop         ecx
 009F8ABD    pop         ebp
 009F8ABE    ret
*}
end;

//009F8AE0
{*procedure TMainFormMarketSklad.aHistCardUpdate(?:?);
begin
 009F8AE0    push        ebx
 009F8AE1    push        esi
 009F8AE2    mov         esi,edx
 009F8AE4    mov         ebx,eax
 009F8AE6    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F8AEC    call        TDataSet.IsEmpty
 009F8AF1    xor         al,1
 009F8AF3    push        eax
 009F8AF4    mov         eax,esi
 009F8AF6    mov         edx,dword ptr ds:[497794];TCustomAction
 009F8AFC    call        @AsClass
 009F8B01    pop         edx
 009F8B02    call        TCustomAction.SetEnabled
 009F8B07    pop         esi
 009F8B08    pop         ebx
 009F8B09    ret
end;*}

//009F8B0C
{*procedure TMainFormMarketSklad.DBGridEh_OstatsGetCellParams(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 009F8B0C    push        ebp
 009F8B0D    mov         ebp,esp
 009F8B0F    add         esp,0FFFFFFC0
 009F8B12    push        ebx
 009F8B13    push        esi
 009F8B14    push        edi
 009F8B15    xor         ebx,ebx
 009F8B17    mov         dword ptr [ebp-30],ebx
 009F8B1A    mov         dword ptr [ebp-2C],ebx
 009F8B1D    mov         edi,ecx
 009F8B1F    mov         esi,eax
 009F8B21    xor         eax,eax
 009F8B23    push        ebp
 009F8B24    push        9F8DB4
 009F8B29    push        dword ptr fs:[eax]
 009F8B2C    mov         dword ptr fs:[eax],esp
 009F8B2F    mov         eax,edi
 009F8B31    call        00673E98
 009F8B36    mov         eax,dword ptr [eax+34]
 009F8B39    mov         edx,9F8DCC;'AMT_OSTAT'
 009F8B3E    call        TDataSet.FieldByName
 009F8B43    mov         edx,dword ptr [eax]
 009F8B45    call        dword ptr [edx+54];TField.GetAsFloat
 009F8B48    fstp        tbyte ptr [ebp-10]
 009F8B4B    wait
 009F8B4C    mov         eax,edi
 009F8B4E    call        00673E98
 009F8B53    mov         eax,dword ptr [eax+34]
 009F8B56    mov         edx,9F8DE0;'MINIM_ZAPAS'
 009F8B5B    call        TDataSet.FieldByName
 009F8B60    mov         edx,dword ptr [eax]
 009F8B62    call        dword ptr [edx+54];TField.GetAsFloat
 009F8B65    fstp        tbyte ptr [ebp-20]
 009F8B68    wait
 009F8B69    mov         eax,edi
 009F8B6B    call        00673E98
 009F8B70    mov         edx,dword ptr [eax+8]
 009F8B73    lea         eax,[ebp-2C]
 009F8B76    call        @LStrLAsg
 009F8B7B    fld         tbyte ptr [ebp-10]
 009F8B7E    fld         tbyte ptr [ebp-20]
 009F8B81    fcompp
 009F8B83    fnstsw      al
 009F8B85    sahf
>009F8B86    jbe         009F8BA5
 009F8B88    mov         eax,dword ptr [ebp-2C]
 009F8B8B    mov         edx,9F8DF4;'Q_OSTATSAMT_OSTAT'
 009F8B90    call        @LStrCmp
>009F8B95    jne         009F8BA5
 009F8B97    fld         tbyte ptr [ebp-20]
 009F8B9A    fcomp       dword ptr ds:[9F8E08];0:Single
 009F8BA0    fnstsw      al
 009F8BA2    sahf
>009F8BA3    ja          009F8BA9
 009F8BA5    xor         ebx,ebx
>009F8BA7    jmp         009F8BAB
 009F8BA9    mov         bl,1
 009F8BAB    test        bl,bl
>009F8BAD    je          009F8BD5
 009F8BAF    mov         edx,9F8E14;'IS_SKLAD'
 009F8BB4    mov         eax,dword ptr [esi+334];TMainFormMarketSklad.Q_Sklads:TOraQuery
 009F8BBA    call        TDataSet.FieldByName
 009F8BBF    mov         edx,dword ptr [eax]
 009F8BC1    call        dword ptr [edx+58];TField.GetAsInteger
 009F8BC4    dec         eax
>009F8BC5    jne         009F8BD5
 009F8BC7    mov         dl,byte ptr ds:[9F8E20];0x1 gvar_009F8E20
 009F8BCD    mov         eax,dword ptr [ebp+10]
 009F8BD0    call        TFont.SetStyle
 009F8BD5    mov         eax,edi
 009F8BD7    call        00673E98
 009F8BDC    mov         eax,dword ptr [eax+34]
 009F8BDF    mov         edx,9F8E2C;'CNT_DAYS_SROKG_MIN'
 009F8BE4    call        TDataSet.FieldByName
 009F8BE9    mov         edx,dword ptr [eax]
 009F8BEB    call        dword ptr [edx+58];TField.GetAsInteger
 009F8BEE    mov         dword ptr [ebp-24],eax
 009F8BF1    mov         eax,edi
 009F8BF3    call        00673E98
 009F8BF8    mov         eax,dword ptr [eax+34]
 009F8BFB    mov         edx,9F8E48;'CNT_DAYS_SROKG_MAX'
 009F8C00    call        TDataSet.FieldByName
 009F8C05    mov         edx,dword ptr [eax]
 009F8C07    call        dword ptr [edx+58];TField.GetAsInteger
 009F8C0A    mov         dword ptr [ebp-28],eax
 009F8C0D    test        byte ptr [ebp+8],1
>009F8C11    jne         009F8D51
 009F8C17    mov         eax,edi
 009F8C19    call        00673E98
 009F8C1E    mov         eax,dword ptr [eax+34]
 009F8C21    mov         edx,9F8E64;'MIN_SROK_GODNOSTY'
 009F8C26    call        TDataSet.FieldByName
 009F8C2B    lea         edx,[ebp-30]
 009F8C2E    mov         ecx,dword ptr [eax]
 009F8C30    call        dword ptr [ecx+60];TField.GetAsString
 009F8C33    cmp         dword ptr [ebp-30],0
>009F8C37    je          009F8D1D
 009F8C3D    mov         eax,dword ptr [ebp-24]
 009F8C40    add         eax,dword ptr [ebp-28]
 009F8C43    test        eax,eax
>009F8C45    jle         009F8D1D
 009F8C4B    mov         eax,edi
 009F8C4D    call        00673E98
 009F8C52    mov         eax,dword ptr [eax+34]
 009F8C55    mov         edx,9F8E64;'MIN_SROK_GODNOSTY'
 009F8C5A    call        TDataSet.FieldByName
 009F8C5F    mov         edx,dword ptr [eax]
 009F8C61    call        dword ptr [edx+50];TField.GetAsDateTime
 009F8C64    fstp        qword ptr [ebp-38]
 009F8C67    wait
 009F8C68    call        Date
 009F8C6D    fsubr       qword ptr [ebp-38]
 009F8C70    fild        dword ptr [ebp-24]
 009F8C73    fcompp
 009F8C75    fnstsw      al
 009F8C77    sahf
>009F8C78    jbe         009F8C83
 009F8C7A    mov         eax,dword ptr [ebp+0C]
 009F8C7D    mov         dword ptr [eax],0D2A6FF
 009F8C83    mov         eax,edi
 009F8C85    call        00673E98
 009F8C8A    mov         eax,dword ptr [eax+34]
 009F8C8D    mov         edx,9F8E64;'MIN_SROK_GODNOSTY'
 009F8C92    call        TDataSet.FieldByName
 009F8C97    mov         edx,dword ptr [eax]
 009F8C99    call        dword ptr [edx+50];TField.GetAsDateTime
 009F8C9C    fstp        qword ptr [ebp-38]
 009F8C9F    wait
 009F8CA0    call        Date
 009F8CA5    fsubr       qword ptr [ebp-38]
 009F8CA8    fild        dword ptr [ebp-28]
 009F8CAB    fcompp
 009F8CAD    fnstsw      al
 009F8CAF    sahf
>009F8CB0    jbe         009F8CEA
 009F8CB2    mov         eax,edi
 009F8CB4    call        00673E98
 009F8CB9    mov         eax,dword ptr [eax+34]
 009F8CBC    mov         edx,9F8E64;'MIN_SROK_GODNOSTY'
 009F8CC1    call        TDataSet.FieldByName
 009F8CC6    mov         edx,dword ptr [eax]
 009F8CC8    call        dword ptr [edx+50];TField.GetAsDateTime
 009F8CCB    fstp        qword ptr [ebp-40]
 009F8CCE    wait
 009F8CCF    call        Date
 009F8CD4    fsubr       qword ptr [ebp-40]
 009F8CD7    fild        dword ptr [ebp-24]
 009F8CDA    fcompp
 009F8CDC    fnstsw      al
 009F8CDE    sahf
>009F8CDF    ja          009F8CEA
 009F8CE1    mov         eax,dword ptr [ebp+0C]
 009F8CE4    mov         dword ptr [eax],42B6F4;TComponent.ValidateRename
 009F8CEA    mov         eax,edi
 009F8CEC    call        00673E98
 009F8CF1    mov         eax,dword ptr [eax+34]
 009F8CF4    mov         edx,9F8E64;'MIN_SROK_GODNOSTY'
 009F8CF9    call        TDataSet.FieldByName
 009F8CFE    mov         edx,dword ptr [eax]
 009F8D00    call        dword ptr [edx+50];TField.GetAsDateTime
 009F8D03    fstp        qword ptr [ebp-38]
 009F8D06    wait
 009F8D07    call        Date
 009F8D0C    fcomp       qword ptr [ebp-38]
 009F8D0F    fnstsw      al
 009F8D11    sahf
>009F8D12    jbe         009F8D1D
 009F8D14    mov         eax,dword ptr [ebp+0C]
 009F8D17    mov         dword ptr [eax],0FF000005
 009F8D1D    test        bl,bl
>009F8D1F    je          009F8D99
 009F8D21    mov         edx,9F8E14;'IS_SKLAD'
 009F8D26    mov         eax,dword ptr [esi+334];TMainFormMarketSklad.Q_Sklads:TOraQuery
 009F8D2C    call        TDataSet.FieldByName
 009F8D31    mov         edx,dword ptr [eax]
 009F8D33    call        dword ptr [edx+58];TField.GetAsInteger
 009F8D36    dec         eax
>009F8D37    jne         009F8D99
 009F8D39    mov         edx,0FF
 009F8D3E    mov         eax,dword ptr [ebp+10]
 009F8D41    call        TFont.SetColor
 009F8D46    mov         eax,dword ptr [ebp+0C]
 009F8D49    mov         dword ptr [eax],0FF000018
>009F8D4F    jmp         009F8D99
 009F8D51    mov         edx,0FFFFFF
 009F8D56    mov         eax,dword ptr [ebp+10]
 009F8D59    call        TFont.SetColor
 009F8D5E    mov         eax,dword ptr [ebp+0C]
 009F8D61    mov         dword ptr [eax],800000;^'enBandPos'
 009F8D67    test        bl,bl
>009F8D69    je          009F8D99
 009F8D6B    mov         edx,9F8E14;'IS_SKLAD'
 009F8D70    mov         eax,dword ptr [esi+334];TMainFormMarketSklad.Q_Sklads:TOraQuery
 009F8D76    call        TDataSet.FieldByName
 009F8D7B    mov         edx,dword ptr [eax]
 009F8D7D    call        dword ptr [edx+58];TField.GetAsInteger
 009F8D80    dec         eax
>009F8D81    jne         009F8D99
 009F8D83    mov         edx,0FFFF
 009F8D88    mov         eax,dword ptr [ebp+10]
 009F8D8B    call        TFont.SetColor
 009F8D90    mov         eax,dword ptr [ebp+0C]
 009F8D93    mov         dword ptr [eax],80
 009F8D99    xor         eax,eax
 009F8D9B    pop         edx
 009F8D9C    pop         ecx
 009F8D9D    pop         ecx
 009F8D9E    mov         dword ptr fs:[eax],edx
 009F8DA1    push        9F8DBB
 009F8DA6    lea         eax,[ebp-30]
 009F8DA9    mov         edx,2
 009F8DAE    call        @LStrArrayClr
 009F8DB3    ret
>009F8DB4    jmp         @HandleFinally
>009F8DB9    jmp         009F8DA6
 009F8DBB    pop         edi
 009F8DBC    pop         esi
 009F8DBD    pop         ebx
 009F8DBE    mov         esp,ebp
 009F8DC0    pop         ebp
 009F8DC1    ret         0C
end;*}

//009F8E78
procedure TMainFormMarketSklad.DBGridEh_OstatsDblClick(Sender:TObject);
begin
{*
 009F8E78    push        esi
 009F8E79    mov         edx,dword ptr [eax+480];TMainFormMarketSklad.aHistCard:TAction
 009F8E7F    cmp         byte ptr [edx+6A],0;TAction.FEnabled:Boolean
>009F8E83    je          009F8E90
 009F8E85    mov         eax,edx
 009F8E87    mov         si,0FFEF
 009F8E8B    call        @CallDynaInst;TCustomAction.Execute
 009F8E90    pop         esi
 009F8E91    ret
*}
end;

//009F8E94
procedure TMainFormMarketSklad.aUchPeriodsExecute;
begin
{*
 009F8E94    push        ebx
 009F8E95    mov         ebx,eax
 009F8E97    mov         eax,[00AC7540];^gvar_00ACEA88:TFormYearKvartals
 009F8E9C    cmp         dword ptr [eax],0
>009F8E9F    jne         009F8EB7
 009F8EA1    mov         ecx,ebx
 009F8EA3    mov         dl,1
 009F8EA5    mov         eax,[009B1878];TFormYearKvartals
 009F8EAA    call        TCustomForm.Create;TFormYearKvartals.Create
 009F8EAF    mov         edx,dword ptr ds:[0AC7540];^gvar_00ACEA88:TFormYearKvartals
 009F8EB5    mov         dword ptr [edx],eax
 009F8EB7    mov         eax,[00AC7540];^gvar_00ACEA88:TFormYearKvartals
 009F8EBC    mov         eax,dword ptr [eax]
 009F8EBE    xor         edx,edx
 009F8EC0    call        TCustomForm.SetWindowState
 009F8EC5    mov         eax,[00AC7540];^gvar_00ACEA88:TFormYearKvartals
 009F8ECA    mov         eax,dword ptr [eax]
 009F8ECC    mov         edx,dword ptr [eax]
 009F8ECE    call        dword ptr [edx+0EC]
 009F8ED4    pop         ebx
 009F8ED5    ret
*}
end;

//009F8ED8
procedure TMainFormMarketSklad.aPrintPrihNaklExecute;
begin
{*
 009F8ED8    push        ebx
 009F8ED9    mov         ebx,eax
 009F8EDB    mov         edx,9F8F64;'ID_OPER_TYPE'
 009F8EE0    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F8EE6    call        TDataSet.FieldByName
 009F8EEB    mov         edx,dword ptr [eax]
 009F8EED    call        dword ptr [edx+58];TField.GetAsInteger
 009F8EF0    sub         eax,2
>009F8EF3    je          009F8EFF
 009F8EF5    sub         eax,3
>009F8EF8    je          009F8F1E
 009F8EFA    dec         eax
>009F8EFB    je          009F8F3D
>009F8EFD    jmp         009F8F5A
 009F8EFF    mov         edx,9F8F7C;'ID'
 009F8F04    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F8F0A    call        TDataSet.FieldByName
 009F8F0F    mov         edx,dword ptr [eax]
 009F8F11    call        dword ptr [edx+58];TField.GetAsInteger
 009F8F14    cdq
 009F8F15    push        edx
 009F8F16    push        eax
 009F8F17    call        00972488
 009F8F1C    pop         ebx
 009F8F1D    ret
 009F8F1E    mov         edx,9F8F7C;'ID'
 009F8F23    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F8F29    call        TDataSet.FieldByName
 009F8F2E    mov         edx,dword ptr [eax]
 009F8F30    call        dword ptr [edx+58];TField.GetAsInteger
 009F8F33    cdq
 009F8F34    push        edx
 009F8F35    push        eax
 009F8F36    call        00972564
 009F8F3B    pop         ebx
 009F8F3C    ret
 009F8F3D    mov         edx,9F8F7C;'ID'
 009F8F42    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F8F48    call        TDataSet.FieldByName
 009F8F4D    mov         edx,dword ptr [eax]
 009F8F4F    call        dword ptr [edx+58];TField.GetAsInteger
 009F8F52    cdq
 009F8F53    push        edx
 009F8F54    push        eax
 009F8F55    call        00972640
 009F8F5A    pop         ebx
 009F8F5B    ret
*}
end;

//009F8F80
procedure TMainFormMarketSklad.aPrintPrihOrderExecute;
begin
{*
 009F8F80    push        ebx
 009F8F81    mov         ebx,eax
 009F8F83    mov         edx,9F8FC4;'ID_OPER_TYPE'
 009F8F88    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F8F8E    call        TDataSet.FieldByName
 009F8F93    mov         edx,dword ptr [eax]
 009F8F95    call        dword ptr [edx+58];TField.GetAsInteger
 009F8F98    cmp         eax,2
>009F8F9B    jne         009F8FBA
 009F8F9D    mov         edx,9F8FDC;'ID'
 009F8FA2    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F8FA8    call        TDataSet.FieldByName
 009F8FAD    mov         edx,dword ptr [eax]
 009F8FAF    call        dword ptr [edx+58];TField.GetAsInteger
 009F8FB2    cdq
 009F8FB3    push        edx
 009F8FB4    push        eax
 009F8FB5    call        009723AC
 009F8FBA    pop         ebx
 009F8FBB    ret
*}
end;

//009F8FE0
procedure TMainFormMarketSklad.aPrintRashNaklExecute;
begin
{*
 009F8FE0    push        ebp
 009F8FE1    mov         ebp,esp
 009F8FE3    push        0
 009F8FE5    push        0
 009F8FE7    push        ebx
 009F8FE8    mov         ebx,eax
 009F8FEA    xor         eax,eax
 009F8FEC    push        ebp
 009F8FED    push        9F9087
 009F8FF2    push        dword ptr fs:[eax]
 009F8FF5    mov         dword ptr fs:[eax],esp
 009F8FF8    mov         edx,9F909C;'NAME_OP_TYPE'
 009F8FFD    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F9003    call        TDataSet.FieldByName
 009F9008    lea         edx,[ebp-8]
 009F900B    mov         ecx,dword ptr [eax]
 009F900D    call        dword ptr [ecx+60];TField.GetAsString
 009F9010    mov         eax,dword ptr [ebp-8]
 009F9013    lea         edx,[ebp-4]
 009F9016    call        AnsiUpperCase
 009F901B    mov         edx,dword ptr [ebp-4]
 009F901E    mov         eax,9F90B4;'СПИСАНИЕ'
 009F9023    call        @LStrPos
 009F9028    test        eax,eax
>009F902A    jne         009F904D
 009F902C    mov         edx,9F90C8;'ID'
 009F9031    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F9037    call        TDataSet.FieldByName
 009F903C    mov         edx,dword ptr [eax]
 009F903E    call        dword ptr [edx+58];TField.GetAsInteger
 009F9041    mov         edx,1
 009F9046    call        0097271C
>009F904B    jmp         009F906C
 009F904D    mov         edx,9F90C8;'ID'
 009F9052    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F9058    call        TDataSet.FieldByName
 009F905D    mov         edx,dword ptr [eax]
 009F905F    call        dword ptr [edx+58];TField.GetAsInteger
 009F9062    mov         edx,2
 009F9067    call        0097271C
 009F906C    xor         eax,eax
 009F906E    pop         edx
 009F906F    pop         ecx
 009F9070    pop         ecx
 009F9071    mov         dword ptr fs:[eax],edx
 009F9074    push        9F908E
 009F9079    lea         eax,[ebp-8]
 009F907C    mov         edx,2
 009F9081    call        @LStrArrayClr
 009F9086    ret
>009F9087    jmp         @HandleFinally
>009F908C    jmp         009F9079
 009F908E    pop         ebx
 009F908F    pop         ecx
 009F9090    pop         ecx
 009F9091    pop         ebp
 009F9092    ret
*}
end;

//009F90CC
procedure TMainFormMarketSklad.aRekvizitsExecute;
begin
{*
 009F90CC    push        ebx
 009F90CD    mov         ebx,eax
 009F90CF    mov         eax,[00AC6B78];^gvar_00ACEAB4:TFormRekvMy
 009F90D4    cmp         dword ptr [eax],0
>009F90D7    jne         009F90EF
 009F90D9    mov         ecx,ebx
 009F90DB    mov         dl,1
 009F90DD    mov         eax,[009B6550];TFormRekvMy
 009F90E2    call        TCustomForm.Create;TFormRekvMy.Create
 009F90E7    mov         edx,dword ptr ds:[0AC6B78];^gvar_00ACEAB4:TFormRekvMy
 009F90ED    mov         dword ptr [edx],eax
 009F90EF    mov         eax,[00AC6B78];^gvar_00ACEAB4:TFormRekvMy
 009F90F4    mov         eax,dword ptr [eax]
 009F90F6    xor         edx,edx
 009F90F8    call        TCustomForm.SetWindowState
 009F90FD    mov         eax,[00AC6B78];^gvar_00ACEAB4:TFormRekvMy
 009F9102    mov         eax,dword ptr [eax]
 009F9104    call        TCustomForm.Show
 009F9109    pop         ebx
 009F910A    ret
*}
end;

//009F910C
procedure TMainFormMarketSklad.chbGroupsClick(Sender:TObject);
begin
{*
 009F910C    push        ebp
 009F910D    mov         ebp,esp
 009F910F    xor         ecx,ecx
 009F9111    push        ecx
 009F9112    push        ecx
 009F9113    push        ecx
 009F9114    push        ecx
 009F9115    push        ebx
 009F9116    push        esi
 009F9117    mov         ebx,eax
 009F9119    xor         eax,eax
 009F911B    push        ebp
 009F911C    push        9F91AB
 009F9121    push        dword ptr fs:[eax]
 009F9124    mov         dword ptr fs:[eax],esp
 009F9127    mov         eax,dword ptr [ebx+4A8];TMainFormMarketSklad.Q_Groups:TOraQuery
 009F912D    call        TDataSet.Close
 009F9132    lea         eax,[ebp-10]
 009F9135    call        Null
 009F913A    lea         edx,[ebp-10]
 009F913D    mov         eax,dword ptr [ebx+4A4];TMainFormMarketSklad.cbGroups:TDBLookupComboBox
 009F9143    call        TDBLookupControl.SetKeyValue
 009F9148    xor         edx,edx
 009F914A    mov         eax,dword ptr [ebx+4A4];TMainFormMarketSklad.cbGroups:TDBLookupComboBox
 009F9150    mov         ecx,dword ptr [eax]
 009F9152    call        dword ptr [ecx+64];TControl.SetEnabled
 009F9155    mov         eax,dword ptr [ebx+4A0];TMainFormMarketSklad.chbGroups:TCheckBox
 009F915B    mov         edx,dword ptr [eax]
 009F915D    call        dword ptr [edx+0C8];TCustomCheckBox.GetChecked
 009F9163    test        al,al
>009F9165    je          009F9181
 009F9167    mov         eax,dword ptr [ebx+4A8];TMainFormMarketSklad.Q_Groups:TOraQuery
 009F916D    call        TDataSet.Open
 009F9172    mov         dl,1
 009F9174    mov         eax,dword ptr [ebx+4A4];TMainFormMarketSklad.cbGroups:TDBLookupComboBox
 009F917A    mov         ecx,dword ptr [eax]
 009F917C    call        dword ptr [ecx+64];TControl.SetEnabled
>009F917F    jmp         009F9195
 009F9181    mov         esi,dword ptr [ebx+2F8];TMainFormMarketSklad.PageControl1:TPageControl
 009F9187    mov         edx,ebx
 009F9189    mov         eax,dword ptr [esi+24C];TPageControl.?f24C:TfrxPreview
 009F918F    call        dword ptr [esi+248];TPageControl.FOnChange
 009F9195    xor         eax,eax
 009F9197    pop         edx
 009F9198    pop         ecx
 009F9199    pop         ecx
 009F919A    mov         dword ptr fs:[eax],edx
 009F919D    push        9F91B2
 009F91A2    lea         eax,[ebp-10]
 009F91A5    call        @VarClr
 009F91AA    ret
>009F91AB    jmp         @HandleFinally
>009F91B0    jmp         009F91A2
 009F91B2    pop         esi
 009F91B3    pop         ebx
 009F91B4    mov         esp,ebp
 009F91B6    pop         ebp
 009F91B7    ret
*}
end;

//009F91B8
procedure TMainFormMarketSklad.cbGroupsClick(Sender:TObject);
begin
{*
 009F91B8    push        ebx
 009F91B9    mov         ebx,dword ptr [eax+2F8];TMainFormMarketSklad.PageControl1:TPageControl
 009F91BF    mov         edx,eax
 009F91C1    mov         eax,dword ptr [ebx+24C];TPageControl.?f24C:TfrxPreview
 009F91C7    call        dword ptr [ebx+248];TPageControl.FOnChange
 009F91CD    pop         ebx
 009F91CE    ret
*}
end;

//009F91D0
procedure TMainFormMarketSklad.aDelZerrowOstatExecute;
begin
{*
 009F91D0    push        ebp
 009F91D1    mov         ebp,esp
 009F91D3    add         esp,0FFFFFFF8
 009F91D6    push        ebx
 009F91D7    push        esi
 009F91D8    push        edi
 009F91D9    xor         ecx,ecx
 009F91DB    mov         dword ptr [ebp-8],ecx
 009F91DE    mov         esi,eax
 009F91E0    xor         eax,eax
 009F91E2    push        ebp
 009F91E3    push        9F9336
 009F91E8    push        dword ptr fs:[eax]
 009F91EB    mov         dword ptr fs:[eax],esp
 009F91EE    mov         edx,9F934C;'Удалить строку остатка?'
 009F91F3    mov         eax,9F936C;'В Н И М А Н И Е !!!'
 009F91F8    call        006C64E0
 009F91FD    dec         eax
>009F91FE    jne         009F9320
 009F9204    mov         eax,dword ptr [esi+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F920A    mov         edx,9F9388;'ID_NOM'
 009F920F    call        TDataSet.FieldByName
 009F9214    mov         edx,dword ptr [eax]
 009F9216    call        dword ptr [edx+58];TField.GetAsInteger
 009F9219    mov         edi,eax
 009F921B    mov         eax,dword ptr [esi+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F9221    mov         edx,9F9398;'ID_CEH'
 009F9226    call        TDataSet.FieldByName
 009F922B    mov         edx,dword ptr [eax]
 009F922D    call        dword ptr [edx+58];TField.GetAsInteger
 009F9230    mov         dword ptr [ebp-4],eax
 009F9233    xor         eax,eax
 009F9235    push        ebp
 009F9236    push        9F92D9
 009F923B    push        dword ptr fs:[eax]
 009F923E    mov         dword ptr fs:[eax],esp
 009F9241    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F9246    mov         eax,dword ptr [eax]
 009F9248    mov         ebx,dword ptr [eax+60]
 009F924B    mov         eax,ebx
 009F924D    call        TDataSet.Close
 009F9252    mov         eax,ebx
 009F9254    call        TOraQuery.GetSQL
 009F9259    mov         edx,dword ptr [eax]
 009F925B    call        dword ptr [edx+44]
 009F925E    mov         eax,ebx
 009F9260    mov         edx,dword ptr [eax]
 009F9262    call        dword ptr [edx+2D8]
 009F9268    mov         eax,ebx
 009F926A    call        TOraQuery.GetSQL
 009F926F    mov         edx,9F93A8;'DELETE FROM CEH_OSTATS_NOW WHERE ID_CEH=:ID_CEH AND ID_NOM=:ID_NOM'
 009F9274    mov         ecx,dword ptr [eax]
 009F9276    call        dword ptr [ecx+38]
 009F9279    mov         edx,9F9398;'ID_CEH'
 009F927E    mov         eax,ebx
 009F9280    call        006210D4
 009F9285    mov         edx,dword ptr [ebp-4]
 009F9288    mov         ecx,dword ptr [eax]
 009F928A    call        dword ptr [ecx+68]
 009F928D    mov         edx,9F9388;'ID_NOM'
 009F9292    mov         eax,ebx
 009F9294    call        006210D4
 009F9299    mov         edx,edi
 009F929B    mov         ecx,dword ptr [eax]
 009F929D    call        dword ptr [ecx+68]
 009F92A0    mov         eax,ebx
 009F92A2    call        00620CE4
 009F92A7    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F92AC    mov         eax,dword ptr [eax]
 009F92AE    mov         eax,dword ptr [eax+58]
 009F92B1    mov         edx,dword ptr [eax]
 009F92B3    call        dword ptr [edx+160]
 009F92B9    mov         eax,dword ptr [esi+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F92BF    call        TDataSet.Close
 009F92C4    mov         eax,dword ptr [esi+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F92CA    call        TDataSet.Open
 009F92CF    xor         eax,eax
 009F92D1    pop         edx
 009F92D2    pop         ecx
 009F92D3    pop         ecx
 009F92D4    mov         dword ptr fs:[eax],edx
>009F92D7    jmp         009F9320
>009F92D9    jmp         @HandleOnException
 009F92DE    dd          1
 009F92E2    dd          00408E24;Exception
 009F92E6    dd          009F92EA
 009F92EA    mov         ebx,eax
 009F92EC    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009F92F1    mov         eax,dword ptr [eax]
 009F92F3    mov         eax,dword ptr [eax+58]
 009F92F6    mov         edx,dword ptr [eax]
 009F92F8    call        dword ptr [edx+164]
 009F92FE    mov         ecx,dword ptr [ebx+4];Exception.FMessage:String
 009F9301    lea         eax,[ebp-8]
 009F9304    mov         edx,9F93F4;'Не удается удалить строку!'+#13+ Доп.информация: '
 009F9309    call        @LStrCat3
 009F930E    mov         edx,dword ptr [ebp-8]
 009F9311    mov         eax,9F942C;'Ошибка удаления'
 009F9316    call        006C683C
 009F931B    call        @DoneExcept
 009F9320    xor         eax,eax
 009F9322    pop         edx
 009F9323    pop         ecx
 009F9324    pop         ecx
 009F9325    mov         dword ptr fs:[eax],edx
 009F9328    push        9F933D
 009F932D    lea         eax,[ebp-8]
 009F9330    call        @LStrClr
 009F9335    ret
>009F9336    jmp         @HandleFinally
>009F933B    jmp         009F932D
 009F933D    pop         edi
 009F933E    pop         esi
 009F933F    pop         ebx
 009F9340    pop         ecx
 009F9341    pop         ecx
 009F9342    pop         ebp
 009F9343    ret
*}
end;

//009F943C
{*procedure TMainFormMarketSklad.aDelZerrowOstatUpdate(?:?);
begin
 009F943C    push        ebx
 009F943D    push        esi
 009F943E    add         esp,0FFFFFFF8
 009F9441    mov         esi,edx
 009F9443    mov         ebx,eax
 009F9445    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F944B    call        TDataSet.IsEmpty
 009F9450    test        al,al
>009F9452    jne         009F947F
 009F9454    mov         edx,9F94A8;'AMT_OSTAT'
 009F9459    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009F945F    call        TDataSet.FieldByName
 009F9464    mov         edx,dword ptr [eax]
 009F9466    call        dword ptr [edx+54];TField.GetAsFloat
 009F9469    fstp        qword ptr [esp]
 009F946C    wait
 009F946D    mov         eax,9F94BC;'0,001'
 009F9472    call        StrToFloat
 009F9477    fcomp       qword ptr [esp]
 009F947A    fnstsw      al
 009F947C    sahf
>009F947D    ja          009F9483
 009F947F    xor         eax,eax
>009F9481    jmp         009F9485
 009F9483    mov         al,1
 009F9485    push        eax
 009F9486    mov         eax,esi
 009F9488    mov         edx,dword ptr ds:[497794];TCustomAction
 009F948E    call        @AsClass
 009F9493    pop         edx
 009F9494    call        TCustomAction.SetEnabled
 009F9499    pop         ecx
 009F949A    pop         edx
 009F949B    pop         esi
 009F949C    pop         ebx
 009F949D    ret
end;*}

//009F94C4
procedure TMainFormMarketSklad.sub_009F94C4;
begin
{*
 009F94C4    push        ebx
 009F94C5    mov         ebx,dword ptr [eax+2F8];TMainFormMarketSklad.PageControl1:TPageControl
 009F94CB    mov         edx,eax
 009F94CD    mov         eax,dword ptr [ebx+24C];TPageControl.?f24C:TfrxPreview
 009F94D3    call        dword ptr [ebx+248];TPageControl.FOnChange
 009F94D9    pop         ebx
 009F94DA    ret
*}
end;

//009F94DC
{*procedure TMainFormMarketSklad.aEdtVozvratUpdate(?:?);
begin
 009F94DC    push        ebx
 009F94DD    push        esi
 009F94DE    mov         esi,edx
 009F94E0    mov         ebx,eax
 009F94E2    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F94E8    call        TDataSet.IsEmpty
 009F94ED    test        al,al
>009F94EF    jne         009F9522
 009F94F1    mov         edx,9F9548;'IS_STOR_CEH'
 009F94F6    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F94FC    call        TDataSet.FieldByName
 009F9501    mov         edx,dword ptr [eax]
 009F9503    call        dword ptr [edx+58];TField.GetAsInteger
 009F9506    test        eax,eax
>009F9508    jne         009F9522
 009F950A    mov         edx,9F955C;'IS_VOZVRAT'
 009F950F    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F9515    call        TDataSet.FieldByName
 009F951A    mov         edx,dword ptr [eax]
 009F951C    call        dword ptr [edx+58];TField.GetAsInteger
 009F951F    dec         eax
>009F9520    je          009F9526
 009F9522    xor         eax,eax
>009F9524    jmp         009F9528
 009F9526    mov         al,1
 009F9528    push        eax
 009F9529    mov         eax,esi
 009F952B    mov         edx,dword ptr ds:[497794];TCustomAction
 009F9531    call        @AsClass
 009F9536    pop         edx
 009F9537    call        TCustomAction.SetEnabled
 009F953C    pop         esi
 009F953D    pop         ebx
 009F953E    ret
end;*}

//009F9568
{*procedure TMainFormMarketSklad.aDeleteVozvratUpdate(?:?);
begin
 009F9568    push        ebx
 009F9569    push        esi
 009F956A    mov         esi,edx
 009F956C    mov         ebx,eax
 009F956E    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F9574    call        TDataSet.IsEmpty
 009F9579    test        al,al
>009F957B    jne         009F9596
 009F957D    mov         edx,9F95BC;'IS_PROV'
 009F9582    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F9588    call        TDataSet.FieldByName
 009F958D    mov         edx,dword ptr [eax]
 009F958F    call        dword ptr [edx+58];TField.GetAsInteger
 009F9592    test        eax,eax
>009F9594    je          009F959A
 009F9596    xor         eax,eax
>009F9598    jmp         009F959C
 009F959A    mov         al,1
 009F959C    push        eax
 009F959D    mov         eax,esi
 009F959F    mov         edx,dword ptr ds:[497794];TCustomAction
 009F95A5    call        @AsClass
 009F95AA    pop         edx
 009F95AB    call        TCustomAction.SetEnabled
 009F95B0    pop         esi
 009F95B1    pop         ebx
 009F95B2    ret
end;*}

//009F95C4
{*procedure TMainFormMarketSklad.aObyedNalkUpdate(?:?);
begin
 009F95C4    push        ebx
 009F95C5    push        esi
 009F95C6    mov         esi,edx
 009F95C8    mov         ebx,eax
 009F95CA    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F95D0    call        TDataSet.IsEmpty
 009F95D5    xor         al,1
 009F95D7    push        eax
 009F95D8    mov         eax,esi
 009F95DA    mov         edx,dword ptr ds:[497794];TCustomAction
 009F95E0    call        @AsClass
 009F95E5    pop         edx
 009F95E6    call        TCustomAction.SetEnabled
 009F95EB    pop         esi
 009F95EC    pop         ebx
 009F95ED    ret
end;*}

//009F95F0
{*procedure TMainFormMarketSklad.aViewPrihNaklUpdate(?:?);
begin
 009F95F0    push        ebx
 009F95F1    push        esi
 009F95F2    mov         esi,edx
 009F95F4    mov         ebx,eax
 009F95F6    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F95FC    call        TDataSet.IsEmpty
 009F9601    xor         al,1
 009F9603    push        eax
 009F9604    mov         eax,esi
 009F9606    mov         edx,dword ptr ds:[497794];TCustomAction
 009F960C    call        @AsClass
 009F9611    pop         edx
 009F9612    call        TCustomAction.SetEnabled
 009F9617    pop         esi
 009F9618    pop         ebx
 009F9619    ret
end;*}

//009F961C
procedure TMainFormMarketSklad.aLogDocsExecute;
begin
{*
 009F961C    push        ebp
 009F961D    mov         ebp,esp
 009F961F    add         esp,0FFFFFDFC
 009F9625    xor         ecx,ecx
 009F9627    mov         dword ptr [ebp-4],ecx
 009F962A    xor         eax,eax
 009F962C    push        ebp
 009F962D    push        9F969D
 009F9632    push        dword ptr fs:[eax]
 009F9635    mov         dword ptr fs:[eax],esp
 009F9638    lea         eax,[ebp-204]
 009F963E    mov         edx,dword ptr ds:[0AC6624];^'ldaXOA8cIc2LjSFPuYd8en+J'
 009F9644    mov         ecx,0FF
 009F9649    call        @LStrToString
 009F964E    lea         eax,[ebp-204]
 009F9654    lea         edx,[ebp-104]
 009F965A    call        Uncript.Un_Cript
 009F965F    lea         edx,[ebp-104]
 009F9665    lea         eax,[ebp-4]
 009F9668    call        @LStrFromString
 009F966D    mov         eax,dword ptr [ebp-4]
 009F9670    push        eax
 009F9671    mov         ecx,dword ptr ds:[0AC6630];^'OPT_USER_'
 009F9677    mov         edx,dword ptr ds:[0AC662C];^'OPTTORG_'
 009F967D    mov         eax,[00AC6628];^'192.168.0.1'
 009F9682    call        Admin.Log_docs
 009F9687    xor         eax,eax
 009F9689    pop         edx
 009F968A    pop         ecx
 009F968B    pop         ecx
 009F968C    mov         dword ptr fs:[eax],edx
 009F968F    push        9F96A4
 009F9694    lea         eax,[ebp-4]
 009F9697    call        @LStrClr
 009F969C    ret
>009F969D    jmp         @HandleFinally
>009F96A2    jmp         009F9694
 009F96A4    mov         esp,ebp
 009F96A6    pop         ebp
 009F96A7    ret
*}
end;

//009F96A8
procedure TMainFormMarketSklad.Button2Click(Sender:TObject);
begin
{*
 009F96A8    push        ebp
 009F96A9    mov         ebp,esp
 009F96AB    xor         ecx,ecx
 009F96AD    push        ecx
 009F96AE    push        ecx
 009F96AF    push        ecx
 009F96B0    push        ecx
 009F96B1    push        ebx
 009F96B2    mov         ebx,eax
 009F96B4    xor         eax,eax
 009F96B6    push        ebp
 009F96B7    push        9F96F5
 009F96BC    push        dword ptr fs:[eax]
 009F96BF    mov         dword ptr fs:[eax],esp
 009F96C2    lea         eax,[ebp-10]
 009F96C5    call        Null
 009F96CA    lea         edx,[ebp-10]
 009F96CD    mov         eax,dword ptr [ebx+4DC];TMainFormMarketSklad.cbVidOper:TDBLookupComboBox
 009F96D3    call        TDBLookupControl.SetKeyValue
 009F96D8    mov         eax,ebx
 009F96DA    call        TMainFormMarketSklad.RashFilter
 009F96DF    xor         eax,eax
 009F96E1    pop         edx
 009F96E2    pop         ecx
 009F96E3    pop         ecx
 009F96E4    mov         dword ptr fs:[eax],edx
 009F96E7    push        9F96FC
 009F96EC    lea         eax,[ebp-10]
 009F96EF    call        @VarClr
 009F96F4    ret
>009F96F5    jmp         @HandleFinally
>009F96FA    jmp         009F96EC
 009F96FC    pop         ebx
 009F96FD    mov         esp,ebp
 009F96FF    pop         ebp
 009F9700    ret
*}
end;

//009F9704
procedure TMainFormMarketSklad.rgPrihIsProvClick(Sender:TObject);
begin
{*
 009F9704    push        ebx
 009F9705    mov         ebx,dword ptr [eax+2F8];TMainFormMarketSklad.PageControl1:TPageControl
 009F970B    mov         edx,eax
 009F970D    mov         eax,dword ptr [ebx+24C];TPageControl.?f24C:TfrxPreview
 009F9713    call        dword ptr [ebx+248];TPageControl.FOnChange
 009F9719    pop         ebx
 009F971A    ret
*}
end;

//009F971C
procedure TMainFormMarketSklad.PrihFiltered;
begin
{*
 009F971C    push        esi
 009F971D    mov         esi,eax
 009F971F    xor         edx,edx
 009F9721    mov         eax,dword ptr [esi+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F9727    mov         ecx,dword ptr [eax]
 009F9729    call        dword ptr [ecx+190];TOraQuery.SetFiltered
 009F972F    mov         eax,dword ptr [esi+4D0];TMainFormMarketSklad.rgPrihIsProv:TRadioGroup
 009F9735    cmp         dword ptr [eax+218],0;TRadioGroup.FItemIndex:Integer
>009F973C    jne         009F975C
 009F973E    mov         eax,dword ptr [esi+604];TMainFormMarketSklad.rgIsOplacheno:TRadioGroup
 009F9744    cmp         dword ptr [eax+218],0;TRadioGroup.FItemIndex:Integer
>009F974B    jne         009F975C
 009F974D    mov         eax,dword ptr [esi+74C];TMainFormMarketSklad.rgOpTypeSelect:TRadioGroup
 009F9753    cmp         dword ptr [eax+218],0;TRadioGroup.FItemIndex:Integer
>009F975A    je          009F976C
 009F975C    mov         dl,1
 009F975E    mov         eax,dword ptr [esi+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009F9764    mov         ecx,dword ptr [eax]
 009F9766    call        dword ptr [ecx+190];TOraQuery.SetFiltered
 009F976C    pop         esi
 009F976D    ret
*}
end;

//009F9770
procedure TMainFormMarketSklad.Q_PRIHODSFilterRecord;
begin
{*
 009F9770    ret
*}
end;

//009F9774
procedure TMainFormMarketSklad.rgRashIsProvClick(Sender:TObject);
begin
{*
 009F9774    call        TMainFormMarketSklad.RashFilter
 009F9779    ret
*}
end;

//009F977C
procedure TMainFormMarketSklad.cbVidOperClick(Sender:TObject);
begin
{*
 009F977C    call        TMainFormMarketSklad.RashFilter
 009F9781    ret
*}
end;

//009F9784
procedure TMainFormMarketSklad.RashFilter;
begin
{*
 009F9784    push        esi
 009F9785    mov         esi,eax
 009F9787    xor         edx,edx
 009F9789    mov         eax,dword ptr [esi+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F978F    mov         ecx,dword ptr [eax]
 009F9791    call        dword ptr [ecx+190];TOraQuery.SetFiltered
 009F9797    mov         eax,dword ptr [esi+4D4];TMainFormMarketSklad.rgRashIsProv:TRadioGroup
 009F979D    cmp         dword ptr [eax+218],0;TRadioGroup.FItemIndex:Integer
>009F97A4    jne         009F97C4
 009F97A6    mov         eax,dword ptr [esi+4DC];TMainFormMarketSklad.cbVidOper:TDBLookupComboBox
 009F97AC    cmp         dword ptr [eax+268],0;TDBLookupComboBox.FText:String
>009F97B3    jne         009F97C4
 009F97B5    mov         eax,dword ptr [esi+60C];TMainFormMarketSklad.rgIsOplacheno_rash:TRadioGroup
 009F97BB    cmp         dword ptr [eax+218],0;TRadioGroup.FItemIndex:Integer
>009F97C2    je          009F97D4
 009F97C4    mov         dl,1
 009F97C6    mov         eax,dword ptr [esi+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F97CC    mov         ecx,dword ptr [eax]
 009F97CE    call        dword ptr [ecx+190];TOraQuery.SetFiltered
 009F97D4    pop         esi
 009F97D5    ret
*}
end;

//009F97D8
{*procedure TMainFormMarketSklad.Q_RASHODSFilterRecord(?:?; ?:?);
begin
 009F97D8    push        ebp
 009F97D9    mov         ebp,esp
 009F97DB    push        ecx
 009F97DC    mov         ecx,12
 009F97E1    push        0
 009F97E3    push        0
 009F97E5    dec         ecx
>009F97E6    jne         009F97E1
 009F97E8    push        ecx
 009F97E9    xchg        ecx,dword ptr [ebp-4]
 009F97EC    push        ebx
 009F97ED    push        esi
 009F97EE    push        edi
 009F97EF    mov         edi,ecx
 009F97F1    mov         dword ptr [ebp-4],edx
 009F97F4    mov         esi,eax
 009F97F6    xor         eax,eax
 009F97F8    push        ebp
 009F97F9    push        9F9975
 009F97FE    push        dword ptr fs:[eax]
 009F9801    mov         dword ptr fs:[eax],esp
 009F9804    mov         byte ptr [ebp-5],1
 009F9808    mov         bl,1
 009F980A    mov         byte ptr [ebp-6],1
 009F980E    mov         eax,dword ptr [esi+4D4];TMainFormMarketSklad.rgRashIsProv:TRadioGroup
 009F9814    mov         eax,dword ptr [eax+218];TRadioGroup.FItemIndex:Integer
 009F981A    test        eax,eax
>009F981C    jle         009F9885
 009F981E    dec         eax
>009F981F    je          009F9826
 009F9821    dec         eax
>009F9822    je          009F9858
>009F9824    jmp         009F9885
 009F9826    lea         ecx,[ebp-18]
 009F9829    mov         edx,9F998C;'IS_PROV'
 009F982E    mov         eax,dword ptr [ebp-4]
 009F9831    call        TDataSet.GetFieldValue
 009F9836    lea         eax,[ebp-18]
 009F9839    push        eax
 009F983A    lea         eax,[ebp-28]
 009F983D    mov         edx,1
 009F9842    mov         cl,1
 009F9844    call        @VarFromInt
 009F9849    lea         edx,[ebp-28]
 009F984C    pop         eax
 009F984D    call        @VarCmpEQ
 009F9852    sete        byte ptr [ebp-5]
>009F9856    jmp         009F9885
 009F9858    lea         ecx,[ebp-38]
 009F985B    mov         edx,9F998C;'IS_PROV'
 009F9860    mov         eax,dword ptr [ebp-4]
 009F9863    call        TDataSet.GetFieldValue
 009F9868    lea         eax,[ebp-38]
 009F986B    push        eax
 009F986C    lea         eax,[ebp-48]
 009F986F    xor         edx,edx
 009F9871    mov         cl,1
 009F9873    call        @VarFromInt
 009F9878    lea         edx,[ebp-48]
 009F987B    pop         eax
 009F987C    call        @VarCmpEQ
 009F9881    sete        byte ptr [ebp-5]
 009F9885    mov         eax,dword ptr [esi+60C];TMainFormMarketSklad.rgIsOplacheno_rash:TRadioGroup
 009F988B    mov         eax,dword ptr [eax+218];TRadioGroup.FItemIndex:Integer
 009F9891    test        eax,eax
>009F9893    jle         009F98FF
 009F9895    dec         eax
>009F9896    je          009F989D
 009F9898    dec         eax
>009F9899    je          009F98CC
>009F989B    jmp         009F98FF
 009F989D    lea         ecx,[ebp-58]
 009F98A0    mov         edx,9F999C;'SUMMA_DOLG'
 009F98A5    mov         eax,dword ptr [ebp-4]
 009F98A8    call        TDataSet.GetFieldValue
 009F98AD    lea         eax,[ebp-58]
 009F98B0    push        eax
 009F98B1    lea         eax,[ebp-68]
 009F98B4    xor         edx,edx
 009F98B6    mov         cl,1
 009F98B8    call        @VarFromInt
 009F98BD    lea         edx,[ebp-68]
 009F98C0    pop         eax
 009F98C1    call        @VarCmpEQ
 009F98C6    sete        byte ptr [ebp-6]
>009F98CA    jmp         009F98FF
 009F98CC    lea         ecx,[ebp-78]
 009F98CF    mov         edx,9F999C;'SUMMA_DOLG'
 009F98D4    mov         eax,dword ptr [ebp-4]
 009F98D7    call        TDataSet.GetFieldValue
 009F98DC    lea         eax,[ebp-78]
 009F98DF    push        eax
 009F98E0    lea         eax,[ebp-88]
 009F98E6    xor         edx,edx
 009F98E8    mov         cl,1
 009F98EA    call        @VarFromInt
 009F98EF    lea         edx,[ebp-88]
 009F98F5    pop         eax
 009F98F6    call        @VarCmpGT
 009F98FB    setg        byte ptr [ebp-6]
 009F98FF    mov         eax,dword ptr [esi+4DC];TMainFormMarketSklad.cbVidOper:TDBLookupComboBox
 009F9905    cmp         dword ptr [eax+268],0;TDBLookupComboBox.FText:String
>009F990C    je          009F993E
 009F990E    lea         ecx,[ebp-98]
 009F9914    mov         edx,9F99B0;'ID_OPER_TYPE'
 009F9919    mov         eax,dword ptr [esi+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009F991F    call        TDataSet.GetFieldValue
 009F9924    lea         eax,[ebp-98]
 009F992A    mov         edx,dword ptr [esi+4DC];TMainFormMarketSklad.cbVidOper:TDBLookupComboBox
 009F9930    add         edx,240;TDBLookupComboBox.FKeyValue:Variant
 009F9936    call        @VarCmpEQ
 009F993B    sete        bl
 009F993E    test        byte ptr [ebp-5],bl
>009F9941    je          009F9949
 009F9943    cmp         byte ptr [ebp-6],0
>009F9947    jne         009F994D
 009F9949    xor         eax,eax
>009F994B    jmp         009F994F
 009F994D    mov         al,1
 009F994F    mov         byte ptr [edi],al
 009F9951    xor         eax,eax
 009F9953    pop         edx
 009F9954    pop         ecx
 009F9955    pop         ecx
 009F9956    mov         dword ptr fs:[eax],edx
 009F9959    push        9F997C
 009F995E    lea         eax,[ebp-98]
 009F9964    mov         edx,dword ptr ds:[401160];Variant
 009F996A    mov         ecx,9
 009F996F    call        @FinalizeArray
 009F9974    ret
>009F9975    jmp         @HandleFinally
>009F997A    jmp         009F995E
 009F997C    pop         edi
 009F997D    pop         esi
 009F997E    pop         ebx
 009F997F    mov         esp,ebp
 009F9981    pop         ebp
 009F9982    ret
end;*}

//009F99C0
procedure TMainFormMarketSklad.aServisLoadNomsFromExcelExecute;
begin
{*
 009F99C0    push        ebp
 009F99C1    mov         ebp,esp
 009F99C3    push        ecx
 009F99C4    push        ebx
 009F99C5    push        esi
 009F99C6    mov         ebx,eax
 009F99C8    mov         ecx,ebx
 009F99CA    mov         dl,1
 009F99CC    mov         eax,[009B9490];TFormLoadNomsFromExcel
 009F99D1    call        TCustomForm.Create;TFormLoadNomsFromExcel.Create
 009F99D6    mov         dword ptr [ebp-4],eax
 009F99D9    xor         eax,eax
 009F99DB    push        ebp
 009F99DC    push        9F9A3A
 009F99E1    push        dword ptr fs:[eax]
 009F99E4    mov         dword ptr fs:[eax],esp
 009F99E7    mov         edx,9F9A50;'Начальная загрузка номенклатуры.'
 009F99EC    mov         eax,dword ptr [ebp-4]
 009F99EF    call        TControl.SetText
 009F99F4    mov         eax,dword ptr [ebp-4]
 009F99F7    mov         byte ptr [eax+3C1],1;TFormLoadNomsFromExcel.?f3C1:byte
 009F99FE    mov         eax,dword ptr [ebp-4]
 009F9A01    mov         edx,dword ptr [eax]
 009F9A03    call        dword ptr [edx+0EC];TFormLoadNomsFromExcel.sub_004AA600
 009F9A09    mov         eax,dword ptr [ebp-4]
 009F9A0C    cmp         byte ptr [eax+3C0],0;TFormLoadNomsFromExcel.?f3C0:byte
>009F9A13    je          009F9A24
 009F9A15    mov         eax,dword ptr [ebx+5BC];TMainFormMarketSklad.aSprTovars:TAction
 009F9A1B    mov         si,0FFEF
 009F9A1F    call        @CallDynaInst;TCustomAction.Execute
 009F9A24    xor         eax,eax
 009F9A26    pop         edx
 009F9A27    pop         ecx
 009F9A28    pop         ecx
 009F9A29    mov         dword ptr fs:[eax],edx
 009F9A2C    push        9F9A41
 009F9A31    mov         eax,dword ptr [ebp-4]
 009F9A34    call        TObject.Free
 009F9A39    ret
>009F9A3A    jmp         @HandleFinally
>009F9A3F    jmp         009F9A31
 009F9A41    pop         esi
 009F9A42    pop         ebx
 009F9A43    pop         ecx
 009F9A44    pop         ebp
 009F9A45    ret
*}
end;

//009F9A74
procedure TMainFormMarketSklad.aServisDopLoadNomsFromExcelExecute;
begin
{*
 009F9A74    push        ebp
 009F9A75    mov         ebp,esp
 009F9A77    push        ecx
 009F9A78    push        ebx
 009F9A79    push        esi
 009F9A7A    mov         ebx,eax
 009F9A7C    mov         ecx,ebx
 009F9A7E    mov         dl,1
 009F9A80    mov         eax,[009B9490];TFormLoadNomsFromExcel
 009F9A85    call        TCustomForm.Create;TFormLoadNomsFromExcel.Create
 009F9A8A    mov         dword ptr [ebp-4],eax
 009F9A8D    xor         eax,eax
 009F9A8F    push        ebp
 009F9A90    push        9F9AEE
 009F9A95    push        dword ptr fs:[eax]
 009F9A98    mov         dword ptr fs:[eax],esp
 009F9A9B    mov         edx,9F9B04;'Догрузка дополнительной номенклатуры.'
 009F9AA0    mov         eax,dword ptr [ebp-4]
 009F9AA3    call        TControl.SetText
 009F9AA8    mov         eax,dword ptr [ebp-4]
 009F9AAB    mov         byte ptr [eax+3C1],0;TFormLoadNomsFromExcel.?f3C1:byte
 009F9AB2    mov         eax,dword ptr [ebp-4]
 009F9AB5    mov         edx,dword ptr [eax]
 009F9AB7    call        dword ptr [edx+0EC];TFormLoadNomsFromExcel.sub_004AA600
 009F9ABD    mov         eax,dword ptr [ebp-4]
 009F9AC0    cmp         byte ptr [eax+3C0],0;TFormLoadNomsFromExcel.?f3C0:byte
>009F9AC7    je          009F9AD8
 009F9AC9    mov         eax,dword ptr [ebx+5BC];TMainFormMarketSklad.aSprTovars:TAction
 009F9ACF    mov         si,0FFEF
 009F9AD3    call        @CallDynaInst;TCustomAction.Execute
 009F9AD8    xor         eax,eax
 009F9ADA    pop         edx
 009F9ADB    pop         ecx
 009F9ADC    pop         ecx
 009F9ADD    mov         dword ptr fs:[eax],edx
 009F9AE0    push        9F9AF5
 009F9AE5    mov         eax,dword ptr [ebp-4]
 009F9AE8    call        TObject.Free
 009F9AED    ret
>009F9AEE    jmp         @HandleFinally
>009F9AF3    jmp         009F9AE5
 009F9AF5    pop         esi
 009F9AF6    pop         ebx
 009F9AF7    pop         ecx
 009F9AF8    pop         ebp
 009F9AF9    ret
*}
end;

//009F9B2C
{*procedure TMainFormMarketSklad.GetIdCehStr(?:?);
begin
 009F9B2C    push        ebp
 009F9B2D    mov         ebp,esp
 009F9B2F    push        0
 009F9B31    push        0
 009F9B33    push        ebx
 009F9B34    push        esi
 009F9B35    mov         esi,edx
 009F9B37    mov         ebx,eax
 009F9B39    xor         eax,eax
 009F9B3B    push        ebp
 009F9B3C    push        9F9BD9
 009F9B41    push        dword ptr fs:[eax]
 009F9B44    mov         dword ptr fs:[eax],esp
 009F9B47    lea         eax,[ebp-8]
 009F9B4A    call        @LStrClr
 009F9B4F    lea         eax,[ebp-4]
 009F9B52    mov         edx,9F9BF0;'-111'
 009F9B57    call        @LStrLAsg
 009F9B5C    mov         eax,dword ptr [ebx+334];TMainFormMarketSklad.Q_Sklads:TOraQuery
 009F9B62    call        TDataSet.IsEmpty
 009F9B67    test        al,al
>009F9B69    jne         009F9BB4
 009F9B6B    mov         eax,dword ptr [ebx+32C];TMainFormMarketSklad.cbSklad:TDBLookupComboBox
 009F9B71    add         eax,240;TDBLookupComboBox.FKeyValue:Variant
 009F9B76    call        @VarToInteger
 009F9B7B    lea         edx,[ebp-4]
 009F9B7E    call        IntToStr
 009F9B83    mov         eax,dword ptr [ebp-4]
 009F9B86    call        @LStrLen
 009F9B8B    mov         ebx,0A
 009F9B90    sub         ebx,eax
 009F9B92    test        ebx,ebx
>009F9B94    jle         009F9BA6
 009F9B96    lea         eax,[ebp-8]
 009F9B99    mov         edx,9F9C00;'0'
 009F9B9E    call        @LStrCat
 009F9BA3    dec         ebx
>009F9BA4    jne         009F9B96
 009F9BA6    lea         eax,[ebp-4]
 009F9BA9    mov         ecx,dword ptr [ebp-4]
 009F9BAC    mov         edx,dword ptr [ebp-8]
 009F9BAF    call        @LStrCat3
 009F9BB4    mov         eax,esi
 009F9BB6    mov         edx,dword ptr [ebp-4]
 009F9BB9    call        @LStrAsg
 009F9BBE    xor         eax,eax
 009F9BC0    pop         edx
 009F9BC1    pop         ecx
 009F9BC2    pop         ecx
 009F9BC3    mov         dword ptr fs:[eax],edx
 009F9BC6    push        9F9BE0
 009F9BCB    lea         eax,[ebp-8]
 009F9BCE    mov         edx,2
 009F9BD3    call        @LStrArrayClr
 009F9BD8    ret
>009F9BD9    jmp         @HandleFinally
>009F9BDE    jmp         009F9BCB
 009F9BE0    pop         esi
 009F9BE1    pop         ebx
 009F9BE2    pop         ecx
 009F9BE3    pop         ecx
 009F9BE4    pop         ebp
 009F9BE5    ret
end;*}

//009F9C04
procedure TMainFormMarketSklad.GetSettings;
begin
{*
 009F9C04    push        ebp
 009F9C05    mov         ebp,esp
 009F9C07    xor         ecx,ecx
 009F9C09    push        ecx
 009F9C0A    push        ecx
 009F9C0B    push        ecx
 009F9C0C    push        ecx
 009F9C0D    push        ecx
 009F9C0E    push        ebx
 009F9C0F    push        esi
 009F9C10    push        edi
 009F9C11    mov         ebx,eax
 009F9C13    mov         esi,dword ptr ds:[0AC7318];^gvar_00ACBBF8:TDM
 009F9C19    xor         eax,eax
 009F9C1B    push        ebp
 009F9C1C    push        9F9E93
 009F9C21    push        dword ptr fs:[eax]
 009F9C24    mov         dword ptr fs:[eax],esp
 009F9C27    mov         eax,dword ptr [esi]
 009F9C29    mov         edi,dword ptr [eax+60]
 009F9C2C    mov         eax,edi
 009F9C2E    call        TDataSet.Close
 009F9C33    mov         eax,edi
 009F9C35    call        TOraQuery.GetSQL
 009F9C3A    mov         edx,dword ptr [eax]
 009F9C3C    call        dword ptr [edx+44]
 009F9C3F    mov         eax,edi
 009F9C41    call        TOraQuery.GetSQL
 009F9C46    mov         edx,9F9EAC;'SELECT * FROM SETTINGS WHERE ID=1'
 009F9C4B    mov         ecx,dword ptr [eax]
 009F9C4D    call        dword ptr [ecx+38]
 009F9C50    mov         eax,edi
 009F9C52    call        TDataSet.Open
 009F9C57    mov         eax,dword ptr [esi]
 009F9C59    mov         eax,dword ptr [eax+60]
 009F9C5C    mov         edx,9F9ED8;'IS_OSTATS_CONTROL'
 009F9C61    call        TDataSet.FieldByName
 009F9C66    mov         edx,dword ptr [eax]
 009F9C68    call        dword ptr [edx+58];TField.GetAsInteger
 009F9C6B    mov         dword ptr [ebx+984],eax;TMainFormMarketSklad.?f984:Longint
 009F9C71    mov         eax,dword ptr [esi]
 009F9C73    mov         eax,dword ptr [eax+60]
 009F9C76    mov         edx,9F9EF4;'ARTICLE_LENGTH'
 009F9C7B    call        TDataSet.FieldByName
 009F9C80    mov         edx,dword ptr [eax]
 009F9C82    call        dword ptr [edx+58];TField.GetAsInteger
 009F9C85    mov         dword ptr [ebx+988],eax;TMainFormMarketSklad.?f988:Longint
 009F9C8B    mov         eax,dword ptr [esi]
 009F9C8D    mov         eax,dword ptr [eax+60]
 009F9C90    mov         edx,9F9EF4;'ARTICLE_LENGTH'
 009F9C95    call        TDataSet.FieldByName
 009F9C9A    mov         edx,dword ptr [eax]
 009F9C9C    call        dword ptr [edx+58];TField.GetAsInteger
 009F9C9F    mov         [00AC6660],eax;gvar_00AC6660:Longint
 009F9CA4    mov         eax,dword ptr [esi]
 009F9CA6    mov         eax,dword ptr [eax+60]
 009F9CA9    mov         edx,9F9F0C;'BAR_CODES_PREFIX'
 009F9CAE    call        TDataSet.FieldByName
 009F9CB3    lea         edx,[ebp-4]
 009F9CB6    mov         ecx,dword ptr [eax]
 009F9CB8    call        dword ptr [ecx+60];TField.GetAsString
 009F9CBB    mov         edx,dword ptr [ebp-4]
 009F9CBE    lea         eax,[ebx+9A8];TMainFormMarketSklad.?f9A8:String
 009F9CC4    call        @LStrAsg
 009F9CC9    mov         eax,dword ptr [esi]
 009F9CCB    mov         eax,dword ptr [eax+60]
 009F9CCE    mov         edx,9F9F28;'BAR_CODES_VES_FORMULA'
 009F9CD3    call        TDataSet.FieldByName
 009F9CD8    lea         edx,[ebp-8]
 009F9CDB    mov         ecx,dword ptr [eax]
 009F9CDD    call        dword ptr [ecx+60];TField.GetAsString
 009F9CE0    mov         edx,dword ptr [ebp-8]
 009F9CE3    lea         eax,[ebx+9AC];TMainFormMarketSklad.?f9AC:String
 009F9CE9    call        @LStrAsg
 009F9CEE    mov         eax,dword ptr [esi]
 009F9CF0    mov         eax,dword ptr [eax+60]
 009F9CF3    mov         edx,9F9F48;'ARTICLE_PREFIX'
 009F9CF8    call        TDataSet.FieldByName
 009F9CFD    lea         edx,[ebp-0C]
 009F9D00    mov         ecx,dword ptr [eax]
 009F9D02    call        dword ptr [ecx+60];TField.GetAsString
 009F9D05    mov         edx,dword ptr [ebp-0C]
 009F9D08    lea         eax,[ebx+9B0];TMainFormMarketSklad.?f9B0:String
 009F9D0E    call        @LStrAsg
 009F9D13    mov         eax,dword ptr [esi]
 009F9D15    mov         eax,dword ptr [eax+60]
 009F9D18    mov         edx,9F9F60;'CHEK_WIDTH'
 009F9D1D    call        TDataSet.FieldByName
 009F9D22    mov         edx,dword ptr [eax]
 009F9D24    call        dword ptr [edx+58];TField.GetAsInteger
 009F9D27    mov         dword ptr [ebx+98C],eax;TMainFormMarketSklad.?f98C:Longint
 009F9D2D    mov         eax,dword ptr [esi]
 009F9D2F    mov         eax,dword ptr [eax+60]
 009F9D32    mov         edx,9F9F74;'HIDE_ZERO_TOVARS_IN_KASSAS'
 009F9D37    call        TDataSet.FieldByName
 009F9D3C    mov         edx,dword ptr [eax]
 009F9D3E    call        dword ptr [edx+58];TField.GetAsInteger
 009F9D41    mov         dword ptr [ebx+990],eax;TMainFormMarketSklad.?f990:Longint
 009F9D47    mov         eax,dword ptr [esi]
 009F9D49    mov         eax,dword ptr [eax+60]
 009F9D4C    mov         edx,9F9F98;'CNT_GRAMM_OVER'
 009F9D51    call        TDataSet.FieldByName
 009F9D56    mov         edx,dword ptr [eax]
 009F9D58    call        dword ptr [edx+58];TField.GetAsInteger
 009F9D5B    mov         dword ptr [ebx+994],eax;TMainFormMarketSklad.?f994:Longint
 009F9D61    mov         eax,dword ptr [esi]
 009F9D63    mov         eax,dword ptr [eax+60]
 009F9D66    mov         edx,9F9FB0;'STR_TO_CHECK1'
 009F9D6B    call        TDataSet.FieldByName
 009F9D70    lea         edx,[ebp-10]
 009F9D73    mov         ecx,dword ptr [eax]
 009F9D75    call        dword ptr [ecx+60];TField.GetAsString
 009F9D78    mov         edx,dword ptr [ebp-10]
 009F9D7B    lea         eax,[ebx+9B8];TMainFormMarketSklad.?f9B8:String
 009F9D81    call        @LStrAsg
 009F9D86    mov         eax,dword ptr [esi]
 009F9D88    mov         eax,dword ptr [eax+60]
 009F9D8B    mov         edx,9F9FC8;'STR_TO_CHECK2'
 009F9D90    call        TDataSet.FieldByName
 009F9D95    lea         edx,[ebp-14]
 009F9D98    mov         ecx,dword ptr [eax]
 009F9D9A    call        dword ptr [ecx+60];TField.GetAsString
 009F9D9D    mov         edx,dword ptr [ebp-14]
 009F9DA0    lea         eax,[ebx+9BC];TMainFormMarketSklad.?f9BC:String
 009F9DA6    call        @LStrAsg
 009F9DAB    mov         eax,dword ptr [esi]
 009F9DAD    mov         eax,dword ptr [eax+60]
 009F9DB0    mov         edx,9F9FE0;'IS_AUTO_PRIHOD_ON_SALES'
 009F9DB5    call        TDataSet.FieldByName
 009F9DBA    mov         edx,dword ptr [eax]
 009F9DBC    call        dword ptr [edx+58];TField.GetAsInteger
 009F9DBF    dec         eax
 009F9DC0    sete        al
 009F9DC3    mov         byte ptr [ebx+9C8],al;TMainFormMarketSklad.?f9C8:byte
 009F9DC9    mov         eax,dword ptr [esi]
 009F9DCB    mov         eax,dword ptr [eax+60]
 009F9DCE    mov         edx,9FA000;'IS_AUTOSAVE_DMP_ON_KASS'
 009F9DD3    call        TDataSet.FieldByName
 009F9DD8    mov         edx,dword ptr [eax]
 009F9DDA    call        dword ptr [edx+58];TField.GetAsInteger
 009F9DDD    dec         eax
 009F9DDE    sete        al
 009F9DE1    mov         byte ptr [ebx+9C9],al;TMainFormMarketSklad.?f9C9:byte
 009F9DE7    mov         eax,dword ptr [esi]
 009F9DE9    mov         eax,dword ptr [eax+60]
 009F9DEC    mov         edx,9FA020;'ID_MAIN_VALUTA'
 009F9DF1    call        TDataSet.FieldByName
 009F9DF6    mov         edx,dword ptr [eax]
 009F9DF8    call        dword ptr [edx+58];TField.GetAsInteger
 009F9DFB    mov         dword ptr [ebx+998],eax;TMainFormMarketSklad.?f998:Longint
 009F9E01    mov         eax,dword ptr [esi]
 009F9E03    mov         eax,dword ptr [eax+60]
 009F9E06    mov         edx,9FA038;'IS_SELECT_VALUT'
 009F9E0B    call        TDataSet.FieldByName
 009F9E10    mov         edx,dword ptr [eax]
 009F9E12    call        dword ptr [edx+58];TField.GetAsInteger
 009F9E15    dec         eax
 009F9E16    sete        al
 009F9E19    mov         byte ptr [ebx+9CA],al;TMainFormMarketSklad.?f9CA:byte
 009F9E1F    mov         eax,dword ptr [esi]
 009F9E21    mov         eax,dword ptr [eax+60]
 009F9E24    mov         edx,9FA050;'SKIN_IDX'
 009F9E29    call        TDataSet.FieldByName
 009F9E2E    mov         edx,dword ptr [eax]
 009F9E30    call        dword ptr [edx+58];TField.GetAsInteger
 009F9E33    mov         dword ptr [ebx+99C],eax;TMainFormMarketSklad.?f99C:Longint
 009F9E39    mov         eax,dword ptr [esi]
 009F9E3B    mov         eax,dword ptr [eax+60]
 009F9E3E    mov         edx,9FA064;'SKIN_IDX_KASS'
 009F9E43    call        TDataSet.FieldByName
 009F9E48    mov         edx,dword ptr [eax]
 009F9E4A    call        dword ptr [edx+58];TField.GetAsInteger
 009F9E4D    mov         dword ptr [ebx+9A0],eax;TMainFormMarketSklad.?f9A0:Longint
 009F9E53    mov         eax,dword ptr [esi]
 009F9E55    mov         eax,dword ptr [eax+60]
 009F9E58    mov         edx,9FA07C;'ID_TAX_TYPE'
 009F9E5D    call        TDataSet.FieldByName
 009F9E62    mov         edx,dword ptr [eax]
 009F9E64    call        dword ptr [edx+58];TField.GetAsInteger
 009F9E67    mov         dword ptr [ebx+9A4],eax;TMainFormMarketSklad.?f9A4:Longint
 009F9E6D    mov         eax,dword ptr [ebx+984];TMainFormMarketSklad.?f984:Longint
 009F9E73    mov         [00AC6650],eax;gvar_00AC6650:Longint
 009F9E78    xor         eax,eax
 009F9E7A    pop         edx
 009F9E7B    pop         ecx
 009F9E7C    pop         ecx
 009F9E7D    mov         dword ptr fs:[eax],edx
 009F9E80    push        9F9E9A
 009F9E85    lea         eax,[ebp-14]
 009F9E88    mov         edx,5
 009F9E8D    call        @LStrArrayClr
 009F9E92    ret
>009F9E93    jmp         @HandleFinally
>009F9E98    jmp         009F9E85
 009F9E9A    pop         edi
 009F9E9B    pop         esi
 009F9E9C    pop         ebx
 009F9E9D    mov         esp,ebp
 009F9E9F    pop         ebp
 009F9EA0    ret
*}
end;

//009FA088
procedure TMainFormMarketSklad.aSettingsExecute;
begin
{*
 009FA088    push        ebp
 009FA089    mov         ebp,esp
 009FA08B    xor         ecx,ecx
 009FA08D    push        ecx
 009FA08E    push        ecx
 009FA08F    push        ecx
 009FA090    push        ecx
 009FA091    push        ecx
 009FA092    push        ecx
 009FA093    push        ecx
 009FA094    push        ebx
 009FA095    push        esi
 009FA096    mov         esi,eax
 009FA098    xor         eax,eax
 009FA09A    push        ebp
 009FA09B    push        9FA5F9
 009FA0A0    push        dword ptr fs:[eax]
 009FA0A3    mov         dword ptr fs:[eax],esp
 009FA0A6    cmp         dword ptr ds:[0AC661C],0;gvar_00AC661C:Longint
>009FA0AD    jne         009FA5D1
 009FA0B3    mov         ecx,esi
 009FA0B5    mov         dl,1
 009FA0B7    mov         eax,[009BDAFC];TFormSettings
 009FA0BC    call        TCustomForm.Create;TFormSettings.Create
 009FA0C1    mov         dword ptr [ebp-4],eax
 009FA0C4    xor         eax,eax
 009FA0C6    push        ebp
 009FA0C7    push        9FA5CA
 009FA0CC    push        dword ptr fs:[eax]
 009FA0CF    mov         dword ptr fs:[eax],esp
 009FA0D2    mov         eax,dword ptr [ebp-4]
 009FA0D5    mov         edx,dword ptr [eax]
 009FA0D7    call        dword ptr [edx+0EC];TFormSettings.sub_004AA600
 009FA0DD    mov         eax,dword ptr [ebp-4]
 009FA0E0    cmp         dword ptr [eax+24C],1;TFormSettings.FModalResult:TModalResult
>009FA0E7    jne         009FA5B4
 009FA0ED    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009FA0F2    mov         eax,dword ptr [eax]
 009FA0F4    mov         ebx,dword ptr [eax+60]
 009FA0F7    mov         eax,ebx
 009FA0F9    call        TDataSet.Close
 009FA0FE    mov         eax,ebx
 009FA100    call        TOraQuery.GetSQL
 009FA105    mov         edx,dword ptr [eax]
 009FA107    call        dword ptr [edx+44]
 009FA10A    mov         eax,ebx
 009FA10C    call        TOraQuery.GetSQL
 009FA111    mov         edx,9FA610;'UPDATE SETTINGS SET IS_OSTATS_CONTROL=:IS_OSTATS_CONTROL,'
 009FA116    mov         ecx,dword ptr [eax]
 009FA118    call        dword ptr [ecx+38]
 009FA11B    mov         eax,ebx
 009FA11D    call        TOraQuery.GetSQL
 009FA122    mov         edx,9FA654;'BAR_CODES_PREFIX=:BAR_CODES_PREFIX,'
 009FA127    mov         ecx,dword ptr [eax]
 009FA129    call        dword ptr [ecx+38]
 009FA12C    mov         eax,ebx
 009FA12E    call        TOraQuery.GetSQL
 009FA133    mov         edx,9FA680;'BAR_CODES_VES_FORMULA=:BAR_CODES_VES_FORMULA,'
 009FA138    mov         ecx,dword ptr [eax]
 009FA13A    call        dword ptr [ecx+38]
 009FA13D    mov         eax,ebx
 009FA13F    call        TOraQuery.GetSQL
 009FA144    mov         edx,9FA6B8;'ARTICLE_PREFIX=:ARTICLE_PREFIX,'
 009FA149    mov         ecx,dword ptr [eax]
 009FA14B    call        dword ptr [ecx+38]
 009FA14E    mov         eax,ebx
 009FA150    call        TOraQuery.GetSQL
 009FA155    mov         edx,9FA6E0;'ARTICLE_LENGTH=:ARTICLE_LENGTH,'
 009FA15A    mov         ecx,dword ptr [eax]
 009FA15C    call        dword ptr [ecx+38]
 009FA15F    mov         eax,ebx
 009FA161    call        TOraQuery.GetSQL
 009FA166    mov         edx,9FA708;'CHEK_WIDTH=:CHEK_WIDTH,'
 009FA16B    mov         ecx,dword ptr [eax]
 009FA16D    call        dword ptr [ecx+38]
 009FA170    mov         eax,ebx
 009FA172    call        TOraQuery.GetSQL
 009FA177    mov         edx,9FA728;'HIDE_ZERO_TOVARS_IN_KASSAS=:HIDE_ZERO_TOVARS_IN_KASSAS,'
 009FA17C    mov         ecx,dword ptr [eax]
 009FA17E    call        dword ptr [ecx+38]
 009FA181    mov         eax,ebx
 009FA183    call        TOraQuery.GetSQL
 009FA188    mov         edx,9FA768;'CNT_GRAMM_OVER=:CNT_GRAMM_OVER,STR_TO_CHECK1=:STR_TO_CHECK1,'
 009FA18D    mov         ecx,dword ptr [eax]
 009FA18F    call        dword ptr [ecx+38]
 009FA192    mov         eax,ebx
 009FA194    call        TOraQuery.GetSQL
 009FA199    mov         edx,9FA7B0;'STR_TO_CHECK2=:STR_TO_CHECK2, IS_AUTO_PRIHOD_ON_SALES=:IS_AUTO_PRIHOD_ON_SAL...
 009FA19E    mov         ecx,dword ptr [eax]
 009FA1A0    call        dword ptr [ecx+38]
 009FA1A3    mov         eax,ebx
 009FA1A5    call        TOraQuery.GetSQL
 009FA1AA    mov         edx,9FA808;'IS_AUTOSAVE_DMP_ON_KASS=:IS_AUTOSAVE_DMP_ON_KASS,ID_MAIN_VALUTA=:ID_MAIN_VAL...
 009FA1AF    mov         ecx,dword ptr [eax]
 009FA1B1    call        dword ptr [ecx+38]
 009FA1B4    mov         eax,ebx
 009FA1B6    call        TOraQuery.GetSQL
 009FA1BB    mov         edx,9FA864;'IS_SELECT_VALUT=:IS_SELECT_VALUT, SKIN_IDX=:SKIN_IDX, SKIN_IDX_KASS=:SKIN_ID...
 009FA1C0    mov         ecx,dword ptr [eax]
 009FA1C2    call        dword ptr [ecx+38]
 009FA1C5    mov         eax,ebx
 009FA1C7    call        TOraQuery.GetSQL
 009FA1CC    mov         edx,9FA8C0;'ID_TAX_TYPE=:ID_TAX_TYPE'
 009FA1D1    mov         ecx,dword ptr [eax]
 009FA1D3    call        dword ptr [ecx+38]
 009FA1D6    mov         eax,ebx
 009FA1D8    call        TOraQuery.GetSQL
 009FA1DD    mov         edx,9FA8E4;'WHERE ID=1'
 009FA1E2    mov         ecx,dword ptr [eax]
 009FA1E4    call        dword ptr [ecx+38]
 009FA1E7    lea         edx,[ebp-8]
 009FA1EA    mov         eax,dword ptr [ebp-4]
 009FA1ED    mov         eax,dword ptr [eax+334];TFormSettings.EditBarCodesPrefix:TEdit
 009FA1F3    call        TControl.GetText
 009FA1F8    mov         eax,dword ptr [ebp-8]
 009FA1FB    call        StrToInt
 009FA200    push        eax
 009FA201    mov         edx,9FA8F8;'BAR_CODES_PREFIX'
 009FA206    mov         eax,ebx
 009FA208    call        006210D4
 009FA20D    pop         edx
 009FA20E    mov         ecx,dword ptr [eax]
 009FA210    call        dword ptr [ecx+68]
 009FA213    lea         edx,[ebp-0C]
 009FA216    mov         eax,dword ptr [ebp-4]
 009FA219    mov         eax,dword ptr [eax+30C];TFormSettings.EditBarCodesVesFormula:TEdit
 009FA21F    call        TControl.GetText
 009FA224    mov         eax,dword ptr [ebp-0C]
 009FA227    push        eax
 009FA228    mov         edx,9FA914;'BAR_CODES_VES_FORMULA'
 009FA22D    mov         eax,ebx
 009FA22F    call        006210D4
 009FA234    pop         edx
 009FA235    mov         ecx,dword ptr [eax]
 009FA237    call        dword ptr [ecx+48]
 009FA23A    mov         edx,9FA934;'ARTICLE_PREFIX'
 009FA23F    mov         eax,ebx
 009FA241    call        006210D4
 009FA246    push        eax
 009FA247    mov         eax,dword ptr [ebp-4]
 009FA24A    mov         eax,dword ptr [eax+318];TFormSettings.ceArticlePrefix:TCurrencyEdit
 009FA250    call        TCurrencyEdit.GetValue
 009FA255    call        @TRUNC
 009FA25A    mov         edx,eax
 009FA25C    pop         eax
 009FA25D    mov         ecx,dword ptr [eax]
 009FA25F    call        dword ptr [ecx+68]
 009FA262    mov         eax,dword ptr [ebp-4]
 009FA265    mov         eax,dword ptr [eax+31C];TFormSettings.rseArticleLength:TRxSpinEdit
 009FA26B    mov         edx,dword ptr [eax]
 009FA26D    call        dword ptr [edx+100];TRxSpinEdit.GetValue
 009FA273    call        @TRUNC
 009FA278    push        eax
 009FA279    mov         edx,9FA94C;'ARTICLE_LENGTH'
 009FA27E    mov         eax,ebx
 009FA280    call        006210D4
 009FA285    pop         edx
 009FA286    mov         ecx,dword ptr [eax]
 009FA288    call        dword ptr [ecx+68]
 009FA28B    mov         eax,dword ptr [ebp-4]
 009FA28E    mov         eax,dword ptr [eax+2FC];TFormSettings.chbIsOststsControl:TCheckBox
 009FA294    mov         edx,dword ptr [eax]
 009FA296    call        dword ptr [edx+0C8];TCustomCheckBox.GetChecked
 009FA29C    test        al,al
>009FA29E    je          009FA2B8
 009FA2A0    mov         edx,9FA964;'IS_OSTATS_CONTROL'
 009FA2A5    mov         eax,ebx
 009FA2A7    call        006210D4
 009FA2AC    mov         edx,1
 009FA2B1    mov         ecx,dword ptr [eax]
 009FA2B3    call        dword ptr [ecx+68]
>009FA2B6    jmp         009FA2CB
 009FA2B8    mov         edx,9FA964;'IS_OSTATS_CONTROL'
 009FA2BD    mov         eax,ebx
 009FA2BF    call        006210D4
 009FA2C4    xor         edx,edx
 009FA2C6    mov         ecx,dword ptr [eax]
 009FA2C8    call        dword ptr [ecx+68]
 009FA2CB    mov         eax,dword ptr [ebp-4]
 009FA2CE    mov         eax,dword ptr [eax+340];TFormSettings.cbChekWidth:TComboBox
 009FA2D4    mov         edx,dword ptr [eax]
 009FA2D6    call        dword ptr [edx+0CC];TCustomCombo.GetItemIndex
 009FA2DC    sub         eax,1
>009FA2DF    jb          009FA2E8
>009FA2E1    je          009FA300
 009FA2E3    dec         eax
>009FA2E4    je          009FA318
>009FA2E6    jmp         009FA32E
 009FA2E8    mov         edx,9FA980;'CHEK_WIDTH'
 009FA2ED    mov         eax,ebx
 009FA2EF    call        006210D4
 009FA2F4    mov         edx,39
 009FA2F9    mov         ecx,dword ptr [eax]
 009FA2FB    call        dword ptr [ecx+68]
>009FA2FE    jmp         009FA32E
 009FA300    mov         edx,9FA980;'CHEK_WIDTH'
 009FA305    mov         eax,ebx
 009FA307    call        006210D4
 009FA30C    mov         edx,50
 009FA311    mov         ecx,dword ptr [eax]
 009FA313    call        dword ptr [ecx+68]
>009FA316    jmp         009FA32E
 009FA318    mov         edx,9FA980;'CHEK_WIDTH'
 009FA31D    mov         eax,ebx
 009FA31F    call        006210D4
 009FA324    mov         edx,0D2
 009FA329    mov         ecx,dword ptr [eax]
 009FA32B    call        dword ptr [ecx+68]
 009FA32E    mov         eax,dword ptr [ebp-4]
 009FA331    mov         eax,dword ptr [eax+344];TFormSettings.chbHideZeroTovarsInKassas:TCheckBox
 009FA337    mov         edx,dword ptr [eax]
 009FA339    call        dword ptr [edx+0C8];TCustomCheckBox.GetChecked
 009FA33F    test        al,al
>009FA341    je          009FA35B
 009FA343    mov         edx,9FA994;'HIDE_ZERO_TOVARS_IN_KASSAS'
 009FA348    mov         eax,ebx
 009FA34A    call        006210D4
 009FA34F    mov         edx,1
 009FA354    mov         ecx,dword ptr [eax]
 009FA356    call        dword ptr [ecx+68]
>009FA359    jmp         009FA36E
 009FA35B    mov         edx,9FA994;'HIDE_ZERO_TOVARS_IN_KASSAS'
 009FA360    mov         eax,ebx
 009FA362    call        006210D4
 009FA367    xor         edx,edx
 009FA369    mov         ecx,dword ptr [eax]
 009FA36B    call        dword ptr [ecx+68]
 009FA36E    mov         eax,dword ptr [ebp-4]
 009FA371    mov         eax,dword ptr [eax+34C];TFormSettings.rseCntGrammOver:TRxSpinEdit
 009FA377    mov         edx,dword ptr [eax]
 009FA379    call        dword ptr [edx+100];TRxSpinEdit.GetValue
 009FA37F    call        @TRUNC
 009FA384    push        eax
 009FA385    mov         edx,9FA9B8;'CNT_GRAMM_OVER'
 009FA38A    mov         eax,ebx
 009FA38C    call        006210D4
 009FA391    pop         edx
 009FA392    mov         ecx,dword ptr [eax]
 009FA394    call        dword ptr [ecx+68]
 009FA397    lea         edx,[ebp-10]
 009FA39A    mov         eax,dword ptr [ebp-4]
 009FA39D    mov         eax,dword ptr [eax+354];TFormSettings.EditStrToChek1:TEdit
 009FA3A3    call        TControl.GetText
 009FA3A8    mov         eax,dword ptr [ebp-10]
 009FA3AB    push        eax
 009FA3AC    mov         edx,9FA9D0;'STR_TO_CHECK1'
 009FA3B1    mov         eax,ebx
 009FA3B3    call        006210D4
 009FA3B8    pop         edx
 009FA3B9    mov         ecx,dword ptr [eax]
 009FA3BB    call        dword ptr [ecx+48]
 009FA3BE    lea         edx,[ebp-14]
 009FA3C1    mov         eax,dword ptr [ebp-4]
 009FA3C4    mov         eax,dword ptr [eax+35C];TFormSettings.EditStrToChek2:TEdit
 009FA3CA    call        TControl.GetText
 009FA3CF    mov         eax,dword ptr [ebp-14]
 009FA3D2    push        eax
 009FA3D3    mov         edx,9FA9E8;'STR_TO_CHECK2'
 009FA3D8    mov         eax,ebx
 009FA3DA    call        006210D4
 009FA3DF    pop         edx
 009FA3E0    mov         ecx,dword ptr [eax]
 009FA3E2    call        dword ptr [ecx+48]
 009FA3E5    mov         eax,dword ptr [ebp-4]
 009FA3E8    mov         eax,dword ptr [eax+360];TFormSettings.chbIsAutoprihodOnSale:TCheckBox
 009FA3EE    mov         edx,dword ptr [eax]
 009FA3F0    call        dword ptr [edx+0C8];TCustomCheckBox.GetChecked
 009FA3F6    test        al,al
>009FA3F8    je          009FA412
 009FA3FA    mov         edx,9FAA00;'IS_AUTO_PRIHOD_ON_SALES'
 009FA3FF    mov         eax,ebx
 009FA401    call        006210D4
 009FA406    mov         edx,1
 009FA40B    mov         ecx,dword ptr [eax]
 009FA40D    call        dword ptr [ecx+68]
>009FA410    jmp         009FA425
 009FA412    mov         edx,9FAA00;'IS_AUTO_PRIHOD_ON_SALES'
 009FA417    mov         eax,ebx
 009FA419    call        006210D4
 009FA41E    xor         edx,edx
 009FA420    mov         ecx,dword ptr [eax]
 009FA422    call        dword ptr [ecx+68]
 009FA425    mov         eax,dword ptr [ebp-4]
 009FA428    mov         eax,dword ptr [eax+364];TFormSettings.chbIsAutoSaveDmpOnKass:TCheckBox
 009FA42E    mov         edx,dword ptr [eax]
 009FA430    call        dword ptr [edx+0C8];TCustomCheckBox.GetChecked
 009FA436    test        al,al
>009FA438    je          009FA452
 009FA43A    mov         edx,9FAA20;'IS_AUTOSAVE_DMP_ON_KASS'
 009FA43F    mov         eax,ebx
 009FA441    call        006210D4
 009FA446    mov         edx,1
 009FA44B    mov         ecx,dword ptr [eax]
 009FA44D    call        dword ptr [ecx+68]
>009FA450    jmp         009FA465
 009FA452    mov         edx,9FAA20;'IS_AUTOSAVE_DMP_ON_KASS'
 009FA457    mov         eax,ebx
 009FA459    call        006210D4
 009FA45E    xor         edx,edx
 009FA460    mov         ecx,dword ptr [eax]
 009FA462    call        dword ptr [ecx+68]
 009FA465    mov         edx,9FAA40;'ID_MAIN_VALUTA'
 009FA46A    mov         eax,ebx
 009FA46C    call        006210D4
 009FA471    push        eax
 009FA472    mov         eax,dword ptr [ebp-4]
 009FA475    mov         eax,dword ptr [eax+36C];TFormSettings.cbMainValuta:TDBLookupComboBox
 009FA47B    add         eax,240;TDBLookupComboBox.FKeyValue:Variant
 009FA480    call        @VarToInteger
 009FA485    mov         edx,eax
 009FA487    pop         eax
 009FA488    mov         ecx,dword ptr [eax]
 009FA48A    call        dword ptr [ecx+68]
 009FA48D    mov         eax,dword ptr [ebp-4]
 009FA490    mov         eax,dword ptr [eax+378];TFormSettings.chbIsSelectValutOnSale:TCheckBox
 009FA496    mov         edx,dword ptr [eax]
 009FA498    call        dword ptr [edx+0C8];TCustomCheckBox.GetChecked
 009FA49E    test        al,al
>009FA4A0    je          009FA4BA
 009FA4A2    mov         edx,9FAA58;'IS_SELECT_VALUT'
 009FA4A7    mov         eax,ebx
 009FA4A9    call        006210D4
 009FA4AE    mov         edx,1
 009FA4B3    mov         ecx,dword ptr [eax]
 009FA4B5    call        dword ptr [ecx+68]
>009FA4B8    jmp         009FA4CD
 009FA4BA    mov         edx,9FAA58;'IS_SELECT_VALUT'
 009FA4BF    mov         eax,ebx
 009FA4C1    call        006210D4
 009FA4C6    xor         edx,edx
 009FA4C8    mov         ecx,dword ptr [eax]
 009FA4CA    call        dword ptr [ecx+68]
 009FA4CD    mov         eax,dword ptr [ebp-4]
 009FA4D0    mov         eax,dword ptr [eax+380];TFormSettings.cbSkin:TComboBox
 009FA4D6    mov         edx,dword ptr [eax]
 009FA4D8    call        dword ptr [edx+0CC];TCustomCombo.GetItemIndex
 009FA4DE    push        eax
 009FA4DF    mov         edx,9FAA70;'SKIN_IDX'
 009FA4E4    mov         eax,ebx
 009FA4E6    call        006210D4
 009FA4EB    pop         edx
 009FA4EC    mov         ecx,dword ptr [eax]
 009FA4EE    call        dword ptr [ecx+68]
 009FA4F1    mov         eax,dword ptr [ebp-4]
 009FA4F4    mov         eax,dword ptr [eax+388];TFormSettings.cbSkinKass:TComboBox
 009FA4FA    mov         edx,dword ptr [eax]
 009FA4FC    call        dword ptr [edx+0CC];TCustomCombo.GetItemIndex
 009FA502    push        eax
 009FA503    mov         edx,9FAA84;'SKIN_IDX_KASS'
 009FA508    mov         eax,ebx
 009FA50A    call        006210D4
 009FA50F    pop         edx
 009FA510    mov         ecx,dword ptr [eax]
 009FA512    call        dword ptr [ecx+68]
 009FA515    mov         edx,9FAA9C;'ID_TAX_TYPE'
 009FA51A    mov         eax,ebx
 009FA51C    call        006210D4
 009FA521    push        eax
 009FA522    mov         eax,dword ptr [ebp-4]
 009FA525    mov         eax,dword ptr [eax+394];TFormSettings.cbTaxType:TDBLookupComboBox
 009FA52B    add         eax,240;TDBLookupComboBox.FKeyValue:Variant
 009FA530    call        @VarToInteger
 009FA535    mov         edx,eax
 009FA537    pop         eax
 009FA538    mov         ecx,dword ptr [eax]
 009FA53A    call        dword ptr [ecx+68]
 009FA53D    mov         eax,ebx
 009FA53F    call        00620CE4
 009FA544    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009FA549    mov         eax,dword ptr [eax]
 009FA54B    mov         eax,dword ptr [eax+58]
 009FA54E    mov         edx,dword ptr [eax]
 009FA550    call        dword ptr [edx+160]
 009FA556    lea         edx,[ebp-1C]
 009FA559    mov         eax,[00ACEBDC];gvar_00ACEBDC:TMainFormMarketSklad
 009FA55E    call        TMainFormMarketSklad.GetIdCehStr
 009FA563    push        dword ptr [ebp-1C]
 009FA566    push        9FAAB0;'-'
 009FA56B    push        dword ptr ds:[0AC6648];^'JJJ'
 009FA571    push        9FAABC;'-MARKET_SKLAD'
 009FA576    lea         eax,[ebp-18]
 009FA579    mov         edx,4
 009FA57E    call        @LStrCatN
 009FA583    mov         ecx,dword ptr [ebp-18]
 009FA586    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009FA58B    mov         eax,dword ptr [eax]
 009FA58D    mov         eax,dword ptr [eax+74]
 009FA590    mov         edx,9FAAD4;'MARKET_SETTINGS'
 009FA595    call        006AAFE8
 009FA59A    mov         eax,esi
 009FA59C    call        TMainFormMarketSklad.GetSettings
 009FA5A1    mov         eax,dword ptr [ebp-4]
 009FA5A4    cmp         byte ptr [eax+3A4],0;TFormSettings.?f3A4:byte
>009FA5AB    je          009FA5B4
 009FA5AD    mov         eax,esi
 009FA5AF    call        TMainFormMarketSklad.SetSkin
 009FA5B4    xor         eax,eax
 009FA5B6    pop         edx
 009FA5B7    pop         ecx
 009FA5B8    pop         ecx
 009FA5B9    mov         dword ptr fs:[eax],edx
 009FA5BC    push        9FA5D1
 009FA5C1    mov         eax,dword ptr [ebp-4]
 009FA5C4    call        TObject.Free
 009FA5C9    ret
>009FA5CA    jmp         @HandleFinally
>009FA5CF    jmp         009FA5C1
 009FA5D1    xor         eax,eax
 009FA5D3    pop         edx
 009FA5D4    pop         ecx
 009FA5D5    pop         ecx
 009FA5D6    mov         dword ptr fs:[eax],edx
 009FA5D9    push        9FA600
 009FA5DE    lea         eax,[ebp-1C]
 009FA5E1    mov         edx,2
 009FA5E6    call        @LStrArrayClr
 009FA5EB    lea         eax,[ebp-14]
 009FA5EE    mov         edx,4
 009FA5F3    call        @LStrArrayClr
 009FA5F8    ret
>009FA5F9    jmp         @HandleFinally
>009FA5FE    jmp         009FA5DE
 009FA600    pop         esi
 009FA601    pop         ebx
 009FA602    mov         esp,ebp
 009FA604    pop         ebp
 009FA605    ret
*}
end;

//009FAAE4
procedure TMainFormMarketSklad.aViewPrihNaklExecute;
begin
{*
 009FAAE4    ret
*}
end;

//009FAAE8
{*procedure TMainFormMarketSklad.aViewRashNaklUpdate(?:?);
begin
 009FAAE8    push        ebx
 009FAAE9    push        esi
 009FAAEA    mov         esi,edx
 009FAAEC    mov         ebx,eax
 009FAAEE    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009FAAF4    call        TDataSet.IsEmpty
 009FAAF9    xor         al,1
 009FAAFB    push        eax
 009FAAFC    mov         eax,esi
 009FAAFE    mov         edx,dword ptr ds:[497794];TCustomAction
 009FAB04    call        @AsClass
 009FAB09    pop         edx
 009FAB0A    call        TCustomAction.SetEnabled
 009FAB0F    pop         esi
 009FAB10    pop         ebx
 009FAB11    ret
end;*}

//009FAB14
procedure TMainFormMarketSklad.aShowOstatsExecute;
begin
{*
 009FAB14    push        ebp
 009FAB15    mov         ebp,esp
 009FAB17    xor         ecx,ecx
 009FAB19    push        ecx
 009FAB1A    push        ecx
 009FAB1B    push        ecx
 009FAB1C    push        ecx
 009FAB1D    push        ebx
 009FAB1E    mov         ebx,eax
 009FAB20    xor         eax,eax
 009FAB22    push        ebp
 009FAB23    push        9FAC60
 009FAB28    push        dword ptr fs:[eax]
 009FAB2B    mov         dword ptr fs:[eax],esp
 009FAB2E    mov         ecx,ebx
 009FAB30    mov         dl,1
 009FAB32    mov         eax,[009BE6C0];TFormOstatsDetail
 009FAB37    call        TCustomForm.Create;TFormOstatsDetail.Create
 009FAB3C    mov         dword ptr [ebp-4],eax
 009FAB3F    xor         eax,eax
 009FAB41    push        ebp
 009FAB42    push        9FAC3E
 009FAB47    push        dword ptr fs:[eax]
 009FAB4A    mov         dword ptr fs:[eax],esp
 009FAB4D    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009FAB53    mov         edx,9FAC74;'ARTICLE'
 009FAB58    call        TDataSet.FieldByName
 009FAB5D    lea         edx,[ebp-0C]
 009FAB60    mov         ecx,dword ptr [eax]
 009FAB62    call        dword ptr [ecx+60];TField.GetAsString
 009FAB65    push        dword ptr [ebp-0C]
 009FAB68    push        9FAC84;' '
 009FAB6D    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009FAB73    mov         edx,9FAC90;'NAME_NOM'
 009FAB78    call        TDataSet.FieldByName
 009FAB7D    lea         edx,[ebp-10]
 009FAB80    mov         ecx,dword ptr [eax]
 009FAB82    call        dword ptr [ecx+60];TField.GetAsString
 009FAB85    push        dword ptr [ebp-10]
 009FAB88    lea         eax,[ebp-8]
 009FAB8B    mov         edx,3
 009FAB90    call        @LStrCatN
 009FAB95    mov         edx,dword ptr [ebp-8]
 009FAB98    mov         eax,dword ptr [ebp-4]
 009FAB9B    mov         eax,dword ptr [eax+314];TFormOstatsDetail.LabelTovar:TLabel
 009FABA1    call        TControl.SetText
 009FABA6    mov         eax,dword ptr [ebp-4]
 009FABA9    mov         eax,dword ptr [eax+318];TFormOstatsDetail.Q_OSTAT_DET:TOraQuery
 009FABAF    call        TDataSet.Close
 009FABB4    mov         eax,dword ptr [ebp-4]
 009FABB7    mov         eax,dword ptr [eax+318];TFormOstatsDetail.Q_OSTAT_DET:TOraQuery
 009FABBD    mov         edx,9FACA4;'ID_SKLAD'
 009FABC2    call        006210D4
 009FABC7    push        eax
 009FABC8    mov         eax,dword ptr [ebx+32C];TMainFormMarketSklad.cbSklad:TDBLookupComboBox
 009FABCE    add         eax,240;TDBLookupComboBox.FKeyValue:Variant
 009FABD3    call        @VarToInteger
 009FABD8    mov         edx,eax
 009FABDA    pop         eax
 009FABDB    mov         ecx,dword ptr [eax]
 009FABDD    call        dword ptr [ecx+68]
 009FABE0    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009FABE6    mov         edx,9FACB8;'ID_NOM'
 009FABEB    call        TDataSet.FieldByName
 009FABF0    mov         edx,dword ptr [eax]
 009FABF2    call        dword ptr [edx+58];TField.GetAsInteger
 009FABF5    push        eax
 009FABF6    mov         eax,dword ptr [ebp-4]
 009FABF9    mov         eax,dword ptr [eax+318];TFormOstatsDetail.Q_OSTAT_DET:TOraQuery
 009FABFF    mov         edx,9FACB8;'ID_NOM'
 009FAC04    call        006210D4
 009FAC09    pop         edx
 009FAC0A    mov         ecx,dword ptr [eax]
 009FAC0C    call        dword ptr [ecx+68]
 009FAC0F    mov         eax,dword ptr [ebp-4]
 009FAC12    mov         eax,dword ptr [eax+318];TFormOstatsDetail.Q_OSTAT_DET:TOraQuery
 009FAC18    call        TDataSet.Open
 009FAC1D    mov         eax,dword ptr [ebp-4]
 009FAC20    mov         edx,dword ptr [eax]
 009FAC22    call        dword ptr [edx+0EC];TFormOstatsDetail.sub_004AA600
 009FAC28    xor         eax,eax
 009FAC2A    pop         edx
 009FAC2B    pop         ecx
 009FAC2C    pop         ecx
 009FAC2D    mov         dword ptr fs:[eax],edx
 009FAC30    push        9FAC45
 009FAC35    mov         eax,dword ptr [ebp-4]
 009FAC38    call        TObject.Free
 009FAC3D    ret
>009FAC3E    jmp         @HandleFinally
>009FAC43    jmp         009FAC35
 009FAC45    xor         eax,eax
 009FAC47    pop         edx
 009FAC48    pop         ecx
 009FAC49    pop         ecx
 009FAC4A    mov         dword ptr fs:[eax],edx
 009FAC4D    push        9FAC67
 009FAC52    lea         eax,[ebp-10]
 009FAC55    mov         edx,3
 009FAC5A    call        @LStrArrayClr
 009FAC5F    ret
>009FAC60    jmp         @HandleFinally
>009FAC65    jmp         009FAC52
 009FAC67    pop         ebx
 009FAC68    mov         esp,ebp
 009FAC6A    pop         ebp
 009FAC6B    ret
*}
end;

//009FACC0
procedure TMainFormMarketSklad.aRaschPostavExecute;
begin
{*
 009FACC0    push        ebp
 009FACC1    mov         ebp,esp
 009FACC3    push        ecx
 009FACC4    mov         ecx,eax
 009FACC6    mov         dl,1
 009FACC8    mov         eax,[009BECF4];TFormRaschPostav
 009FACCD    call        TCustomForm.Create;TFormRaschPostav.Create
 009FACD2    mov         dword ptr [ebp-4],eax
 009FACD5    xor         eax,eax
 009FACD7    push        ebp
 009FACD8    push        9FAD04
 009FACDD    push        dword ptr fs:[eax]
 009FACE0    mov         dword ptr fs:[eax],esp
 009FACE3    mov         eax,dword ptr [ebp-4]
 009FACE6    mov         edx,dword ptr [eax]
 009FACE8    call        dword ptr [edx+0EC];TFormRaschPostav.sub_004AA600
 009FACEE    xor         eax,eax
 009FACF0    pop         edx
 009FACF1    pop         ecx
 009FACF2    pop         ecx
 009FACF3    mov         dword ptr fs:[eax],edx
 009FACF6    push        9FAD0B
 009FACFB    mov         eax,dword ptr [ebp-4]
 009FACFE    call        TObject.Free
 009FAD03    ret
>009FAD04    jmp         @HandleFinally
>009FAD09    jmp         009FACFB
 009FAD0B    pop         ecx
 009FAD0C    pop         ebp
 009FAD0D    ret
*}
end;

//009FAD10
procedure TMainFormMarketSklad.aRaschPokupExecute;
begin
{*
 009FAD10    push        ebp
 009FAD11    mov         ebp,esp
 009FAD13    push        ecx
 009FAD14    mov         ecx,eax
 009FAD16    mov         dl,1
 009FAD18    mov         eax,[009C05D8];TFormRaschPokups
 009FAD1D    call        TCustomForm.Create;TFormRaschPokups.Create
 009FAD22    mov         dword ptr [ebp-4],eax
 009FAD25    xor         eax,eax
 009FAD27    push        ebp
 009FAD28    push        9FAD72
 009FAD2D    push        dword ptr fs:[eax]
 009FAD30    mov         dword ptr fs:[eax],esp
 009FAD33    or          edx,0FFFFFFFF
 009FAD36    mov         eax,dword ptr [ebp-4]
 009FAD39    call        TFormRaschPokups.OpenBalance
 009FAD3E    mov         eax,dword ptr [ebp-4]
 009FAD41    mov         eax,dword ptr [eax+358];TFormRaschPokups.LabelKlient:TLabel
 009FAD47    mov         edx,9FAD84;'Все покупатели'
 009FAD4C    call        TControl.SetText
 009FAD51    mov         eax,dword ptr [ebp-4]
 009FAD54    mov         edx,dword ptr [eax]
 009FAD56    call        dword ptr [edx+0EC];TFormRaschPokups.sub_004AA600
 009FAD5C    xor         eax,eax
 009FAD5E    pop         edx
 009FAD5F    pop         ecx
 009FAD60    pop         ecx
 009FAD61    mov         dword ptr fs:[eax],edx
 009FAD64    push        9FAD79
 009FAD69    mov         eax,dword ptr [ebp-4]
 009FAD6C    call        TObject.Free
 009FAD71    ret
>009FAD72    jmp         @HandleFinally
>009FAD77    jmp         009FAD69
 009FAD79    pop         ecx
 009FAD7A    pop         ebp
 009FAD7B    ret
*}
end;

//009FAD94
procedure TMainFormMarketSklad.aRevisionExecute;
begin
{*
 009FAD94    push        ebp
 009FAD95    mov         ebp,esp
 009FAD97    push        ecx
 009FAD98    push        ebx
 009FAD99    mov         ebx,eax
 009FAD9B    mov         ecx,ebx
 009FAD9D    mov         dl,1
 009FAD9F    mov         eax,[009C5950];TFormRevisions
 009FADA4    call        TCustomForm.Create;TFormRevisions.Create
 009FADA9    mov         dword ptr [ebp-4],eax
 009FADAC    xor         eax,eax
 009FADAE    push        ebp
 009FADAF    push        9FAE18
 009FADB4    push        dword ptr fs:[eax]
 009FADB7    mov         dword ptr fs:[eax],esp
 009FADBA    mov         eax,dword ptr [ebp-4]
 009FADBD    mov         edx,dword ptr [eax]
 009FADBF    call        dword ptr [edx+0EC];TFormRevisions.sub_004AA600
 009FADC5    mov         eax,[00AC721C];^Application:TApplication
 009FADCA    mov         eax,dword ptr [eax]
 009FADCC    call        TApplication.ProcessMessages
 009FADD1    mov         eax,dword ptr [ebx+2F8];TMainFormMarketSklad.PageControl1:TPageControl
 009FADD7    call        TPageControl.GetActivePageIndex
 009FADDC    test        eax,eax
>009FADDE    jne         009FADF6
 009FADE0    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009FADE6    call        TDataSet.Close
 009FADEB    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009FADF1    call        TDataSet.Open
 009FADF6    mov         eax,[00AC721C];^Application:TApplication
 009FADFB    mov         eax,dword ptr [eax]
 009FADFD    call        TApplication.ProcessMessages
 009FAE02    xor         eax,eax
 009FAE04    pop         edx
 009FAE05    pop         ecx
 009FAE06    pop         ecx
 009FAE07    mov         dword ptr fs:[eax],edx
 009FAE0A    push        9FAE1F
 009FAE0F    mov         eax,dword ptr [ebp-4]
 009FAE12    call        TObject.Free
 009FAE17    ret
>009FAE18    jmp         @HandleFinally
>009FAE1D    jmp         009FAE0F
 009FAE1F    pop         ebx
 009FAE20    pop         ecx
 009FAE21    pop         ebp
 009FAE22    ret
*}
end;

//009FAE24
procedure TMainFormMarketSklad.aVesyExpSettingsExecute;
begin
{*
 009FAE24    push        ebp
 009FAE25    mov         ebp,esp
 009FAE27    push        ecx
 009FAE28    mov         ecx,eax
 009FAE2A    mov         dl,1
 009FAE2C    mov         eax,[009C1F3C];TFormVesyExpSettings
 009FAE31    call        TCustomForm.Create;TFormVesyExpSettings.Create
 009FAE36    mov         dword ptr [ebp-4],eax
 009FAE39    xor         eax,eax
 009FAE3B    push        ebp
 009FAE3C    push        9FAE68
 009FAE41    push        dword ptr fs:[eax]
 009FAE44    mov         dword ptr fs:[eax],esp
 009FAE47    mov         eax,dword ptr [ebp-4]
 009FAE4A    mov         edx,dword ptr [eax]
 009FAE4C    call        dword ptr [edx+0EC];TFormVesyExpSettings.sub_004AA600
 009FAE52    xor         eax,eax
 009FAE54    pop         edx
 009FAE55    pop         ecx
 009FAE56    pop         ecx
 009FAE57    mov         dword ptr fs:[eax],edx
 009FAE5A    push        9FAE6F
 009FAE5F    mov         eax,dword ptr [ebp-4]
 009FAE62    call        TObject.Free
 009FAE67    ret
>009FAE68    jmp         @HandleFinally
>009FAE6D    jmp         009FAE5F
 009FAE6F    pop         ecx
 009FAE70    pop         ebp
 009FAE71    ret
*}
end;

//009FAE74
{*procedure sub_009FAE74(?:?);
begin
 009FAE74    push        ebp
 009FAE75    mov         ebp,esp
 009FAE77    xor         ecx,ecx
 009FAE79    push        ecx
 009FAE7A    push        ecx
 009FAE7B    push        ecx
 009FAE7C    push        ecx
 009FAE7D    push        ecx
 009FAE7E    push        ecx
 009FAE7F    push        ebx
 009FAE80    mov         ebx,eax
 009FAE82    xor         eax,eax
 009FAE84    push        ebp
 009FAE85    push        9FAF66
 009FAE8A    push        dword ptr fs:[eax]
 009FAE8D    mov         dword ptr fs:[eax],esp
 009FAE90    lea         eax,[ebp-4]
 009FAE93    mov         edx,9FAF7C;'Export_Tovars'
 009FAE98    call        @LStrLAsg
 009FAE9D    call        Now
 009FAEA2    add         esp,0FFFFFFF8
 009FAEA5    fstp        qword ptr [esp]
 009FAEA8    wait
 009FAEA9    lea         ecx,[ebp-0A]
 009FAEAC    lea         edx,[ebp-8]
 009FAEAF    lea         eax,[ebp-6]
 009FAEB2    call        DecodeDate
 009FAEB7    lea         edx,[ebp-10]
 009FAEBA    movzx       eax,word ptr [ebp-8]
 009FAEBE    call        IntToStr
 009FAEC3    mov         eax,dword ptr [ebp-10]
 009FAEC6    call        @LStrLen
 009FAECB    dec         eax
>009FAECC    jne         009FAEDE
 009FAECE    lea         eax,[ebp-10]
 009FAED1    mov         ecx,dword ptr [ebp-10]
 009FAED4    mov         edx,9FAF94;'0'
 009FAED9    call        @LStrCat3
 009FAEDE    lea         edx,[ebp-14]
 009FAEE1    movzx       eax,word ptr [ebp-0A]
 009FAEE5    call        IntToStr
 009FAEEA    mov         eax,dword ptr [ebp-14]
 009FAEED    call        @LStrLen
 009FAEF2    dec         eax
>009FAEF3    jne         009FAF05
 009FAEF5    lea         eax,[ebp-14]
 009FAEF8    mov         ecx,dword ptr [ebp-14]
 009FAEFB    mov         edx,9FAF94;'0'
 009FAF00    call        @LStrCat3
 009FAF05    push        dword ptr [ebp-4]
 009FAF08    push        9FAFA0;'_'
 009FAF0D    lea         edx,[ebp-18]
 009FAF10    movzx       eax,word ptr [ebp-6]
 009FAF14    call        IntToStr
 009FAF19    push        dword ptr [ebp-18]
 009FAF1C    push        9FAFA0;'_'
 009FAF21    push        dword ptr [ebp-10]
 009FAF24    push        9FAFA0;'_'
 009FAF29    push        dword ptr [ebp-14]
 009FAF2C    lea         eax,[ebp-4]
 009FAF2F    mov         edx,7
 009FAF34    call        @LStrCatN
 009FAF39    mov         eax,ebx
 009FAF3B    mov         edx,dword ptr [ebp-4]
 009FAF3E    call        @LStrAsg
 009FAF43    xor         eax,eax
 009FAF45    pop         edx
 009FAF46    pop         ecx
 009FAF47    pop         ecx
 009FAF48    mov         dword ptr fs:[eax],edx
 009FAF4B    push        9FAF6D
 009FAF50    lea         eax,[ebp-18]
 009FAF53    mov         edx,3
 009FAF58    call        @LStrArrayClr
 009FAF5D    lea         eax,[ebp-4]
 009FAF60    call        @LStrClr
 009FAF65    ret
>009FAF66    jmp         @HandleFinally
>009FAF6B    jmp         009FAF50
 009FAF6D    pop         ebx
 009FAF6E    mov         esp,ebp
 009FAF70    pop         ebp
 009FAF71    ret
end;*}

//009FAFA4
{*procedure sub_009FAFA4(?:Longint; ?:AnsiString; ?:?; ?:?);
begin
 009FAFA4    push        ebp
 009FAFA5    mov         ebp,esp
 009FAFA7    add         esp,0FFFFFFF4
 009FAFAA    push        ebx
 009FAFAB    xor         ebx,ebx
 009FAFAD    mov         dword ptr [ebp-0C],ebx
 009FAFB0    mov         dword ptr [ebp-8],ecx
 009FAFB3    mov         dword ptr [ebp-4],edx
 009FAFB6    mov         ebx,eax
 009FAFB8    mov         eax,dword ptr [ebp-4]
 009FAFBB    call        @LStrAddRef
 009FAFC0    mov         eax,dword ptr [ebp-8]
 009FAFC3    call        @LStrAddRef
 009FAFC8    xor         eax,eax
 009FAFCA    push        ebp
 009FAFCB    push        9FB04C
 009FAFD0    push        dword ptr fs:[eax]
 009FAFD3    mov         dword ptr fs:[eax],esp
 009FAFD6    test        bx,bx
>009FAFD9    jne         009FAFEB
 009FAFDB    lea         eax,[ebp-0C]
 009FAFDE    mov         ecx,dword ptr [ebp-8]
 009FAFE1    mov         edx,dword ptr [ebp-4]
 009FAFE4    call        @LStrCat3
>009FAFE9    jmp         009FB026
 009FAFEB    mov         eax,dword ptr [ebp-4]
 009FAFEE    call        @LStrLen
 009FAFF3    movzx       edx,bx
 009FAFF6    sub         edx,eax
 009FAFF8    mov         eax,edx
 009FAFFA    mov         ebx,eax
 009FAFFC    test        ebx,ebx
>009FAFFE    jle         009FB010
 009FB000    lea         eax,[ebp-0C]
 009FB003    mov         edx,9FB064;'0'
 009FB008    call        @LStrCat
 009FB00D    dec         ebx
>009FB00E    jne         009FB000
 009FB010    push        dword ptr [ebp-0C]
 009FB013    push        dword ptr [ebp-4]
 009FB016    push        dword ptr [ebp-8]
 009FB019    lea         eax,[ebp-0C]
 009FB01C    mov         edx,3
 009FB021    call        @LStrCatN
 009FB026    mov         eax,dword ptr [ebp+8]
 009FB029    mov         edx,dword ptr [ebp-0C]
 009FB02C    call        @LStrAsg
 009FB031    xor         eax,eax
 009FB033    pop         edx
 009FB034    pop         ecx
 009FB035    pop         ecx
 009FB036    mov         dword ptr fs:[eax],edx
 009FB039    push        9FB053
 009FB03E    lea         eax,[ebp-0C]
 009FB041    mov         edx,3
 009FB046    call        @LStrArrayClr
 009FB04B    ret
>009FB04C    jmp         @HandleFinally
>009FB051    jmp         009FB03E
 009FB053    pop         ebx
 009FB054    mov         esp,ebp
 009FB056    pop         ebp
 009FB057    ret         4
end;*}

//009FB068
procedure TMainFormMarketSklad.aExpNomsForVesyExecute;
begin
{*
 009FB068    push        ebp
 009FB069    mov         ebp,esp
 009FB06B    mov         ecx,71
 009FB070    push        0
 009FB072    push        0
 009FB074    dec         ecx
>009FB075    jne         009FB070
 009FB077    push        ebx
 009FB078    push        esi
 009FB079    push        edi
 009FB07A    mov         dword ptr [ebp-4],eax
 009FB07D    lea         eax,[ebp-344]
 009FB083    mov         edx,dword ptr ds:[408E04];TSearchRec
 009FB089    call        @AddRefRecord
 009FB08E    mov         ebx,dword ptr ds:[0AC7318];^gvar_00ACBBF8:TDM
 009FB094    lea         edi,[ebp-1EC]
 009FB09A    xor         eax,eax
 009FB09C    push        ebp
 009FB09D    push        9FB589
 009FB0A2    push        dword ptr fs:[eax]
 009FB0A5    mov         dword ptr fs:[eax],esp
 009FB0A8    mov         eax,dword ptr [ebx]
 009FB0AA    mov         esi,dword ptr [eax+6C]
 009FB0AD    mov         eax,esi
 009FB0AF    call        TDataSet.Close
 009FB0B4    mov         eax,esi
 009FB0B6    call        TOraQuery.GetSQL
 009FB0BB    mov         edx,dword ptr [eax]
 009FB0BD    call        dword ptr [edx+44]
 009FB0C0    mov         eax,esi
 009FB0C2    call        TOraQuery.GetSQL
 009FB0C7    mov         edx,9FB5A0;'SELECT VES.* FROM VESY_EXP_SETTS VES'
 009FB0CC    mov         ecx,dword ptr [eax]
 009FB0CE    call        dword ptr [ecx+38]
 009FB0D1    mov         eax,esi
 009FB0D3    call        TOraQuery.GetSQL
 009FB0D8    mov         edx,9FB5D0;'ORDER BY VES.NUM_FLD'
 009FB0DD    mov         ecx,dword ptr [eax]
 009FB0DF    call        dword ptr [ecx+38]
 009FB0E2    mov         eax,esi
 009FB0E4    call        TDataSet.Open
 009FB0E9    lea         eax,[ebp-14]
 009FB0EC    call        @LStrClr
>009FB0F1    jmp         009FB17F
 009FB0F6    cmp         dword ptr [ebp-14],0
>009FB0FA    jne         009FB11E
 009FB0FC    lea         ecx,[ebp-354]
 009FB102    mov         eax,esi
 009FB104    mov         edx,9FB5F0;'NAME_FLD'
 009FB109    call        TDataSet.GetFieldValue
 009FB10E    lea         edx,[ebp-354]
 009FB114    lea         eax,[ebp-14]
 009FB117    call        @VarToLStr
>009FB11C    jmp         009FB175
 009FB11E    lea         eax,[ebp-368]
 009FB124    mov         ecx,9FB604;';'
 009FB129    mov         edx,dword ptr [ebp-14]
 009FB12C    call        @LStrCat3
 009FB131    mov         edx,dword ptr [ebp-368]
 009FB137    lea         eax,[ebp-364]
 009FB13D    call        @VarFromLStr
 009FB142    lea         eax,[ebp-364]
 009FB148    push        eax
 009FB149    lea         ecx,[ebp-378]
 009FB14F    mov         eax,esi
 009FB151    mov         edx,9FB5F0;'NAME_FLD'
 009FB156    call        TDataSet.GetFieldValue
 009FB15B    lea         edx,[ebp-378]
 009FB161    pop         eax
 009FB162    call        @VarAdd
 009FB167    lea         edx,[ebp-364]
 009FB16D    lea         eax,[ebp-14]
 009FB170    call        @VarToLStr
 009FB175    mov         eax,dword ptr [ebx]
 009FB177    mov         eax,dword ptr [eax+6C]
 009FB17A    call        TDataSet.Next
 009FB17F    mov         eax,dword ptr [ebx]
 009FB181    mov         esi,dword ptr [eax+6C]
 009FB184    cmp         byte ptr [esi+0A1],0
>009FB18B    je          009FB0F6
 009FB191    mov         eax,dword ptr [ebx]
 009FB193    mov         eax,dword ptr [eax+6C]
 009FB196    call        TDataSet.First
 009FB19B    mov         eax,dword ptr [ebx]
 009FB19D    mov         esi,dword ptr [eax+60]
 009FB1A0    mov         eax,esi
 009FB1A2    call        TDataSet.Close
 009FB1A7    mov         eax,esi
 009FB1A9    call        TOraQuery.GetSQL
 009FB1AE    mov         edx,dword ptr [eax]
 009FB1B0    call        dword ptr [edx+44]
 009FB1B3    mov         eax,esi
 009FB1B5    call        TOraQuery.GetSQL
 009FB1BA    mov         edx,9FB610;'SELECT N.ID,SUBSTR(N.NAME_NOM, 1, 25) AS NAME_TOVAR,'
 009FB1BF    mov         ecx,dword ptr [eax]
 009FB1C1    call        dword ptr [ecx+38]
 009FB1C4    mov         eax,esi
 009FB1C6    call        TOraQuery.GetSQL
 009FB1CB    mov         edx,9FB650;'SUBSTR(N.NAME_NOM, 26, 50) AS NAME_TOVAR2, N.PLU_NUM, N.PRICE '
 009FB1D0    mov         ecx,dword ptr [eax]
 009FB1D2    call        dword ptr [ecx+38]
 009FB1D5    mov         eax,esi
 009FB1D7    call        TOraQuery.GetSQL
 009FB1DC    mov         edx,9FB698;'FROM NOMENKL N, ED_IZMS E'
 009FB1E1    mov         ecx,dword ptr [eax]
 009FB1E3    call        dword ptr [ecx+38]
 009FB1E6    mov         eax,esi
 009FB1E8    call        TOraQuery.GetSQL
 009FB1ED    mov         edx,9FB6BC;'WHERE N.ID_EDIZM=E.ID'
 009FB1F2    mov         ecx,dword ptr [eax]
 009FB1F4    call        dword ptr [ecx+38]
 009FB1F7    mov         eax,esi
 009FB1F9    call        TOraQuery.GetSQL
 009FB1FE    mov         edx,9FB6DC;'AND E.ID_MAIN_ED<>11'
 009FB203    mov         ecx,dword ptr [eax]
 009FB205    call        dword ptr [ecx+38]
 009FB208    mov         eax,esi
 009FB20A    call        TOraQuery.GetSQL
 009FB20F    mov         edx,9FB6FC;'AND N.IS_ARH=0'
 009FB214    mov         ecx,dword ptr [eax]
 009FB216    call        dword ptr [ecx+38]
 009FB219    mov         eax,esi
 009FB21B    call        TOraQuery.GetSQL
 009FB220    mov         edx,9FB714;'ORDER BY N.ID'
 009FB225    mov         ecx,dword ptr [eax]
 009FB227    call        dword ptr [ecx+38]
 009FB22A    mov         eax,esi
 009FB22C    call        TDataSet.Open
 009FB231    lea         edx,[ebp-37C]
 009FB237    xor         eax,eax
 009FB239    call        ParamStr
 009FB23E    mov         eax,dword ptr [ebp-37C]
 009FB244    lea         edx,[ebp-8]
 009FB247    call        ExtractFilePath
 009FB24C    lea         eax,[ebp-380]
 009FB252    mov         ecx,9FB72C;'EXPORT'
 009FB257    mov         edx,dword ptr [ebp-8]
 009FB25A    call        @LStrCat3
 009FB25F    mov         eax,dword ptr [ebp-380]
 009FB265    lea         ecx,[ebp-344]
 009FB26B    mov         edx,10
 009FB270    call        FindFirst
 009FB275    test        eax,eax
>009FB277    je          009FB297
 009FB279    lea         eax,[ebp-384]
 009FB27F    mov         ecx,9FB72C;'EXPORT'
 009FB284    mov         edx,dword ptr [ebp-8]
 009FB287    call        @LStrCat3
 009FB28C    mov         eax,dword ptr [ebp-384]
 009FB292    call        CreateDir
 009FB297    lea         eax,[ebp-10]
 009FB29A    call        009FAE74
 009FB29F    push        dword ptr [ebp-8]
 009FB2A2    push        9FB73C;'EXPORT\'
 009FB2A7    push        dword ptr [ebp-10]
 009FB2AA    push        9FB74C;'.csv'
 009FB2AF    lea         eax,[ebp-0C]
 009FB2B2    mov         edx,4
 009FB2B7    call        @LStrCatN
 009FB2BC    mov         eax,dword ptr [ebp-0C]
 009FB2BF    call        FileExists
 009FB2C4    test        al,al
>009FB2C6    je          009FB2D0
 009FB2C8    mov         eax,dword ptr [ebp-0C]
 009FB2CB    call        DeleteFile
 009FB2D0    mov         edx,dword ptr [ebp-0C]
 009FB2D3    mov         eax,edi
 009FB2D5    call        @Assign
 009FB2DA    xor         eax,eax
 009FB2DC    push        ebp
 009FB2DD    push        9FB2FE
 009FB2E2    push        dword ptr fs:[eax]
 009FB2E5    mov         dword ptr fs:[eax],esp
 009FB2E8    mov         eax,edi
 009FB2EA    call        @RewritText
 009FB2EF    call        @_IOTest
 009FB2F4    xor         eax,eax
 009FB2F6    pop         edx
 009FB2F7    pop         ecx
 009FB2F8    pop         ecx
 009FB2F9    mov         dword ptr fs:[eax],edx
>009FB2FC    jmp         009FB31C
>009FB2FE    jmp         @HandleAnyException
 009FB303    mov         eax,9FB75C;'Ошибка имени файла!'+#13+Не возможно создать файл с таким именем!'
 009FB308    call        ShowMessage
 009FB30D    call        @DoneExcept
>009FB312    jmp         009FB521
 009FB317    call        @DoneExcept
 009FB31C    xor         edx,edx
 009FB31E    mov         eax,dword ptr [ebp-0C]
 009FB321    call        FileOpen
 009FB326    mov         dword ptr [ebp-20],eax
 009FB329    mov         edx,dword ptr [ebp-14]
 009FB32C    mov         eax,edi
 009FB32E    call        @Write0Bool
 009FB333    call        @Flush
 009FB338    call        @_IOTest
 009FB33D    xor         edx,edx
 009FB33F    mov         eax,edi
 009FB341    call        @Write0Bool
 009FB346    call        @WriteLn
 009FB34B    call        @_IOTest
>009FB350    jmp         009FB4C8
 009FB355    mov         eax,dword ptr [ebx]
 009FB357    mov         eax,dword ptr [eax+6C]
 009FB35A    call        TDataSet.First
>009FB35F    jmp         009FB499
 009FB364    mov         eax,esi
 009FB366    mov         edx,9FB7A4;'LENGTH_FLD'
 009FB36B    call        TDataSet.FieldByName
 009FB370    mov         edx,dword ptr [eax]
 009FB372    call        dword ptr [edx+58];TField.GetAsInteger
 009FB375    mov         esi,eax
 009FB377    mov         eax,dword ptr [ebx]
 009FB379    mov         eax,dword ptr [eax+6C]
 009FB37C    mov         edx,9FB7B8;'DB_FLD_NUM'
 009FB381    call        TDataSet.FieldByName
 009FB386    mov         edx,dword ptr [eax]
 009FB388    call        dword ptr [edx+58];TField.GetAsInteger
 009FB38B    cmp         eax,5
>009FB38E    ja          009FB453
 009FB394    jmp         dword ptr [eax*4+9FB39B]
 009FB394    dd          009FB3B3
 009FB394    dd          009FB3C0
 009FB394    dd          009FB3D9
 009FB394    dd          009FB3F2
 009FB394    dd          009FB40B
 009FB394    dd          009FB43C
 009FB3B3    lea         eax,[ebp-18]
 009FB3B6    call        @LStrClr
>009FB3BB    jmp         009FB453
 009FB3C0    mov         eax,dword ptr [ebx]
 009FB3C2    mov         eax,dword ptr [eax+60]
 009FB3C5    mov         edx,9FB7CC;'ID'
 009FB3CA    call        TDataSet.FieldByName
 009FB3CF    lea         edx,[ebp-18]
 009FB3D2    mov         ecx,dword ptr [eax]
 009FB3D4    call        dword ptr [ecx+60];TField.GetAsString
>009FB3D7    jmp         009FB453
 009FB3D9    mov         eax,dword ptr [ebx]
 009FB3DB    mov         eax,dword ptr [eax+60]
 009FB3DE    mov         edx,9FB7D8;'NAME_TOVAR'
 009FB3E3    call        TDataSet.FieldByName
 009FB3E8    lea         edx,[ebp-18]
 009FB3EB    mov         ecx,dword ptr [eax]
 009FB3ED    call        dword ptr [ecx+60];TField.GetAsString
>009FB3F0    jmp         009FB453
 009FB3F2    mov         eax,dword ptr [ebx]
 009FB3F4    mov         eax,dword ptr [eax+60]
 009FB3F7    mov         edx,9FB7EC;'NAME_TOVAR2'
 009FB3FC    call        TDataSet.FieldByName
 009FB401    lea         edx,[ebp-18]
 009FB404    mov         ecx,dword ptr [eax]
 009FB406    call        dword ptr [ecx+60];TField.GetAsString
>009FB409    jmp         009FB453
 009FB40B    mov         eax,dword ptr [ebx]
 009FB40D    mov         eax,dword ptr [eax+60]
 009FB410    mov         edx,9FB800;'PRICE'
 009FB415    call        TDataSet.FieldByName
 009FB41A    mov         edx,dword ptr [eax]
 009FB41C    call        dword ptr [edx+4C];TField.GetAsCurrency
 009FB41F    fmul        dword ptr ds:[9FB808];100:Single
 009FB425    fdiv        dword ptr ds:[9FB80C];10000:Single
 009FB42B    add         esp,0FFFFFFF4
 009FB42E    fstp        tbyte ptr [esp]
 009FB431    wait
 009FB432    lea         eax,[ebp-18]
 009FB435    call        FloatToStr
>009FB43A    jmp         009FB453
 009FB43C    mov         eax,dword ptr [ebx]
 009FB43E    mov         eax,dword ptr [eax+60]
 009FB441    mov         edx,9FB818;'PLU_NUM'
 009FB446    call        TDataSet.FieldByName
 009FB44B    lea         edx,[ebp-18]
 009FB44E    mov         ecx,dword ptr [eax]
 009FB450    call        dword ptr [ecx+60];TField.GetAsString
 009FB453    mov         eax,dword ptr [ebx]
 009FB455    mov         eax,dword ptr [eax+6C]
 009FB458    mov         edx,9FB828;'SEPAR_CHR'
 009FB45D    call        TDataSet.FieldByName
 009FB462    lea         edx,[ebp-1C]
 009FB465    mov         ecx,dword ptr [eax]
 009FB467    call        dword ptr [ecx+60];TField.GetAsString
 009FB46A    lea         eax,[ebp-10]
 009FB46D    push        eax
 009FB46E    mov         ecx,dword ptr [ebp-1C]
 009FB471    mov         edx,dword ptr [ebp-18]
 009FB474    mov         eax,esi
 009FB476    call        009FAFA4
 009FB47B    mov         edx,dword ptr [ebp-10]
 009FB47E    mov         eax,edi
 009FB480    call        @Write0Bool
 009FB485    call        @Flush
 009FB48A    call        @_IOTest
 009FB48F    mov         eax,dword ptr [ebx]
 009FB491    mov         eax,dword ptr [eax+6C]
 009FB494    call        TDataSet.Next
 009FB499    mov         eax,dword ptr [ebx]
 009FB49B    mov         esi,dword ptr [eax+6C]
 009FB49E    cmp         byte ptr [esi+0A1],0
>009FB4A5    je          009FB364
 009FB4AB    xor         edx,edx
 009FB4AD    mov         eax,edi
 009FB4AF    call        @Write0Bool
 009FB4B4    call        @WriteLn
 009FB4B9    call        @_IOTest
 009FB4BE    mov         eax,dword ptr [ebx]
 009FB4C0    mov         eax,dword ptr [eax+60]
 009FB4C3    call        TDataSet.Next
 009FB4C8    mov         eax,dword ptr [ebx]
 009FB4CA    mov         eax,dword ptr [eax+60]
 009FB4CD    cmp         byte ptr [eax+0A1],0
>009FB4D4    je          009FB355
 009FB4DA    mov         eax,edi
 009FB4DC    call        @Close
 009FB4E1    call        @_IOTest
 009FB4E6    mov         eax,dword ptr [ebp-20]
 009FB4E9    call        FileClose
 009FB4EE    push        1
 009FB4F0    push        0
 009FB4F2    push        0
 009FB4F4    lea         edx,[ebp-388]
 009FB4FA    mov         eax,dword ptr [ebp-0C]
 009FB4FD    call        ExtractFilePath
 009FB502    mov         eax,dword ptr [ebp-388]
 009FB508    call        @LStrToPChar
 009FB50D    push        eax
 009FB50E    push        9FB834
 009FB513    mov         eax,dword ptr [ebp-4]
 009FB516    call        TWinControl.GetHandle
 009FB51B    push        eax
 009FB51C    call        shell32.ShellExecuteA
 009FB521    xor         eax,eax
 009FB523    pop         edx
 009FB524    pop         ecx
 009FB525    pop         ecx
 009FB526    mov         dword ptr fs:[eax],edx
 009FB529    push        9FB590
 009FB52E    lea         eax,[ebp-388]
 009FB534    mov         edx,4
 009FB539    call        @LStrArrayClr
 009FB53E    lea         eax,[ebp-378]
 009FB544    call        @VarClr
 009FB549    lea         eax,[ebp-368]
 009FB54F    call        @LStrClr
 009FB554    lea         eax,[ebp-364]
 009FB55A    mov         edx,dword ptr ds:[401160];Variant
 009FB560    mov         ecx,2
 009FB565    call        @FinalizeArray
 009FB56A    lea         eax,[ebp-344]
 009FB570    mov         edx,dword ptr ds:[408E04];TSearchRec
 009FB576    call        @FinalizeRecord
 009FB57B    lea         eax,[ebp-1C]
 009FB57E    mov         edx,6
 009FB583    call        @LStrArrayClr
 009FB588    ret
>009FB589    jmp         @HandleFinally
>009FB58E    jmp         009FB52E
 009FB590    pop         edi
 009FB591    pop         esi
 009FB592    pop         ebx
 009FB593    mov         esp,ebp
 009FB595    pop         ebp
 009FB596    ret
*}
end;

//009FB83C
procedure TMainFormMarketSklad.rg_findClick(Sender:TObject);
begin
{*
 009FB83C    ret
*}
end;

//009FB840
{*procedure TMainFormMarketSklad.Q_PRIHODSAfterScroll(?:?);
begin
 009FB840    push        ebp
 009FB841    mov         ebp,esp
 009FB843    xor         ecx,ecx
 009FB845    push        ecx
 009FB846    push        ecx
 009FB847    push        ecx
 009FB848    push        ecx
 009FB849    push        ecx
 009FB84A    push        ecx
 009FB84B    push        ebx
 009FB84C    push        esi
 009FB84D    push        edi
 009FB84E    mov         esi,edx
 009FB850    mov         ebx,eax
 009FB852    xor         eax,eax
 009FB854    push        ebp
 009FB855    push        9FBB35
 009FB85A    push        dword ptr fs:[eax]
 009FB85D    mov         dword ptr fs:[eax],esp
 009FB860    mov         eax,dword ptr [ebx+58C];TMainFormMarketSklad.Q_PrihLines:TOraQuery
 009FB866    call        TDataSet.Close
 009FB86B    mov         edx,9FBB4C;'ID'
 009FB870    mov         eax,esi
 009FB872    call        TDataSet.FieldByName
 009FB877    lea         edx,[ebp-10]
 009FB87A    mov         ecx,dword ptr [eax]
 009FB87C    call        dword ptr [ecx+64];TField.GetAsVariant
 009FB87F    lea         eax,[ebp-10]
 009FB882    push        eax
 009FB883    mov         edx,9FBB58;'ID_OPER'
 009FB888    mov         eax,dword ptr [ebx+58C];TMainFormMarketSklad.Q_PrihLines:TOraQuery
 009FB88E    call        006210D4
 009FB893    pop         edx
 009FB894    mov         ecx,dword ptr [eax]
 009FB896    call        dword ptr [ecx+0A0]
 009FB89C    mov         eax,dword ptr [ebx+58C];TMainFormMarketSklad.Q_PrihLines:TOraQuery
 009FB8A2    call        TDataSet.Open
 009FB8A7    mov         edx,9FBB68;'NAME_OP_TYPE'
 009FB8AC    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009FB8B2    call        TDataSet.FieldByName
 009FB8B7    lea         edx,[ebp-18]
 009FB8BA    mov         ecx,dword ptr [eax]
 009FB8BC    call        dword ptr [ecx+60];TField.GetAsString
 009FB8BF    mov         eax,dword ptr [ebp-18]
 009FB8C2    lea         edx,[ebp-14]
 009FB8C5    call        AnsiUpperCase
 009FB8CA    mov         edx,dword ptr [ebp-14]
 009FB8CD    mov         eax,9FBB80;'ОТ ПОКУПАТ'
 009FB8D2    call        @LStrPos
 009FB8D7    test        eax,eax
>009FB8D9    jle         009FB9FB
 009FB8DF    mov         eax,dword ptr [ebx+570];TMainFormMarketSklad.DBGridEhPrihDet:TDBGridEh
 009FB8E5    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009FB8EB    call        TCollection.GetCount
 009FB8F0    mov         edi,eax
 009FB8F2    dec         edi
 009FB8F3    test        edi,edi
>009FB8F5    jl          009FBB12
 009FB8FB    inc         edi
 009FB8FC    xor         esi,esi
 009FB8FE    mov         eax,dword ptr [ebx+570];TMainFormMarketSklad.DBGridEhPrihDet:TDBGridEh
 009FB904    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009FB90A    mov         edx,esi
 009FB90C    call        00676F60
 009FB911    mov         eax,dword ptr [eax+40]
 009FB914    mov         edx,9FBB94;'COST'
 009FB919    call        @LStrCmp
>009FB91E    jne         009FB93A
 009FB920    mov         eax,dword ptr [ebx+570];TMainFormMarketSklad.DBGridEhPrihDet:TDBGridEh
 009FB926    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009FB92C    mov         edx,esi
 009FB92E    call        00676F60
 009FB933    xor         edx,edx
 009FB935    call        TDBLookupGridColumnEh.SetVisible
 009FB93A    mov         eax,dword ptr [ebx+570];TMainFormMarketSklad.DBGridEhPrihDet:TDBGridEh
 009FB940    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009FB946    mov         edx,esi
 009FB948    call        00676F60
 009FB94D    mov         eax,dword ptr [eax+40]
 009FB950    mov         edx,9FBBA4;'SUM_LINE'
 009FB955    call        @LStrCmp
>009FB95A    jne         009FB976
 009FB95C    mov         eax,dword ptr [ebx+570];TMainFormMarketSklad.DBGridEhPrihDet:TDBGridEh
 009FB962    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009FB968    mov         edx,esi
 009FB96A    call        00676F60
 009FB96F    xor         edx,edx
 009FB971    call        TDBLookupGridColumnEh.SetVisible
 009FB976    mov         eax,dword ptr [ebx+570];TMainFormMarketSklad.DBGridEhPrihDet:TDBGridEh
 009FB97C    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009FB982    mov         edx,esi
 009FB984    call        00676F60
 009FB989    mov         eax,dword ptr [eax+40]
 009FB98C    mov         edx,9FBBB8;'PRICE'
 009FB991    call        @LStrCmp
>009FB996    jne         009FB9B2
 009FB998    mov         eax,dword ptr [ebx+570];TMainFormMarketSklad.DBGridEhPrihDet:TDBGridEh
 009FB99E    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009FB9A4    mov         edx,esi
 009FB9A6    call        00676F60
 009FB9AB    mov         dl,1
 009FB9AD    call        TDBLookupGridColumnEh.SetVisible
 009FB9B2    mov         eax,dword ptr [ebx+570];TMainFormMarketSklad.DBGridEhPrihDet:TDBGridEh
 009FB9B8    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009FB9BE    mov         edx,esi
 009FB9C0    call        00676F60
 009FB9C5    mov         eax,dword ptr [eax+40]
 009FB9C8    mov         edx,9FBBC8;'SUM_LINE_SALE'
 009FB9CD    call        @LStrCmp
>009FB9D2    jne         009FB9EE
 009FB9D4    mov         eax,dword ptr [ebx+570];TMainFormMarketSklad.DBGridEhPrihDet:TDBGridEh
 009FB9DA    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009FB9E0    mov         edx,esi
 009FB9E2    call        00676F60
 009FB9E7    mov         dl,1
 009FB9E9    call        TDBLookupGridColumnEh.SetVisible
 009FB9EE    inc         esi
 009FB9EF    dec         edi
>009FB9F0    jne         009FB8FE
>009FB9F6    jmp         009FBB12
 009FB9FB    mov         eax,dword ptr [ebx+570];TMainFormMarketSklad.DBGridEhPrihDet:TDBGridEh
 009FBA01    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009FBA07    call        TCollection.GetCount
 009FBA0C    mov         edi,eax
 009FBA0E    dec         edi
 009FBA0F    test        edi,edi
>009FBA11    jl          009FBB12
 009FBA17    inc         edi
 009FBA18    xor         esi,esi
 009FBA1A    mov         eax,dword ptr [ebx+570];TMainFormMarketSklad.DBGridEhPrihDet:TDBGridEh
 009FBA20    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009FBA26    mov         edx,esi
 009FBA28    call        00676F60
 009FBA2D    mov         eax,dword ptr [eax+40]
 009FBA30    mov         edx,9FBB94;'COST'
 009FBA35    call        @LStrCmp
>009FBA3A    jne         009FBA56
 009FBA3C    mov         eax,dword ptr [ebx+570];TMainFormMarketSklad.DBGridEhPrihDet:TDBGridEh
 009FBA42    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009FBA48    mov         edx,esi
 009FBA4A    call        00676F60
 009FBA4F    mov         dl,1
 009FBA51    call        TDBLookupGridColumnEh.SetVisible
 009FBA56    mov         eax,dword ptr [ebx+570];TMainFormMarketSklad.DBGridEhPrihDet:TDBGridEh
 009FBA5C    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009FBA62    mov         edx,esi
 009FBA64    call        00676F60
 009FBA69    mov         eax,dword ptr [eax+40]
 009FBA6C    mov         edx,9FBBA4;'SUM_LINE'
 009FBA71    call        @LStrCmp
>009FBA76    jne         009FBA92
 009FBA78    mov         eax,dword ptr [ebx+570];TMainFormMarketSklad.DBGridEhPrihDet:TDBGridEh
 009FBA7E    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009FBA84    mov         edx,esi
 009FBA86    call        00676F60
 009FBA8B    mov         dl,1
 009FBA8D    call        TDBLookupGridColumnEh.SetVisible
 009FBA92    mov         eax,dword ptr [ebx+570];TMainFormMarketSklad.DBGridEhPrihDet:TDBGridEh
 009FBA98    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009FBA9E    mov         edx,esi
 009FBAA0    call        00676F60
 009FBAA5    mov         eax,dword ptr [eax+40]
 009FBAA8    mov         edx,9FBBB8;'PRICE'
 009FBAAD    call        @LStrCmp
>009FBAB2    jne         009FBACE
 009FBAB4    mov         eax,dword ptr [ebx+570];TMainFormMarketSklad.DBGridEhPrihDet:TDBGridEh
 009FBABA    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009FBAC0    mov         edx,esi
 009FBAC2    call        00676F60
 009FBAC7    xor         edx,edx
 009FBAC9    call        TDBLookupGridColumnEh.SetVisible
 009FBACE    mov         eax,dword ptr [ebx+570];TMainFormMarketSklad.DBGridEhPrihDet:TDBGridEh
 009FBAD4    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009FBADA    mov         edx,esi
 009FBADC    call        00676F60
 009FBAE1    mov         eax,dword ptr [eax+40]
 009FBAE4    mov         edx,9FBBC8;'SUM_LINE_SALE'
 009FBAE9    call        @LStrCmp
>009FBAEE    jne         009FBB0A
 009FBAF0    mov         eax,dword ptr [ebx+570];TMainFormMarketSklad.DBGridEhPrihDet:TDBGridEh
 009FBAF6    mov         eax,dword ptr [eax+2EC];TDBGridEh.?f2EC:dword
 009FBAFC    mov         edx,esi
 009FBAFE    call        00676F60
 009FBB03    xor         edx,edx
 009FBB05    call        TDBLookupGridColumnEh.SetVisible
 009FBB0A    inc         esi
 009FBB0B    dec         edi
>009FBB0C    jne         009FBA1A
 009FBB12    xor         eax,eax
 009FBB14    pop         edx
 009FBB15    pop         ecx
 009FBB16    pop         ecx
 009FBB17    mov         dword ptr fs:[eax],edx
 009FBB1A    push        9FBB3C
 009FBB1F    lea         eax,[ebp-18]
 009FBB22    mov         edx,2
 009FBB27    call        @LStrArrayClr
 009FBB2C    lea         eax,[ebp-10]
 009FBB2F    call        @VarClr
 009FBB34    ret
>009FBB35    jmp         @HandleFinally
>009FBB3A    jmp         009FBB1F
 009FBB3C    pop         edi
 009FBB3D    pop         esi
 009FBB3E    pop         ebx
 009FBB3F    mov         esp,ebp
 009FBB41    pop         ebp
 009FBB42    ret
end;*}

//009FBBD8
{*procedure TMainFormMarketSklad.Q_RASHODSAfterScroll(?:?);
begin
 009FBBD8    push        ebp
 009FBBD9    mov         ebp,esp
 009FBBDB    xor         ecx,ecx
 009FBBDD    push        ecx
 009FBBDE    push        ecx
 009FBBDF    push        ecx
 009FBBE0    push        ecx
 009FBBE1    push        ebx
 009FBBE2    push        esi
 009FBBE3    mov         esi,edx
 009FBBE5    mov         ebx,eax
 009FBBE7    xor         eax,eax
 009FBBE9    push        ebp
 009FBBEA    push        9FBC52
 009FBBEF    push        dword ptr fs:[eax]
 009FBBF2    mov         dword ptr fs:[eax],esp
 009FBBF5    mov         eax,dword ptr [ebx+590];TMainFormMarketSklad.Q_RashLines:TOraQuery
 009FBBFB    call        TDataSet.Close
 009FBC00    mov         edx,9FBC68;'ID'
 009FBC05    mov         eax,esi
 009FBC07    call        TDataSet.FieldByName
 009FBC0C    lea         edx,[ebp-10]
 009FBC0F    mov         ecx,dword ptr [eax]
 009FBC11    call        dword ptr [ecx+64];TField.GetAsVariant
 009FBC14    lea         eax,[ebp-10]
 009FBC17    push        eax
 009FBC18    mov         edx,9FBC74;'ID_OPER'
 009FBC1D    mov         eax,dword ptr [ebx+590];TMainFormMarketSklad.Q_RashLines:TOraQuery
 009FBC23    call        006210D4
 009FBC28    pop         edx
 009FBC29    mov         ecx,dword ptr [eax]
 009FBC2B    call        dword ptr [ecx+0A0]
 009FBC31    mov         eax,dword ptr [ebx+590];TMainFormMarketSklad.Q_RashLines:TOraQuery
 009FBC37    call        TDataSet.Open
 009FBC3C    xor         eax,eax
 009FBC3E    pop         edx
 009FBC3F    pop         ecx
 009FBC40    pop         ecx
 009FBC41    mov         dword ptr fs:[eax],edx
 009FBC44    push        9FBC59
 009FBC49    lea         eax,[ebp-10]
 009FBC4C    call        @VarClr
 009FBC51    ret
>009FBC52    jmp         @HandleFinally
>009FBC57    jmp         009FBC49
 009FBC59    pop         esi
 009FBC5A    pop         ebx
 009FBC5B    mov         esp,ebp
 009FBC5D    pop         ebp
 009FBC5E    ret
end;*}

//009FBC7C
{*procedure TMainFormMarketSklad.Q_PRIHODSAfterOpen(?:?);
begin
 009FBC7C    push        ebx
 009FBC7D    mov         ebx,edx
 009FBC7F    mov         eax,ebx
 009FBC81    call        TDataSet.IsEmpty
 009FBC86    test        al,al
>009FBC88    je          009FBC98
 009FBC8A    mov         edx,ebx
 009FBC8C    mov         eax,dword ptr [ebx+13C]
 009FBC92    call        dword ptr [ebx+138]
 009FBC98    pop         ebx
 009FBC99    ret
end;*}

//009FBC9C
{*procedure TMainFormMarketSklad.Q_RASHODSAfterOpen(?:?);
begin
 009FBC9C    push        ebx
 009FBC9D    mov         ebx,edx
 009FBC9F    mov         eax,ebx
 009FBCA1    call        TDataSet.IsEmpty
 009FBCA6    test        al,al
>009FBCA8    je          009FBCB8
 009FBCAA    mov         edx,ebx
 009FBCAC    mov         eax,dword ptr [ebx+13C]
 009FBCB2    call        dword ptr [ebx+138]
 009FBCB8    pop         ebx
 009FBCB9    ret
end;*}

//009FBCBC
procedure TMainFormMarketSklad.aRes_DBExecute;
begin
{*
 009FBCBC    push        ebp
 009FBCBD    mov         ebp,esp
 009FBCBF    xor         ecx,ecx
 009FBCC1    push        ecx
 009FBCC2    push        ecx
 009FBCC3    push        ecx
 009FBCC4    push        ecx
 009FBCC5    push        ecx
 009FBCC6    push        ecx
 009FBCC7    push        ebx
 009FBCC8    mov         ebx,eax
 009FBCCA    xor         eax,eax
 009FBCCC    push        ebp
 009FBCCD    push        9FBD74
 009FBCD2    push        dword ptr fs:[eax]
 009FBCD5    mov         dword ptr fs:[eax],esp
 009FBCD8    lea         eax,[ebp-8]
 009FBCDB    call        007A3454
 009FBCE0    lea         edx,[ebp-0C]
 009FBCE3    mov         eax,dword ptr [ebp-8]
 009FBCE6    call        UpperCase
 009FBCEB    mov         eax,dword ptr [ebp-0C]
 009FBCEE    push        eax
 009FBCEF    lea         edx,[ebp-10]
 009FBCF2    mov         eax,[00AC6628];^'192.168.0.1'
 009FBCF7    call        UpperCase
 009FBCFC    mov         edx,dword ptr [ebp-10]
 009FBCFF    pop         eax
 009FBD00    call        @LStrCmp
>009FBD05    je          009FBD13
 009FBD07    mov         eax,9FBD88;'Копирование данных можно производить'+#13+только на компьютере, где установл...
 009FBD0C    call        ShowMessage
>009FBD11    jmp         009FBD59
 009FBD13    lea         edx,[ebp-14]
 009FBD16    xor         eax,eax
 009FBD18    call        ParamStr
 009FBD1D    mov         eax,dword ptr [ebp-14]
 009FBD20    lea         edx,[ebp-4]
 009FBD23    call        ExtractFilePath
 009FBD28    push        1
 009FBD2A    push        0
 009FBD2C    push        0
 009FBD2E    lea         eax,[ebp-18]
 009FBD31    mov         ecx,9FBDE8;'HandResDB.exe'
 009FBD36    mov         edx,dword ptr [ebp-4]
 009FBD39    call        @LStrCat3
 009FBD3E    mov         eax,dword ptr [ebp-18]
 009FBD41    call        @LStrToPChar
 009FBD46    push        eax
 009FBD47    push        9FBDF8
 009FBD4C    mov         eax,ebx
 009FBD4E    call        TWinControl.GetHandle
 009FBD53    push        eax
 009FBD54    call        shell32.ShellExecuteA
 009FBD59    xor         eax,eax
 009FBD5B    pop         edx
 009FBD5C    pop         ecx
 009FBD5D    pop         ecx
 009FBD5E    mov         dword ptr fs:[eax],edx
 009FBD61    push        9FBD7B
 009FBD66    lea         eax,[ebp-18]
 009FBD69    mov         edx,6
 009FBD6E    call        @LStrArrayClr
 009FBD73    ret
>009FBD74    jmp         @HandleFinally
>009FBD79    jmp         009FBD66
 009FBD7B    pop         ebx
 009FBD7C    mov         esp,ebp
 009FBD7E    pop         ebp
 009FBD7F    ret
*}
end;

//009FBE00
procedure TMainFormMarketSklad.aRestore_DBExecute;
begin
{*
 009FBE00    push        ebp
 009FBE01    mov         ebp,esp
 009FBE03    mov         ecx,4
 009FBE08    push        0
 009FBE0A    push        0
 009FBE0C    dec         ecx
>009FBE0D    jne         009FBE08
 009FBE0F    push        ecx
 009FBE10    push        ebx
 009FBE11    mov         ebx,eax
 009FBE13    xor         eax,eax
 009FBE15    push        ebp
 009FBE16    push        9FBF33
 009FBE1B    push        dword ptr fs:[eax]
 009FBE1E    mov         dword ptr fs:[eax],esp
 009FBE21    lea         eax,[ebp-8]
 009FBE24    call        007A3454
 009FBE29    lea         edx,[ebp-0C]
 009FBE2C    mov         eax,dword ptr [ebp-8]
 009FBE2F    call        UpperCase
 009FBE34    mov         eax,dword ptr [ebp-0C]
 009FBE37    push        eax
 009FBE38    lea         edx,[ebp-10]
 009FBE3B    mov         eax,[00AC6628];^'192.168.0.1'
 009FBE40    call        UpperCase
 009FBE45    mov         edx,dword ptr [ebp-10]
 009FBE48    pop         eax
 009FBE49    call        @LStrCmp
>009FBE4E    je          009FBE5F
 009FBE50    mov         eax,9FBF48;'Восстановление данных можно производить'+#13+только на компьютере, где устан...
 009FBE55    call        ShowMessage
>009FBE5A    jmp         009FBF18
 009FBE5F    mov         eax,9FBFAC;'На время восстановления БД программа будет закрыта!'
 009FBE64    call        ShowMessage
 009FBE69    lea         edx,[ebp-14]
 009FBE6C    xor         eax,eax
 009FBE6E    call        ParamStr
 009FBE73    mov         eax,dword ptr [ebp-14]
 009FBE76    lea         edx,[ebp-4]
 009FBE79    call        ExtractFilePath
 009FBE7E    lea         eax,[ebp-18]
 009FBE81    mov         ecx,9FBFE8;'HandRestoreDB.exe'
 009FBE86    mov         edx,dword ptr [ebp-4]
 009FBE89    call        @LStrCat3
 009FBE8E    mov         eax,dword ptr [ebp-18]
 009FBE91    call        FileExists
 009FBE96    test        al,al
>009FBE98    je          009FBECB
 009FBE9A    push        1
 009FBE9C    push        0
 009FBE9E    push        0
 009FBEA0    lea         eax,[ebp-1C]
 009FBEA3    mov         ecx,9FBFE8;'HandRestoreDB.exe'
 009FBEA8    mov         edx,dword ptr [ebp-4]
 009FBEAB    call        @LStrCat3
 009FBEB0    mov         eax,dword ptr [ebp-1C]
 009FBEB3    call        @LStrToPChar
 009FBEB8    push        eax
 009FBEB9    push        9FBFFC
 009FBEBE    mov         eax,ebx
 009FBEC0    call        TWinControl.GetHandle
 009FBEC5    push        eax
 009FBEC6    call        shell32.ShellExecuteA
 009FBECB    lea         eax,[ebp-20]
 009FBECE    mov         ecx,9FC00C;'HandRestoreDB2.exe'
 009FBED3    mov         edx,dword ptr [ebp-4]
 009FBED6    call        @LStrCat3
 009FBEDB    mov         eax,dword ptr [ebp-20]
 009FBEDE    call        FileExists
 009FBEE3    test        al,al
>009FBEE5    je          009FBF18
 009FBEE7    push        1
 009FBEE9    push        0
 009FBEEB    push        0
 009FBEED    lea         eax,[ebp-24]
 009FBEF0    mov         ecx,9FC00C;'HandRestoreDB2.exe'
 009FBEF5    mov         edx,dword ptr [ebp-4]
 009FBEF8    call        @LStrCat3
 009FBEFD    mov         eax,dword ptr [ebp-24]
 009FBF00    call        @LStrToPChar
 009FBF05    push        eax
 009FBF06    push        9FBFFC
 009FBF0B    mov         eax,ebx
 009FBF0D    call        TWinControl.GetHandle
 009FBF12    push        eax
 009FBF13    call        shell32.ShellExecuteA
 009FBF18    xor         eax,eax
 009FBF1A    pop         edx
 009FBF1B    pop         ecx
 009FBF1C    pop         ecx
 009FBF1D    mov         dword ptr fs:[eax],edx
 009FBF20    push        9FBF3A
 009FBF25    lea         eax,[ebp-24]
 009FBF28    mov         edx,9
 009FBF2D    call        @LStrArrayClr
 009FBF32    ret
>009FBF33    jmp         @HandleFinally
>009FBF38    jmp         009FBF25
 009FBF3A    pop         ebx
 009FBF3B    mov         esp,ebp
 009FBF3D    pop         ebp
 009FBF3E    ret
*}
end;

//009FC020
procedure TMainFormMarketSklad.FormCloseQuery(Sender:TObject; var CanClose:Boolean);
begin
{*
 009FC020    push        ebp
 009FC021    mov         ebp,esp
 009FC023    push        0
 009FC025    push        0
 009FC027    push        0
 009FC029    push        0
 009FC02B    push        0
 009FC02D    push        0
 009FC02F    push        0
 009FC031    push        0
 009FC033    push        ebx
 009FC034    push        esi
 009FC035    mov         esi,ecx
 009FC037    mov         ebx,eax
 009FC039    xor         eax,eax
 009FC03B    push        ebp
 009FC03C    push        9FC176
 009FC041    push        dword ptr fs:[eax]
 009FC044    mov         dword ptr fs:[eax],esp
 009FC047    lea         eax,[ebp-8]
 009FC04A    call        007A3454
 009FC04F    lea         edx,[ebp-0C]
 009FC052    mov         eax,dword ptr [ebp-8]
 009FC055    call        UpperCase
 009FC05A    mov         eax,dword ptr [ebp-0C]
 009FC05D    push        eax
 009FC05E    lea         edx,[ebp-10]
 009FC061    mov         eax,[00AC6628];^'192.168.0.1'
 009FC066    call        UpperCase
 009FC06B    mov         edx,dword ptr [ebp-10]
 009FC06E    pop         eax
 009FC06F    call        @LStrCmp
>009FC074    jne         009FC148
 009FC07A    cmp         byte ptr ds:[0AC6620],0;gvar_00AC6620
>009FC081    je          009FC148
 009FC087    cmp         dword ptr ds:[0AC6654],1;gvar_00AC6654:Integer
>009FC08E    jne         009FC0F9
 009FC090    push        24
 009FC092    mov         ecx,9FC184
 009FC097    mov         edx,9FC198
 009FC09C    mov         eax,[00AC721C];^Application:TApplication
 009FC0A1    mov         eax,dword ptr [eax]
 009FC0A3    call        TApplication.MessageBox
 009FC0A8    cmp         eax,6
>009FC0AB    jne         009FC148
 009FC0B1    lea         edx,[ebp-14]
 009FC0B4    xor         eax,eax
 009FC0B6    call        ParamStr
 009FC0BB    mov         eax,dword ptr [ebp-14]
 009FC0BE    lea         edx,[ebp-4]
 009FC0C1    call        ExtractFilePath
 009FC0C6    push        1
 009FC0C8    push        0
 009FC0CA    push        0
 009FC0CC    lea         eax,[ebp-18]
 009FC0CF    mov         ecx,9FC1BC;'AutoResDB.exe'
 009FC0D4    mov         edx,dword ptr [ebp-4]
 009FC0D7    call        @LStrCat3
 009FC0DC    mov         eax,dword ptr [ebp-18]
 009FC0DF    call        @LStrToPChar
 009FC0E4    push        eax
 009FC0E5    push        9FC1CC
 009FC0EA    mov         eax,ebx
 009FC0EC    call        TWinControl.GetHandle
 009FC0F1    push        eax
 009FC0F2    call        shell32.ShellExecuteA
>009FC0F7    jmp         009FC148
 009FC0F9    cmp         dword ptr ds:[0AC6654],2;gvar_00AC6654:Integer
>009FC100    jne         009FC148
 009FC102    lea         edx,[ebp-1C]
 009FC105    xor         eax,eax
 009FC107    call        ParamStr
 009FC10C    mov         eax,dword ptr [ebp-1C]
 009FC10F    lea         edx,[ebp-4]
 009FC112    call        ExtractFilePath
 009FC117    push        1
 009FC119    push        0
 009FC11B    push        0
 009FC11D    lea         eax,[ebp-20]
 009FC120    mov         ecx,9FC1BC;'AutoResDB.exe'
 009FC125    mov         edx,dword ptr [ebp-4]
 009FC128    call        @LStrCat3
 009FC12D    mov         eax,dword ptr [ebp-20]
 009FC130    call        @LStrToPChar
 009FC135    push        eax
 009FC136    push        9FC1CC
 009FC13B    mov         eax,ebx
 009FC13D    call        TWinControl.GetHandle
 009FC142    push        eax
 009FC143    call        shell32.ShellExecuteA
 009FC148    call        00976AF4
 009FC14D    mov         byte ptr [esi],1
 009FC150    mov         eax,dword ptr [ebx+3BC];TMainFormMarketSklad.OraAlerter1:TOraAlerter
 009FC156    call        006AB120
 009FC15B    xor         eax,eax
 009FC15D    pop         edx
 009FC15E    pop         ecx
 009FC15F    pop         ecx
 009FC160    mov         dword ptr fs:[eax],edx
 009FC163    push        9FC17D
 009FC168    lea         eax,[ebp-20]
 009FC16B    mov         edx,8
 009FC170    call        @LStrArrayClr
 009FC175    ret
>009FC176    jmp         @HandleFinally
>009FC17B    jmp         009FC168
 009FC17D    pop         esi
 009FC17E    pop         ebx
 009FC17F    mov         esp,ebp
 009FC181    pop         ebp
 009FC182    ret
*}
end;

//009FC1D4
procedure TMainFormMarketSklad.aClearDatabaseExecute;
begin
{*
 009FC1D4    push        ebp
 009FC1D5    mov         ebp,esp
 009FC1D7    push        0
 009FC1D9    push        ebx
 009FC1DA    push        esi
 009FC1DB    mov         ebx,eax
 009FC1DD    xor         eax,eax
 009FC1DF    push        ebp
 009FC1E0    push        9FC275
 009FC1E5    push        dword ptr fs:[eax]
 009FC1E8    mov         dword ptr fs:[eax],esp
 009FC1EB    cmp         dword ptr ds:[0AC661C],0;gvar_00AC661C:Longint
>009FC1F2    je          009FC205
 009FC1F4    mov         edx,9FC28C;'Очистка базы доступна только администратору!'
 009FC1F9    mov         eax,9FC2C4;'Внимание!'
 009FC1FE    call        006C6350
>009FC203    jmp         009FC25F
 009FC205    lea         eax,[ebp-4]
 009FC208    mov         edx,9FC2D8;'В Н И М А Н И Е !!!'+#13+#13+Вы действительно хотите очистить БД?'+#13+#13+П...
 009FC20D    call        @LStrLAsg
 009FC212    push        24
 009FC214    mov         eax,dword ptr [ebp-4]
 009FC217    call        @LStrToPChar
 009FC21C    mov         edx,eax
 009FC21E    mov         ecx,9FC3A4
 009FC223    mov         eax,[00AC721C];^Application:TApplication
 009FC228    mov         eax,dword ptr [eax]
 009FC22A    call        TApplication.MessageBox
 009FC22F    cmp         eax,6
>009FC232    jne         009FC25F
 009FC234    call        0097329C
 009FC239    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009FC23E    mov         eax,dword ptr [eax]
 009FC240    mov         edx,dword ptr ds:[0AC6630];^'OPT_USER_'
 009FC246    call        TDM.CompileAllInvalidObjects
 009FC24B    mov         esi,dword ptr [ebx+2F8];TMainFormMarketSklad.PageControl1:TPageControl
 009FC251    mov         edx,ebx
 009FC253    mov         eax,dword ptr [esi+24C];TPageControl.?f24C:TfrxPreview
 009FC259    call        dword ptr [esi+248];TPageControl.FOnChange
 009FC25F    xor         eax,eax
 009FC261    pop         edx
 009FC262    pop         ecx
 009FC263    pop         ecx
 009FC264    mov         dword ptr fs:[eax],edx
 009FC267    push        9FC27C
 009FC26C    lea         eax,[ebp-4]
 009FC26F    call        @LStrClr
 009FC274    ret
>009FC275    jmp         @HandleFinally
>009FC27A    jmp         009FC26C
 009FC27C    pop         esi
 009FC27D    pop         ebx
 009FC27E    pop         ecx
 009FC27F    pop         ebp
 009FC280    ret
*}
end;

//009FC3B8
procedure TMainFormMarketSklad.aClearDatabasePartExecute;
begin
{*
 009FC3B8    push        ebp
 009FC3B9    mov         ebp,esp
 009FC3BB    push        0
 009FC3BD    push        ebx
 009FC3BE    push        esi
 009FC3BF    mov         ebx,eax
 009FC3C1    xor         eax,eax
 009FC3C3    push        ebp
 009FC3C4    push        9FC459
 009FC3C9    push        dword ptr fs:[eax]
 009FC3CC    mov         dword ptr fs:[eax],esp
 009FC3CF    cmp         dword ptr ds:[0AC661C],0;gvar_00AC661C:Longint
>009FC3D6    je          009FC3E9
 009FC3D8    mov         edx,9FC470;'Очистка базы доступна только администратору!'
 009FC3DD    mov         eax,9FC4A8;'Внимание!'
 009FC3E2    call        006C6350
>009FC3E7    jmp         009FC443
 009FC3E9    lea         eax,[ebp-4]
 009FC3EC    mov         edx,9FC4BC;'В Н И М А Н И Е !!!'+#13+#13+Вы действительно хотите очистить БД?'+#13+#13+П...
 009FC3F1    call        @LStrLAsg
 009FC3F6    push        24
 009FC3F8    mov         eax,dword ptr [ebp-4]
 009FC3FB    call        @LStrToPChar
 009FC400    mov         edx,eax
 009FC402    mov         ecx,9FC588
 009FC407    mov         eax,[00AC721C];^Application:TApplication
 009FC40C    mov         eax,dword ptr [eax]
 009FC40E    call        TApplication.MessageBox
 009FC413    cmp         eax,6
>009FC416    jne         009FC443
 009FC418    call        0097355C
 009FC41D    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009FC422    mov         eax,dword ptr [eax]
 009FC424    mov         edx,dword ptr ds:[0AC6630];^'OPT_USER_'
 009FC42A    call        TDM.CompileAllInvalidObjects
 009FC42F    mov         esi,dword ptr [ebx+2F8];TMainFormMarketSklad.PageControl1:TPageControl
 009FC435    mov         edx,ebx
 009FC437    mov         eax,dword ptr [esi+24C];TPageControl.?f24C:TfrxPreview
 009FC43D    call        dword ptr [esi+248];TPageControl.FOnChange
 009FC443    xor         eax,eax
 009FC445    pop         edx
 009FC446    pop         ecx
 009FC447    pop         ecx
 009FC448    mov         dword ptr fs:[eax],edx
 009FC44B    push        9FC460
 009FC450    lea         eax,[ebp-4]
 009FC453    call        @LStrClr
 009FC458    ret
>009FC459    jmp         @HandleFinally
>009FC45E    jmp         009FC450
 009FC460    pop         esi
 009FC461    pop         ebx
 009FC462    pop         ecx
 009FC463    pop         ebp
 009FC464    ret
*}
end;

//009FC59C
procedure TMainFormMarketSklad.aMassUpdateToNomsExecute;
begin
{*
 009FC59C    push        ebp
 009FC59D    mov         ebp,esp
 009FC59F    push        ecx
 009FC5A0    mov         ecx,eax
 009FC5A2    mov         dl,1
 009FC5A4    mov         eax,[009C99CC];TFormMassOpersToNoms
 009FC5A9    call        TCustomForm.Create;TFormMassOpersToNoms.Create
 009FC5AE    mov         dword ptr [ebp-4],eax
 009FC5B1    xor         eax,eax
 009FC5B3    push        ebp
 009FC5B4    push        9FC5EA
 009FC5B9    push        dword ptr fs:[eax]
 009FC5BC    mov         dword ptr fs:[eax],esp
 009FC5BF    mov         eax,dword ptr [ebp-4]
 009FC5C2    mov         byte ptr [eax+47C],0;TFormMassOpersToNoms.?f47C:byte
 009FC5C9    mov         eax,dword ptr [ebp-4]
 009FC5CC    mov         edx,dword ptr [eax]
 009FC5CE    call        dword ptr [edx+0EC];TFormMassOpersToNoms.sub_004AA600
 009FC5D4    xor         eax,eax
 009FC5D6    pop         edx
 009FC5D7    pop         ecx
 009FC5D8    pop         ecx
 009FC5D9    mov         dword ptr fs:[eax],edx
 009FC5DC    push        9FC5F1
 009FC5E1    mov         eax,dword ptr [ebp-4]
 009FC5E4    call        TObject.Free
 009FC5E9    ret
>009FC5EA    jmp         @HandleFinally
>009FC5EF    jmp         009FC5E1
 009FC5F1    pop         ecx
 009FC5F2    pop         ebp
 009FC5F3    ret
*}
end;

//009FC5F4
procedure TMainFormMarketSklad.aMassDeleteNomsExecute;
begin
{*
 009FC5F4    push        ebp
 009FC5F5    mov         ebp,esp
 009FC5F7    push        ecx
 009FC5F8    mov         ecx,eax
 009FC5FA    mov         dl,1
 009FC5FC    mov         eax,[009C99CC];TFormMassOpersToNoms
 009FC601    call        TCustomForm.Create;TFormMassOpersToNoms.Create
 009FC606    mov         dword ptr [ebp-4],eax
 009FC609    xor         eax,eax
 009FC60B    push        ebp
 009FC60C    push        9FC642
 009FC611    push        dword ptr fs:[eax]
 009FC614    mov         dword ptr fs:[eax],esp
 009FC617    mov         eax,dword ptr [ebp-4]
 009FC61A    mov         byte ptr [eax+47C],1;TFormMassOpersToNoms.?f47C:byte
 009FC621    mov         eax,dword ptr [ebp-4]
 009FC624    mov         edx,dword ptr [eax]
 009FC626    call        dword ptr [edx+0EC];TFormMassOpersToNoms.sub_004AA600
 009FC62C    xor         eax,eax
 009FC62E    pop         edx
 009FC62F    pop         ecx
 009FC630    pop         ecx
 009FC631    mov         dword ptr fs:[eax],edx
 009FC634    push        9FC649
 009FC639    mov         eax,dword ptr [ebp-4]
 009FC63C    call        TObject.Free
 009FC641    ret
>009FC642    jmp         @HandleFinally
>009FC647    jmp         009FC639
 009FC649    pop         ecx
 009FC64A    pop         ebp
 009FC64B    ret
*}
end;

//009FC64C
{*procedure TMainFormMarketSklad.aHandRefreshOstatsUpdate(?:?);
begin
 009FC64C    push        ebx
 009FC64D    push        esi
 009FC64E    mov         esi,edx
 009FC650    mov         ebx,eax
 009FC652    mov         eax,dword ptr [ebx+7F0];TMainFormMarketSklad.chbAutoRefresh:TCheckBox
 009FC658    mov         edx,dword ptr [eax]
 009FC65A    call        dword ptr [edx+0C8];TCustomCheckBox.GetChecked
 009FC660    xor         al,1
 009FC662    push        eax
 009FC663    mov         eax,esi
 009FC665    mov         edx,dword ptr ds:[497794];TCustomAction
 009FC66B    call        @AsClass
 009FC670    pop         edx
 009FC671    call        TCustomAction.SetEnabled
 009FC676    pop         esi
 009FC677    pop         ebx
 009FC678    ret
end;*}

//009FC67C
procedure TMainFormMarketSklad.aHandRefreshOstatsExecute;
begin
{*
 009FC67C    push        ebx
 009FC67D    mov         ebx,dword ptr [eax+2F8];TMainFormMarketSklad.PageControl1:TPageControl
 009FC683    mov         edx,eax
 009FC685    mov         eax,dword ptr [ebx+24C];TPageControl.?f24C:TfrxPreview
 009FC68B    call        dword ptr [ebx+248];TPageControl.FOnChange
 009FC691    pop         ebx
 009FC692    ret
*}
end;

//009FC694
procedure TMainFormMarketSklad.aSprTovarsExecute;
begin
{*
 009FC694    push        ebx
 009FC695    mov         ebx,eax
 009FC697    mov         eax,[00AC68AC];^gvar_00ACEA64:TFormSprNoms
 009FC69C    cmp         dword ptr [eax],0
>009FC69F    jne         009FC6B7
 009FC6A1    mov         ecx,ebx
 009FC6A3    mov         dl,1
 009FC6A5    mov         eax,[009A3460];TFormSprNoms
 009FC6AA    call        TCustomForm.Create;TFormSprNoms.Create
 009FC6AF    mov         edx,dword ptr ds:[0AC68AC];^gvar_00ACEA64:TFormSprNoms
 009FC6B5    mov         dword ptr [edx],eax
 009FC6B7    mov         eax,[00AC68AC];^gvar_00ACEA64:TFormSprNoms
 009FC6BC    mov         eax,dword ptr [eax]
 009FC6BE    xor         edx,edx
 009FC6C0    call        TCustomForm.SetWindowState
 009FC6C5    mov         eax,[00AC68AC];^gvar_00ACEA64:TFormSprNoms
 009FC6CA    mov         eax,dword ptr [eax]
 009FC6CC    call        TCustomForm.Show
 009FC6D1    pop         ebx
 009FC6D2    ret
*}
end;

//009FC6D4
{*procedure TMainFormMarketSklad.aPrintPrihOrderUpdate(?:?);
begin
 009FC6D4    push        ebx
 009FC6D5    push        esi
 009FC6D6    mov         esi,edx
 009FC6D8    mov         ebx,eax
 009FC6DA    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009FC6E0    call        TDataSet.IsEmpty
 009FC6E5    test        al,al
>009FC6E7    jne         009FC703
 009FC6E9    mov         edx,9FC728;'ID_OPER_TYPE'
 009FC6EE    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009FC6F4    call        TDataSet.FieldByName
 009FC6F9    mov         edx,dword ptr [eax]
 009FC6FB    call        dword ptr [edx+58];TField.GetAsInteger
 009FC6FE    cmp         eax,2
>009FC701    je          009FC707
 009FC703    xor         eax,eax
>009FC705    jmp         009FC709
 009FC707    mov         al,1
 009FC709    push        eax
 009FC70A    mov         eax,esi
 009FC70C    mov         edx,dword ptr ds:[497794];TCustomAction
 009FC712    call        @AsClass
 009FC717    pop         edx
 009FC718    call        TCustomAction.SetEnabled
 009FC71D    pop         esi
 009FC71E    pop         ebx
 009FC71F    ret
end;*}

//009FC738
procedure TMainFormMarketSklad.aFinPrihodExecute;
begin
{*
 009FC738    push        ebp
 009FC739    mov         ebp,esp
 009FC73B    push        ecx
 009FC73C    mov         ecx,eax
 009FC73E    mov         dl,1
 009FC740    mov         eax,[009CD370];TFormFinanses
 009FC745    call        TCustomForm.Create;TFormFinanses.Create
 009FC74A    mov         dword ptr [ebp-4],eax
 009FC74D    xor         eax,eax
 009FC74F    push        ebp
 009FC750    push        9FC7CC
 009FC755    push        dword ptr fs:[eax]
 009FC758    mov         dword ptr fs:[eax],esp
 009FC75B    call        Date
 009FC760    fsub        dword ptr ds:[9FC7D8];365:Single
 009FC766    add         esp,0FFFFFFF8
 009FC769    fstp        qword ptr [esp]
 009FC76C    wait
 009FC76D    mov         eax,dword ptr [ebp-4]
 009FC770    mov         eax,dword ptr [eax+308];TFormFinanses.deBgn:TDateEdit
 009FC776    mov         edx,dword ptr [eax]
 009FC778    call        dword ptr [edx+12C];TDateEdit.sub_006A9B78
 009FC77E    call        Date
 009FC783    add         esp,0FFFFFFF8
 009FC786    fstp        qword ptr [esp]
 009FC789    wait
 009FC78A    mov         eax,dword ptr [ebp-4]
 009FC78D    mov         eax,dword ptr [eax+30C];TFormFinanses.deEnd:TDateEdit
 009FC793    mov         edx,dword ptr [eax]
 009FC795    call        dword ptr [edx+12C];TDateEdit.sub_006A9B78
 009FC79B    mov         eax,dword ptr [ebp-4]
 009FC79E    mov         eax,dword ptr [eax+328];TFormFinanses.PageControl1:TPageControl
 009FC7A4    xor         edx,edx
 009FC7A6    call        TPageControl.SetActivePageIndex
 009FC7AB    mov         eax,dword ptr [ebp-4]
 009FC7AE    mov         edx,dword ptr [eax]
 009FC7B0    call        dword ptr [edx+0EC];TFormFinanses.sub_004AA600
 009FC7B6    xor         eax,eax
 009FC7B8    pop         edx
 009FC7B9    pop         ecx
 009FC7BA    pop         ecx
 009FC7BB    mov         dword ptr fs:[eax],edx
 009FC7BE    push        9FC7D3
 009FC7C3    mov         eax,dword ptr [ebp-4]
 009FC7C6    call        TObject.Free
 009FC7CB    ret
>009FC7CC    jmp         @HandleFinally
>009FC7D1    jmp         009FC7C3
 009FC7D3    pop         ecx
 009FC7D4    pop         ebp
 009FC7D5    ret
*}
end;

//009FC7DC
procedure TMainFormMarketSklad.aFinRashodExecute;
begin
{*
 009FC7DC    push        ebp
 009FC7DD    mov         ebp,esp
 009FC7DF    push        ecx
 009FC7E0    mov         ecx,eax
 009FC7E2    mov         dl,1
 009FC7E4    mov         eax,[009CD370];TFormFinanses
 009FC7E9    call        TCustomForm.Create;TFormFinanses.Create
 009FC7EE    mov         dword ptr [ebp-4],eax
 009FC7F1    xor         eax,eax
 009FC7F3    push        ebp
 009FC7F4    push        9FC873
 009FC7F9    push        dword ptr fs:[eax]
 009FC7FC    mov         dword ptr fs:[eax],esp
 009FC7FF    call        Date
 009FC804    fsub        dword ptr ds:[9FC880];365:Single
 009FC80A    add         esp,0FFFFFFF8
 009FC80D    fstp        qword ptr [esp]
 009FC810    wait
 009FC811    mov         eax,dword ptr [ebp-4]
 009FC814    mov         eax,dword ptr [eax+308];TFormFinanses.deBgn:TDateEdit
 009FC81A    mov         edx,dword ptr [eax]
 009FC81C    call        dword ptr [edx+12C];TDateEdit.sub_006A9B78
 009FC822    call        Date
 009FC827    add         esp,0FFFFFFF8
 009FC82A    fstp        qword ptr [esp]
 009FC82D    wait
 009FC82E    mov         eax,dword ptr [ebp-4]
 009FC831    mov         eax,dword ptr [eax+30C];TFormFinanses.deEnd:TDateEdit
 009FC837    mov         edx,dword ptr [eax]
 009FC839    call        dword ptr [edx+12C];TDateEdit.sub_006A9B78
 009FC83F    mov         eax,dword ptr [ebp-4]
 009FC842    mov         eax,dword ptr [eax+328];TFormFinanses.PageControl1:TPageControl
 009FC848    mov         edx,1
 009FC84D    call        TPageControl.SetActivePageIndex
 009FC852    mov         eax,dword ptr [ebp-4]
 009FC855    mov         edx,dword ptr [eax]
 009FC857    call        dword ptr [edx+0EC];TFormFinanses.sub_004AA600
 009FC85D    xor         eax,eax
 009FC85F    pop         edx
 009FC860    pop         ecx
 009FC861    pop         ecx
 009FC862    mov         dword ptr fs:[eax],edx
 009FC865    push        9FC87A
 009FC86A    mov         eax,dword ptr [ebp-4]
 009FC86D    call        TObject.Free
 009FC872    ret
>009FC873    jmp         @HandleFinally
>009FC878    jmp         009FC86A
 009FC87A    pop         ecx
 009FC87B    pop         ebp
 009FC87C    ret
*}
end;

//009FC884
procedure TMainFormMarketSklad.rgSortClick(Sender:TObject);
begin
{*
 009FC884    push        ebx
 009FC885    push        esi
 009FC886    mov         ebx,eax
 009FC888    mov         esi,dword ptr [ebx+2F8];TMainFormMarketSklad.PageControl1:TPageControl
 009FC88E    mov         edx,ebx
 009FC890    mov         eax,dword ptr [esi+24C];TPageControl.?f24C:TfrxPreview
 009FC896    call        dword ptr [esi+248];TPageControl.FOnChange
 009FC89C    mov         eax,dword ptr [ebx+2F8];TMainFormMarketSklad.PageControl1:TPageControl
 009FC8A2    call        TPageControl.GetActivePageIndex
 009FC8A7    test        eax,eax
>009FC8A9    jne         009FC8B6
 009FC8AB    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009FC8B1    call        TDataSet.First
 009FC8B6    pop         esi
 009FC8B7    pop         ebx
 009FC8B8    ret
*}
end;

//009FC8BC
procedure TMainFormMarketSklad.rgSortPrihsClick(Sender:TObject);
begin
{*
 009FC8BC    push        ebx
 009FC8BD    mov         ebx,dword ptr [eax+2F8];TMainFormMarketSklad.PageControl1:TPageControl
 009FC8C3    mov         edx,eax
 009FC8C5    mov         eax,dword ptr [ebx+24C];TPageControl.?f24C:TfrxPreview
 009FC8CB    call        dword ptr [ebx+248];TPageControl.FOnChange
 009FC8D1    pop         ebx
 009FC8D2    ret
*}
end;

//009FC8D4
procedure TMainFormMarketSklad.rgSortRashsClick(Sender:TObject);
begin
{*
 009FC8D4    push        ebx
 009FC8D5    mov         ebx,dword ptr [eax+2F8];TMainFormMarketSklad.PageControl1:TPageControl
 009FC8DB    mov         edx,eax
 009FC8DD    mov         eax,dword ptr [ebx+24C];TPageControl.?f24C:TfrxPreview
 009FC8E3    call        dword ptr [ebx+248];TPageControl.FOnChange
 009FC8E9    pop         ebx
 009FC8EA    ret
*}
end;

//009FC8EC
{*procedure TMainFormMarketSklad.DBGridEh_PrihodsGetCellParams(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 009FC8EC    push        ebp
 009FC8ED    mov         ebp,esp
 009FC8EF    add         esp,0FFFFFFF0
 009FC8F2    push        ebx
 009FC8F3    push        esi
 009FC8F4    push        edi
 009FC8F5    xor         ebx,ebx
 009FC8F7    mov         dword ptr [ebp-4],ebx
 009FC8FA    mov         ebx,ecx
 009FC8FC    mov         edi,dword ptr [ebp+0C]
 009FC8FF    mov         esi,dword ptr [ebp+10]
 009FC902    xor         eax,eax
 009FC904    push        ebp
 009FC905    push        9FC9C0
 009FC90A    push        dword ptr fs:[eax]
 009FC90D    mov         dword ptr fs:[eax],esp
 009FC910    mov         eax,ebx
 009FC912    call        00673E98
 009FC917    mov         edx,dword ptr [eax+8]
 009FC91A    lea         eax,[ebp-4]
 009FC91D    call        @LStrLAsg
 009FC922    mov         eax,ebx
 009FC924    call        00673E98
 009FC929    mov         eax,dword ptr [eax+34]
 009FC92C    mov         edx,9FC9D8;'SUMMA_DOLG'
 009FC931    call        TDataSet.FieldByName
 009FC936    mov         edx,dword ptr [eax]
 009FC938    call        dword ptr [edx+4C];TField.GetAsCurrency
 009FC93B    fistp       qword ptr [ebp-10]
 009FC93E    wait
 009FC93F    test        byte ptr [ebp+8],1
>009FC943    jne         009FC998
 009FC945    fild        qword ptr [ebp-10]
 009FC948    fcomp       dword ptr ds:[9FC9E4];0:Single
 009FC94E    fnstsw      al
 009FC950    sahf
>009FC951    jbe         009FC984
 009FC953    mov         dword ptr [edi],0BFBFFF
 009FC959    mov         eax,dword ptr [ebp-4]
 009FC95C    mov         edx,9FC9F0;'Q_PRIHODSSUMMA_DOLG'
 009FC961    call        @LStrCmp
>009FC966    jne         009FC976
 009FC968    mov         edx,80
 009FC96D    mov         eax,esi
 009FC96F    call        TFont.SetColor
>009FC974    jmp         009FC9AA
 009FC976    mov         edx,800000;^'enBandPos'
 009FC97B    mov         eax,esi
 009FC97D    call        TFont.SetColor
>009FC982    jmp         009FC9AA
 009FC984    mov         dword ptr [edi],0FF000005
 009FC98A    mov         edx,800000;^'enBandPos'
 009FC98F    mov         eax,esi
 009FC991    call        TFont.SetColor
>009FC996    jmp         009FC9AA
 009FC998    mov         edx,0FFFFFF
 009FC99D    mov         eax,esi
 009FC99F    call        TFont.SetColor
 009FC9A4    mov         dword ptr [edi],800000;^'enBandPos'
 009FC9AA    xor         eax,eax
 009FC9AC    pop         edx
 009FC9AD    pop         ecx
 009FC9AE    pop         ecx
 009FC9AF    mov         dword ptr fs:[eax],edx
 009FC9B2    push        9FC9C7
 009FC9B7    lea         eax,[ebp-4]
 009FC9BA    call        @LStrClr
 009FC9BF    ret
>009FC9C0    jmp         @HandleFinally
>009FC9C5    jmp         009FC9B7
 009FC9C7    pop         edi
 009FC9C8    pop         esi
 009FC9C9    pop         ebx
 009FC9CA    mov         esp,ebp
 009FC9CC    pop         ebp
 009FC9CD    ret         0C
end;*}

//009FCA04
{*procedure TMainFormMarketSklad.DBGridEh_RashodsGetCellParams(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 009FCA04    push        ebp
 009FCA05    mov         ebp,esp
 009FCA07    add         esp,0FFFFFFF4
 009FCA0A    push        ebx
 009FCA0B    push        esi
 009FCA0C    push        edi
 009FCA0D    xor         ebx,ebx
 009FCA0F    mov         dword ptr [ebp-0C],ebx
 009FCA12    mov         ebx,ecx
 009FCA14    mov         edi,dword ptr [ebp+0C]
 009FCA17    mov         esi,dword ptr [ebp+10]
 009FCA1A    xor         eax,eax
 009FCA1C    push        ebp
 009FCA1D    push        9FCAD8
 009FCA22    push        dword ptr fs:[eax]
 009FCA25    mov         dword ptr fs:[eax],esp
 009FCA28    mov         eax,ebx
 009FCA2A    call        00673E98
 009FCA2F    mov         edx,dword ptr [eax+8]
 009FCA32    lea         eax,[ebp-0C]
 009FCA35    call        @LStrLAsg
 009FCA3A    mov         eax,ebx
 009FCA3C    call        00673E98
 009FCA41    mov         eax,dword ptr [eax+34]
 009FCA44    mov         edx,9FCAF0;'SUMMA_DOLG'
 009FCA49    call        TDataSet.FieldByName
 009FCA4E    mov         edx,dword ptr [eax]
 009FCA50    call        dword ptr [edx+4C];TField.GetAsCurrency
 009FCA53    fistp       qword ptr [ebp-8]
 009FCA56    wait
 009FCA57    test        byte ptr [ebp+8],1
>009FCA5B    jne         009FCAB0
 009FCA5D    fild        qword ptr [ebp-8]
 009FCA60    fcomp       dword ptr ds:[9FCAFC];0:Single
 009FCA66    fnstsw      al
 009FCA68    sahf
>009FCA69    jbe         009FCA9C
 009FCA6B    mov         dword ptr [edi],0BFBFFF
 009FCA71    mov         eax,dword ptr [ebp-0C]
 009FCA74    mov         edx,9FCB08;'Q_RASHODSSUMMA_DOLG'
 009FCA79    call        @LStrCmp
>009FCA7E    jne         009FCA8E
 009FCA80    mov         edx,80
 009FCA85    mov         eax,esi
 009FCA87    call        TFont.SetColor
>009FCA8C    jmp         009FCAC2
 009FCA8E    mov         edx,800000;^'enBandPos'
 009FCA93    mov         eax,esi
 009FCA95    call        TFont.SetColor
>009FCA9A    jmp         009FCAC2
 009FCA9C    mov         dword ptr [edi],0FF000005
 009FCAA2    mov         edx,800000;^'enBandPos'
 009FCAA7    mov         eax,esi
 009FCAA9    call        TFont.SetColor
>009FCAAE    jmp         009FCAC2
 009FCAB0    mov         edx,0FFFFFF
 009FCAB5    mov         eax,esi
 009FCAB7    call        TFont.SetColor
 009FCABC    mov         dword ptr [edi],800000;^'enBandPos'
 009FCAC2    xor         eax,eax
 009FCAC4    pop         edx
 009FCAC5    pop         ecx
 009FCAC6    pop         ecx
 009FCAC7    mov         dword ptr fs:[eax],edx
 009FCACA    push        9FCADF
 009FCACF    lea         eax,[ebp-0C]
 009FCAD2    call        @LStrClr
 009FCAD7    ret
>009FCAD8    jmp         @HandleFinally
>009FCADD    jmp         009FCACF
 009FCADF    pop         edi
 009FCAE0    pop         esi
 009FCAE1    pop         ebx
 009FCAE2    mov         esp,ebp
 009FCAE4    pop         ebp
 009FCAE5    ret         0C
end;*}

//009FCB1C
procedure TMainFormMarketSklad.DBText3DblClick(Sender:TObject);
begin
{*
 009FCB1C    push        ebp
 009FCB1D    mov         ebp,esp
 009FCB1F    add         esp,0FFFFFFE0
 009FCB22    xor         ecx,ecx
 009FCB24    mov         dword ptr [ebp-20],ecx
 009FCB27    mov         dword ptr [ebp-1C],ecx
 009FCB2A    mov         dword ptr [ebp-18],ecx
 009FCB2D    mov         dword ptr [ebp-14],ecx
 009FCB30    mov         dword ptr [ebp-4],eax
 009FCB33    xor         eax,eax
 009FCB35    push        ebp
 009FCB36    push        9FCE37
 009FCB3B    push        dword ptr fs:[eax]
 009FCB3E    mov         dword ptr fs:[eax],esp
 009FCB41    mov         eax,dword ptr [ebp-4]
 009FCB44    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009FCB4A    mov         edx,9FCE4C;'ID_KL_CEH_FROM'
 009FCB4F    call        TDataSet.FieldByName
 009FCB54    mov         edx,dword ptr [eax]
 009FCB56    call        dword ptr [edx+58];TField.GetAsInteger
 009FCB59    mov         dword ptr [ebp-10],eax
 009FCB5C    mov         eax,dword ptr [ebp-4]
 009FCB5F    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009FCB65    mov         edx,9FCE64;'ID_OPER_TYPE'
 009FCB6A    call        TDataSet.FieldByName
 009FCB6F    mov         edx,dword ptr [eax]
 009FCB71    call        dword ptr [edx+58];TField.GetAsInteger
 009FCB74    cmp         eax,2
>009FCB77    jne         009FCCB3
 009FCB7D    mov         eax,dword ptr [ebp-4]
 009FCB80    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009FCB86    mov         edx,9FCE4C;'ID_KL_CEH_FROM'
 009FCB8B    call        TDataSet.FieldByName
 009FCB90    mov         edx,dword ptr [eax]
 009FCB92    call        dword ptr [edx+58];TField.GetAsInteger
 009FCB95    cmp         eax,3
>009FCB98    je          009FCCB3
 009FCB9E    mov         ecx,dword ptr [ebp-4]
 009FCBA1    mov         dl,1
 009FCBA3    mov         eax,[009BECF4];TFormRaschPostav
 009FCBA8    call        TCustomForm.Create;TFormRaschPostav.Create
 009FCBAD    mov         dword ptr [ebp-8],eax
 009FCBB0    xor         eax,eax
 009FCBB2    push        ebp
 009FCBB3    push        9FCCAC
 009FCBB8    push        dword ptr fs:[eax]
 009FCBBB    mov         dword ptr fs:[eax],esp
 009FCBBE    mov         eax,dword ptr [ebp-4]
 009FCBC1    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009FCBC7    mov         edx,9FCE4C;'ID_KL_CEH_FROM'
 009FCBCC    call        TDataSet.FieldByName
 009FCBD1    mov         edx,dword ptr [eax]
 009FCBD3    call        dword ptr [edx+58];TField.GetAsInteger
 009FCBD6    mov         edx,dword ptr [ebp-8]
 009FCBD9    mov         dword ptr [edx+3A0],eax;TFormRaschPostav.?f3A0:Longint
 009FCBDF    mov         eax,dword ptr [ebp-4]
 009FCBE2    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009FCBE8    mov         edx,9FCE7C;'NAME_KL_CEH'
 009FCBED    call        TDataSet.FieldByName
 009FCBF2    lea         edx,[ebp-14]
 009FCBF5    mov         ecx,dword ptr [eax]
 009FCBF7    call        dword ptr [ecx+60];TField.GetAsString
 009FCBFA    mov         edx,dword ptr [ebp-14]
 009FCBFD    mov         eax,dword ptr [ebp-8]
 009FCC00    mov         eax,dword ptr [eax+33C];TFormRaschPostav.EditKlient:TEdit
 009FCC06    call        TControl.SetText
 009FCC0B    mov         eax,dword ptr [ebp-8]
 009FCC0E    call        TFormRaschPostav.ReOpenData
 009FCC13    lea         edx,[ebp-18]
 009FCC16    mov         eax,dword ptr [ebp-8]
 009FCC19    mov         eax,dword ptr [eax+33C];TFormRaschPostav.EditKlient:TEdit
 009FCC1F    call        TControl.GetText
 009FCC24    mov         edx,dword ptr [ebp-18]
 009FCC27    mov         eax,dword ptr [ebp-8]
 009FCC2A    mov         eax,dword ptr [eax+358];TFormRaschPostav.LabelKlient:TLabel
 009FCC30    call        TControl.SetText
 009FCC35    mov         edx,dword ptr [ebp-10]
 009FCC38    mov         eax,dword ptr [ebp-8]
 009FCC3B    call        TFormRaschPostav.OpenBalance
 009FCC40    mov         eax,dword ptr [ebp-8]
 009FCC43    mov         eax,dword ptr [eax+368];TFormRaschPostav.Q_BALANCE:TOraQuery
 009FCC49    mov         edx,9FCE90;'BALANCE'
 009FCC4E    call        TDataSet.FieldByName
 009FCC53    mov         edx,dword ptr [eax]
 009FCC55    call        dword ptr [edx+54];TField.GetAsFloat
 009FCC58    fcomp       dword ptr ds:[9FCE98];0:Single
 009FCC5E    fnstsw      al
 009FCC60    sahf
>009FCC61    jae         009FCC78
 009FCC63    mov         eax,dword ptr [ebp-8]
 009FCC66    mov         eax,dword ptr [eax+378];TFormRaschPostav.DBText3:TDBText
 009FCC6C    mov         edx,80
 009FCC71    call        TControl.SetColor
>009FCC76    jmp         009FCC8B
 009FCC78    mov         eax,dword ptr [ebp-8]
 009FCC7B    mov         eax,dword ptr [eax+378];TFormRaschPostav.DBText3:TDBText
 009FCC81    mov         edx,8000
 009FCC86    call        TControl.SetColor
 009FCC8B    mov         eax,dword ptr [ebp-8]
 009FCC8E    mov         edx,dword ptr [eax]
 009FCC90    call        dword ptr [edx+0EC];TFormRaschPostav.sub_004AA600
 009FCC96    xor         eax,eax
 009FCC98    pop         edx
 009FCC99    pop         ecx
 009FCC9A    pop         ecx
 009FCC9B    mov         dword ptr fs:[eax],edx
 009FCC9E    push        9FCCB3
 009FCCA3    mov         eax,dword ptr [ebp-8]
 009FCCA6    call        TObject.Free
 009FCCAB    ret
>009FCCAC    jmp         @HandleFinally
>009FCCB1    jmp         009FCCA3
 009FCCB3    mov         eax,dword ptr [ebp-4]
 009FCCB6    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009FCCBC    mov         edx,9FCE64;'ID_OPER_TYPE'
 009FCCC1    call        TDataSet.FieldByName
 009FCCC6    mov         edx,dword ptr [eax]
 009FCCC8    call        dword ptr [edx+58];TField.GetAsInteger
 009FCCCB    cmp         eax,5
>009FCCCE    jne         009FCE09
 009FCCD4    mov         eax,dword ptr [ebp-4]
 009FCCD7    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009FCCDD    mov         edx,9FCE4C;'ID_KL_CEH_FROM'
 009FCCE2    call        TDataSet.FieldByName
 009FCCE7    mov         edx,dword ptr [eax]
 009FCCE9    call        dword ptr [edx+58];TField.GetAsInteger
 009FCCEC    test        eax,eax
>009FCCEE    je          009FCE09
 009FCCF4    mov         ecx,dword ptr [ebp-4]
 009FCCF7    mov         dl,1
 009FCCF9    mov         eax,[009C05D8];TFormRaschPokups
 009FCCFE    call        TCustomForm.Create;TFormRaschPokups.Create
 009FCD03    mov         dword ptr [ebp-0C],eax
 009FCD06    xor         eax,eax
 009FCD08    push        ebp
 009FCD09    push        9FCE02
 009FCD0E    push        dword ptr fs:[eax]
 009FCD11    mov         dword ptr fs:[eax],esp
 009FCD14    mov         eax,dword ptr [ebp-4]
 009FCD17    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009FCD1D    mov         edx,9FCE4C;'ID_KL_CEH_FROM'
 009FCD22    call        TDataSet.FieldByName
 009FCD27    mov         edx,dword ptr [eax]
 009FCD29    call        dword ptr [edx+58];TField.GetAsInteger
 009FCD2C    mov         edx,dword ptr [ebp-0C]
 009FCD2F    mov         dword ptr [edx+394],eax;TFormRaschPokups.?f394:Longint
 009FCD35    mov         eax,dword ptr [ebp-4]
 009FCD38    mov         eax,dword ptr [eax+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009FCD3E    mov         edx,9FCE7C;'NAME_KL_CEH'
 009FCD43    call        TDataSet.FieldByName
 009FCD48    lea         edx,[ebp-1C]
 009FCD4B    mov         ecx,dword ptr [eax]
 009FCD4D    call        dword ptr [ecx+60];TField.GetAsString
 009FCD50    mov         edx,dword ptr [ebp-1C]
 009FCD53    mov         eax,dword ptr [ebp-0C]
 009FCD56    mov         eax,dword ptr [eax+33C];TFormRaschPokups.EditKlient:TEdit
 009FCD5C    call        TControl.SetText
 009FCD61    mov         eax,dword ptr [ebp-0C]
 009FCD64    call        TFormRaschPokups.ReOpenData
 009FCD69    lea         edx,[ebp-20]
 009FCD6C    mov         eax,dword ptr [ebp-0C]
 009FCD6F    mov         eax,dword ptr [eax+33C];TFormRaschPokups.EditKlient:TEdit
 009FCD75    call        TControl.GetText
 009FCD7A    mov         edx,dword ptr [ebp-20]
 009FCD7D    mov         eax,dword ptr [ebp-0C]
 009FCD80    mov         eax,dword ptr [eax+358];TFormRaschPokups.LabelKlient:TLabel
 009FCD86    call        TControl.SetText
 009FCD8B    mov         edx,dword ptr [ebp-10]
 009FCD8E    mov         eax,dword ptr [ebp-0C]
 009FCD91    call        TFormRaschPokups.OpenBalance
 009FCD96    mov         eax,dword ptr [ebp-0C]
 009FCD99    mov         eax,dword ptr [eax+368];TFormRaschPokups.Q_BALANCE:TOraQuery
 009FCD9F    mov         edx,9FCE90;'BALANCE'
 009FCDA4    call        TDataSet.FieldByName
 009FCDA9    mov         edx,dword ptr [eax]
 009FCDAB    call        dword ptr [edx+54];TField.GetAsFloat
 009FCDAE    fcomp       dword ptr ds:[9FCE98];0:Single
 009FCDB4    fnstsw      al
 009FCDB6    sahf
>009FCDB7    jae         009FCDCE
 009FCDB9    mov         eax,dword ptr [ebp-0C]
 009FCDBC    mov         eax,dword ptr [eax+378];TFormRaschPokups.DBText3:TDBText
 009FCDC2    mov         edx,80
 009FCDC7    call        TControl.SetColor
>009FCDCC    jmp         009FCDE1
 009FCDCE    mov         eax,dword ptr [ebp-0C]
 009FCDD1    mov         eax,dword ptr [eax+378];TFormRaschPokups.DBText3:TDBText
 009FCDD7    mov         edx,8000
 009FCDDC    call        TControl.SetColor
 009FCDE1    mov         eax,dword ptr [ebp-0C]
 009FCDE4    mov         edx,dword ptr [eax]
 009FCDE6    call        dword ptr [edx+0EC];TFormRaschPokups.sub_004AA600
 009FCDEC    xor         eax,eax
 009FCDEE    pop         edx
 009FCDEF    pop         ecx
 009FCDF0    pop         ecx
 009FCDF1    mov         dword ptr fs:[eax],edx
 009FCDF4    push        9FCE09
 009FCDF9    mov         eax,dword ptr [ebp-0C]
 009FCDFC    call        TObject.Free
 009FCE01    ret
>009FCE02    jmp         @HandleFinally
>009FCE07    jmp         009FCDF9
 009FCE09    xor         eax,eax
 009FCE0B    pop         edx
 009FCE0C    pop         ecx
 009FCE0D    pop         ecx
 009FCE0E    mov         dword ptr fs:[eax],edx
 009FCE11    push        9FCE3E
 009FCE16    lea         eax,[ebp-20]
 009FCE19    call        @LStrClr
 009FCE1E    lea         eax,[ebp-1C]
 009FCE21    call        @LStrClr
 009FCE26    lea         eax,[ebp-18]
 009FCE29    call        @LStrClr
 009FCE2E    lea         eax,[ebp-14]
 009FCE31    call        @LStrClr
 009FCE36    ret
>009FCE37    jmp         @HandleFinally
>009FCE3C    jmp         009FCE16
 009FCE3E    mov         esp,ebp
 009FCE40    pop         ebp
 009FCE41    ret
*}
end;

//009FCE9C
procedure TMainFormMarketSklad.DBText6DblClick(Sender:TObject);
begin
{*
 009FCE9C    push        ebp
 009FCE9D    mov         ebp,esp
 009FCE9F    push        0
 009FCEA1    push        0
 009FCEA3    push        0
 009FCEA5    push        ebx
 009FCEA6    push        esi
 009FCEA7    mov         ebx,eax
 009FCEA9    xor         eax,eax
 009FCEAB    push        ebp
 009FCEAC    push        9FD035
 009FCEB1    push        dword ptr fs:[eax]
 009FCEB4    mov         dword ptr fs:[eax],esp
 009FCEB7    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009FCEBD    mov         edx,9FD04C;'ID_OPER_TYPE'
 009FCEC2    call        TDataSet.FieldByName
 009FCEC7    mov         edx,dword ptr [eax]
 009FCEC9    call        dword ptr [edx+58];TField.GetAsInteger
 009FCECC    cmp         eax,3
>009FCECF    jne         009FD017
 009FCED5    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009FCEDB    mov         edx,9FD064;'ID_KL_CEH_TO'
 009FCEE0    call        TDataSet.FieldByName
 009FCEE5    mov         edx,dword ptr [eax]
 009FCEE7    call        dword ptr [edx+58];TField.GetAsInteger
 009FCEEA    cmp         eax,3
>009FCEED    je          009FD017
 009FCEF3    mov         ecx,ebx
 009FCEF5    mov         dl,1
 009FCEF7    mov         eax,[009BECF4];TFormRaschPostav
 009FCEFC    call        TCustomForm.Create;TFormRaschPostav.Create
 009FCF01    mov         dword ptr [ebp-4],eax
 009FCF04    xor         eax,eax
 009FCF06    push        ebp
 009FCF07    push        9FD010
 009FCF0C    push        dword ptr fs:[eax]
 009FCF0F    mov         dword ptr fs:[eax],esp
 009FCF12    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009FCF18    mov         edx,9FD064;'ID_KL_CEH_TO'
 009FCF1D    call        TDataSet.FieldByName
 009FCF22    mov         edx,dword ptr [eax]
 009FCF24    call        dword ptr [edx+58];TField.GetAsInteger
 009FCF27    mov         esi,eax
 009FCF29    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009FCF2F    mov         edx,9FD064;'ID_KL_CEH_TO'
 009FCF34    call        TDataSet.FieldByName
 009FCF39    mov         edx,dword ptr [eax]
 009FCF3B    call        dword ptr [edx+58];TField.GetAsInteger
 009FCF3E    mov         edx,dword ptr [ebp-4]
 009FCF41    mov         dword ptr [edx+3A0],eax;TFormRaschPostav.?f3A0:Longint
 009FCF47    mov         eax,dword ptr [ebx+394];TMainFormMarketSklad.Q_RASHODS:TOraQuery
 009FCF4D    mov         edx,9FD07C;'NAME_KL_CEH'
 009FCF52    call        TDataSet.FieldByName
 009FCF57    lea         edx,[ebp-8]
 009FCF5A    mov         ecx,dword ptr [eax]
 009FCF5C    call        dword ptr [ecx+60];TField.GetAsString
 009FCF5F    mov         edx,dword ptr [ebp-8]
 009FCF62    mov         eax,dword ptr [ebp-4]
 009FCF65    mov         eax,dword ptr [eax+33C];TFormRaschPostav.EditKlient:TEdit
 009FCF6B    call        TControl.SetText
 009FCF70    mov         eax,dword ptr [ebp-4]
 009FCF73    call        TFormRaschPostav.ReOpenData
 009FCF78    lea         edx,[ebp-0C]
 009FCF7B    mov         eax,dword ptr [ebp-4]
 009FCF7E    mov         eax,dword ptr [eax+33C];TFormRaschPostav.EditKlient:TEdit
 009FCF84    call        TControl.GetText
 009FCF89    mov         edx,dword ptr [ebp-0C]
 009FCF8C    mov         eax,dword ptr [ebp-4]
 009FCF8F    mov         eax,dword ptr [eax+358];TFormRaschPostav.LabelKlient:TLabel
 009FCF95    call        TControl.SetText
 009FCF9A    mov         edx,esi
 009FCF9C    mov         eax,dword ptr [ebp-4]
 009FCF9F    call        TFormRaschPostav.OpenBalance
 009FCFA4    mov         eax,dword ptr [ebp-4]
 009FCFA7    mov         eax,dword ptr [eax+368];TFormRaschPostav.Q_BALANCE:TOraQuery
 009FCFAD    mov         edx,9FD090;'BALANCE'
 009FCFB2    call        TDataSet.FieldByName
 009FCFB7    mov         edx,dword ptr [eax]
 009FCFB9    call        dword ptr [edx+54];TField.GetAsFloat
 009FCFBC    fcomp       dword ptr ds:[9FD098];0:Single
 009FCFC2    fnstsw      al
 009FCFC4    sahf
>009FCFC5    jae         009FCFDC
 009FCFC7    mov         eax,dword ptr [ebp-4]
 009FCFCA    mov         eax,dword ptr [eax+378];TFormRaschPostav.DBText3:TDBText
 009FCFD0    mov         edx,80
 009FCFD5    call        TControl.SetColor
>009FCFDA    jmp         009FCFEF
 009FCFDC    mov         eax,dword ptr [ebp-4]
 009FCFDF    mov         eax,dword ptr [eax+378];TFormRaschPostav.DBText3:TDBText
 009FCFE5    mov         edx,8000
 009FCFEA    call        TControl.SetColor
 009FCFEF    mov         eax,dword ptr [ebp-4]
 009FCFF2    mov         edx,dword ptr [eax]
 009FCFF4    call        dword ptr [edx+0EC];TFormRaschPostav.sub_004AA600
 009FCFFA    xor         eax,eax
 009FCFFC    pop         edx
 009FCFFD    pop         ecx
 009FCFFE    pop         ecx
 009FCFFF    mov         dword ptr fs:[eax],edx
 009FD002    push        9FD017
 009FD007    mov         eax,dword ptr [ebp-4]
 009FD00A    call        TObject.Free
 009FD00F    ret
>009FD010    jmp         @HandleFinally
>009FD015    jmp         009FD007
 009FD017    xor         eax,eax
 009FD019    pop         edx
 009FD01A    pop         ecx
 009FD01B    pop         ecx
 009FD01C    mov         dword ptr fs:[eax],edx
 009FD01F    push        9FD03C
 009FD024    lea         eax,[ebp-0C]
 009FD027    call        @LStrClr
 009FD02C    lea         eax,[ebp-8]
 009FD02F    call        @LStrClr
 009FD034    ret
>009FD035    jmp         @HandleFinally
>009FD03A    jmp         009FD024
 009FD03C    pop         esi
 009FD03D    pop         ebx
 009FD03E    mov         esp,ebp
 009FD040    pop         ebp
 009FD041    ret
*}
end;

//009FD09C
procedure TMainFormMarketSklad.aFindExecute;
begin
{*
 009FD09C    push        ebp
 009FD09D    mov         ebp,esp
 009FD09F    xor         ecx,ecx
 009FD0A1    push        ecx
 009FD0A2    push        ecx
 009FD0A3    push        ecx
 009FD0A4    push        ecx
 009FD0A5    push        ecx
 009FD0A6    push        ecx
 009FD0A7    push        ecx
 009FD0A8    push        ecx
 009FD0A9    push        ebx
 009FD0AA    push        esi
 009FD0AB    mov         ebx,eax
 009FD0AD    xor         eax,eax
 009FD0AF    push        ebp
 009FD0B0    push        9FD1D2
 009FD0B5    push        dword ptr fs:[eax]
 009FD0B8    mov         dword ptr fs:[eax],esp
 009FD0BB    lea         edx,[ebp-18]
 009FD0BE    mov         eax,dword ptr [ebx+3A4];TMainFormMarketSklad.EditFind:TEdit
 009FD0C4    call        TControl.GetText
 009FD0C9    cmp         dword ptr [ebp-18],0
>009FD0CD    je          009FD1A2
 009FD0D3    lea         edx,[ebp-4]
 009FD0D6    mov         eax,dword ptr [ebx+3A4];TMainFormMarketSklad.EditFind:TEdit
 009FD0DC    call        TControl.GetText
 009FD0E1    lea         eax,[ebx+94C];TMainFormMarketSklad.?f94C:String
 009FD0E7    mov         edx,dword ptr [ebp-4]
 009FD0EA    call        @LStrAsg
 009FD0EF    lea         eax,[ebp-1C]
 009FD0F2    mov         edx,dword ptr [ebp-4]
 009FD0F5    mov         dl,byte ptr [edx]
 009FD0F7    call        @LStrFromChar
 009FD0FC    mov         eax,dword ptr [ebp-1C]
 009FD0FF    lea         edx,[ebp-10]
 009FD102    call        @ValLong
 009FD107    cmp         dword ptr [ebp-10],0
>009FD10B    je          009FD111
 009FD10D    mov         al,1
>009FD10F    jmp         009FD113
 009FD111    xor         eax,eax
 009FD113    test        al,al
>009FD115    je          009FD126
 009FD117    xor         edx,edx
 009FD119    mov         eax,dword ptr [ebx+560];TMainFormMarketSklad.rg_find:TRadioGroup
 009FD11F    call        TCustomRadioGroup.SetItemIndex
>009FD124    jmp         009FD18E
 009FD126    mov         eax,dword ptr [ebp-4]
 009FD129    call        @LStrLen
 009FD12E    cmp         eax,7
>009FD131    jg          009FD145
 009FD133    mov         edx,1
 009FD138    mov         eax,dword ptr [ebx+560];TMainFormMarketSklad.rg_find:TRadioGroup
 009FD13E    call        TCustomRadioGroup.SetItemIndex
>009FD143    jmp         009FD18E
 009FD145    lea         eax,[ebp-8]
 009FD148    call        @LStrClr
 009FD14D    push        eax
 009FD14E    lea         eax,[ebp-0C]
 009FD151    call        @LStrClr
 009FD156    push        eax
 009FD157    lea         ecx,[ebp-14]
 009FD15A    or          edx,0FFFFFFFF
 009FD15D    mov         eax,dword ptr [ebx+94C];TMainFormMarketSklad.?f94C:String
 009FD163    call        007A45D0
 009FD168    lea         edx,[ebp-20]
 009FD16B    call        IntToStr
 009FD170    mov         edx,dword ptr [ebp-20]
 009FD173    lea         eax,[ebx+94C];TMainFormMarketSklad.?f94C:String
 009FD179    call        @LStrAsg
 009FD17E    mov         edx,2
 009FD183    mov         eax,dword ptr [ebx+560];TMainFormMarketSklad.rg_find:TRadioGroup
 009FD189    call        TCustomRadioGroup.SetItemIndex
 009FD18E    mov         esi,dword ptr [ebx+2F8];TMainFormMarketSklad.PageControl1:TPageControl
 009FD194    mov         edx,ebx
 009FD196    mov         eax,dword ptr [esi+24C];TPageControl.?f24C:TfrxPreview
 009FD19C    call        dword ptr [esi+248];TPageControl.FOnChange
 009FD1A2    xor         eax,eax
 009FD1A4    pop         edx
 009FD1A5    pop         ecx
 009FD1A6    pop         ecx
 009FD1A7    mov         dword ptr fs:[eax],edx
 009FD1AA    push        9FD1D9
 009FD1AF    lea         eax,[ebp-20]
 009FD1B2    mov         edx,2
 009FD1B7    call        @LStrArrayClr
 009FD1BC    lea         eax,[ebp-18]
 009FD1BF    call        @LStrClr
 009FD1C4    lea         eax,[ebp-0C]
 009FD1C7    mov         edx,3
 009FD1CC    call        @LStrArrayClr
 009FD1D1    ret
>009FD1D2    jmp         @HandleFinally
>009FD1D7    jmp         009FD1AF
 009FD1D9    pop         esi
 009FD1DA    pop         ebx
 009FD1DB    mov         esp,ebp
 009FD1DD    pop         ebp
 009FD1DE    ret
*}
end;

//009FD1E0
procedure TMainFormMarketSklad.aCenniksPrintExecute;
begin
{*
 009FD1E0    push        ebp
 009FD1E1    mov         ebp,esp
 009FD1E3    xor         ecx,ecx
 009FD1E5    push        ecx
 009FD1E6    push        ecx
 009FD1E7    push        ecx
 009FD1E8    push        ecx
 009FD1E9    push        ecx
 009FD1EA    push        ecx
 009FD1EB    push        ecx
 009FD1EC    push        ecx
 009FD1ED    push        ebx
 009FD1EE    push        esi
 009FD1EF    mov         ebx,eax
 009FD1F1    xor         eax,eax
 009FD1F3    push        ebp
 009FD1F4    push        9FD2CF
 009FD1F9    push        dword ptr fs:[eax]
 009FD1FC    mov         dword ptr fs:[eax],esp
 009FD1FF    push        9FD2E4;'Товар: '
 009FD204    mov         edx,9FD2F4;'ARTICLE'
 009FD209    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009FD20F    call        TDataSet.FieldByName
 009FD214    lea         edx,[ebp-8]
 009FD217    mov         ecx,dword ptr [eax]
 009FD219    call        dword ptr [ecx+60];TField.GetAsString
 009FD21C    push        dword ptr [ebp-8]
 009FD21F    push        9FD304;' '
 009FD224    mov         edx,9FD310;'NAME_NOM'
 009FD229    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009FD22F    call        TDataSet.FieldByName
 009FD234    lea         edx,[ebp-0C]
 009FD237    mov         ecx,dword ptr [eax]
 009FD239    call        dword ptr [ecx+60];TField.GetAsString
 009FD23C    push        dword ptr [ebp-0C]
 009FD23F    push        9FD324;', остаток = '
 009FD244    mov         edx,9FD33C;'AMT_OSTAT'
 009FD249    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009FD24F    call        TDataSet.FieldByName
 009FD254    lea         edx,[ebp-10]
 009FD257    mov         ecx,dword ptr [eax]
 009FD259    call        dword ptr [ecx+60];TField.GetAsString
 009FD25C    push        dword ptr [ebp-10]
 009FD25F    lea         eax,[ebp-4]
 009FD262    mov         edx,6
 009FD267    call        @LStrCatN
 009FD26C    mov         edx,9FD33C;'AMT_OSTAT'
 009FD271    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009FD277    call        TDataSet.FieldByName
 009FD27C    mov         edx,dword ptr [eax]
 009FD27E    call        dword ptr [edx+58];TField.GetAsInteger
 009FD281    mov         esi,eax
 009FD283    lea         ecx,[ebp-20]
 009FD286    mov         edx,9FD350;'ID'
 009FD28B    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009FD291    call        TDataSet.GetFieldValue
 009FD296    lea         eax,[ebp-20]
 009FD299    call        @VarToInt64
 009FD29E    push        edx
 009FD29F    push        eax
 009FD2A0    mov         ecx,esi
 009FD2A2    mov         edx,dword ptr [ebp-4]
 009FD2A5    xor         eax,eax
 009FD2A7    call        009756C8
 009FD2AC    xor         eax,eax
 009FD2AE    pop         edx
 009FD2AF    pop         ecx
 009FD2B0    pop         ecx
 009FD2B1    mov         dword ptr fs:[eax],edx
 009FD2B4    push        9FD2D6
 009FD2B9    lea         eax,[ebp-20]
 009FD2BC    call        @VarClr
 009FD2C1    lea         eax,[ebp-10]
 009FD2C4    mov         edx,4
 009FD2C9    call        @LStrArrayClr
 009FD2CE    ret
>009FD2CF    jmp         @HandleFinally
>009FD2D4    jmp         009FD2B9
 009FD2D6    pop         esi
 009FD2D7    pop         ebx
 009FD2D8    mov         esp,ebp
 009FD2DA    pop         ebp
 009FD2DB    ret
*}
end;

//009FD354
procedure TMainFormMarketSklad.aCenniksByOperExecute;
begin
{*
 009FD354    push        ebp
 009FD355    mov         ebp,esp
 009FD357    xor         ecx,ecx
 009FD359    push        ecx
 009FD35A    push        ecx
 009FD35B    push        ecx
 009FD35C    push        ecx
 009FD35D    push        ecx
 009FD35E    push        ecx
 009FD35F    push        ecx
 009FD360    push        ecx
 009FD361    push        ebx
 009FD362    mov         ebx,eax
 009FD364    xor         eax,eax
 009FD366    push        ebp
 009FD367    push        9FD42E
 009FD36C    push        dword ptr fs:[eax]
 009FD36F    mov         dword ptr fs:[eax],esp
 009FD372    push        9FD444;'Приход №'
 009FD377    mov         edx,9FD458;'NUM_OPER'
 009FD37C    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009FD382    call        TDataSet.FieldByName
 009FD387    lea         edx,[ebp-8]
 009FD38A    mov         ecx,dword ptr [eax]
 009FD38C    call        dword ptr [ecx+60];TField.GetAsString
 009FD38F    push        dword ptr [ebp-8]
 009FD392    push        9FD46C;' от '
 009FD397    mov         edx,9FD47C;'DATE_OPER'
 009FD39C    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009FD3A2    call        TDataSet.FieldByName
 009FD3A7    lea         edx,[ebp-0C]
 009FD3AA    mov         ecx,dword ptr [eax]
 009FD3AC    call        dword ptr [ecx+60];TField.GetAsString
 009FD3AF    push        dword ptr [ebp-0C]
 009FD3B2    push        9FD490;', Контрагент: '
 009FD3B7    mov         edx,9FD4A8;'NAME_KL_CEH'
 009FD3BC    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009FD3C2    call        TDataSet.FieldByName
 009FD3C7    lea         edx,[ebp-10]
 009FD3CA    mov         ecx,dword ptr [eax]
 009FD3CC    call        dword ptr [ecx+60];TField.GetAsString
 009FD3CF    push        dword ptr [ebp-10]
 009FD3D2    lea         eax,[ebp-4]
 009FD3D5    mov         edx,6
 009FD3DA    call        @LStrCatN
 009FD3DF    lea         ecx,[ebp-20]
 009FD3E2    mov         edx,9FD4BC;'ID'
 009FD3E7    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009FD3ED    call        TDataSet.GetFieldValue
 009FD3F2    lea         eax,[ebp-20]
 009FD3F5    call        @VarToInt64
 009FD3FA    push        edx
 009FD3FB    push        eax
 009FD3FC    mov         ecx,1
 009FD401    mov         edx,dword ptr [ebp-4]
 009FD404    mov         al,1
 009FD406    call        009756C8
 009FD40B    xor         eax,eax
 009FD40D    pop         edx
 009FD40E    pop         ecx
 009FD40F    pop         ecx
 009FD410    mov         dword ptr fs:[eax],edx
 009FD413    push        9FD435
 009FD418    lea         eax,[ebp-20]
 009FD41B    call        @VarClr
 009FD420    lea         eax,[ebp-10]
 009FD423    mov         edx,4
 009FD428    call        @LStrArrayClr
 009FD42D    ret
>009FD42E    jmp         @HandleFinally
>009FD433    jmp         009FD418
 009FD435    pop         ebx
 009FD436    mov         esp,ebp
 009FD438    pop         ebp
 009FD439    ret
*}
end;

//009FD4C0
{*procedure TMainFormMarketSklad.aCenniksPrintUpdate(?:?);
begin
 009FD4C0    push        ebx
 009FD4C1    push        esi
 009FD4C2    mov         esi,edx
 009FD4C4    mov         ebx,eax
 009FD4C6    mov         eax,dword ptr [ebx+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009FD4CC    call        TDataSet.IsEmpty
 009FD4D1    xor         al,1
 009FD4D3    push        eax
 009FD4D4    mov         eax,esi
 009FD4D6    mov         edx,dword ptr ds:[497794];TCustomAction
 009FD4DC    call        @AsClass
 009FD4E1    pop         edx
 009FD4E2    call        TCustomAction.SetEnabled
 009FD4E7    pop         esi
 009FD4E8    pop         ebx
 009FD4E9    ret
end;*}

//009FD4EC
procedure TMainFormMarketSklad.FormKeyDown(Sender:TObject; var Key:Word; Shift:TShiftState);
begin
{*
 009FD4EC    push        ebp
 009FD4ED    mov         ebp,esp
 009FD4EF    push        ebx
 009FD4F0    push        esi
 009FD4F1    push        edi
 009FD4F2    mov         edi,ecx
 009FD4F4    mov         ebx,eax
 009FD4F6    mov         eax,dword ptr [ebx+2F8];TMainFormMarketSklad.PageControl1:TPageControl
 009FD4FC    call        TPageControl.GetActivePageIndex
 009FD501    test        eax,eax
>009FD503    jne         009FD540
 009FD505    mov         eax,dword ptr [ebx+3A4];TMainFormMarketSklad.EditFind:TEdit
 009FD50B    mov         si,0FFB5
 009FD50F    call        @CallDynaInst;TWinControl.Focused
 009FD514    test        al,al
>009FD516    je          009FD52D
 009FD518    cmp         word ptr [edi],0D
>009FD51C    jne         009FD52D
 009FD51E    mov         eax,dword ptr [ebx+724];TMainFormMarketSklad.aFind:TAction
 009FD524    mov         si,0FFEF
 009FD528    call        @CallDynaInst;TCustomAction.Execute
 009FD52D    cmp         word ptr [edi],73
>009FD531    jne         009FD540
 009FD533    xor         edx,edx
 009FD535    mov         eax,dword ptr [ebx+3A4];TMainFormMarketSklad.EditFind:TEdit
 009FD53B    call        TControl.SetText
 009FD540    pop         edi
 009FD541    pop         esi
 009FD542    pop         ebx
 009FD543    pop         ebp
 009FD544    ret         4
*}
end;

//009FD548
procedure TMainFormMarketSklad.aCennikForStellageA4Execute;
begin
{*
 009FD548    push        1
 009FD54A    mov         cl,1
 009FD54C    mov         edx,9FD564;'Для стеллажей на А4'
 009FD551    mov         eax,9FD580;'FOR_STELLAGE_A4'
 009FD556    call        0097608C
 009FD55B    ret
*}
end;

//009FD590
procedure TMainFormMarketSklad.aCenniksNoBkA4_39_30Execute;
begin
{*
 009FD590    push        1
 009FD592    xor         ecx,ecx
 009FD594    mov         edx,9FD5AC;'Ценник без ш-к А4 39х30мм'
 009FD599    mov         eax,9FD5D0;'39_30'
 009FD59E    call        0097608C
 009FD5A3    ret
*}
end;

//009FD5D8
procedure TMainFormMarketSklad.aCenniksNoBkA4_58_40Execute;
begin
{*
 009FD5D8    push        1
 009FD5DA    xor         ecx,ecx
 009FD5DC    mov         edx,9FD5F4;'Ценник без ш-к А4 58х40мм'
 009FD5E1    mov         eax,9FD618;'58_40'
 009FD5E6    call        0097608C
 009FD5EB    ret
*}
end;

//009FD620
procedure TMainFormMarketSklad.aCenniksBkA4_39_30Execute;
begin
{*
 009FD620    push        1
 009FD622    mov         cl,1
 009FD624    mov         edx,9FD63C;'Ценник c ш-к А4 39х30мм'
 009FD629    mov         eax,9FD65C;'39_30'
 009FD62E    call        0097608C
 009FD633    ret
*}
end;

//009FD664
procedure TMainFormMarketSklad.aCenniksBkA4_58_40Execute;
begin
{*
 009FD664    push        1
 009FD666    mov         cl,1
 009FD668    mov         edx,9FD680;'Ценник c ш-к А4 58х40мм'
 009FD66D    mov         eax,9FD6A0;'58_40'
 009FD672    call        0097608C
 009FD677    ret
*}
end;

//009FD6A8
procedure TMainFormMarketSklad.aCennikBkEtiket39_30Execute;
begin
{*
 009FD6A8    push        0
 009FD6AA    mov         cl,1
 009FD6AC    mov         edx,9FD6C4;'Ценник c ш-к для принтера этикеток 39х30мм'
 009FD6B1    mov         eax,9FD6F8;'39_30'
 009FD6B6    call        0097608C
 009FD6BB    ret
*}
end;

//009FD700
procedure TMainFormMarketSklad.aCennikBkEtiket58_40Execute;
begin
{*
 009FD700    push        0
 009FD702    mov         cl,1
 009FD704    mov         edx,9FD71C;'Ценник c ш-к для принтера этикеток 58х40мм'
 009FD709    mov         eax,9FD750;'58_40'
 009FD70E    call        0097608C
 009FD713    ret
*}
end;

//009FD758
procedure TMainFormMarketSklad.aPriceListExecute;
begin
{*
 009FD758    push        1
 009FD75A    mov         cl,1
 009FD75C    mov         edx,9FD774;'Прайс-лист'
 009FD761    mov         eax,9FD788;'PRICE_LIST'
 009FD766    call        0097608C
 009FD76B    ret
*}
end;

//009FD794
procedure TMainFormMarketSklad.Button1Click(Sender:TObject);
begin
{*
 009FD794    push        ebp
 009FD795    mov         ebp,esp
 009FD797    push        0
 009FD799    push        ebx
 009FD79A    mov         ebx,eax
 009FD79C    xor         eax,eax
 009FD79E    push        ebp
 009FD79F    push        9FD7D6
 009FD7A4    push        dword ptr fs:[eax]
 009FD7A7    mov         dword ptr fs:[eax],esp
 009FD7AA    lea         edx,[ebp-4]
 009FD7AD    mov         eax,dword ptr [ebx+950];TMainFormMarketSklad.?f950:dword
 009FD7B3    call        IntToStr
 009FD7B8    mov         eax,dword ptr [ebp-4]
 009FD7BB    call        ShowMessage
 009FD7C0    xor         eax,eax
 009FD7C2    pop         edx
 009FD7C3    pop         ecx
 009FD7C4    pop         ecx
 009FD7C5    mov         dword ptr fs:[eax],edx
 009FD7C8    push        9FD7DD
 009FD7CD    lea         eax,[ebp-4]
 009FD7D0    call        @LStrClr
 009FD7D5    ret
>009FD7D6    jmp         @HandleFinally
>009FD7DB    jmp         009FD7CD
 009FD7DD    pop         ebx
 009FD7DE    pop         ecx
 009FD7DF    pop         ebp
 009FD7E0    ret
*}
end;

//009FD7E4
{*procedure TMainFormMarketSklad.aPrintPrihNaklUpdate(?:?);
begin
 009FD7E4    push        ebx
 009FD7E5    push        esi
 009FD7E6    mov         esi,edx
 009FD7E8    mov         ebx,eax
 009FD7EA    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009FD7F0    call        TDataSet.IsEmpty
 009FD7F5    xor         al,1
 009FD7F7    push        eax
 009FD7F8    mov         eax,esi
 009FD7FA    mov         edx,dword ptr ds:[497794];TCustomAction
 009FD800    call        @AsClass
 009FD805    pop         edx
 009FD806    call        TCustomAction.SetEnabled
 009FD80B    pop         esi
 009FD80C    pop         ebx
 009FD80D    ret
end;*}

//009FD810
procedure TMainFormMarketSklad.btn_find_clearClick(Sender:TObject);
begin
{*
 009FD810    xor         edx,edx
 009FD812    mov         eax,dword ptr [eax+3A4];TMainFormMarketSklad.EditFind:TEdit
 009FD818    call        TControl.SetText
 009FD81D    ret
*}
end;

//009FD820
procedure TMainFormMarketSklad.chbAutoRefreshClick(Sender:TObject);
begin
{*
 009FD820    push        ebx
 009FD821    mov         ebx,eax
 009FD823    mov         eax,dword ptr [ebx+7F0];TMainFormMarketSklad.chbAutoRefresh:TCheckBox
 009FD829    mov         edx,dword ptr [eax]
 009FD82B    call        dword ptr [edx+0C8];TCustomCheckBox.GetChecked
 009FD831    test        al,al
>009FD833    je          009FD844
 009FD835    mov         dl,1
 009FD837    mov         eax,dword ptr [ebx+3BC];TMainFormMarketSklad.OraAlerter1:TOraAlerter
 009FD83D    call        TOraAlerter.SetActive
 009FD842    pop         ebx
 009FD843    ret
 009FD844    xor         edx,edx
 009FD846    mov         eax,dword ptr [ebx+3BC];TMainFormMarketSklad.OraAlerter1:TOraAlerter
 009FD84C    call        TOraAlerter.SetActive
 009FD851    pop         ebx
 009FD852    ret
*}
end;

//009FD854
procedure TMainFormMarketSklad.aExpNomsForVesy2Execute;
begin
{*
 009FD854    push        ebp
 009FD855    mov         ebp,esp
 009FD857    push        ecx
 009FD858    mov         ecx,eax
 009FD85A    mov         dl,1
 009FD85C    mov         eax,[009D0AD0];TFormExpNomsForVesy
 009FD861    call        TCustomForm.Create;TFormExpNomsForVesy.Create
 009FD866    mov         dword ptr [ebp-4],eax
 009FD869    xor         eax,eax
 009FD86B    push        ebp
 009FD86C    push        9FD898
 009FD871    push        dword ptr fs:[eax]
 009FD874    mov         dword ptr fs:[eax],esp
 009FD877    mov         eax,dword ptr [ebp-4]
 009FD87A    mov         edx,dword ptr [eax]
 009FD87C    call        dword ptr [edx+0EC];TFormExpNomsForVesy.sub_004AA600
 009FD882    xor         eax,eax
 009FD884    pop         edx
 009FD885    pop         ecx
 009FD886    pop         ecx
 009FD887    mov         dword ptr fs:[eax],edx
 009FD88A    push        9FD89F
 009FD88F    mov         eax,dword ptr [ebp-4]
 009FD892    call        TObject.Free
 009FD897    ret
>009FD898    jmp         @HandleFinally
>009FD89D    jmp         009FD88F
 009FD89F    pop         ecx
 009FD8A0    pop         ebp
 009FD8A1    ret
*}
end;

//009FD8A4
procedure TMainFormMarketSklad.aCennikBkEtiket58_40_2Execute;
begin
{*
 009FD8A4    push        0
 009FD8A6    mov         cl,1
 009FD8A8    mov         edx,9FD8C0;'Ценник c ш-к для принтера этикеток 58х40мм (стел.)'
 009FD8AD    mov         eax,9FD8FC;'58_40_2'
 009FD8B2    call        0097608C
 009FD8B7    ret
*}
end;

//009FD904
procedure TMainFormMarketSklad.aDel_Losted_ZaksExecute;
begin
{*
 009FD904    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009FD909    mov         eax,dword ptr [eax]
 009FD90B    mov         eax,dword ptr [eax+8C]
 009FD911    mov         edx,dword ptr [eax]
 009FD913    call        dword ptr [edx+48]
 009FD916    mov         eax,9FD92C;'Удаление выполнено!'
 009FD91B    call        ShowMessage
 009FD920    ret
*}
end;

//009FD940
procedure TMainFormMarketSklad.aSprScalesExecute;
begin
{*
 009FD940    push        ebp
 009FD941    mov         ebp,esp
 009FD943    push        ecx
 009FD944    mov         ecx,eax
 009FD946    mov         dl,1
 009FD948    mov         eax,[009D4844];TFormSprScales
 009FD94D    call        TCustomForm.Create;TFormSprScales.Create
 009FD952    mov         dword ptr [ebp-4],eax
 009FD955    xor         eax,eax
 009FD957    push        ebp
 009FD958    push        9FD984
 009FD95D    push        dword ptr fs:[eax]
 009FD960    mov         dword ptr fs:[eax],esp
 009FD963    mov         eax,dword ptr [ebp-4]
 009FD966    mov         edx,dword ptr [eax]
 009FD968    call        dword ptr [edx+0EC];TFormSprScales.sub_004AA600
 009FD96E    xor         eax,eax
 009FD970    pop         edx
 009FD971    pop         ecx
 009FD972    pop         ecx
 009FD973    mov         dword ptr fs:[eax],edx
 009FD976    push        9FD98B
 009FD97B    mov         eax,dword ptr [ebp-4]
 009FD97E    call        TObject.Free
 009FD983    ret
>009FD984    jmp         @HandleFinally
>009FD989    jmp         009FD97B
 009FD98B    pop         ecx
 009FD98C    pop         ebp
 009FD98D    ret
*}
end;

//009FD990
procedure TMainFormMarketSklad.aExpTovarsToVesyExecute;
begin
{*
 009FD990    mov         eax,[00AC7594];^gvar_00ACE90C:TFormScalesSelect
 009FD995    cmp         dword ptr [eax],0
>009FD998    jne         009FD9B2
 009FD99A    mov         ecx,dword ptr ds:[0AC7594];^gvar_00ACE90C:TFormScalesSelect
 009FD9A0    mov         eax,[00AC721C];^Application:TApplication
 009FD9A5    mov         eax,dword ptr [eax]
 009FD9A7    mov         edx,dword ptr ds:[96FA08];TFormScalesSelect
 009FD9AD    call        TApplication.CreateForm
 009FD9B2    mov         eax,[00AC7594];^gvar_00ACE90C:TFormScalesSelect
 009FD9B7    mov         eax,dword ptr [eax]
 009FD9B9    mov         byte ptr [eax+374],0
 009FD9C0    mov         eax,[00AC7594];^gvar_00ACE90C:TFormScalesSelect
 009FD9C5    mov         eax,dword ptr [eax]
 009FD9C7    call        TCustomForm.Show
 009FD9CC    ret
*}
end;

//009FD9D0
procedure TMainFormMarketSklad.chbIsSortDsableClick(Sender:TObject);
begin
{*
 009FD9D0    push        ebx
 009FD9D1    push        esi
 009FD9D2    mov         ebx,eax
 009FD9D4    mov         eax,dword ptr [ebx+828];TMainFormMarketSklad.chbIsSortDsable:TCheckBox
 009FD9DA    mov         edx,dword ptr [eax]
 009FD9DC    call        dword ptr [edx+0C8];TCustomCheckBox.GetChecked
 009FD9E2    test        al,al
>009FD9E4    je          009FDA03
 009FD9E6    xor         edx,edx
 009FD9E8    mov         eax,dword ptr [ebx+5F0];TMainFormMarketSklad.rgSort:TRadioGroup
 009FD9EE    mov         ecx,dword ptr [eax]
 009FD9F0    call        dword ptr [ecx+64];TControl.SetEnabled
 009FD9F3    xor         edx,edx
 009FD9F5    mov         eax,dword ptr [ebx+788];TMainFormMarketSklad.chbIsSortDesc:TCheckBox
 009FD9FB    mov         ecx,dword ptr [eax]
 009FD9FD    call        dword ptr [ecx+64];TControl.SetEnabled
 009FDA00    pop         esi
 009FDA01    pop         ebx
 009FDA02    ret
 009FDA03    mov         dl,1
 009FDA05    mov         eax,dword ptr [ebx+5F0];TMainFormMarketSklad.rgSort:TRadioGroup
 009FDA0B    mov         ecx,dword ptr [eax]
 009FDA0D    call        dword ptr [ecx+64];TControl.SetEnabled
 009FDA10    mov         dl,1
 009FDA12    mov         eax,dword ptr [ebx+788];TMainFormMarketSklad.chbIsSortDesc:TCheckBox
 009FDA18    mov         ecx,dword ptr [eax]
 009FDA1A    call        dword ptr [ecx+64];TControl.SetEnabled
 009FDA1D    mov         esi,dword ptr [ebx+2F8];TMainFormMarketSklad.PageControl1:TPageControl
 009FDA23    mov         edx,ebx
 009FDA25    mov         eax,dword ptr [esi+24C];TPageControl.?f24C:TfrxPreview
 009FDA2B    call        dword ptr [esi+248];TPageControl.FOnChange
 009FDA31    pop         esi
 009FDA32    pop         ebx
 009FDA33    ret
*}
end;

//009FDA8C
procedure TMainFormMarketSklad.aToExcel_Ostats2Execute;
begin
{*
 009FDA8C    push        ebp
 009FDA8D    mov         ebp,esp
 009FDA8F    xor         ecx,ecx
 009FDA91    push        ecx
 009FDA92    push        ecx
 009FDA93    push        ecx
 009FDA94    push        ecx
 009FDA95    push        ebx
 009FDA96    push        esi
 009FDA97    push        edi
 009FDA98    mov         esi,eax
 009FDA9A    xor         eax,eax
 009FDA9C    push        ebp
 009FDA9D    push        9FDC12
 009FDAA2    push        dword ptr fs:[eax]
 009FDAA5    mov         dword ptr fs:[eax],esp
 009FDAA8    mov         eax,dword ptr [esi+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009FDAAE    call        TDataSet.DisableControls
 009FDAB3    mov         eax,dword ptr [esi+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009FDAB9    mov         eax,dword ptr [eax+30];TOraQuery.FFields:TFields
 009FDABC    call        TFields.GetCount
 009FDAC1    push        eax
 009FDAC2    lea         eax,[ebp-4]
 009FDAC5    mov         ecx,1
 009FDACA    mov         edx,dword ptr ds:[9FDA34];_DynArr_672_5
 009FDAD0    call        @DynArraySetLength
 009FDAD5    add         esp,4
 009FDAD8    mov         eax,dword ptr [esi+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009FDADE    mov         eax,dword ptr [eax+30];TOraQuery.FFields:TFields
 009FDAE1    call        TFields.GetCount
 009FDAE6    push        eax
 009FDAE7    lea         eax,[ebp-8]
 009FDAEA    mov         ecx,1
 009FDAEF    mov         edx,dword ptr ds:[9FDA34];_DynArr_672_5
 009FDAF5    call        @DynArraySetLength
 009FDAFA    add         esp,4
 009FDAFD    mov         eax,dword ptr [esi+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009FDB03    mov         eax,dword ptr [eax+30];TOraQuery.FFields:TFields
 009FDB06    call        TFields.GetCount
 009FDB0B    push        eax
 009FDB0C    lea         eax,[ebp-0C]
 009FDB0F    mov         ecx,1
 009FDB14    mov         edx,dword ptr ds:[9FDA60];_DynArr_672_6
 009FDB1A    call        @DynArraySetLength
 009FDB1F    add         esp,4
 009FDB22    mov         eax,dword ptr [esi+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009FDB28    mov         eax,dword ptr [eax+30];TOraQuery.FFields:TFields
 009FDB2B    call        TFields.GetCount
 009FDB30    mov         edi,eax
 009FDB32    dec         edi
 009FDB33    test        edi,edi
>009FDB35    jl          009FDB8C
 009FDB37    inc         edi
 009FDB38    xor         ebx,ebx
 009FDB3A    mov         eax,dword ptr [esi+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009FDB40    mov         eax,dword ptr [eax+30];TOraQuery.FFields:TFields
 009FDB43    mov         edx,ebx
 009FDB45    call        TFields.GetField
 009FDB4A    lea         edx,[ebp-10]
 009FDB4D    call        TField.GetDisplayName
 009FDB52    mov         edx,dword ptr [ebp-10]
 009FDB55    mov         eax,dword ptr [ebp-4]
 009FDB58    lea         eax,[eax+ebx*4]
 009FDB5B    call        @LStrAsg
 009FDB60    mov         eax,dword ptr [esi+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009FDB66    mov         eax,dword ptr [eax+30];TOraQuery.FFields:TFields
 009FDB69    mov         edx,ebx
 009FDB6B    call        TFields.GetField
 009FDB70    mov         edx,dword ptr [eax+38];TField.FieldName:String
 009FDB73    mov         eax,dword ptr [ebp-8]
 009FDB76    lea         eax,[eax+ebx*4]
 009FDB79    call        @LStrAsg
 009FDB7E    mov         eax,dword ptr [ebp-0C]
 009FDB81    mov         dword ptr [eax+ebx*4],0FFFFFFFF
 009FDB88    inc         ebx
 009FDB89    dec         edi
>009FDB8A    jne         009FDB3A
 009FDB8C    mov         eax,dword ptr [ebp-4]
 009FDB8F    push        eax
 009FDB90    mov         eax,dword ptr [ebp-4]
 009FDB93    call        @DynArrayHigh
 009FDB98    push        eax
 009FDB99    mov         eax,dword ptr [ebp-8]
 009FDB9C    push        eax
 009FDB9D    mov         eax,dword ptr [ebp-8]
 009FDBA0    call        @DynArrayHigh
 009FDBA5    push        eax
 009FDBA6    mov         eax,dword ptr [ebp-0C]
 009FDBA9    push        eax
 009FDBAA    mov         eax,dword ptr [ebp-0C]
 009FDBAD    call        @DynArrayHigh
 009FDBB2    push        eax
 009FDBB3    mov         ecx,dword ptr [esi+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009FDBB9    mov         edx,9FDC28;'OstatExport.xls'
 009FDBBE    xor         eax,eax
 009FDBC0    call        007A13EC
 009FDBC5    mov         eax,dword ptr [esi+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009FDBCB    call        TDataSet.First
 009FDBD0    mov         eax,dword ptr [esi+358];TMainFormMarketSklad.Q_OSTATS:TOraQuery
 009FDBD6    call        TDataSet.EnableControls
 009FDBDB    xor         eax,eax
 009FDBDD    pop         edx
 009FDBDE    pop         ecx
 009FDBDF    pop         ecx
 009FDBE0    mov         dword ptr fs:[eax],edx
 009FDBE3    push        9FDC19
 009FDBE8    lea         eax,[ebp-10]
 009FDBEB    call        @LStrClr
 009FDBF0    lea         eax,[ebp-0C]
 009FDBF3    mov         edx,dword ptr ds:[9FDA60];_DynArr_672_6
 009FDBF9    call        @DynArrayClear
 009FDBFE    lea         eax,[ebp-8]
 009FDC01    mov         edx,dword ptr ds:[9FDA34];_DynArr_672_5
 009FDC07    mov         ecx,2
 009FDC0C    call        @FinalizeArray
 009FDC11    ret
>009FDC12    jmp         @HandleFinally
>009FDC17    jmp         009FDBE8
 009FDC19    pop         edi
 009FDC1A    pop         esi
 009FDC1B    pop         ebx
 009FDC1C    mov         esp,ebp
 009FDC1E    pop         ebp
 009FDC1F    ret
*}
end;

//009FDC38
procedure TMainFormMarketSklad.aCennikBkEtiket58_40_3Execute;
begin
{*
 009FDC38    push        0
 009FDC3A    mov         cl,1
 009FDC3C    mov         edx,9FDC54;'Ценник c ш-к для принтера этикеток 58х40мм (тройной)'
 009FDC41    mov         eax,9FDC94;'58_40_3'
 009FDC46    call        0097608C
 009FDC4B    ret
*}
end;

//009FDC9C
procedure TMainFormMarketSklad.aReSet_All_PLUExecute;
begin
{*
 009FDC9C    push        ebp
 009FDC9D    mov         ebp,esp
 009FDC9F    push        ecx
 009FDCA0    mov         ecx,eax
 009FDCA2    mov         dl,1
 009FDCA4    mov         eax,[009D7754];TFormPluRepeats
 009FDCA9    call        TCustomForm.Create;TFormPluRepeats.Create
 009FDCAE    mov         dword ptr [ebp-4],eax
 009FDCB1    xor         eax,eax
 009FDCB3    push        ebp
 009FDCB4    push        9FDCE0
 009FDCB9    push        dword ptr fs:[eax]
 009FDCBC    mov         dword ptr fs:[eax],esp
 009FDCBF    mov         eax,dword ptr [ebp-4]
 009FDCC2    mov         edx,dword ptr [eax]
 009FDCC4    call        dword ptr [edx+0EC];TFormPluRepeats.sub_004AA600
 009FDCCA    xor         eax,eax
 009FDCCC    pop         edx
 009FDCCD    pop         ecx
 009FDCCE    pop         ecx
 009FDCCF    mov         dword ptr fs:[eax],edx
 009FDCD2    push        9FDCE7
 009FDCD7    mov         eax,dword ptr [ebp-4]
 009FDCDA    call        TObject.Free
 009FDCDF    ret
>009FDCE0    jmp         @HandleFinally
>009FDCE5    jmp         009FDCD7
 009FDCE7    pop         ecx
 009FDCE8    pop         ebp
 009FDCE9    ret
*}
end;

//009FDCEC
procedure TMainFormMarketSklad.aCennikForStellageA4_40_65Execute;
begin
{*
 009FDCEC    push        1
 009FDCEE    mov         cl,1
 009FDCF0    mov         edx,9FDD08;'Для стеллаж. на А4(40x65мм)'
 009FDCF5    mov         eax,9FDD2C;'FOR_STELLAGE_A4_40_65'
 009FDCFA    call        0097608C
 009FDCFF    ret
*}
end;

//009FDD44
procedure TMainFormMarketSklad.TimerConnTestTimer;
begin
{*
 009FDD44    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009FDD49    mov         eax,dword ptr [eax]
 009FDD4B    mov         eax,dword ptr [eax+9C]
 009FDD51    call        TDataSet.Close
 009FDD56    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009FDD5B    mov         eax,dword ptr [eax]
 009FDD5D    mov         eax,dword ptr [eax+9C]
 009FDD63    call        TDataSet.Open
 009FDD68    ret
*}
end;

//009FDD6C
procedure TMainFormMarketSklad.btnClearFindNaklClick(Sender:TObject);
begin
{*
 009FDD6C    push        ebx
 009FDD6D    push        esi
 009FDD6E    mov         ebx,eax
 009FDD70    xor         edx,edx
 009FDD72    mov         eax,dword ptr [ebx+8BC];TMainFormMarketSklad.EditFindNakl:TEdit
 009FDD78    call        TControl.SetText
 009FDD7D    mov         esi,dword ptr [ebx+2F8];TMainFormMarketSklad.PageControl1:TPageControl
 009FDD83    mov         edx,ebx
 009FDD85    mov         eax,dword ptr [esi+24C];TPageControl.?f24C:TfrxPreview
 009FDD8B    call        dword ptr [esi+248];TPageControl.FOnChange
 009FDD91    pop         esi
 009FDD92    pop         ebx
 009FDD93    ret
*}
end;

//009FDD94
procedure TMainFormMarketSklad.btnFindNaklClick(Sender:TObject);
begin
{*
 009FDD94    push        ebx
 009FDD95    mov         ebx,dword ptr [eax+2F8];TMainFormMarketSklad.PageControl1:TPageControl
 009FDD9B    mov         edx,eax
 009FDD9D    mov         eax,dword ptr [ebx+24C];TPageControl.?f24C:TfrxPreview
 009FDDA3    call        dword ptr [ebx+248];TPageControl.FOnChange
 009FDDA9    pop         ebx
 009FDDAA    ret
*}
end;

//009FDDAC
procedure TMainFormMarketSklad.rg_find_nakl_typeClick(Sender:TObject);
begin
{*
 009FDDAC    push        ebp
 009FDDAD    mov         ebp,esp
 009FDDAF    push        0
 009FDDB1    push        ebx
 009FDDB2    push        esi
 009FDDB3    mov         ebx,eax
 009FDDB5    xor         eax,eax
 009FDDB7    push        ebp
 009FDDB8    push        9FDE0E
 009FDDBD    push        dword ptr fs:[eax]
 009FDDC0    mov         dword ptr fs:[eax],esp
 009FDDC3    lea         edx,[ebp-4]
 009FDDC6    mov         eax,dword ptr [ebx+8BC];TMainFormMarketSklad.EditFindNakl:TEdit
 009FDDCC    call        TControl.GetText
 009FDDD1    cmp         dword ptr [ebp-4],0
>009FDDD5    je          009FDDF8
 009FDDD7    xor         edx,edx
 009FDDD9    mov         eax,dword ptr [ebx+8BC];TMainFormMarketSklad.EditFindNakl:TEdit
 009FDDDF    call        TControl.SetText
 009FDDE4    mov         esi,dword ptr [ebx+2F8];TMainFormMarketSklad.PageControl1:TPageControl
 009FDDEA    mov         edx,ebx
 009FDDEC    mov         eax,dword ptr [esi+24C];TPageControl.?f24C:TfrxPreview
 009FDDF2    call        dword ptr [esi+248];TPageControl.FOnChange
 009FDDF8    xor         eax,eax
 009FDDFA    pop         edx
 009FDDFB    pop         ecx
 009FDDFC    pop         ecx
 009FDDFD    mov         dword ptr fs:[eax],edx
 009FDE00    push        9FDE15
 009FDE05    lea         eax,[ebp-4]
 009FDE08    call        @LStrClr
 009FDE0D    ret
>009FDE0E    jmp         @HandleFinally
>009FDE13    jmp         009FDE05
 009FDE15    pop         esi
 009FDE16    pop         ebx
 009FDE17    pop         ecx
 009FDE18    pop         ebp
 009FDE19    ret
*}
end;

//009FDE1C
procedure TMainFormMarketSklad.EditFindNaklChange;
begin
{*
 009FDE1C    push        ebp
 009FDE1D    mov         ebp,esp
 009FDE1F    push        0
 009FDE21    push        ebx
 009FDE22    push        esi
 009FDE23    mov         ebx,eax
 009FDE25    xor         eax,eax
 009FDE27    push        ebp
 009FDE28    push        9FDE71
 009FDE2D    push        dword ptr fs:[eax]
 009FDE30    mov         dword ptr fs:[eax],esp
 009FDE33    lea         edx,[ebp-4]
 009FDE36    mov         eax,dword ptr [ebx+8BC];TMainFormMarketSklad.EditFindNakl:TEdit
 009FDE3C    call        TControl.GetText
 009FDE41    cmp         dword ptr [ebp-4],0
>009FDE45    jne         009FDE5B
 009FDE47    mov         esi,dword ptr [ebx+2F8];TMainFormMarketSklad.PageControl1:TPageControl
 009FDE4D    mov         edx,ebx
 009FDE4F    mov         eax,dword ptr [esi+24C];TPageControl.?f24C:TfrxPreview
 009FDE55    call        dword ptr [esi+248];TPageControl.FOnChange
 009FDE5B    xor         eax,eax
 009FDE5D    pop         edx
 009FDE5E    pop         ecx
 009FDE5F    pop         ecx
 009FDE60    mov         dword ptr fs:[eax],edx
 009FDE63    push        9FDE78
 009FDE68    lea         eax,[ebp-4]
 009FDE6B    call        @LStrClr
 009FDE70    ret
>009FDE71    jmp         @HandleFinally
>009FDE76    jmp         009FDE68
 009FDE78    pop         esi
 009FDE79    pop         ebx
 009FDE7A    pop         ecx
 009FDE7B    pop         ebp
 009FDE7C    ret
*}
end;

//009FDE80
procedure TMainFormMarketSklad.EditFindNaklKeyDown(Sender:TObject; var Key:Word; Shift:TShiftState);
begin
{*
 009FDE80    push        ebp
 009FDE81    mov         ebp,esp
 009FDE83    push        0
 009FDE85    push        ebx
 009FDE86    push        esi
 009FDE87    mov         ebx,eax
 009FDE89    xor         eax,eax
 009FDE8B    push        ebp
 009FDE8C    push        9FDEDB
 009FDE91    push        dword ptr fs:[eax]
 009FDE94    mov         dword ptr fs:[eax],esp
 009FDE97    cmp         word ptr [ecx],0D
>009FDE9B    jne         009FDEC5
 009FDE9D    lea         edx,[ebp-4]
 009FDEA0    mov         eax,dword ptr [ebx+8BC];TMainFormMarketSklad.EditFindNakl:TEdit
 009FDEA6    call        TControl.GetText
 009FDEAB    cmp         dword ptr [ebp-4],0
>009FDEAF    je          009FDEC5
 009FDEB1    mov         esi,dword ptr [ebx+2F8];TMainFormMarketSklad.PageControl1:TPageControl
 009FDEB7    mov         edx,ebx
 009FDEB9    mov         eax,dword ptr [esi+24C];TPageControl.?f24C:TfrxPreview
 009FDEBF    call        dword ptr [esi+248];TPageControl.FOnChange
 009FDEC5    xor         eax,eax
 009FDEC7    pop         edx
 009FDEC8    pop         ecx
 009FDEC9    pop         ecx
 009FDECA    mov         dword ptr fs:[eax],edx
 009FDECD    push        9FDEE2
 009FDED2    lea         eax,[ebp-4]
 009FDED5    call        @LStrClr
 009FDEDA    ret
>009FDEDB    jmp         @HandleFinally
>009FDEE0    jmp         009FDED2
 009FDEE2    pop         esi
 009FDEE3    pop         ebx
 009FDEE4    pop         ecx
 009FDEE5    pop         ebp
 009FDEE6    ret         4
*}
end;

//009FDEEC
procedure TMainFormMarketSklad.aSprKlCategoriesExecute;
begin
{*
 009FDEEC    push        ebp
 009FDEED    mov         ebp,esp
 009FDEEF    push        ecx
 009FDEF0    mov         ecx,eax
 009FDEF2    mov         dl,1
 009FDEF4    mov         eax,[009D8084];TFormSprKlCategories
 009FDEF9    call        TCustomForm.Create;TFormSprKlCategories.Create
 009FDEFE    mov         dword ptr [ebp-4],eax
 009FDF01    xor         eax,eax
 009FDF03    push        ebp
 009FDF04    push        9FDF30
 009FDF09    push        dword ptr fs:[eax]
 009FDF0C    mov         dword ptr fs:[eax],esp
 009FDF0F    mov         eax,dword ptr [ebp-4]
 009FDF12    mov         edx,dword ptr [eax]
 009FDF14    call        dword ptr [edx+0EC];TFormSprKlCategories.sub_004AA600
 009FDF1A    xor         eax,eax
 009FDF1C    pop         edx
 009FDF1D    pop         ecx
 009FDF1E    pop         ecx
 009FDF1F    mov         dword ptr fs:[eax],edx
 009FDF22    push        9FDF37
 009FDF27    mov         eax,dword ptr [ebp-4]
 009FDF2A    call        TObject.Free
 009FDF2F    ret
>009FDF30    jmp         @HandleFinally
>009FDF35    jmp         009FDF27
 009FDF37    pop         ecx
 009FDF38    pop         ebp
 009FDF39    ret
*}
end;

//009FDF3C
procedure TMainFormMarketSklad.aKassTablosExecute;
begin
{*
 009FDF3C    push        ebp
 009FDF3D    mov         ebp,esp
 009FDF3F    push        ecx
 009FDF40    mov         ecx,eax
 009FDF42    mov         dl,1
 009FDF44    mov         eax,[009E19D8];TFormKassTablos
 009FDF49    call        TCustomForm.Create;TFormKassTablos.Create
 009FDF4E    mov         dword ptr [ebp-4],eax
 009FDF51    xor         eax,eax
 009FDF53    push        ebp
 009FDF54    push        9FDF80
 009FDF59    push        dword ptr fs:[eax]
 009FDF5C    mov         dword ptr fs:[eax],esp
 009FDF5F    mov         eax,dword ptr [ebp-4]
 009FDF62    mov         edx,dword ptr [eax]
 009FDF64    call        dword ptr [edx+0EC];TFormKassTablos.sub_004AA600
 009FDF6A    xor         eax,eax
 009FDF6C    pop         edx
 009FDF6D    pop         ecx
 009FDF6E    pop         ecx
 009FDF6F    mov         dword ptr fs:[eax],edx
 009FDF72    push        9FDF87
 009FDF77    mov         eax,dword ptr [ebp-4]
 009FDF7A    call        TObject.Free
 009FDF7F    ret
>009FDF80    jmp         @HandleFinally
>009FDF85    jmp         009FDF77
 009FDF87    pop         ecx
 009FDF88    pop         ebp
 009FDF89    ret
*}
end;

//009FDF8C
procedure TMainFormMarketSklad.TimerDahuaTimer;
begin
{*
 009FDF8C    push        ebx
 009FDF8D    mov         ebx,eax
 009FDF8F    xor         edx,edx
 009FDF91    mov         eax,dword ptr [ebx+8DC];TMainFormMarketSklad.TimerDahua:TTimer
 009FDF97    call        TTimer.SetEnabled
 009FDF9C    mov         eax,[00AC71B4];^gvar_00ACE8FC:TFormDahua2
 009FDFA1    mov         eax,dword ptr [eax]
 009FDFA3    cmp         byte ptr [eax+410],0
>009FDFAA    je          009FDFF3
 009FDFAC    mov         eax,[00AC71B4];^gvar_00ACE8FC:TFormDahua2
 009FDFB1    mov         eax,dword ptr [eax]
 009FDFB3    add         eax,41C
 009FDFB8    mov         edx,9FE004;'0'
 009FDFBD    call        @LStrAsg
 009FDFC2    mov         eax,[00AC71B4];^gvar_00ACE8FC:TFormDahua2
 009FDFC7    mov         eax,dword ptr [eax]
 009FDFC9    xor         edx,edx
 009FDFCB    mov         dword ptr [eax+420],edx
 009FDFD1    mov         eax,[00AC71B4];^gvar_00ACE8FC:TFormDahua2
 009FDFD6    mov         eax,dword ptr [eax]
 009FDFD8    call        TFormDahua2.SendPLUs
 009FDFDD    mov         eax,[00AC71B4];^gvar_00ACE8FC:TFormDahua2
 009FDFE2    mov         eax,dword ptr [eax]
 009FDFE4    mov         eax,dword ptr [eax+3AC]
 009FDFEA    mov         dl,1
 009FDFEC    call        TTimer.SetEnabled
 009FDFF1    pop         ebx
 009FDFF2    ret
 009FDFF3    mov         byte ptr [ebx+9C7],1;TMainFormMarketSklad.?f9C7:byte
 009FDFFA    pop         ebx
 009FDFFB    ret
*}
end;

//009FE008
procedure TMainFormMarketSklad.aSinhronizationExecute;
begin
{*
 009FE008    push        ebp
 009FE009    mov         ebp,esp
 009FE00B    push        0
 009FE00D    push        0
 009FE00F    push        0
 009FE011    push        ebx
 009FE012    push        esi
 009FE013    mov         ebx,eax
 009FE015    xor         eax,eax
 009FE017    push        ebp
 009FE018    push        9FE109
 009FE01D    push        dword ptr fs:[eax]
 009FE020    mov         dword ptr fs:[eax],esp
 009FE023    call        007A6F28
 009FE028    test        eax,eax
>009FE02A    jle         009FE076
 009FE02C    lea         eax,[ebp-0C]
 009FE02F    call        007A708C
 009FE034    push        9FE120;'В закрытых периодах учета c '
 009FE039    push        dword ptr [ebp-0C]
 009FE03C    push        9FE148;' имеются'
 009FE041    push        9FE15C;#13
 009FE046    push        9FE168;'непроведенные кассовые чеки (продажи)!'
 009FE04B    push        9FE198;#13+#13
 009FE050    push        9FE1A4;'Необходимо отменить закрытие учетных периодов'
 009FE055    push        9FE15C;#13
 009FE05A    push        9FE1DC;'и сделать синхронизацию. Затем закрыть периоды повторно.'
 009FE05F    lea         eax,[ebp-8]
 009FE062    mov         edx,9
 009FE067    call        @LStrCatN
 009FE06C    mov         eax,dword ptr [ebp-8]
 009FE06F    call        ShowMessage
>009FE074    jmp         009FE0EE
 009FE076    mov         ecx,ebx
 009FE078    mov         dl,1
 009FE07A    mov         eax,[009E30BC];TFormSinhronByKass
 009FE07F    call        TCustomForm.Create;TFormSinhronByKass.Create
 009FE084    mov         dword ptr [ebp-4],eax
 009FE087    xor         eax,eax
 009FE089    push        ebp
 009FE08A    push        9FE0E7
 009FE08F    push        dword ptr fs:[eax]
 009FE092    mov         dword ptr fs:[eax],esp
 009FE095    mov         eax,dword ptr [ebp-4]
 009FE098    mov         edx,dword ptr [eax]
 009FE09A    call        dword ptr [edx+0EC];TFormSinhronByKass.sub_004AA600
 009FE0A0    mov         eax,dword ptr [ebx+2F8];TMainFormMarketSklad.PageControl1:TPageControl
 009FE0A6    call        TPageControl.GetActivePageIndex
 009FE0AB    test        eax,eax
>009FE0AD    je          009FE0BD
 009FE0AF    mov         eax,dword ptr [ebx+2F8];TMainFormMarketSklad.PageControl1:TPageControl
 009FE0B5    call        TPageControl.GetActivePageIndex
 009FE0BA    dec         eax
>009FE0BB    jne         009FE0D1
 009FE0BD    mov         esi,dword ptr [ebx+2F8];TMainFormMarketSklad.PageControl1:TPageControl
 009FE0C3    mov         edx,ebx
 009FE0C5    mov         eax,dword ptr [esi+24C];TPageControl.?f24C:TfrxPreview
 009FE0CB    call        dword ptr [esi+248];TPageControl.FOnChange
 009FE0D1    xor         eax,eax
 009FE0D3    pop         edx
 009FE0D4    pop         ecx
 009FE0D5    pop         ecx
 009FE0D6    mov         dword ptr fs:[eax],edx
 009FE0D9    push        9FE0EE
 009FE0DE    mov         eax,dword ptr [ebp-4]
 009FE0E1    call        TObject.Free
 009FE0E6    ret
>009FE0E7    jmp         @HandleFinally
>009FE0EC    jmp         009FE0DE
 009FE0EE    xor         eax,eax
 009FE0F0    pop         edx
 009FE0F1    pop         ecx
 009FE0F2    pop         ecx
 009FE0F3    mov         dword ptr fs:[eax],edx
 009FE0F6    push        9FE110
 009FE0FB    lea         eax,[ebp-0C]
 009FE0FE    mov         edx,2
 009FE103    call        @LStrArrayClr
 009FE108    ret
>009FE109    jmp         @HandleFinally
>009FE10E    jmp         009FE0FB
 009FE110    pop         esi
 009FE111    pop         ebx
 009FE112    mov         esp,ebp
 009FE114    pop         ebp
 009FE115    ret
*}
end;

//009FE218
procedure TMainFormMarketSklad.aSravnenieExecute;
begin
{*
 009FE218    push        ebx
 009FE219    mov         ebx,eax
 009FE21B    mov         edx,9FE240;'ID'
 009FE220    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009FE226    call        TDataSet.FieldByName
 009FE22B    mov         edx,dword ptr [eax]
 009FE22D    call        dword ptr [edx+58];TField.GetAsInteger
 009FE230    call        009727CC
 009FE235    pop         ebx
 009FE236    ret
*}
end;

//009FE244
{*procedure TMainFormMarketSklad.aSravnenieUpdate(?:?);
begin
 009FE244    push        ebx
 009FE245    push        esi
 009FE246    mov         esi,edx
 009FE248    mov         ebx,eax
 009FE24A    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009FE250    call        TDataSet.IsEmpty
 009FE255    test        al,al
>009FE257    jne         009FE273
 009FE259    mov         edx,9FE298;'ID_OPER_TYPE'
 009FE25E    mov         eax,dword ptr [ebx+360];TMainFormMarketSklad.Q_PRIHODS:TOraQuery
 009FE264    call        TDataSet.FieldByName
 009FE269    mov         edx,dword ptr [eax]
 009FE26B    call        dword ptr [edx+58];TField.GetAsInteger
 009FE26E    cmp         eax,2
>009FE271    je          009FE277
 009FE273    xor         eax,eax
>009FE275    jmp         009FE279
 009FE277    mov         al,1
 009FE279    push        eax
 009FE27A    mov         eax,esi
 009FE27C    mov         edx,dword ptr ds:[497794];TCustomAction
 009FE282    call        @AsClass
 009FE287    pop         edx
 009FE288    call        TCustomAction.SetEnabled
 009FE28D    pop         esi
 009FE28E    pop         ebx
 009FE28F    ret
end;*}

//009FE2A8
procedure TMainFormMarketSklad.aCennikBkEtiket30_20Execute;
begin
{*
 009FE2A8    push        0
 009FE2AA    mov         cl,1
 009FE2AC    mov         edx,9FE2C4;'Ценник c ш-к для принтера этикеток 30х20мм'
 009FE2B1    mov         eax,9FE2F8;'30_20'
 009FE2B6    call        0097608C
 009FE2BB    ret
*}
end;

//009FE300
procedure TMainFormMarketSklad.aKassScalesByComPortExecute;
begin
{*
 009FE300    push        ebp
 009FE301    mov         ebp,esp
 009FE303    push        ecx
 009FE304    mov         ecx,eax
 009FE306    mov         dl,1
 009FE308    mov         eax,[009E4E7C];TFormKassScalesByComPort
 009FE30D    call        TCustomForm.Create;TFormKassScalesByComPort.Create
 009FE312    mov         dword ptr [ebp-4],eax
 009FE315    xor         eax,eax
 009FE317    push        ebp
 009FE318    push        9FE344
 009FE31D    push        dword ptr fs:[eax]
 009FE320    mov         dword ptr fs:[eax],esp
 009FE323    mov         eax,dword ptr [ebp-4]
 009FE326    mov         edx,dword ptr [eax]
 009FE328    call        dword ptr [edx+0EC];TFormKassScalesByComPort.sub_004AA600
 009FE32E    xor         eax,eax
 009FE330    pop         edx
 009FE331    pop         ecx
 009FE332    pop         ecx
 009FE333    mov         dword ptr fs:[eax],edx
 009FE336    push        9FE34B
 009FE33B    mov         eax,dword ptr [ebp-4]
 009FE33E    call        TObject.Free
 009FE343    ret
>009FE344    jmp         @HandleFinally
>009FE349    jmp         009FE33B
 009FE34B    pop         ecx
 009FE34C    pop         ebp
 009FE34D    ret
*}
end;

//009FE350
procedure TMainFormMarketSklad.aSprValutsExecute;
begin
{*
 009FE350    push        ebp
 009FE351    mov         ebp,esp
 009FE353    push        ecx
 009FE354    mov         ecx,eax
 009FE356    mov         dl,1
 009FE358    mov         eax,[009E7E60];TFormSprValuts
 009FE35D    call        TCustomForm.Create;TFormSprValuts.Create
 009FE362    mov         dword ptr [ebp-4],eax
 009FE365    xor         eax,eax
 009FE367    push        ebp
 009FE368    push        9FE394
 009FE36D    push        dword ptr fs:[eax]
 009FE370    mov         dword ptr fs:[eax],esp
 009FE373    mov         eax,dword ptr [ebp-4]
 009FE376    mov         edx,dword ptr [eax]
 009FE378    call        dword ptr [edx+0EC];TFormSprValuts.sub_004AA600
 009FE37E    xor         eax,eax
 009FE380    pop         edx
 009FE381    pop         ecx
 009FE382    pop         ecx
 009FE383    mov         dword ptr fs:[eax],edx
 009FE386    push        9FE39B
 009FE38B    mov         eax,dword ptr [ebp-4]
 009FE38E    call        TObject.Free
 009FE393    ret
>009FE394    jmp         @HandleFinally
>009FE399    jmp         009FE38B
 009FE39B    pop         ecx
 009FE39C    pop         ebp
 009FE39D    ret
*}
end;

//009FE3A0
procedure TMainFormMarketSklad.N62Click(Sender:TObject);
begin
{*
 009FE3A0    push        ebp
 009FE3A1    mov         ebp,esp
 009FE3A3    push        0
 009FE3A5    push        ebx
 009FE3A6    xor         eax,eax
 009FE3A8    push        ebp
 009FE3A9    push        9FE423
 009FE3AE    push        dword ptr fs:[eax]
 009FE3B1    mov         dword ptr fs:[eax],esp
 009FE3B4    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009FE3B9    mov         eax,dword ptr [eax]
 009FE3BB    mov         ebx,dword ptr [eax+60]
 009FE3BE    mov         eax,ebx
 009FE3C0    call        TDataSet.Close
 009FE3C5    mov         eax,ebx
 009FE3C7    call        TOraQuery.GetSQL
 009FE3CC    mov         edx,dword ptr [eax]
 009FE3CE    call        dword ptr [edx+44]
 009FE3D1    mov         eax,ebx
 009FE3D3    call        TOraQuery.GetSQL
 009FE3D8    mov         edx,9FE438;'SELECT LAST_SCRIPT_NAME FROM SETTINGS WHERE ID=1'
 009FE3DD    mov         ecx,dword ptr [eax]
 009FE3DF    call        dword ptr [ecx+38]
 009FE3E2    mov         eax,ebx
 009FE3E4    call        TDataSet.Open
 009FE3E9    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009FE3EE    mov         eax,dword ptr [eax]
 009FE3F0    mov         eax,dword ptr [eax+60]
 009FE3F3    mov         edx,9FE474;'LAST_SCRIPT_NAME'
 009FE3F8    call        TDataSet.FieldByName
 009FE3FD    lea         edx,[ebp-4]
 009FE400    mov         ecx,dword ptr [eax]
 009FE402    call        dword ptr [ecx+60];TField.GetAsString
 009FE405    mov         eax,dword ptr [ebp-4]
 009FE408    call        ShowMessage
 009FE40D    xor         eax,eax
 009FE40F    pop         edx
 009FE410    pop         ecx
 009FE411    pop         ecx
 009FE412    mov         dword ptr fs:[eax],edx
 009FE415    push        9FE42A
 009FE41A    lea         eax,[ebp-4]
 009FE41D    call        @LStrClr
 009FE422    ret
>009FE423    jmp         @HandleFinally
>009FE428    jmp         009FE41A
 009FE42A    pop         ebx
 009FE42B    pop         ecx
 009FE42C    pop         ebp
 009FE42D    ret
*}
end;

//009FE488
procedure TMainFormMarketSklad.aCennikBkEtiket50_30Execute;
begin
{*
 009FE488    push        0
 009FE48A    mov         cl,1
 009FE48C    mov         edx,9FE4A4;'Ценник c ш-к для принтера этикеток 50х30мм'
 009FE491    mov         eax,9FE4D8;'50_30'
 009FE496    call        0097608C
 009FE49B    ret
*}
end;

//009FE4E0
procedure TMainFormMarketSklad.SetSkin;
begin
{*
 009FE4E0    push        ebp
 009FE4E1    mov         ebp,esp
 009FE4E3    push        ecx
 009FE4E4    mov         dword ptr [ebp-4],eax
 009FE4E7    xor         eax,eax
 009FE4E9    push        ebp
 009FE4EA    push        9FE503
 009FE4EF    push        dword ptr fs:[eax]
 009FE4F2    mov         dword ptr fs:[eax],esp
 009FE4F5    xor         eax,eax
 009FE4F7    pop         edx
 009FE4F8    pop         ecx
 009FE4F9    pop         ecx
 009FE4FA    mov         dword ptr fs:[eax],edx
 009FE4FD    push        9FE50A
 009FE502    ret
>009FE503    jmp         @HandleFinally
>009FE508    jmp         009FE502
 009FE50A    pop         ecx
 009FE50B    pop         ebp
 009FE50C    ret
*}
end;

//009FE510
procedure TMainFormMarketSklad.FormActivate(Sender:TObject);
begin
{*
 009FE510    cmp         byte ptr ds:[0AC6674],0;gvar_00AC6674
>009FE517    jne         009FE526
 009FE519    mov         dl,1
 009FE51B    mov         eax,dword ptr [eax+314];TMainFormMarketSklad.CloseTimer:TTimer
 009FE521    call        TTimer.SetEnabled
 009FE526    ret
*}
end;

//009FE528
procedure TMainFormMarketSklad.aSprNalogsExecute;
begin
{*
 009FE528    push        ebp
 009FE529    mov         ebp,esp
 009FE52B    push        ecx
 009FE52C    mov         ecx,eax
 009FE52E    mov         dl,1
 009FE530    mov         eax,[009EA67C];TFormSprNalogs
 009FE535    call        TCustomForm.Create;TFormSprNalogs.Create
 009FE53A    mov         dword ptr [ebp-4],eax
 009FE53D    xor         eax,eax
 009FE53F    push        ebp
 009FE540    push        9FE56C
 009FE545    push        dword ptr fs:[eax]
 009FE548    mov         dword ptr fs:[eax],esp
 009FE54B    mov         eax,dword ptr [ebp-4]
 009FE54E    mov         edx,dword ptr [eax]
 009FE550    call        dword ptr [edx+0EC];TFormSprNalogs.sub_004AA600
 009FE556    xor         eax,eax
 009FE558    pop         edx
 009FE559    pop         ecx
 009FE55A    pop         ecx
 009FE55B    mov         dword ptr fs:[eax],edx
 009FE55E    push        9FE573
 009FE563    mov         eax,dword ptr [ebp-4]
 009FE566    call        TObject.Free
 009FE56B    ret
>009FE56C    jmp         @HandleFinally
>009FE571    jmp         009FE563
 009FE573    pop         ecx
 009FE574    pop         ebp
 009FE575    ret
*}
end;

//009FE578
procedure TMainFormMarketSklad.aFiscalSettingsExecute;
begin
{*
 009FE578    push        ebp
 009FE579    mov         ebp,esp
 009FE57B    add         esp,0FFFFFFF8
 009FE57E    push        ebx
 009FE57F    push        esi
 009FE580    push        edi
 009FE581    xor         ecx,ecx
 009FE583    mov         dword ptr [ebp-8],ecx
 009FE586    mov         ebx,eax
 009FE588    xor         eax,eax
 009FE58A    push        ebp
 009FE58B    push        9FE753
 009FE590    push        dword ptr fs:[eax]
 009FE593    mov         dword ptr fs:[eax],esp
 009FE596    mov         eax,[00AC6618];0x0 gvar_00AC6618
 009FE59B    mov         edx,9FE76C;'ABDUKODIR'
 009FE5A0    call        @LStrCmp
>009FE5A5    jne         009FE73D
 009FE5AB    mov         ecx,ebx
 009FE5AD    mov         dl,1
 009FE5AF    mov         eax,[009EB2FC];TFormFiscalSetting
 009FE5B4    call        TCustomForm.Create;TFormFiscalSetting.Create
 009FE5B9    mov         dword ptr [ebp-4],eax
 009FE5BC    xor         eax,eax
 009FE5BE    push        ebp
 009FE5BF    push        9FE736
 009FE5C4    push        dword ptr fs:[eax]
 009FE5C7    mov         dword ptr fs:[eax],esp
 009FE5CA    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009FE5CF    mov         eax,dword ptr [eax]
 009FE5D1    mov         ebx,dword ptr [eax+60]
 009FE5D4    mov         eax,ebx
 009FE5D6    call        TDataSet.Close
 009FE5DB    mov         eax,ebx
 009FE5DD    call        TOraQuery.GetSQL
 009FE5E2    mov         edx,dword ptr [eax]
 009FE5E4    call        dword ptr [edx+44]
 009FE5E7    mov         eax,ebx
 009FE5E9    call        TOraQuery.GetSQL
 009FE5EE    mov         edx,9FE780;'SELECT * FROM SETTINGS_FISCAL WHERE ID=1'
 009FE5F3    mov         ecx,dword ptr [eax]
 009FE5F5    call        dword ptr [ecx+38]
 009FE5F8    mov         eax,ebx
 009FE5FA    call        TDataSet.Open
 009FE5FF    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009FE604    mov         eax,dword ptr [eax]
 009FE606    mov         eax,dword ptr [eax+60]
 009FE609    mov         edx,9FE7B4;'IS_FISCAL'
 009FE60E    call        TDataSet.FieldByName
 009FE613    mov         edx,dword ptr [eax]
 009FE615    call        dword ptr [edx+58];TField.GetAsInteger
 009FE618    dec         eax
 009FE619    sete        dl
 009FE61C    mov         eax,dword ptr [ebp-4]
 009FE61F    mov         eax,dword ptr [eax+304];TFormFiscalSetting.chbIsFiscal:TCheckBox
 009FE625    mov         ecx,dword ptr [eax]
 009FE627    call        dword ptr [ecx+0CC];TCustomCheckBox.SetChecked
 009FE62D    mov         eax,dword ptr [ebp-4]
 009FE630    mov         edx,dword ptr [eax]
 009FE632    call        dword ptr [edx+0EC];TFormFiscalSetting.sub_004AA600
 009FE638    mov         eax,dword ptr [ebp-4]
 009FE63B    cmp         dword ptr [eax+24C],1;TFormFiscalSetting.FModalResult:TModalResult
>009FE642    jne         009FE720
 009FE648    xor         eax,eax
 009FE64A    push        ebp
 009FE64B    push        9FE6F0
 009FE650    push        dword ptr fs:[eax]
 009FE653    mov         dword ptr fs:[eax],esp
 009FE656    mov         eax,[00AC7318];^gvar_00ACBBF8:TDM
 009FE65B    mov         eax,dword ptr [eax]
 009FE65D    mov         ebx,dword ptr [eax+60]
 009FE660    mov         eax,ebx
 009FE662    call        TDataSet.Close
 009FE667    mov         eax,ebx
 009FE669    call        TOraQuery.GetSQL
 009FE66E    mov         edx,dword ptr [eax]
 009FE670    call        dword ptr [edx+44]
 009FE673    mov         eax,ebx
 009FE675    call        TOraQuery.GetSQL
 009FE67A    mov         edx,9FE7C8;'UPDATE SETTINGS_FISCAL SET IS_FISCAL=:IS_FISCAL'
 009FE67F    mov         ecx,dword ptr [eax]
 009FE681    call        dword ptr [ecx+38]
 009FE684    mov         eax,ebx
 009FE686    call        TOraQuery.GetSQL
 009FE68B    mov         edx,9FE800;'WHERE ID=1'
 009FE690    mov         ecx,dword ptr [eax]
 009FE692    call        dword ptr [ecx+38]
 009FE695    mov         eax,dword ptr [ebp-4]
 009FE698    mov         eax,dword ptr [eax+304];TFormFiscalSetting.chbIsFiscal:TCheckBox
 009FE69E    mov         edx,dword ptr [eax]
 009FE6A0    call        dword ptr [edx+0C8];TCustomCheckBox.GetChecked
 009FE6A6    test        al,al
>009FE6A8    je          009FE6C2
 009FE6AA    mov         edx,9FE7B4;'IS_FISCAL'
 009FE6AF    mov         eax,ebx
 009FE6B1    call        006210D4
 009FE6B6    mov         edx,1
 009FE6BB    mov         ecx,dword ptr [eax]
 009FE6BD    call        dword ptr [ecx+68]
>009FE6C0    jmp         009FE6D5
 009FE6C2    mov         edx,9FE7B4;'IS_FISCAL'
 009FE6C7    mov         eax,ebx
 009FE6C9    call        006210D4
 009FE6CE    xor         edx,edx
 009FE6D0    mov         ecx,dword ptr [eax]
 009FE6D2    call        dword ptr [ecx+68]
 009FE6D5    mov         eax,ebx
 009FE6D7    call        00620CE4
 009FE6DC    mov         eax,9FE814;'Настройка успешно введена!'
 009FE6E1    call        ShowMessage
 009FE6E6    xor         eax,eax
 009FE6E8    pop         edx
 009FE6E9    pop         ecx
 009FE6EA    pop         ecx
 009FE6EB    mov         dword ptr fs:[eax],edx
>009FE6EE    jmp         009FE720
>009FE6F0    jmp         @HandleOnException
 009FE6F5    dd          1
 009FE6F9    dd          00408E24;Exception
 009FE6FD    dd          009FE701
 009FE701    mov         ebx,eax
 009FE703    mov         ecx,dword ptr [ebx+4];Exception.FMessage:String
 009FE706    lea         eax,[ebp-8]
 009FE709    mov         edx,9FE838;'Ошибка:'
 009FE70E    call        @LStrCat3
 009FE713    mov         eax,dword ptr [ebp-8]
 009FE716    call        ShowMessage
 009FE71B    call        @DoneExcept
 009FE720    xor         eax,eax
 009FE722    pop         edx
 009FE723    pop         ecx
 009FE724    pop         ecx
 009FE725    mov         dword ptr fs:[eax],edx
 009FE728    push        9FE73D
 009FE72D    mov         eax,dword ptr [ebp-4]
 009FE730    call        TObject.Free
 009FE735    ret
>009FE736    jmp         @HandleFinally
>009FE73B    jmp         009FE72D
 009FE73D    xor         eax,eax
 009FE73F    pop         edx
 009FE740    pop         ecx
 009FE741    pop         ecx
 009FE742    mov         dword ptr fs:[eax],edx
 009FE745    push        9FE75A
 009FE74A    lea         eax,[ebp-8]
 009FE74D    call        @LStrClr
 009FE752    ret
>009FE753    jmp         @HandleFinally
>009FE758    jmp         009FE74A
 009FE75A    pop         edi
 009FE75B    pop         esi
 009FE75C    pop         ebx
 009FE75D    pop         ecx
 009FE75E    pop         ecx
 009FE75F    pop         ebp
 009FE760    ret
*}
end;

//009FE840
procedure TMainFormMarketSklad.aCloudSettsExecute;
begin
{*
 009FE840    push        ebp
 009FE841    mov         ebp,esp
 009FE843    push        ecx
 009FE844    mov         ecx,eax
 009FE846    mov         dl,1
 009FE848    mov         eax,[009EB570];TFormCloudSetts
 009FE84D    call        TCustomForm.Create;TFormCloudSetts.Create
 009FE852    mov         dword ptr [ebp-4],eax
 009FE855    xor         eax,eax
 009FE857    push        ebp
 009FE858    push        9FE884
 009FE85D    push        dword ptr fs:[eax]
 009FE860    mov         dword ptr fs:[eax],esp
 009FE863    mov         eax,dword ptr [ebp-4]
 009FE866    mov         edx,dword ptr [eax]
 009FE868    call        dword ptr [edx+0EC];TFormCloudSetts.sub_004AA600
 009FE86E    xor         eax,eax
 009FE870    pop         edx
 009FE871    pop         ecx
 009FE872    pop         ecx
 009FE873    mov         dword ptr fs:[eax],edx
 009FE876    push        9FE88B
 009FE87B    mov         eax,dword ptr [ebp-4]
 009FE87E    call        TObject.Free
 009FE883    ret
>009FE884    jmp         @HandleFinally
>009FE889    jmp         009FE87B
 009FE88B    pop         ecx
 009FE88C    pop         ebp
 009FE88D    ret
*}
end;

Initialization
Finalization
//009FE890
{*
 009FE890    push        ebp
 009FE891    mov         ebp,esp
 009FE893    xor         eax,eax
 009FE895    push        ebp
 009FE896    push        9FE979
 009FE89B    push        dword ptr fs:[eax]
 009FE89E    mov         dword ptr fs:[eax],esp
 009FE8A1    inc         dword ptr ds:[0ACEBF8]
>009FE8A7    jne         009FE96B
 009FE8AD    mov         eax,0ACEBE8;gvar_00ACEBE8:Variant
 009FE8B2    call        @VarClr
 009FE8B7    mov         eax,0AC6668;gvar_00AC6668
 009FE8BC    call        @LStrClr
 009FE8C1    mov         eax,0AC6664;gvar_00AC6664
 009FE8C6    call        @LStrClr
 009FE8CB    mov         eax,0AC6648;^'JJJ'
 009FE8D0    call        @LStrClr
 009FE8D5    mov         eax,0AC6644;^'ag8250'
 009FE8DA    call        @LStrClr
 009FE8DF    mov         eax,0AC6640;^'г.Москва'
 009FE8E4    call        @LStrClr
 009FE8E9    mov         eax,0AC663C
 009FE8EE    call        @LStrClr
 009FE8F3    mov         eax,0AC6638;^'НАША ФИРМА'
 009FE8F8    call        @LStrClr
 009FE8FD    mov         eax,0AC6634;^'1'
 009FE902    call        @LStrClr
 009FE907    mov         eax,0AC6630;^'OPT_USER_'
 009FE90C    call        @LStrClr
 009FE911    mov         eax,0AC662C;^'OPTTORG_'
 009FE916    call        @LStrClr
 009FE91B    mov         eax,0AC6628;^'192.168.0.1'
 009FE920    call        @LStrClr
 009FE925    mov         eax,0AC6624;^'ldaXOA8cIc2LjSFPuYd8en+J'
 009FE92A    call        @LStrClr
 009FE92F    mov         eax,0AC6618;gvar_00AC6618
 009FE934    call        @LStrClr
 009FE939    mov         eax,0AC6610;gvar_00AC6610
 009FE93E    call        @LStrClr
 009FE943    mov         eax,0AC660C;gvar_00AC660C
 009FE948    call        @LStrClr
 009FE94D    mov         eax,0AC6608;^'0.0.0.0'
 009FE952    call        @LStrClr
 009FE957    mov         eax,0AC6604;^'18.27 от 15.03.2024г.'
 009FE95C    call        @LStrClr
 009FE961    mov         eax,0AC6600;^'Модуль "Склад магазина"'
 009FE966    call        @LStrClr
 009FE96B    xor         eax,eax
 009FE96D    pop         edx
 009FE96E    pop         ecx
 009FE96F    pop         ecx
 009FE970    mov         dword ptr fs:[eax],edx
 009FE973    push        9FE980
 009FE978    ret
>009FE979    jmp         @HandleFinally
>009FE97E    jmp         009FE978
 009FE980    pop         ebp
 009FE981    ret
*}
end.