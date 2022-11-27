//
//  CoinsLargeList+Json.swift
//  CryptocompareTests
//
//  Created by oscar on 23/11/22.
//

import XCTest

final class CoinsLargeListJsonMock: XCTestCase {
    static func makeJsonMock() -> Data {
        return Data("""
{
   "Response":"Success",
   "Message":"Summary coin list succesfully returned!",
   "Data":{
      "42":{
         "Id":"4321",
         "ImageUrl":"/media/35650717/42.jpg",
         "Symbol":"42",
         "FullName":"42 Coin (42)"
      },
      "300":{
         "Id":"749869",
         "ImageUrl":"/media/27010595/300.png",
         "Symbol":"300",
         "FullName":"300 token (300)"
      },
      "365":{
         "Id":"33639",
         "ImageUrl":"/media/352070/365.png",
         "Symbol":"365",
         "FullName":"365Coin (365)"
      },
      "404":{
         "Id":"21227",
         "ImageUrl":"/media/35650851/404-300x300.jpg",
         "Symbol":"404",
         "FullName":"404Coin (404)"
      },
      "611":{
         "Id":"20909",
         "ImageUrl":"/media/35650940/611-sixeleven.png",
         "Symbol":"611",
         "FullName":"SixEleven (611)"
      },
      "808":{
         "Id":"28223",
         "ImageUrl":"/media/351513/808.png",
         "Symbol":"808",
         "FullName":"808 (808)"
      },
      "888":{
         "Id":"29462",
         "ImageUrl":"/media/351639/888.png",
         "Symbol":"888",
         "FullName":"Octocoin (888)"
      },
      "1337":{
         "Id":"20824",
         "ImageUrl":"/media/35520987/elite.png",
         "Symbol":"1337",
         "FullName":"EliteCoin (1337)"
      },
      "2015":{
         "Id":"3744",
         "ImageUrl":"/media/20180/2015.png",
         "Symbol":"2015",
         "FullName":"2015 coin (2015)"
      },
      "BTCD":{
         "Id":"4400",
         "ImageUrl":"/media/19630/btcd_1.png",
         "Symbol":"BTCD",
         "FullName":"BitcoinDark (BTCD)"
      },
      "CRAIG":{
         "Id":"4425",
         "ImageUrl":"/media/20022/craig.png",
         "Symbol":"CRAIG",
         "FullName":"CraigsCoin (CRAIG)"
      },
      "XBS":{
         "Id":"5023",
         "ImageUrl":"/media/351060/xbs_1.png",
         "Symbol":"XBS",
         "FullName":"Bitstake (XBS)"
      },
      "XPY":{
         "Id":"5030",
         "ImageUrl":"/media/20076/xpy_1.png",
         "Symbol":"XPY",
         "FullName":"PayCoin (XPY)"
      },
      "PRC":{
         "Id":"3638",
         "ImageUrl":"/media/20393/prc.png",
         "Symbol":"PRC",
         "FullName":"ProsperCoin (PRC)"
      },
      "YBC":{
         "Id":"3639",
         "ImageUrl":"/media/19975/ybc.png",
         "Symbol":"YBC",
         "FullName":"YbCoin (YBC)"
      },
      "DANK":{
         "Id":"3640",
         "ImageUrl":"/media/20247/dank.png",
         "Symbol":"DANK",
         "FullName":"DarkKush (DANK)"
      },
      "GIVE":{
         "Id":"3641",
         "ImageUrl":"/media/20297/give.png",
         "Symbol":"GIVE",
         "FullName":"GiveCoin (GIVE)"
      },
      "KOBO":{
         "Id":"3642",
         "ImageUrl":"/media/35521133/kobo.png",
         "Symbol":"KOBO",
         "FullName":"KoboCoin (KOBO)"
      },
      "DT":{
         "Id":"3643",
         "ImageUrl":"/media/20031/dt.png",
         "Symbol":"DT",
         "FullName":"DarkToken (DT)"
      },
      "CETI":{
         "Id":"3644",
         "ImageUrl":"/media/20228/ceti.png",
         "Symbol":"CETI",
         "FullName":"CETUS Coin (CETI)"
      },
      "SUP":{
         "Id":"3645",
         "ImageUrl":"/media/20442/sup.png",
         "Symbol":"SUP",
         "FullName":"Supcoin (SUP)"
      },
      "XPD":{
         "Id":"3646",
         "ImageUrl":"/media/20162/xpd.png",
         "Symbol":"XPD",
         "FullName":"PetroDollar (XPD)"
      },
      "GEO":{
         "Id":"3647",
         "ImageUrl":"/media/35309716/geo.png",
         "Symbol":"GEO",
         "FullName":"GeoCoin (GEO)"
      },
      "CHASH":{
         "Id":"3648",
         "ImageUrl":"/media/20231/chash.png",
         "Symbol":"CHASH",
         "FullName":"CleverHash (CHASH)"
      },
      "NXTI":{
         "Id":"3650",
         "ImageUrl":"/media/20376/nxti.png",
         "Symbol":"NXTI",
         "FullName":"NXTI (NXTI)"
      },
      "WOLF":{
         "Id":"3653",
         "ImageUrl":"/media/20559/wolf.png",
         "Symbol":"WOLF",
         "FullName":"Insanity Coin (WOLF)"
      },
      "XDP":{
         "Id":"3655",
         "ImageUrl":"/media/20560/xdp.png",
         "Symbol":"XDP",
         "FullName":"DogeParty (XDP)"
      },
      "AC":{
         "Id":"4322",
         "ImageUrl":"/media/35650881/ac-300x300.png",
         "Symbol":"AC",
         "FullName":"Asia Coin (AC)"
      },
      "ACOIN":{
         "Id":"4323",
         "ImageUrl":"/media/20079/acoin.png",
         "Symbol":"ACOIN",
         "FullName":"ACoin (ACOIN)"
      },
      "AERO":{
         "Id":"4324",
         "ImageUrl":"/media/19594/aero.png",
         "Symbol":"AERO",
         "FullName":"Aero Coin (AERO)"
      },
      "ALF":{
         "Id":"4325",
         "ImageUrl":"/media/19600/alf.png",
         "Symbol":"ALF",
         "FullName":"AlphaCoin (ALF)"
      },
      "AEGIS":{
         "Id":"4326",
         "ImageUrl":"/media/19595/ags.png",
         "Symbol":"AEGIS",
         "FullName":"Aegis (AEGIS)"
      },
      "AMERICANCOIN":{
         "Id":"4327",
         "ImageUrl":"/media/19601/amc.png",
         "Symbol":"AMERICANCOIN",
         "FullName":"AmericanCoin (AMERICANCOIN)"
      },
      "ALIEN":{
         "Id":"4328",
         "ImageUrl":"/media/20080/aln.png",
         "Symbol":"ALIEN",
         "FullName":"AlienCoin (ALIEN)"
      },
      "APEX":{
         "Id":"4330",
         "ImageUrl":"/media/19599/apex.png",
         "Symbol":"APEX",
         "FullName":"ApexCoin (APEX)"
      },
      "ARCH":{
         "Id":"4331",
         "ImageUrl":"/media/20085/arch.png",
         "Symbol":"ARCH",
         "FullName":"ArchCoin (ARCH)"
      },
      "ARG":{
         "Id":"4371",
         "ImageUrl":"/media/19602/arg.png",
         "Symbol":"ARG",
         "FullName":"Argentum (ARG)"
      },
      "AURORAC":{
         "Id":"4333",
         "ImageUrl":"/media/19608/aur.png",
         "Symbol":"AURORAC",
         "FullName":"Auroracoin (AURORAC)"
      },
      "AXR":{
         "Id":"4334",
         "ImageUrl":"/media/20086/axr.png",
         "Symbol":"AXR",
         "FullName":"AXRON (AXR)"
      },
      "BETACOIN":{
         "Id":"4337",
         "ImageUrl":"/media/19621/bet.png",
         "Symbol":"BETACOIN",
         "FullName":"BetaCoin (BETACOIN)"
      },
      "BEAN":{
         "Id":"4338",
         "ImageUrl":"/media/350879/bitb.png",
         "Symbol":"BEAN",
         "FullName":"BeanCash (BEAN)"
      },
      "BLU":{
         "Id":"4340",
         "ImageUrl":"/media/19624/blu.png",
         "Symbol":"BLU",
         "FullName":"BlueCoin (BLU)"
      },
      "BOST":{
         "Id":"4342",
         "ImageUrl":"/media/19626/bost.png",
         "Symbol":"BOST",
         "FullName":"BoostCoin (BOST)"
      },
      "BQC":{
         "Id":"4343",
         "ImageUrl":"/media/19631/bqc.png",
         "Symbol":"BQC",
         "FullName":"BQCoin (BQC)"
      },
      "MOONC":{
         "Id":"4346",
         "ImageUrl":"/media/19802/moon.png",
         "Symbol":"MOONC",
         "FullName":"MoonCoin (MOONC)"
      },
      "ZET":{
         "Id":"4347",
         "ImageUrl":"/media/19993/zet.png",
         "Symbol":"ZET",
         "FullName":"ZetaCoin (ZET)"
      },
      "SXC":{
         "Id":"4348",
         "ImageUrl":"/media/19924/sxc.png",
         "Symbol":"SXC",
         "FullName":"SexCoin (SXC)"
      },
      "QTL":{
         "Id":"4349",
         "ImageUrl":"/media/19879/qtl.png",
         "Symbol":"QTL",
         "FullName":"Quatloo (QTL)"
      },
      "ENRG":{
         "Id":"4350",
         "ImageUrl":"/media/35650887/ezgifcom-resizejpg300.jpg",
         "Symbol":"ENRG",
         "FullName":"EnergyCoin (ENRG)"
      },
      "QRK":{
         "Id":"4351",
         "ImageUrl":"/media/37459362/qrk.png",
         "Symbol":"QRK",
         "FullName":"QuarkCoin (QRK)"
      },
      "RIC":{
         "Id":"4352",
         "ImageUrl":"/media/19888/ric.jpg",
         "Symbol":"RIC",
         "FullName":"Riecoin (RIC)"
      },
      "DGC":{
         "Id":"4353",
         "ImageUrl":"/media/19676/dgc.png",
         "Symbol":"DGC",
         "FullName":"Digitalcoin (DGC)"
      },
      "LIMX":{
         "Id":"4354",
         "ImageUrl":"/media/19769/limx.png",
         "Symbol":"LIMX",
         "FullName":"LimeCoinX (LIMX)"
      },
      "BTB":{
         "Id":"4399",
         "ImageUrl":"/media/35650888/ezgifcom-resize.jpg",
         "Symbol":"BTB",
         "FullName":"BitBar (BTB)"
      },
      "CAIX":{
         "Id":"4406",
         "ImageUrl":"/media/20226/caix.png",
         "Symbol":"CAIX",
         "FullName":"CAIx (CAIx)"
      },
      "BTMK":{
         "Id":"4403",
         "ImageUrl":"/media/20084/btm.png",
         "Symbol":"BTMK",
         "FullName":"BitMark (BTMK)"
      },
      "BUK":{
         "Id":"4404",
         "ImageUrl":"/media/19637/buk.png",
         "Symbol":"BUK",
         "FullName":"CryptoBuk (BUK)"
      },
      "CACH":{
         "Id":"4405",
         "ImageUrl":"/media/35650889/ezgifcom-resize-1.jpg",
         "Symbol":"CACH",
         "FullName":"Cachecoin (CACH)"
      },
      "CANN":{
         "Id":"4407",
         "ImageUrl":"/media/20015/cann.png",
         "Symbol":"CANN",
         "FullName":"CannabisCoin (CANN)"
      },
      "CAP":{
         "Id":"4408",
         "ImageUrl":"/media/20017/cap.png",
         "Symbol":"CAP",
         "FullName":"BottleCaps (CAP)"
      },
      "CASH":{
         "Id":"4409",
         "ImageUrl":"/media/20016/cash.png",
         "Symbol":"CASH",
         "FullName":"CashCoin (CASH)"
      },
      "CATC":{
         "Id":"4410",
         "ImageUrl":"/media/35521144/cat.png",
         "Symbol":"CATC",
         "FullName":"Catcoin (CATC)"
      },
      "CCN":{
         "Id":"4412",
         "ImageUrl":"/media/19643/ccn.png",
         "Symbol":"CCN",
         "FullName":"CannaCoin (CCN)"
      },
      "CINNI":{
         "Id":"4414",
         "ImageUrl":"/media/19651/cinni.jpeg",
         "Symbol":"CINNI",
         "FullName":"CINNICOIN (CINNI)"
      },
      "CXC":{
         "Id":"4415",
         "ImageUrl":"/media/20246/cxc.png",
         "Symbol":"CXC",
         "FullName":"CheckCoin (CXC)"
      },
      "CLAM":{
         "Id":"4416",
         "ImageUrl":"/media/20020/clam.png",
         "Symbol":"CLAM",
         "FullName":"CLAMS (CLAM)"
      },
      "CLR":{
         "Id":"4418",
         "ImageUrl":"/media/19657/clr.png",
         "Symbol":"CLR",
         "FullName":"CopperLark (CLR)"
      },
      "CMC":{
         "Id":"4419",
         "ImageUrl":"/media/20019/cmc.png",
         "Symbol":"CMC",
         "FullName":"CosmosCoin (CMC)"
      },
      "CNC":{
         "Id":"4420",
         "ImageUrl":"/media/20021/cnc.png",
         "Symbol":"CNC",
         "FullName":"ChinaCoin (CNC)"
      },
      "CNL":{
         "Id":"4421",
         "ImageUrl":"/media/20024/cnl.png",
         "Symbol":"CNL",
         "FullName":"ConcealCoin (CNL)"
      },
      "COMM":{
         "Id":"4422",
         "ImageUrl":"/media/19661/comm.png",
         "Symbol":"COMM",
         "FullName":"Community Coin (COMM)"
      },
      "COOL":{
         "Id":"4423",
         "ImageUrl":"/media/19658/cool.png",
         "Symbol":"COOL",
         "FullName":"CoolCoin (COOL)"
      },
      "CRACK":{
         "Id":"4424",
         "ImageUrl":"/media/20023/crack.png",
         "Symbol":"CRACK",
         "FullName":"CrackCoin (CRACK)"
      },
      "CRYPT":{
         "Id":"4427",
         "ImageUrl":"/media/19664/crypt.png",
         "Symbol":"CRYPT",
         "FullName":"CryptCoin (CRYPT)"
      },
      "CSC":{
         "Id":"4428",
         "ImageUrl":"/media/37747382/csc-2.png",
         "Symbol":"CSC",
         "FullName":"CasinoCoin (CSC)"
      },
      "DEM":{
         "Id":"4429",
         "ImageUrl":"/media/20028/dem.png",
         "Symbol":"DEM",
         "FullName":"eMark (DEM)"
      },
      "DIAM":{
         "Id":"4431",
         "ImageUrl":"/media/19680/dmd.png",
         "Symbol":"DIAM",
         "FullName":"Diamond (DIAM)"
      },
      "DRKC":{
         "Id":"4434",
         "ImageUrl":"/media/20027/drkc.png",
         "Symbol":"DRKC",
         "FullName":"DarkCash (DRKC)"
      },
      "DSB":{
         "Id":"4435",
         "ImageUrl":"/media/20034/dsb.png",
         "Symbol":"DSB",
         "FullName":"DarkShibe (DSB)"
      },
      "DEVCOIN":{
         "Id":"4436",
         "ImageUrl":"/media/37748088/dvc.png",
         "Symbol":"DEVCOIN",
         "FullName":"DevCoin (DEVCOIN)"
      },
      "EFL":{
         "Id":"4438",
         "ImageUrl":"/media/19692/efl.png",
         "Symbol":"EFL",
         "FullName":"E-Gulden (EFL)"
      },
      "ELC":{
         "Id":"4439",
         "ImageUrl":"/media/19694/elc.png",
         "Symbol":"ELC",
         "FullName":"Elacoin (ELC)"
      },
      "EMD":{
         "Id":"4441",
         "ImageUrl":"/media/35284304/emd.png",
         "Symbol":"EMD",
         "FullName":"Emerald (EMD)"
      },
      "EXCL":{
         "Id":"4442",
         "ImageUrl":"/media/20035/excl.png",
         "Symbol":"EXCL",
         "FullName":"Exclusive Coin (EXCL)"
      },
      "EXE":{
         "Id":"4443",
         "ImageUrl":"/media/19700/exe.png",
         "Symbol":"EXE",
         "FullName":"ExeCoin (EXE)"
      },
      "EZC":{
         "Id":"4444",
         "ImageUrl":"/media/19702/ezc.png",
         "Symbol":"EZC",
         "FullName":"EZCoin (EZC)"
      },
      "FLAP":{
         "Id":"4445",
         "ImageUrl":"/media/20032/flap.png",
         "Symbol":"FLAP",
         "FullName":"Flappy Coin (FLAP)"
      },
      "FC2":{
         "Id":"4446",
         "ImageUrl":"/media/19719/fuel.png",
         "Symbol":"FC2",
         "FullName":"Fuel2Coin (FC2)"
      },
      "FFC":{
         "Id":"4447",
         "ImageUrl":"/media/19706/ffc.png",
         "Symbol":"FFC",
         "FullName":"FireflyCoin (FFC)"
      },
      "FIBRE":{
         "Id":"4448",
         "ImageUrl":"/media/20030/fibre.png",
         "Symbol":"FIBRE",
         "FullName":"FIBRE (FIBRE)"
      },
      "FRC":{
         "Id":"4521",
         "ImageUrl":"/media/1382629/frc.png",
         "Symbol":"FRC",
         "FullName":"FireRoosterCoin (FRC)"
      },
      "FLT":{
         "Id":"4449",
         "ImageUrl":"/media/19709/flt.png",
         "Symbol":"FLT",
         "FullName":"FlutterCoin (FLT)"
      },
      "FRK":{
         "Id":"4522",
         "ImageUrl":"/media/19712/frk.png",
         "Symbol":"FRK",
         "FullName":"Franko (FRK)"
      },
      "FRAC":{
         "Id":"4450",
         "ImageUrl":"/media/19710/frac.png",
         "Symbol":"FRAC",
         "FullName":"FractalCoin (FRAC)"
      },
      "FSTC":{
         "Id":"4523",
         "ImageUrl":"/media/19720/fst.png",
         "Symbol":"FSTC",
         "FullName":"FastCoin (FSTC)"
      },
      "GDC":{
         "Id":"4526",
         "ImageUrl":"/media/20054/gdc.png",
         "Symbol":"GDC",
         "FullName":"GrandCoin (GDC)"
      },
      "GLOBAL":{
         "Id":"4527",
         "ImageUrl":"/media/35650789/viber_image_2019-06-11_13-07-38.jpg",
         "Symbol":"GLOBAL",
         "FullName":"GlobalCoin (GLOBAL)"
      },
      "GLX":{
         "Id":"4529",
         "ImageUrl":"/media/19728/glx.png",
         "Symbol":"GLX",
         "FullName":"GalaxyCoin (GLX)"
      },
      "GLYPH":{
         "Id":"4530",
         "ImageUrl":"/media/19725/glyph.png",
         "Symbol":"GLYPH",
         "FullName":"GlyphCoin (GLYPH)"
      },
      "GML":{
         "Id":"4531",
         "ImageUrl":"/media/19726/gml.png",
         "Symbol":"GML",
         "FullName":"GameLeagueCoin (GML)"
      },
      "GUE":{
         "Id":"4532",
         "ImageUrl":"/media/19732/gue.png",
         "Symbol":"GUE",
         "FullName":"GuerillaCoin (GUE)"
      },
      "HAL":{
         "Id":"4533",
         "ImageUrl":"/media/20036/hal.png",
         "Symbol":"HAL",
         "FullName":"Halcyon (HAL)"
      },
      "HBN":{
         "Id":"4534",
         "ImageUrl":"/media/19735/hbn.png",
         "Symbol":"HBN",
         "FullName":"HoboNickels (HBN)"
      },
      "HUC":{
         "Id":"4535",
         "ImageUrl":"/media/20037/hun.png",
         "Symbol":"HUC",
         "FullName":"HunterCoin (HUC)"
      },
      "HVC":{
         "Id":"4536",
         "ImageUrl":"/media/19745/hvc.png",
         "Symbol":"HVC",
         "FullName":"HeavyCoin (HVC)"
      },
      "HYP":{
         "Id":"4537",
         "ImageUrl":"/media/20624/hyp.png",
         "Symbol":"HYP",
         "FullName":"HyperStake (HYP)"
      },
      "ICB":{
         "Id":"4538",
         "ImageUrl":"/media/19747/icb.png",
         "Symbol":"ICB",
         "FullName":"IceBergCoin (ICB)"
      },
      "IFC":{
         "Id":"4539",
         "ImageUrl":"/media/19754/ifc.png",
         "Symbol":"IFC",
         "FullName":"Infinite Coin (IFC)"
      },
      "IXC":{
         "Id":"4541",
         "ImageUrl":"/media/35650999/ixc.png",
         "Symbol":"IXC",
         "FullName":"IXcoin (IXC)"
      },
      "JBS":{
         "Id":"4542",
         "ImageUrl":"/media/20044/jbs.png",
         "Symbol":"JBS",
         "FullName":"JumBucks Coin (JBS)"
      },
      "JKC":{
         "Id":"4543",
         "ImageUrl":"/media/19757/jkc.png",
         "Symbol":"JKC",
         "FullName":"JunkCoin (JKC)"
      },
      "JUDGE":{
         "Id":"4544",
         "ImageUrl":"/media/20038/judge.png",
         "Symbol":"JUDGE",
         "FullName":"JudgeCoin (JUDGE)"
      },
      "KDC":{
         "Id":"4545",
         "ImageUrl":"/media/19766/kdc.png",
         "Symbol":"KDC",
         "FullName":"Klondike Coin (KDC)"
      },
      "KEYC":{
         "Id":"4546",
         "ImageUrl":"/media/20331/key.png",
         "Symbol":"KEYC",
         "FullName":"KeyCoin (KEYC)"
      },
      "KGC":{
         "Id":"4547",
         "ImageUrl":"/media/19763/kgc.png",
         "Symbol":"KGC",
         "FullName":"KrugerCoin (KGC)"
      },
      "LK7":{
         "Id":"4550",
         "ImageUrl":"/media/19776/lk7.png",
         "Symbol":"LK7",
         "FullName":"Lucky7Coin (LK7)"
      },
      "LKY":{
         "Id":"4551",
         "ImageUrl":"/media/19774/lky.png",
         "Symbol":"LKY",
         "FullName":"LuckyCoin (LKY)"
      },
      "LSD":{
         "Id":"4552",
         "ImageUrl":"/media/20041/lsd.png",
         "Symbol":"LSD",
         "FullName":"LightSpeedCoin (LSD)"
      },
      "LTB":{
         "Id":"4553",
         "ImageUrl":"/media/35650902/ezgifcom-resize.png",
         "Symbol":"LTB",
         "FullName":"Litebar (LTB)"
      },
      "LTCD":{
         "Id":"4554",
         "ImageUrl":"/media/20043/ltcd.png",
         "Symbol":"LTCD",
         "FullName":"LitecoinDark (LTCD)"
      },
      "LTCX":{
         "Id":"4555",
         "ImageUrl":"/media/19779/ltcx.png",
         "Symbol":"LTCX",
         "FullName":"LitecoinX (LTCX)"
      },
      "LXC":{
         "Id":"4556",
         "ImageUrl":"/media/20045/lxc.png",
         "Symbol":"LXC",
         "FullName":"LibrexCoin (LXC)"
      },
      "LYC":{
         "Id":"4557",
         "ImageUrl":"/media/19785/lyc.png",
         "Symbol":"LYC",
         "FullName":"LycanCoin (LYC)"
      },
      "MAX":{
         "Id":"4558",
         "ImageUrl":"/media/19786/max.png",
         "Symbol":"MAX",
         "FullName":"MaxCoin (MAX)"
      },
      "MEC":{
         "Id":"4559",
         "ImageUrl":"/media/19789/mec.png",
         "Symbol":"MEC",
         "FullName":"MegaCoin (MEC)"
      },
      "MEDIT":{
         "Id":"4560",
         "ImageUrl":"/media/20046/med.png",
         "Symbol":"MEDIT",
         "FullName":"MediterraneanCoin (MEDIT)"
      },
      "MINRL":{
         "Id":"4561",
         "ImageUrl":"/media/19793/min.png",
         "Symbol":"MINRL",
         "FullName":"Minerals Coin (MINRL)"
      },
      "MINTCOIN":{
         "Id":"4562",
         "ImageUrl":"/media/35650359/mint.png",
         "Symbol":"MINTCOIN",
         "FullName":"MintCoin (MINTCOIN)"
      },
      "MN":{
         "Id":"4563",
         "ImageUrl":"/media/19796/mn1.png",
         "Symbol":"MN",
         "FullName":"Cryptsy Mining Contract (MN)"
      },
      "MINC":{
         "Id":"4564",
         "ImageUrl":"/media/19805/mincoin.png",
         "Symbol":"MINC",
         "FullName":"MinCoin (MINC)"
      },
      "MRY":{
         "Id":"4566",
         "ImageUrl":"/media/19807/mry.jpg",
         "Symbol":"MRY",
         "FullName":"MurrayCoin (MRY)"
      },
      "MZC":{
         "Id":"4568",
         "ImageUrl":"/media/19816/mzc.png",
         "Symbol":"MZC",
         "FullName":"MazaCoin (MZC)"
      },
      "NAN":{
         "Id":"4569",
         "ImageUrl":"/media/19821/nan.png",
         "Symbol":"NAN",
         "FullName":"NanoToken (NAN)"
      },
      "NAUT":{
         "Id":"4570",
         "ImageUrl":"/media/19822/naut.png",
         "Symbol":"NAUT",
         "FullName":"Nautilus Coin (NAUT)"
      },
      "NYBBLE":{
         "Id":"4572",
         "ImageUrl":"/media/19825/nbl.png",
         "Symbol":"NYBBLE",
         "FullName":"Nybble (NYBBLE)"
      },
      "NET":{
         "Id":"4574",
         "ImageUrl":"/media/19826/net.png",
         "Symbol":"NET",
         "FullName":"NetCoin (NET)"
      },
      "NMB":{
         "Id":"4575",
         "ImageUrl":"/media/20049/nmb.png",
         "Symbol":"NMB",
         "FullName":"Nimbus Coin (NMB)"
      },
      "NRB":{
         "Id":"4576",
         "ImageUrl":"/media/19839/nrb.png",
         "Symbol":"NRB",
         "FullName":"NoirBits (NRB)"
      },
      "NOBL":{
         "Id":"4577",
         "ImageUrl":"/media/19833/nobl.png",
         "Symbol":"NOBL",
         "FullName":"NobleCoin (NOBL)"
      },
      "NRS":{
         "Id":"4578",
         "ImageUrl":"/media/19834/nrs.png",
         "Symbol":"NRS",
         "FullName":"NoirShares (NRS)"
      },
      "ORBITCOIN":{
         "Id":"4583",
         "ImageUrl":"/media/19845/orb.png",
         "Symbol":"ORBITCOIN",
         "FullName":"Orbitcoin (ORBITCOIN)"
      },
      "OPSC":{
         "Id":"4584",
         "ImageUrl":"/media/19847/osc.png",
         "Symbol":"OPSC",
         "FullName":"OpenSourceCoin (OPSC)"
      },
      "PHS":{
         "Id":"4585",
         "ImageUrl":"/media/19857/phs.png",
         "Symbol":"PHS",
         "FullName":"PhilosophersStone (PHS)"
      },
      "POINTS":{
         "Id":"4586",
         "ImageUrl":"/media/19863/points.png",
         "Symbol":"POINTS",
         "FullName":"Cryptsy Points (POINTS)"
      },
      "PSEUD":{
         "Id":"4588",
         "ImageUrl":"/media/20052/pseud.png",
         "Symbol":"PSEUD",
         "FullName":"PseudoCash (PSEUD)"
      },
      "PXC":{
         "Id":"4590",
         "ImageUrl":"/media/20058/pxc.png",
         "Symbol":"PXC",
         "FullName":"PhoenixCoin (PXC)"
      },
      "PYC":{
         "Id":"4591",
         "ImageUrl":"/media/19878/pyc.png",
         "Symbol":"PYC",
         "FullName":"PayCoin (PYC)"
      },
      "RIPO":{
         "Id":"4593",
         "ImageUrl":"/media/20051/ripo.png",
         "Symbol":"RIPO",
         "FullName":"RipOffCoin (RIPO)"
      },
      "RPC":{
         "Id":"4594",
         "ImageUrl":"/media/19895/rpc-2.png",
         "Symbol":"RPC",
         "FullName":"RonPaulCoin (RPC)"
      },
      "RT2":{
         "Id":"4595",
         "ImageUrl":"/media/19896/rt2.png",
         "Symbol":"RT2",
         "FullName":"RotoCoin (RT2)"
      },
      "RYC":{
         "Id":"4596",
         "ImageUrl":"/media/19898/ryc.png",
         "Symbol":"RYC",
         "FullName":"RoyalCoin (RYC)"
      },
      "RZR":{
         "Id":"4597",
         "ImageUrl":"/media/20055/rzr.png",
         "Symbol":"RZR",
         "FullName":"RazorCoin (RZR)"
      },
      "SBC":{
         "Id":"4599",
         "ImageUrl":"/media/19900/sbc.png",
         "Symbol":"SBC",
         "FullName":"StableCoin (SBC)"
      },
      "SDC":{
         "Id":"4600",
         "ImageUrl":"/media/20419/sdc.png",
         "Symbol":"SDC",
         "FullName":"ShadowCash (SDC)"
      },
      "SFR":{
         "Id":"4601",
         "ImageUrl":"/media/19903/sfr.png",
         "Symbol":"SFR",
         "FullName":"SaffronCoin (SFR)"
      },
      "SHADE":{
         "Id":"4602",
         "ImageUrl":"/media/20056/shade.png",
         "Symbol":"SHADE",
         "FullName":"ShadeCoin (SHADE)"
      },
      "SHLD":{
         "Id":"4603",
         "ImageUrl":"/media/19904/shld.png",
         "Symbol":"SHLD",
         "FullName":"ShieldCoin (SHLD)"
      },
      "SILK":{
         "Id":"4604",
         "ImageUrl":"/media/20057/silk.png",
         "Symbol":"SILK",
         "FullName":"SilkCoin (SILK)"
      },
      "SLG":{
         "Id":"4605",
         "ImageUrl":"/media/20428/slg.png",
         "Symbol":"SLG",
         "FullName":"SterlingCoin (SLG)"
      },
      "SMC":{
         "Id":"4606",
         "ImageUrl":"/media/20059/smc.png",
         "Symbol":"SMC",
         "FullName":"SmartCoin (SMC)"
      },
      "SOLE":{
         "Id":"4607",
         "ImageUrl":"/media/20431/sole.png",
         "Symbol":"SOLE",
         "FullName":"SoleCoin (SOLE)"
      },
      "SPAIN":{
         "Id":"4608",
         "ImageUrl":"/media/19911/spa.png",
         "Symbol":"SPAIN",
         "FullName":"SpainCoin (SPAIN)"
      },
      "SPOTS":{
         "Id":"4609",
         "ImageUrl":"/media/19917/spt.png",
         "Symbol":"SPOTS",
         "FullName":"Spots (SPOTS)"
      },
      "SRC":{
         "Id":"4611",
         "ImageUrl":"/media/19918/src.png",
         "Symbol":"SRC",
         "FullName":"SecureCoin (SRC)"
      },
      "SSVCOIN":{
         "Id":"4613",
         "ImageUrl":"/media/20060/ssv.png",
         "Symbol":"SSVCOIN",
         "FullName":"SSVCoin (SSVCOIN)"
      },
      "SUPERC":{
         "Id":"4615",
         "ImageUrl":"/media/20061/super.png",
         "Symbol":"SUPERC",
         "FullName":"SuperCoin (SUPERC)"
      },
      "SWIFT":{
         "Id":"4616",
         "ImageUrl":"/media/35650723/swift.png",
         "Symbol":"SWIFT",
         "FullName":"BitSwift (SWIFT)"
      },
      "SYNCC":{
         "Id":"4617",
         "ImageUrl":"/media/37746733/sync-2.png",
         "Symbol":"SYNCC",
         "FullName":"SyncCoin (SYNCC)"
      },
      "TAK":{
         "Id":"4620",
         "ImageUrl":"/media/19928/tak.png",
         "Symbol":"TAK",
         "FullName":"TakCoin (TAK)"
      },
      "TES":{
         "Id":"4622",
         "ImageUrl":"/media/19927/tes.png",
         "Symbol":"TES",
         "FullName":"TeslaCoin (TES)"
      },
      "TGC":{
         "Id":"4623",
         "ImageUrl":"/media/19930/tgc.png",
         "Symbol":"TGC",
         "FullName":"TigerCoin (TGC)"
      },
      "TIT":{
         "Id":"4624",
         "ImageUrl":"/media/20064/ttc.png",
         "Symbol":"TIT",
         "FullName":"TittieCoin (TIT)"
      },
      "TRC":{
         "Id":"4626",
         "ImageUrl":"/media/19938/terracoin.png",
         "Symbol":"TRC",
         "FullName":"TerraCoin (TRC)"
      },
      "TITC":{
         "Id":"4627",
         "ImageUrl":"/media/20069/tit.png",
         "Symbol":"TITC",
         "FullName":"TitCoin (TITC)"
      },
      "ULTC":{
         "Id":"4628",
         "ImageUrl":"/media/20063/ultc.png",
         "Symbol":"ULTC",
         "FullName":"Umbrella (ULTC)"
      },
      "UNBREAKABLE":{
         "Id":"4629",
         "ImageUrl":"/media/19940/unb.png",
         "Symbol":"UNBREAKABLE",
         "FullName":"UnbreakableCoin (UNBREAKABLE)"
      },
      "UNO":{
         "Id":"4630",
         "ImageUrl":"/media/20065/uno.png",
         "Symbol":"UNO",
         "FullName":"Unobtanium (UNO)"
      },
      "URO":{
         "Id":"4631",
         "ImageUrl":"/media/19937/uro.png",
         "Symbol":"URO",
         "FullName":"UroCoin (URO)"
      },
      "USDE":{
         "Id":"5011",
         "ImageUrl":"/media/20465/usde.png",
         "Symbol":"USDE",
         "FullName":"UnitaryStatus Dollar (USDE)"
      },
      "UTC":{
         "Id":"5012",
         "ImageUrl":"/media/35309631/utc.png",
         "Symbol":"UTC",
         "FullName":"UltraCoin (UTC)"
      },
      "UTIL":{
         "Id":"5013",
         "ImageUrl":"/media/20067/util.png",
         "Symbol":"UTIL",
         "FullName":"Utility Coin (UTIL)"
      },
      "VDO":{
         "Id":"5014",
         "ImageUrl":"/media/20066/vdo.png",
         "Symbol":"VDO",
         "FullName":"VidioCoin (VDO)"
      },
      "VOOT":{
         "Id":"5016",
         "ImageUrl":"/media/19946/voot.png",
         "Symbol":"VOOT",
         "FullName":"VootCoin (VOOT)"
      },
      "VRC":{
         "Id":"5017",
         "ImageUrl":"/media/37748009/vrc.png",
         "Symbol":"VRC",
         "FullName":"VeriCoin (VRC)"
      },
      "WDC":{
         "Id":"5020",
         "ImageUrl":"/media/38553082/wdc.png",
         "Symbol":"WDC",
         "FullName":"WorldCoin (WDC)"
      },
      "XBOT":{
         "Id":"5022",
         "ImageUrl":"/media/20073/xbot.png",
         "Symbol":"XBOT",
         "FullName":"SocialXbotCoin (XBOT)"
      },
      "XC":{
         "Id":"5024",
         "ImageUrl":"/media/19956/xc.png",
         "Symbol":"XC",
         "FullName":"X11 Coin (XC)"
      },
      "XCR":{
         "Id":"5026",
         "ImageUrl":"/media/39501520/xcr.png",
         "Symbol":"XCR",
         "FullName":"Crypti (XCR)"
      },
      "XJO":{
         "Id":"5027",
         "ImageUrl":"/media/19962/xjo.png",
         "Symbol":"XJO",
         "FullName":"JouleCoin (XJO)"
      },
      "XLB":{
         "Id":"5028",
         "ImageUrl":"/media/19966/xlb.png",
         "Symbol":"XLB",
         "FullName":"LibertyCoin (XLB)"
      },
      "XPM":{
         "Id":"5029",
         "ImageUrl":"/media/19970/xpm.png",
         "Symbol":"XPM",
         "FullName":"PrimeCoin (XPM)"
      },
      "XST":{
         "Id":"5032",
         "ImageUrl":"/media/20077/xst.png",
         "Symbol":"XST",
         "FullName":"StealthCoin (XST)"
      },
      "XXX":{
         "Id":"5033",
         "ImageUrl":"/media/350617/xxx.png",
         "Symbol":"XXX",
         "FullName":"XXXCoin (XXX)"
      },
      "YAC":{
         "Id":"5034",
         "ImageUrl":"/media/19976/yac.png",
         "Symbol":"YAC",
         "FullName":"YAcCoin (YAC)"
      },
      "ZCC":{
         "Id":"5035",
         "ImageUrl":"/media/19979/zcc.png",
         "Symbol":"ZCC",
         "FullName":"ZCC Coin (ZCC)"
      },
      "ZED":{
         "Id":"5036",
         "ImageUrl":"/media/19981/zed.png",
         "Symbol":"ZED",
         "FullName":"ZedCoins (ZED)"
      },
      "EKN":{
         "Id":"5281",
         "ImageUrl":"/media/20270/ekn.png",
         "Symbol":"EKN",
         "FullName":"Elektron (EKN)"
      },
      "XAU":{
         "Id":"5283",
         "ImageUrl":"/media/20479/xau.png",
         "Symbol":"XAU",
         "FullName":"XauCoin (XAU)"
      },
      "SIGNA":{
         "Id":"5286",
         "ImageUrl":"/media/37748102/signa.png",
         "Symbol":"SIGNA",
         "FullName":"Signa (SIGNA)"
      },
      "USNBT":{
         "Id":"5287",
         "ImageUrl":"/media/20363/nbt.png",
         "Symbol":"USNBT",
         "FullName":"NuBits (USNBT)"
      },
      "SJCX":{
         "Id":"5288",
         "ImageUrl":"/media/20422/sjcx.png",
         "Symbol":"SJCX",
         "FullName":"StorjCoin (SJCX)"
      },
      "START":{
         "Id":"5289",
         "ImageUrl":"/media/19916/start.png",
         "Symbol":"START",
         "FullName":"StartCoin (START)"
      },
      "HUGE":{
         "Id":"5290",
         "ImageUrl":"/media/20318/huge.png",
         "Symbol":"HUGE",
         "FullName":"BigCoin (HUGE)"
      },
      "MAID":{
         "Id":"5293",
         "ImageUrl":"/media/352247/maid.png",
         "Symbol":"MAID",
         "FullName":"MaidSafe Coin (MAID)"
      },
      "007":{
         "Id":"5294",
         "ImageUrl":"/media/350595/007.png",
         "Symbol":"007",
         "FullName":"007 coin (007)"
      },
      "NSR":{
         "Id":"5295",
         "ImageUrl":"/media/20378/nsr.png",
         "Symbol":"NSR",
         "FullName":"NuShares (NSR)"
      },
      "SOLARFARM":{
         "Id":"5297",
         "ImageUrl":"/media/20227/cell.png",
         "Symbol":"SOLARFARM",
         "FullName":"SolarFarm (SOLARFARM)"
      },
      "TEK":{
         "Id":"5298",
         "ImageUrl":"/media/35651065/tek.png",
         "Symbol":"TEK",
         "FullName":"TekCoin (TEK)"
      },
      "BAY":{
         "Id":"5300",
         "ImageUrl":"/media/1383137/bay1.png",
         "Symbol":"BAY",
         "FullName":"BitBay (BAY)"
      },
      "NTRN":{
         "Id":"5301",
         "ImageUrl":"/media/12318281/ntrn.png",
         "Symbol":"NTRN",
         "FullName":"Neutron (NTRN)"
      },
      "SLING":{
         "Id":"5302",
         "ImageUrl":"/media/20425/sling.png",
         "Symbol":"SLING",
         "FullName":"Sling Coin (SLING)"
      },
      "XVC":{
         "Id":"5303",
         "ImageUrl":"/media/350813/xvc.png",
         "Symbol":"XVC",
         "FullName":"Vcash (XVC)"
      },
      "CRAVE":{
         "Id":"5304",
         "ImageUrl":"/media/20242/crave.png",
         "Symbol":"CRAVE",
         "FullName":"CraveCoin (CRAVE)"
      },
      "XSI":{
         "Id":"5306",
         "ImageUrl":"/media/20165/xsi.png",
         "Symbol":"XSI",
         "FullName":"Stability Shares (XSI)"
      },
      "BYC":{
         "Id":"5308",
         "ImageUrl":"/media/20217/byc.png",
         "Symbol":"BYC",
         "FullName":"ByteCent (BYC)"
      },
      "GRIDCOIN":{
         "Id":"5309",
         "ImageUrl":"/media/20307/grc.png",
         "Symbol":"GRIDCOIN",
         "FullName":"GridCoin (GRIDCOIN)"
      },
      "GEMZ":{
         "Id":"5310",
         "ImageUrl":"/media/19710/frac.png",
         "Symbol":"GEMZ",
         "FullName":"Gemz Social (GEMZ)"
      },
      "KTK":{
         "Id":"5311",
         "ImageUrl":"/media/19771/ktk.png",
         "Symbol":"KTK",
         "FullName":"KryptCoin (KTK)"
      },
      "HZ":{
         "Id":"5312",
         "ImageUrl":"/media/20320/hz.png",
         "Symbol":"HZ",
         "FullName":"Horizon (HZ)"
      },
      "FAIR":{
         "Id":"5313",
         "ImageUrl":"/media/35650761/fair.png",
         "Symbol":"FAIR",
         "FullName":"FairCoin (FAIR)"
      },
      "QORA":{
         "Id":"5314",
         "ImageUrl":"/media/19876/qora.png",
         "Symbol":"QORA",
         "FullName":"QoraCoin (QORA)"
      },
      "RBY":{
         "Id":"5316",
         "ImageUrl":"/media/351279/rby.png",
         "Symbol":"RBY",
         "FullName":"RubyCoin (RBY)"
      },
      "PTC":{
         "Id":"5317",
         "ImageUrl":"/media/19868/ptc.png",
         "Symbol":"PTC",
         "FullName":"PesetaCoin (PTC)"
      },
      "KOREC":{
         "Id":"5318",
         "ImageUrl":"/media/14543972/kore.png",
         "Symbol":"KOREC",
         "FullName":"Kore (KOREC)"
      },
      "WBB":{
         "Id":"5319",
         "ImageUrl":"/media/38553086/wbb.png",
         "Symbol":"WBB",
         "FullName":"Wild Beast Coin (WBB)"
      },
      "SSD":{
         "Id":"5320",
         "ImageUrl":"/media/20443/ssd.png",
         "Symbol":"SSD",
         "FullName":"Sonic Screw Driver Coin (SSD)"
      },
      "XTC":{
         "Id":"5321",
         "ImageUrl":"/media/20167/xtc.png",
         "Symbol":"XTC",
         "FullName":"TileCoin (XTC)"
      },
      "MMXIV":{
         "Id":"5326",
         "ImageUrl":"/media/19798/mmxiv.png",
         "Symbol":"MMXIV",
         "FullName":"MaieutiCoin (MMXIV)"
      },
      "8BIT":{
         "Id":"5327",
         "ImageUrl":"/media/20176/8bit.png",
         "Symbol":"8BIT",
         "FullName":"8BIT Coin (8BIT)"
      },
      "STV":{
         "Id":"5328",
         "ImageUrl":"/media/20444/stv.png",
         "Symbol":"STV",
         "FullName":"Sativa Coin (STV)"
      },
      "EBS":{
         "Id":"5329",
         "ImageUrl":"/media/20267/ebs.png",
         "Symbol":"EBS",
         "FullName":"EbolaShare (EBS)"
      },
      "AM":{
         "Id":"5330",
         "ImageUrl":"/media/20191/am.png",
         "Symbol":"AM",
         "FullName":"AeroMe (AM)"
      },
      "XMG":{
         "Id":"5331",
         "ImageUrl":"/media/20154/xmg.png",
         "Symbol":"XMG",
         "FullName":"Coin Magi (XMG)"
      },
      "AMBER":{
         "Id":"5332",
         "ImageUrl":"/media/20187/amber.png",
         "Symbol":"AMBER",
         "FullName":"AmberCoin (AMBER)"
      },
      "NKT":{
         "Id":"5334",
         "ImageUrl":"/media/20371/nkt.png",
         "Symbol":"NKT",
         "FullName":"NakomotoDark (NKT)"
      },
      "J":{
         "Id":"5335",
         "ImageUrl":"/media/20350/j.png",
         "Symbol":"J",
         "FullName":"JoinCoin (J)"
      },
      "GHOSTCOIN":{
         "Id":"5336",
         "ImageUrl":"/media/19721/ghc.png",
         "Symbol":"GHOSTCOIN",
         "FullName":"GhostCoin (GHOSTCOIN)"
      },
      "ABY":{
         "Id":"5338",
         "ImageUrl":"/media/1383379/aby.png",
         "Symbol":"ABY",
         "FullName":"ArtByte (ABY)"
      },
      "LDOGE":{
         "Id":"5339",
         "ImageUrl":"/media/38553743/ldoge.png",
         "Symbol":"LDOGE",
         "FullName":"LiteDoge (LDOGE)"
      },
      "MTR":{
         "Id":"5340",
         "ImageUrl":"/media/19710/frac.png",
         "Symbol":"MTR",
         "FullName":"MasterTraderCoin (MTR)"
      },
      "TRI":{
         "Id":"5341",
         "ImageUrl":"/media/350568/tri.png",
         "Symbol":"TRI",
         "FullName":"Triangles Coin (TRI)"
      },
      "SWARM":{
         "Id":"5342",
         "ImageUrl":"/media/20445/swarm.png",
         "Symbol":"SWARM",
         "FullName":"SwarmCoin (SWARM)"
      },
      "BBR":{
         "Id":"5343",
         "ImageUrl":"/media/19609/bbr.png",
         "Symbol":"BBR",
         "FullName":"Boolberry (BBR)"
      },
      "BTCRY":{
         "Id":"5344",
         "ImageUrl":"/media/20210/btcry.png",
         "Symbol":"BTCRY",
         "FullName":"BitCrystal (BTCRY)"
      },
      "BCR":{
         "Id":"5345",
         "ImageUrl":"/media/20198/bcr.png",
         "Symbol":"BCR",
         "FullName":"BitCredit (BCR)"
      },
      "XPB":{
         "Id":"5346",
         "ImageUrl":"/media/20158/xpb.png",
         "Symbol":"XPB",
         "FullName":"Pebble Coin (XPB)"
      },
      "XDQ":{
         "Id":"5347",
         "ImageUrl":"/media/19959/xdq.png",
         "Symbol":"XDQ",
         "FullName":"Dirac Coin (XDQ)"
      },
      "FLDC":{
         "Id":"5348",
         "ImageUrl":"/media/20284/fldc.png",
         "Symbol":"FLDC",
         "FullName":"Folding Coin (FLDC)"
      },
      "SLR":{
         "Id":"5349",
         "ImageUrl":"/media/20699/slr.png",
         "Symbol":"SLR",
         "FullName":"SolarCoin (SLR)"
      },
      "SMAC":{
         "Id":"5350",
         "ImageUrl":"/media/20427/smac.png",
         "Symbol":"SMAC",
         "FullName":"Social Media Coin (SMAC)"
      },
      "TRK":{
         "Id":"5351",
         "ImageUrl":"/media/20460/trk.png",
         "Symbol":"TRK",
         "FullName":"TruckCoin (TRK)"
      },
      "UIS":{
         "Id":"5353",
         "ImageUrl":"/media/20455/uis.png",
         "Symbol":"UIS",
         "FullName":"Unitus (UIS)"
      },
      "CYP":{
         "Id":"5354",
         "ImageUrl":"/media/20248/cyp.png",
         "Symbol":"CYP",
         "FullName":"CypherPunkCoin (CYP)"
      },
      "UFOCOIN":{
         "Id":"5355",
         "ImageUrl":"/media/35651030/ufo.jpg",
         "Symbol":"UFOCOIN",
         "FullName":"Uniform Fiscal Object (UFOCOIN)"
      },
      "ASN":{
         "Id":"5356",
         "ImageUrl":"/media/35651031/asn.png",
         "Symbol":"ASN",
         "FullName":"Ascension Coin (ASN)"
      },
      "OC":{
         "Id":"5357",
         "ImageUrl":"/media/19843/oc.png",
         "Symbol":"OC",
         "FullName":"OrangeCoin (OC)"
      },
      "GSM":{
         "Id":"5358",
         "ImageUrl":"/media/20316/gsm.png",
         "Symbol":"GSM",
         "FullName":"GSM Coin (GSM)"
      },
      "FSC":{
         "Id":"5359",
         "ImageUrl":"/media/30001859/fsc.jpg",
         "Symbol":"FSC",
         "FullName":"FriendshipCoin (FSC)"
      },
      "NXTTY":{
         "Id":"5360",
         "ImageUrl":"/media/20379/nxtty.png",
         "Symbol":"NXTTY",
         "FullName":"NXTTY (NXTTY)"
      },
      "QBK":{
         "Id":"5361",
         "ImageUrl":"/media/20400/qbk.png",
         "Symbol":"QBK",
         "FullName":"QuBuck Coin (QBK)"
      },
      "BLC":{
         "Id":"5362",
         "ImageUrl":"/media/35309218/blc.png",
         "Symbol":"BLC",
         "FullName":"BlakeCoin (BLC)"
      },
      "MARYJ":{
         "Id":"5363",
         "ImageUrl":"/media/20343/maryj.png",
         "Symbol":"MARYJ",
         "FullName":"MaryJane Coin (MARYJ)"
      },
      "OMC":{
         "Id":"5365",
         "ImageUrl":"/media/1381967/omc.png",
         "Symbol":"OMC",
         "FullName":"OmniCron (OMC)"
      },
      "GIG":{
         "Id":"5366",
         "ImageUrl":"/media/37746101/gig.png",
         "Symbol":"GIG",
         "FullName":"GigaCoin (GIG)"
      },
      "LTBC":{
         "Id":"5369",
         "ImageUrl":"/media/20336/ltb.png",
         "Symbol":"LTBC",
         "FullName":"LTBCoin (LTBC)"
      },
      "NEOS":{
         "Id":"5370",
         "ImageUrl":"/media/1382788/neos1.png",
         "Symbol":"NEOS",
         "FullName":"NeosCoin (NEOS)"
      },
      "HYPER":{
         "Id":"5371",
         "ImageUrl":"/media/19744/hyper.png",
         "Symbol":"HYPER",
         "FullName":"HyperCoin (HYPER)"
      },
      "METAL":{
         "Id":"5373",
         "ImageUrl":"/media/20359/metal.png",
         "Symbol":"METAL",
         "FullName":"MetalCoin (METAL)"
      },
      "PINK":{
         "Id":"5374",
         "ImageUrl":"/media/35651035/pink.png",
         "Symbol":"PINK",
         "FullName":"PinkCoin (PINK)"
      },
      "GRE":{
         "Id":"5375",
         "ImageUrl":"/media/1382396/grn.png",
         "Symbol":"GRE",
         "FullName":"GreenCoin (GRE)"
      },
      "XG":{
         "Id":"5376",
         "ImageUrl":"/media/20156/xg.png",
         "Symbol":"XG",
         "FullName":"XG Sports (XG)"
      },
      "CHILD":{
         "Id":"5377",
         "ImageUrl":"/media/20233/child.png",
         "Symbol":"CHILD",
         "FullName":"ChildCoin (CHILD)"
      },
      "BOOM":{
         "Id":"5378",
         "ImageUrl":"/media/36798640/boom.png",
         "Symbol":"BOOM",
         "FullName":"Boom Token (BOOM)"
      },
      "MINE":{
         "Id":"5379",
         "ImageUrl":"/media/20356/mine.png",
         "Symbol":"MINE",
         "FullName":"Instamine Nuggets (MINE)"
      },
      "ROS":{
         "Id":"5380",
         "ImageUrl":"/media/37746213/ros.png",
         "Symbol":"ROS",
         "FullName":"ROS Coin (ROS)"
      },
      "UNAT":{
         "Id":"5381",
         "ImageUrl":"/media/20456/unat.png",
         "Symbol":"UNAT",
         "FullName":"Unattanium (UNAT)"
      },
      "SLM":{
         "Id":"5382",
         "ImageUrl":"/media/20426/slm.png",
         "Symbol":"SLM",
         "FullName":"SlimCoin (SLM)"
      },
      "GAIAPLATFORM":{
         "Id":"5383",
         "ImageUrl":"/media/20290/gaia.png",
         "Symbol":"GAIAPLATFORM",
         "FullName":"GAIA Platform (GAIAPLATFORM)"
      },
      "FCN":{
         "Id":"5385",
         "ImageUrl":"/media/20282/fcn.png",
         "Symbol":"FCN",
         "FullName":"FantomCoin (FCN)"
      },
      "CRYPTONITE":{
         "Id":"5386",
         "ImageUrl":"/media/20483/xcn.png",
         "Symbol":"CRYPTONITE",
         "FullName":"Cryptonite (CRYPTONITE)"
      },
      "CURE":{
         "Id":"5387",
         "ImageUrl":"/media/1383812/cure.png",
         "Symbol":"CURE",
         "FullName":"Curecoin (CURE)"
      },
      "GMC":{
         "Id":"5388",
         "ImageUrl":"/media/20299/gmc.png",
         "Symbol":"GMC",
         "FullName":"Gridmaster (GMC)"
      },
      "MMC":{
         "Id":"5389",
         "ImageUrl":"/media/19795/mmc.png",
         "Symbol":"MMC",
         "FullName":"MemoryCoin (MMC)"
      },
      "XBC":{
         "Id":"5391",
         "ImageUrl":"/media/35651297/xbc_232x232.png",
         "Symbol":"XBC",
         "FullName":"BitcoinPlus (XBC)"
      },
      "CONS":{
         "Id":"5392",
         "ImageUrl":"/media/19671/cyc.png",
         "Symbol":"CONS",
         "FullName":"ConSpiracy Coin (CONS)"
      },
      "OCTOC":{
         "Id":"5393",
         "ImageUrl":"/media/19983/888.png",
         "Symbol":"OCTOC",
         "FullName":"OctoCoin (OCTOC)"
      },
      "MASTERCOIN":{
         "Id":"5394",
         "ImageUrl":"/media/19814/mst.png",
         "Symbol":"MASTERCOIN",
         "FullName":"MasterCoin (MASTERCOIN)"
      },
      "EGGC":{
         "Id":"5395",
         "ImageUrl":"/media/20269/egg.png",
         "Symbol":"EGGC",
         "FullName":"EggCoin (EGGC)"
      },
      "C2":{
         "Id":"5396",
         "ImageUrl":"/media/19640/c2.png",
         "Symbol":"C2",
         "FullName":"Coin.2 (C2)"
      },
      "GLOWSHA":{
         "Id":"5397",
         "ImageUrl":"/media/20314/gsxjpeg.png",
         "Symbol":"GLOWSHA",
         "FullName":"GlowShares (GLOWSHA)"
      },
      "CAMC":{
         "Id":"5398",
         "ImageUrl":"/media/20220/cam.png",
         "Symbol":"CAMC",
         "FullName":"Camcoin (CAMC)"
      },
      "RBR":{
         "Id":"5399",
         "ImageUrl":"/media/20408/rbr.png",
         "Symbol":"RBR",
         "FullName":"Ribbit Rewards (RBR)"
      },
      "XQN":{
         "Id":"5400",
         "ImageUrl":"/media/12318067/xqn.png",
         "Symbol":"XQN",
         "FullName":"Quotient (XQN)"
      },
      "ICASH":{
         "Id":"5401",
         "ImageUrl":"/media/20319/icash.png",
         "Symbol":"ICASH",
         "FullName":"ICASH (ICASH)"
      },
      "SOON":{
         "Id":"5403",
         "ImageUrl":"/media/20436/soon.png",
         "Symbol":"SOON",
         "FullName":"SoonCoin (SOON)"
      },
      "BTMI":{
         "Id":"5404",
         "ImageUrl":"/media/20213/btmi.png",
         "Symbol":"BTMI",
         "FullName":"BitMiles (BTMI)"
      },
      "EVENT":{
         "Id":"5405",
         "ImageUrl":"/media/20277/event.png",
         "Symbol":"EVENT",
         "FullName":"Event Token (EVENT)"
      },
      "1CR":{
         "Id":"5406",
         "ImageUrl":"/media/20175/1cr.png",
         "Symbol":"1CR",
         "FullName":"1Credit (1CR)"
      },
      "VIOR":{
         "Id":"5407",
         "ImageUrl":"/media/20469/viorjpeg.png",
         "Symbol":"VIOR",
         "FullName":"ViorCoin (VIOR)"
      },
      "XCO":{
         "Id":"5408",
         "ImageUrl":"/media/20486/xco.png",
         "Symbol":"XCO",
         "FullName":"XCoin (XCO)"
      },
      "VMC":{
         "Id":"5409",
         "ImageUrl":"/media/19943/vmc.png",
         "Symbol":"VMC",
         "FullName":"VirtualMining Coin (VMC)"
      },
      "MARSC":{
         "Id":"5410",
         "ImageUrl":"/media/19808/mrs.png",
         "Symbol":"MARSC",
         "FullName":"MarsCoin (MARSC)"
      },
      "VIRAL":{
         "Id":"6088",
         "ImageUrl":"/media/20472/viral.png",
         "Symbol":"VIRAL",
         "FullName":"Viral Coin (VIRAL)"
      },
      "EQM":{
         "Id":"6093",
         "ImageUrl":"/media/19808/mrs.png",
         "Symbol":"EQM",
         "FullName":"Equilibrium Coin (EQM)"
      },
      "ISL":{
         "Id":"6094",
         "ImageUrl":"/media/19808/mrs.png",
         "Symbol":"ISL",
         "FullName":"IslaCoin (ISL)"
      },
      "QSLV":{
         "Id":"6095",
         "ImageUrl":"/media/20404/qslv.png",
         "Symbol":"QSLV",
         "FullName":"Quicksilver coin (QSLV)"
      },
      "XWT":{
         "Id":"6096",
         "ImageUrl":"/media/35651045/xwt.jpg",
         "Symbol":"XWT",
         "FullName":"World Trade Funds (XWT)"
      },
      "XNA":{
         "Id":"6097",
         "ImageUrl":"/media/19808/mrs.png",
         "Symbol":"XNA",
         "FullName":"DeOxyRibose (XNA)"
      },
      "SKB":{
         "Id":"6099",
         "ImageUrl":"/media/19808/mrs.png",
         "Symbol":"SKB",
         "FullName":"SkullBuzz (SKB)"
      },
      "BSTY":{
         "Id":"6100",
         "ImageUrl":"/media/27010496/bsty.png",
         "Symbol":"BSTY",
         "FullName":"GlobalBoost (BSTY)"
      },
      "FCS":{
         "Id":"6101",
         "ImageUrl":"/media/19808/mrs.png",
         "Symbol":"FCS",
         "FullName":"CryptoFocus (FCS)"
      },
      "GAM":{
         "Id":"6102",
         "ImageUrl":"/media/20293/gam.png",
         "Symbol":"GAM",
         "FullName":"Gambit coin (GAM)"
      },
      "CESC":{
         "Id":"6104",
         "ImageUrl":"/media/350786/cesc.png",
         "Symbol":"CESC",
         "FullName":"Crypto Escudo (CESC)"
      },
      "TWLV":{
         "Id":"6105",
         "ImageUrl":"/media/35651046/twlv.png",
         "Symbol":"TWLV",
         "FullName":"Twelve Coin (TWLV)"
      },
      "EAGS":{
         "Id":"6106",
         "ImageUrl":"/media/19808/mrs.png",
         "Symbol":"EAGS",
         "FullName":"EagsCoin (EAGS)"
      },
      "MLTC":{
         "Id":"6107",
         "ImageUrl":"/media/19808/mrs.png",
         "Symbol":"MLTC",
         "FullName":"MultiWallet Coin (MLTC)"
      },
      "ADC":{
         "Id":"6108",
         "ImageUrl":"/media/350880/adc.png",
         "Symbol":"ADC",
         "FullName":"AudioCoin (ADC)"
      },
      "MARS":{
         "Id":"6109",
         "ImageUrl":"/media/19808/mrs.png",
         "Symbol":"MARS",
         "FullName":"MarsCoin (MARS)"
      },
      "XMS":{
         "Id":"6110",
         "ImageUrl":"/media/19808/mrs.png",
         "Symbol":"XMS",
         "FullName":"Megastake (XMS)"
      },
      "SPHR":{
         "Id":"6111",
         "ImageUrl":"/media/37748032/sphr.png",
         "Symbol":"SPHR",
         "FullName":"Sphere Coin (SPHR)"
      },
      "SIGU":{
         "Id":"6112",
         "ImageUrl":"/media/19808/mrs.png",
         "Symbol":"SIGU",
         "FullName":"Singular (SIGU)"
      },
      "M1":{
         "Id":"6115",
         "ImageUrl":"/media/19808/mrs.png",
         "Symbol":"M1",
         "FullName":"SupplyShock (M1)"
      },
      "DB":{
         "Id":"6116",
         "ImageUrl":"/media/19808/mrs.png",
         "Symbol":"DB",
         "FullName":"DarkBit (DB)"
      },
      "CTO":{
         "Id":"6117",
         "ImageUrl":"/media/19808/mrs.png",
         "Symbol":"CTO",
         "FullName":"Crypto (CTO)"
      },
      "EDGE":{
         "Id":"6339",
         "ImageUrl":"/media/38553694/edge.png",
         "Symbol":"EDGE",
         "FullName":"EDGE (EDGE)"
      },
      "BITL":{
         "Id":"6341",
         "ImageUrl":"/media/20557/lux.png",
         "Symbol":"BITL",
         "FullName":"BitLux (BITL)"
      },
      "FUTC":{
         "Id":"6343",
         "ImageUrl":"/media/20558/futc.png",
         "Symbol":"FUTC",
         "FullName":"FutCoin (FUTC)"
      },
      "GLOBE":{
         "Id":"6393",
         "ImageUrl":"/media/20564/globe.png",
         "Symbol":"GLOBE",
         "FullName":"Global (GLOBE)"
      },
      "MRP":{
         "Id":"6412",
         "ImageUrl":"/media/20357/mrp.png",
         "Symbol":"MRP",
         "FullName":"MorpheusCoin (MRP)"
      },
      "CREVA":{
         "Id":"6451",
         "ImageUrl":"/media/20571/creva.png",
         "Symbol":"CREVA",
         "FullName":"Creva Coin (CREVA)"
      },
      "FOREVER":{
         "Id":"6452",
         "ImageUrl":"/media/20574/xfc.png",
         "Symbol":"FOREVER",
         "FullName":"Forever Coin (FOREVER)"
      },
      "NANAS":{
         "Id":"6453",
         "ImageUrl":"/media/20575/nanas.png",
         "Symbol":"NANAS",
         "FullName":"BananaBits (NANAS)"
      },
      "LOG":{
         "Id":"6454",
         "ImageUrl":"/media/37622045/log.png",
         "Symbol":"LOG",
         "FullName":"Wood Coin (LOG)"
      },
      "XCE":{
         "Id":"6455",
         "ImageUrl":"/media/20573/xce.png",
         "Symbol":"XCE",
         "FullName":"Cerium (XCE)"
      },
      "ACP":{
         "Id":"6476",
         "ImageUrl":"/media/351019/acp.png",
         "Symbol":"ACP",
         "FullName":"Anarchists Prime (ACP)"
      },
      "DRZ":{
         "Id":"7480",
         "ImageUrl":"/media/20605/drz.png",
         "Symbol":"DRZ",
         "FullName":"Droidz (DRZ)"
      },
      "BSC":{
         "Id":"7482",
         "ImageUrl":"/media/20601/bsc.png",
         "Symbol":"BSC",
         "FullName":"BowsCoin (BSC)"
      },
      "DRKT":{
         "Id":"7483",
         "ImageUrl":"/media/20604/drkt.png",
         "Symbol":"DRKT",
         "FullName":"DarkTron (DRKT)"
      },
      "CIRC":{
         "Id":"7484",
         "ImageUrl":"/media/20603/circ.png",
         "Symbol":"CIRC",
         "FullName":"CryptoCircuits (CIRC)"
      },
      "NKA":{
         "Id":"7559",
         "ImageUrl":"/media/35651056/nka.jpg",
         "Symbol":"NKA",
         "FullName":"IncaKoin (NKA)"
      },
      "VERSA":{
         "Id":"7562",
         "ImageUrl":"/media/20629/versa.png",
         "Symbol":"VERSA",
         "FullName":"Versa Token (VERSA)"
      },
      "EPY":{
         "Id":"7564",
         "ImageUrl":"/media/20628/epy.png",
         "Symbol":"EPY",
         "FullName":"Empyrean (EPY)"
      },
      "SQL":{
         "Id":"7565",
         "ImageUrl":"/media/20441/sql.png",
         "Symbol":"SQL",
         "FullName":"Squall Coin (SQL)"
      },
      "PIGGYCOIN":{
         "Id":"7577",
         "ImageUrl":"/media/19854/piggy.png",
         "Symbol":"PIGGYCOIN",
         "FullName":"Piggy Coin (PIGGYCOIN)"
      },
      "MIL":{
         "Id":"7581",
         "ImageUrl":"/media/20354/mil.png",
         "Symbol":"MIL",
         "FullName":"Milllionaire Coin (MIL)"
      },
      "CRW":{
         "Id":"7586",
         "ImageUrl":"/media/1383378/crw1.png",
         "Symbol":"CRW",
         "FullName":"Crown Coin (CRW)"
      },
      "GENSTAKE":{
         "Id":"7588",
         "ImageUrl":"/media/20640/gen.png",
         "Symbol":"GENSTAKE",
         "FullName":"Genstake (GENSTAKE)"
      },
      "XPH":{
         "Id":"7590",
         "ImageUrl":"/media/20641/xph.png",
         "Symbol":"XPH",
         "FullName":"PharmaCoin (XPH)"
      },
      "GRM":{
         "Id":"7592",
         "ImageUrl":"/media/20642/grm.png",
         "Symbol":"GRM",
         "FullName":"GridMaster (GRM)"
      },
      "QTZ":{
         "Id":"7595",
         "ImageUrl":"/media/20643/qtz.png",
         "Symbol":"QTZ",
         "FullName":"Quartz (QTZ)"
      },
      "ARB":{
         "Id":"7599",
         "ImageUrl":"/media/20645/arb.png",
         "Symbol":"ARB",
         "FullName":"Arbit Coin (ARB)"
      },
      "LTS":{
         "Id":"7600",
         "ImageUrl":"/media/20644/lts.png",
         "Symbol":"LTS",
         "FullName":"Litestar Coin (LTS)"
      },
      "GOLDPIECES":{
         "Id":"7625",
         "ImageUrl":"/media/20656/gp.png",
         "Symbol":"GOLDPIECES",
         "FullName":"GoldPieces (GOLDPIECES)"
      },
      "BITZ":{
         "Id":"7626",
         "ImageUrl":"/media/20654/bitz.png",
         "Symbol":"BITZ",
         "FullName":"Bitz Coin (BITZ)"
      },
      "DUB":{
         "Id":"7627",
         "ImageUrl":"/media/19986/a3c.png",
         "Symbol":"DUB",
         "FullName":"DubCoin (DUB)"
      },
      "GRAV":{
         "Id":"7634",
         "ImageUrl":"/media/20659/grav.png",
         "Symbol":"GRAV",
         "FullName":"Graviton (GRAV)"
      },
      "BOBS":{
         "Id":"7635",
         "ImageUrl":"/media/34478447/bob.png",
         "Symbol":"BOBS",
         "FullName":"Bob's Repair (BOBS)"
      },
      "MNV":{
         "Id":"7636",
         "ImageUrl":"/media/35651058/mnv.jpg",
         "Symbol":"MNV",
         "FullName":"MonetaVerde (MNV)"
      },
      "QCN":{
         "Id":"7650",
         "ImageUrl":"/media/19877/qcn.png",
         "Symbol":"QCN",
         "FullName":"Quazar Coin (QCN)"
      },
      "HEDGE":{
         "Id":"7653",
         "ImageUrl":"/media/20663/hedg.png",
         "Symbol":"HEDGE",
         "FullName":"Hedgecoin (HEDGE)"
      },
      "SONG":{
         "Id":"8682",
         "ImageUrl":"/media/20432/song.png",
         "Symbol":"SONG",
         "FullName":"Song Coin (SONG)"
      },
      "XSEED":{
         "Id":"8683",
         "ImageUrl":"/media/20163/xseed.png",
         "Symbol":"XSEED",
         "FullName":"BitSeeds (XSEED)"
      },
      "AXIOM":{
         "Id":"8693",
         "ImageUrl":"/media/20686/axiom.png",
         "Symbol":"AXIOM",
         "FullName":"Axiom Coin (AXIOM)"
      },
      "SMLY":{
         "Id":"8694",
         "ImageUrl":"/media/20429/smly.png",
         "Symbol":"SMLY",
         "FullName":"SmileyCoin (SMLY)"
      },
      "RIMBIT":{
         "Id":"8695",
         "ImageUrl":"/media/20407/rbt.png",
         "Symbol":"RIMBIT",
         "FullName":"Rimbit (RIMBIT)"
      },
      "CHIP":{
         "Id":"8696",
         "ImageUrl":"/media/20685/chip.png",
         "Symbol":"CHIP",
         "FullName":"Chip (CHIP)"
      },
      "UNC":{
         "Id":"8760",
         "ImageUrl":"/media/20693/unc.png",
         "Symbol":"UNC",
         "FullName":"UnCoin (UNC)"
      },
      "SPRTS":{
         "Id":"8761",
         "ImageUrl":"/media/20692/sprts.png",
         "Symbol":"SPRTS",
         "FullName":"Sprouts (SPRTS)"
      },
      "ZNY":{
         "Id":"8762",
         "ImageUrl":"/media/20691/zny.png",
         "Symbol":"ZNY",
         "FullName":"BitZeny (ZNY)"
      },
      "BTQ":{
         "Id":"8763",
         "ImageUrl":"/media/19638/btq.png",
         "Symbol":"BTQ",
         "FullName":"BitQuark (BTQ)"
      },
      "PKB":{
         "Id":"8764",
         "ImageUrl":"/media/20694/pkb.png",
         "Symbol":"PKB",
         "FullName":"ParkByte (PKB)"
      },
      "SNRG":{
         "Id":"8825",
         "ImageUrl":"/media/20700/snrg.png",
         "Symbol":"SNRG",
         "FullName":"Synergy (SNRG)"
      },
      "GHOUL":{
         "Id":"8832",
         "ImageUrl":"/media/20701/ghoul.png",
         "Symbol":"GHOUL",
         "FullName":"Ghoul Coin (GHOUL)"
      },
      "HNC":{
         "Id":"8846",
         "ImageUrl":"/media/36935316/hnc.png",
         "Symbol":"HNC",
         "FullName":"Hellenic Coin (HNC)"
      },
      "DIGS":{
         "Id":"12192",
         "ImageUrl":"/media/20706/digs.png",
         "Symbol":"DIGS",
         "FullName":"Diggits (DIGS)"
      },
      "GCR":{
         "Id":"12217",
         "ImageUrl":"/media/20708/gcr.png",
         "Symbol":"GCR",
         "FullName":"Global Currency Reserve (GCR)"
      },
      "MAPC":{
         "Id":"12223",
         "ImageUrl":"/media/20710/mapc.png",
         "Symbol":"MAPC",
         "FullName":"MapCoin (MAPC)"
      },
      "MI":{
         "Id":"12225",
         "ImageUrl":"/media/20711/mi.png",
         "Symbol":"MI",
         "FullName":"XiaoMiCoin (MI)"
      },
      "PAYCON":{
         "Id":"12985",
         "ImageUrl":"/media/20717/con_.png",
         "Symbol":"PAYCON",
         "FullName":"Paycon (PAYCON)"
      },
      "CLEVERCOIN":{
         "Id":"13074",
         "ImageUrl":"/media/20727/clv.png",
         "Symbol":"CLEVERCOIN",
         "FullName":"CleverCoin (CLEVERCOIN)"
      },
      "LYB":{
         "Id":"13281",
         "ImageUrl":"/media/20339/lyb.png",
         "Symbol":"LYB",
         "FullName":"LyraBar (LYB)"
      },
      "PXI":{
         "Id":"15274",
         "ImageUrl":"/media/350559/pxi.png",
         "Symbol":"PXI",
         "FullName":"Prime-X1 (PXI)"
      },
      "CPS":{
         "Id":"15282",
         "ImageUrl":"/media/37746203/cps.png",
         "Symbol":"CPS",
         "FullName":"CapriCoin (CPS)"
      },
      "AMS":{
         "Id":"15284",
         "ImageUrl":"/media/350562/ams.png",
         "Symbol":"AMS",
         "FullName":"Amsterdam Coin (AMS)"
      },
      "OBITS":{
         "Id":"15323",
         "ImageUrl":"/media/350565/obits.png",
         "Symbol":"OBITS",
         "FullName":"Obits Coin (OBITS)"
      },
      "CLUB":{
         "Id":"15869",
         "ImageUrl":"/media/350609/club.png",
         "Symbol":"CLUB",
         "FullName":"ClubCoin (CLUB)"
      },
      "VAL":{
         "Id":"15870",
         "ImageUrl":"/media/37621901/val.png",
         "Symbol":"VAL",
         "FullName":"Validity (VAL)"
      },
      "EMC":{
         "Id":"15876",
         "ImageUrl":"/media/37748030/emc.png",
         "Symbol":"EMC",
         "FullName":"Emercoin (EMC)"
      },
      "BLITZ":{
         "Id":"15879",
         "ImageUrl":"/media/350612/blitz.png",
         "Symbol":"BLITZ",
         "FullName":"BlitzCoin (BLITZ)"
      },
      "BHIRE":{
         "Id":"15882",
         "ImageUrl":"/media/350613/hire.png",
         "Symbol":"BHIRE",
         "FullName":"BitHIRE (BHIRE)"
      },
      "EVERGREEN":{
         "Id":"15885",
         "ImageUrl":"/media/350614/egc.png",
         "Symbol":"EVERGREEN",
         "FullName":"EverGreenCoin (EVERGREEN)"
      },
      "MINDCOIN":{
         "Id":"15888",
         "ImageUrl":"/media/350616/mnd.png",
         "Symbol":"MINDCOIN",
         "FullName":"MindCoin (MINDCOIN)"
      },
      "I0C":{
         "Id":"16123",
         "ImageUrl":"/media/350691/i0c.png",
         "Symbol":"I0C",
         "FullName":"I0coin (I0C)"
      },
      "BTA":{
         "Id":"16125",
         "ImageUrl":"/media/1383113/bta1.png",
         "Symbol":"BTA",
         "FullName":"Bata (BTA)"
      },
      "NAS2":{
         "Id":"16717",
         "ImageUrl":"/media/350776/nas2.png",
         "Symbol":"NAS2",
         "FullName":"Nas2Coin (NAS2)"
      },
      "PAK":{
         "Id":"17006",
         "ImageUrl":"/media/350788/pak.png",
         "Symbol":"PAK",
         "FullName":"Pakcoin (PAK)"
      },
      "CRB":{
         "Id":"17547",
         "ImageUrl":"/media/38553735/crb.png",
         "Symbol":"CRB",
         "FullName":"Creditbit (CRB)"
      },
      "DOGED":{
         "Id":"17549",
         "ImageUrl":"/media/20029/doged.png",
         "Symbol":"DOGED",
         "FullName":"DogeCoinDark (DOGED)"
      },
      "OK":{
         "Id":"17857",
         "ImageUrl":"/media/350819/ok.png",
         "Symbol":"OK",
         "FullName":"OKCash (OK)"
      },
      "RVR":{
         "Id":"18180",
         "ImageUrl":"/media/30002218/rvr.jpg",
         "Symbol":"RVR",
         "FullName":"Revolution VR (RVR)"
      },
      "HODL":{
         "Id":"18670",
         "ImageUrl":"/media/40200177/hodl.png",
         "Symbol":"HODL",
         "FullName":"HOdlcoin (HODL)"
      },
      "EDRC":{
         "Id":"19051",
         "ImageUrl":"/media/350858/edrc.jpg",
         "Symbol":"EDRC",
         "FullName":"EDRCoin (EDRC)"
      },
      "THEDAO":{
         "Id":"19584",
         "ImageUrl":"/media/37746036/thedao.png",
         "Symbol":"THEDAO",
         "FullName":"The DAO (THEDAO)"
      },
      "HTC":{
         "Id":"20153",
         "ImageUrl":"/media/350888/htc.png",
         "Symbol":"HTC",
         "FullName":"Hitcoin (HTC)"
      },
      "GAMECRED":{
         "Id":"20157",
         "ImageUrl":"/media/37746668/game.png",
         "Symbol":"GAMECRED",
         "FullName":"GameCredits (GAMECRED)"
      },
      "DSH":{
         "Id":"20196",
         "ImageUrl":"/media/20026/dash.png",
         "Symbol":"DSH",
         "FullName":"Dashcoin (DSH)"
      },
      "DBIC":{
         "Id":"20198",
         "ImageUrl":"/media/350891/dbic.png",
         "Symbol":"DBIC",
         "FullName":"DubaiCoin (DBIC)"
      },
      "XHI":{
         "Id":"20202",
         "ImageUrl":"/media/350892/xhi.png",
         "Symbol":"XHI",
         "FullName":"HiCoin (XHI)"
      },
      "BIOS":{
         "Id":"20209",
         "ImageUrl":"/media/350894/bios.png",
         "Symbol":"BIOS",
         "FullName":"BiosCrypto (BIOS)"
      },
      "CAB":{
         "Id":"20212",
         "ImageUrl":"/media/350896/cab.png",
         "Symbol":"CAB",
         "FullName":"CabbageUnit (CAB)"
      },
      "CARPE":{
         "Id":"20213",
         "ImageUrl":"/media/20260/diem_1.png",
         "Symbol":"CARPE",
         "FullName":"CarpeDiemCoin (CARPE)"
      },
      "GBT":{
         "Id":"20214",
         "ImageUrl":"/media/37747704/gbt.png",
         "Symbol":"GBT",
         "FullName":"GameBetCoin (GBT)"
      },
      "RCX":{
         "Id":"20218",
         "ImageUrl":"/media/350902/rcx.png",
         "Symbol":"RCX",
         "FullName":"RedCrowCoin (RCX)"
      },
      "PWR":{
         "Id":"20236",
         "ImageUrl":"/media/30002119/pwr.png",
         "Symbol":"PWR",
         "FullName":"PWR Coin (PWR)"
      },
      "TRUMP":{
         "Id":"20270",
         "ImageUrl":"/media/350905/trump.png",
         "Symbol":"TRUMP",
         "FullName":"TrumpCoin (TRUMP)"
      },
      "PRM":{
         "Id":"20304",
         "ImageUrl":"/media/350906/prm.png",
         "Symbol":"PRM",
         "FullName":"PrismChain (PRM)"
      },
      "BCY":{
         "Id":"20315",
         "ImageUrl":"/media/350903/bcy.png",
         "Symbol":"BCY",
         "FullName":"BitCrystals (BCY)"
      },
      "RBIES":{
         "Id":"20320",
         "ImageUrl":"/media/350904/rbies.png",
         "Symbol":"RBIES",
         "FullName":"Rubies (RBIES)"
      },
      "BLRY":{
         "Id":"20336",
         "ImageUrl":"/media/350908/blry.png",
         "Symbol":"BLRY",
         "FullName":"BillaryCoin (BLRY)"
      },
      "DOTC":{
         "Id":"20339",
         "ImageUrl":"/media/350909/dot.png",
         "Symbol":"DOTC",
         "FullName":"Dotcoin (DOTC)"
      },
      "SCOT":{
         "Id":"20342",
         "ImageUrl":"/media/20416/scot_1.png",
         "Symbol":"SCOT",
         "FullName":"Scotcoin (SCOT)"
      },
      "CREED":{
         "Id":"20441",
         "ImageUrl":"/media/350918/tcr.png",
         "Symbol":"CREED",
         "FullName":"Thecreed (CREED)"
      },
      "POSTC":{
         "Id":"20444",
         "ImageUrl":"/media/350917/post.png",
         "Symbol":"POSTC",
         "FullName":"PostCoin (POSTC)"
      },
      "INFX":{
         "Id":"20446",
         "ImageUrl":"/media/350919/infx.png",
         "Symbol":"INFX",
         "FullName":"Influxcoin (INFX)"
      },
      "ETHS":{
         "Id":"20448",
         "ImageUrl":"/media/350910/eths.png",
         "Symbol":"ETHS",
         "FullName":"EthereumScrypt (ETHS)"
      },
      "PHALA":{
         "Id":"20580",
         "ImageUrl":"/media/350930/pxl.png",
         "Symbol":"PHALA",
         "FullName":"Phalanx (PHALA)"
      },
      "NUMBERS":{
         "Id":"20583",
         "ImageUrl":"/media/350932/num.png",
         "Symbol":"NUMBERS",
         "FullName":"NumbersCoin (NUMBERS)"
      },
      "GOST":{
         "Id":"20585",
         "ImageUrl":"/media/350930/pxl.png",
         "Symbol":"GOST",
         "FullName":"SoulCoin (GOST)"
      },
      "ION":{
         "Id":"20591",
         "ImageUrl":"/media/350933/ion.jpg",
         "Symbol":"ION",
         "FullName":"Ionomy (ION)"
      },
      "GROW":{
         "Id":"20600",
         "ImageUrl":"/media/350934/grow.png",
         "Symbol":"GROW",
         "FullName":"GrownCoin (GROW)"
      },
      "UNITY":{
         "Id":"20635",
         "ImageUrl":"/media/350935/unity_1.png",
         "Symbol":"UNITY",
         "FullName":"SuperNET (UNITY)"
      },
      "OLDSF":{
         "Id":"20640",
         "ImageUrl":"/media/350936/oldsf.png",
         "Symbol":"OLDSF",
         "FullName":"OldSafeCoin (OLDSF)"
      },
      "SSTC":{
         "Id":"20644",
         "ImageUrl":"/media/350937/ssc.png",
         "Symbol":"SSTC",
         "FullName":"SunShotCoin (SSTC)"
      },
      "NETC":{
         "Id":"20647",
         "ImageUrl":"/media/35651241/pi1xcjap_300x300.png",
         "Symbol":"NETC",
         "FullName":"NetworkCoin (NETC)"
      },
      "GPU":{
         "Id":"20650",
         "ImageUrl":"/media/350939/gpu.png",
         "Symbol":"GPU",
         "FullName":"GPU Coin (GPU)"
      },
      "TAGR":{
         "Id":"20652",
         "ImageUrl":"/media/350940/tagr.png",
         "Symbol":"TAGR",
         "FullName":"Think And Get Rich Coin (TAGR)"
      },
      "HMP":{
         "Id":"20655",
         "ImageUrl":"/media/350941/hmp.png",
         "Symbol":"HMP",
         "FullName":"HempCoin (HMP)"
      },
      "ADZ":{
         "Id":"20656",
         "ImageUrl":"/media/351424/adz1.jpg",
         "Symbol":"ADZ",
         "FullName":"Adzcoin (ADZ)"
      },
      "GAPC":{
         "Id":"20659",
         "ImageUrl":"/media/350943/gap.png",
         "Symbol":"GAPC",
         "FullName":"Gapcoin (GAPC)"
      },
      "IVZ":{
         "Id":"20679",
         "ImageUrl":"/media/350944/ivz.png",
         "Symbol":"IVZ",
         "FullName":"InvisibleCoin (IVZ)"
      },
      "SOIL":{
         "Id":"20685",
         "ImageUrl":"/media/350949/soil.png",
         "Symbol":"SOIL",
         "FullName":"SoilCoin (SOIL)"
      },
      "YOC":{
         "Id":"20691",
         "ImageUrl":"/media/350957/yoc.png",
         "Symbol":"YOC",
         "FullName":"YoCoin (YOC)"
      },
      "VPRC":{
         "Id":"20718",
         "ImageUrl":"/media/350951/vpc.png",
         "Symbol":"VPRC",
         "FullName":"VapersCoin (VPRC)"
      },
      "APC":{
         "Id":"20722",
         "ImageUrl":"/media/350956/apc.png",
         "Symbol":"APC",
         "FullName":"AlpaCoin (APC)"
      },
      "STEPS":{
         "Id":"20724",
         "ImageUrl":"/media/350952/steps.png",
         "Symbol":"STEPS",
         "FullName":"Steps (STEPS)"
      },
      "DBTC":{
         "Id":"20726",
         "ImageUrl":"/media/350953/dbtc.png",
         "Symbol":"DBTC",
         "FullName":"DebitCoin (DBTC)"
      },
      "UNIT":{
         "Id":"20728",
         "ImageUrl":"/media/39500844/unit.png",
         "Symbol":"UNIT",
         "FullName":"Universal Currency (UNIT)"
      },
      "AEON":{
         "Id":"20730",
         "ImageUrl":"/media/37746140/aeon.png",
         "Symbol":"AEON",
         "FullName":"AEON (AEON)"
      },
      "MOIN":{
         "Id":"20744",
         "ImageUrl":"/media/35651246/zjma4uao_400x400.jpg",
         "Symbol":"MOIN",
         "FullName":"MoinCoin (MOIN)"
      },
      "ERC":{
         "Id":"20748",
         "ImageUrl":"/media/35651247/erc.png",
         "Symbol":"ERC",
         "FullName":"EuropeCoin (ERC)"
      },
      "AIB":{
         "Id":"20806",
         "ImageUrl":"/media/35651248/aib.jpg",
         "Symbol":"AIB",
         "FullName":"AdvancedInternetBlock (AIB)"
      },
      "PRIME":{
         "Id":"20814",
         "ImageUrl":"/media/350979/prime.png",
         "Symbol":"PRIME",
         "FullName":"PrimeChain (PRIME)"
      },
      "BERN":{
         "Id":"20817",
         "ImageUrl":"/media/350973/bern.png",
         "Symbol":"BERN",
         "FullName":"BERNcash (BERN)"
      },
      "BIGUP":{
         "Id":"20819",
         "ImageUrl":"/media/350980/bigup.png",
         "Symbol":"BIGUP",
         "FullName":"BigUp (BIGUP)"
      },
      "XRE":{
         "Id":"20823",
         "ImageUrl":"/media/33187859/xre.png",
         "Symbol":"XRE",
         "FullName":"RevolverCoin (XRE)"
      },
      "PEPE":{
         "Id":"20825",
         "ImageUrl":"/media/35309722/meme.png",
         "Symbol":"PEPE",
         "FullName":"Memetic (PEPE)"
      },
      "XDB":{
         "Id":"20826",
         "ImageUrl":"/media/350977/xdb.png",
         "Symbol":"XDB",
         "FullName":"DragonSphere (XDB)"
      },
      "ANTI":{
         "Id":"20828",
         "ImageUrl":"/media/350972/anti.png",
         "Symbol":"ANTI",
         "FullName":"Anti Bitcoin (ANTI)"
      },
      "BRK":{
         "Id":"20892",
         "ImageUrl":"/media/350981/brk.png",
         "Symbol":"BRK",
         "FullName":"BreakoutCoin (BRK)"
      },
      "COLX":{
         "Id":"20903",
         "ImageUrl":"/media/12318297/colx.png",
         "Symbol":"COLX",
         "FullName":"ColossusCoinXT (COLX)"
      },
      "MNM":{
         "Id":"20905",
         "ImageUrl":"/media/350982/mnm.png",
         "Symbol":"MNM",
         "FullName":"Mineum (MNM)"
      },
      "ZEIT":{
         "Id":"20908",
         "ImageUrl":"/media/35651251/4oihbx-1_400x400.jpg",
         "Symbol":"ZEIT",
         "FullName":"ZeitCoin (ZEIT)"
      },
      "2GIVE":{
         "Id":"20910",
         "ImageUrl":"/media/35651252/tynvs5uv_400x400.jpg",
         "Symbol":"2GIVE",
         "FullName":"2GiveCoin (2GIVE)"
      },
      "CGA":{
         "Id":"20911",
         "ImageUrl":"/media/350988/cga.png",
         "Symbol":"CGA",
         "FullName":"Cryptographic Anomaly (CGA)"
      },
      "SWING":{
         "Id":"20920",
         "ImageUrl":"/media/350987/swing.png",
         "Symbol":"SWING",
         "FullName":"SwingCoin (SWING)"
      },
      "NEBU":{
         "Id":"20980",
         "ImageUrl":"/media/350990/nebu.png",
         "Symbol":"NEBU",
         "FullName":"Nebuchadnezzar (NEBU)"
      },
      "AEC":{
         "Id":"20986",
         "ImageUrl":"/media/350991/aec.png",
         "Symbol":"AEC",
         "FullName":"AcesCoin (AEC)"
      },
      "FRN":{
         "Id":"20991",
         "ImageUrl":"/media/35651258/frn.jpg",
         "Symbol":"FRN",
         "FullName":"Francs (FRN)"
      },
      "PULSE":{
         "Id":"21012",
         "ImageUrl":"/media/350994/pulse.jpg",
         "Symbol":"PULSE",
         "FullName":"Pulse (PULSE)"
      },
      "N7":{
         "Id":"21017",
         "ImageUrl":"/media/350995/n7.jpg",
         "Symbol":"N7",
         "FullName":"Number7 (N7)"
      },
      "CYG":{
         "Id":"21213",
         "ImageUrl":"/media/350997/cygnus.png",
         "Symbol":"CYG",
         "FullName":"Cygnus (CYG)"
      },
      "LGBTQ":{
         "Id":"21215",
         "ImageUrl":"/media/350996/lgbtq.png",
         "Symbol":"LGBTQ",
         "FullName":"LGBTQoin (LGBTQ)"
      },
      "UTH":{
         "Id":"21219",
         "ImageUrl":"/media/350998/uth.png",
         "Symbol":"UTH",
         "FullName":"Uther (UTH)"
      },
      "MPRO":{
         "Id":"21222",
         "ImageUrl":"/media/350999/mpro.jpg",
         "Symbol":"MPRO",
         "FullName":"MediumProject (MPRO)"
      },
      "KATZ":{
         "Id":"21224",
         "ImageUrl":"/media/351028/katz.png",
         "Symbol":"KATZ",
         "FullName":"KATZcoin (KATZ)"
      },
      "SPM":{
         "Id":"21229",
         "ImageUrl":"/media/351002/sup.png",
         "Symbol":"SPM",
         "FullName":"Supreme (SPM)"
      },
      "MOJO":{
         "Id":"21232",
         "ImageUrl":"/media/35309727/mojo.png",
         "Symbol":"MOJO",
         "FullName":"Mojocoin (MOJO)"
      },
      "BELA":{
         "Id":"21239",
         "ImageUrl":"/media/34478099/bela.png",
         "Symbol":"BELA",
         "FullName":"Bela (BELA)"
      },
      "CFLASH":{
         "Id":"21244",
         "ImageUrl":"/media/37747467/flx.png",
         "Symbol":"CFLASH",
         "FullName":"Flash (CFLASH)"
      },
      "BOLI":{
         "Id":"21357",
         "ImageUrl":"/media/34478039/boli.png",
         "Symbol":"BOLI",
         "FullName":"BolivarCoin (BOLI)"
      },
      "CLUD":{
         "Id":"21359",
         "ImageUrl":"/media/351027/clud.png",
         "Symbol":"CLUD",
         "FullName":"CludCoin (CLUD)"
      },
      "DIME":{
         "Id":"21365",
         "ImageUrl":"/media/25792612/dime.png",
         "Symbol":"DIME",
         "FullName":"DimeCoin (DIME)"
      },
      "FLYCOIN":{
         "Id":"21370",
         "ImageUrl":"/media/351013/fly.png",
         "Symbol":"FLYCOIN",
         "FullName":"FlyCoin (FLYCOIN)"
      },
      "HVCO":{
         "Id":"21374",
         "ImageUrl":"/media/351014/hvco.png",
         "Symbol":"HVCO",
         "FullName":"High Voltage Coin (HVCO)"
      },
      "GIZ":{
         "Id":"21378",
         "ImageUrl":"/media/351015/giz.png",
         "Symbol":"GIZ",
         "FullName":"GIZMOcoin (GIZ)"
      },
      "GREXIT":{
         "Id":"21380",
         "ImageUrl":"/media/351016/grexit.png",
         "Symbol":"GREXIT",
         "FullName":"GrexitCoin (GREXIT)"
      },
      "CARBON":{
         "Id":"21382",
         "ImageUrl":"/media/351017/carbon.png",
         "Symbol":"CARBON",
         "FullName":"Carboncoin (CARBON)"
      },
      "DEUR":{
         "Id":"21384",
         "ImageUrl":"/media/351018/deur.png",
         "Symbol":"DEUR",
         "FullName":"DigiEuro (DEUR)"
      },
      "TUR":{
         "Id":"21626",
         "ImageUrl":"/media/351020/tur.png",
         "Symbol":"TUR",
         "FullName":"Turron (TUR)"
      },
      "LEMON":{
         "Id":"21641",
         "ImageUrl":"/media/351021/lemon.png",
         "Symbol":"LEMON",
         "FullName":"LemonCoin (LEMON)"
      },
      "DISK":{
         "Id":"21652",
         "ImageUrl":"/media/351023/disk.png",
         "Symbol":"DISK",
         "FullName":"Dark Lisk (DISK)"
      },
      "NEVA":{
         "Id":"21669",
         "ImageUrl":"/media/351026/neva.png",
         "Symbol":"NEVA",
         "FullName":"NevaCoin (NEVA)"
      },
      "CYT":{
         "Id":"21706",
         "ImageUrl":"/media/351024/cyt.png",
         "Symbol":"CYT",
         "FullName":"Cryptokenz (CYT)"
      },
      "FUZZ":{
         "Id":"21708",
         "ImageUrl":"/media/351025/fuzz.png",
         "Symbol":"FUZZ",
         "FullName":"Fuzzballs (FUZZ)"
      },
      "NKC":{
         "Id":"21710",
         "ImageUrl":"/media/351041/nkc.png",
         "Symbol":"NKC",
         "FullName":"Nukecoinz (NKC)"
      },
      "SECRT":{
         "Id":"21760",
         "ImageUrl":"/media/351031/scrt.png",
         "Symbol":"SECRT",
         "FullName":"SecretCoin (SECRT)"
      },
      "XNX":{
         "Id":"21773",
         "ImageUrl":"/media/351033/xnx.jpg",
         "Symbol":"XNX",
         "FullName":"XanaxCoin (XNX)"
      },
      "STHR":{
         "Id":"21833",
         "ImageUrl":"/media/351042/sthr.png",
         "Symbol":"STHR",
         "FullName":"Stakerush (STHR)"
      },
      "BONES":{
         "Id":"21869",
         "ImageUrl":"/media/351045/bon_1.png",
         "Symbol":"BONES",
         "FullName":"BonesCoin (BONES)"
      },
      "WMC":{
         "Id":"21871",
         "ImageUrl":"/media/351044/wmc.png",
         "Symbol":"WMC",
         "FullName":"WMCoin (WMC)"
      },
      "GOTX":{
         "Id":"21875",
         "ImageUrl":"/media/351071/gotx.png",
         "Symbol":"GOTX",
         "FullName":"GothicCoin (GOTX)"
      },
      "FLVR":{
         "Id":"21878",
         "ImageUrl":"/media/351046/2flav.png",
         "Symbol":"FLVR",
         "FullName":"FlavorCoin (FLVR)"
      },
      "SHREK":{
         "Id":"21907",
         "ImageUrl":"/media/351048/shrek.png",
         "Symbol":"SHREK",
         "FullName":"ShrekCoin (SHREK)"
      },
      "RISEVISION":{
         "Id":"22015",
         "ImageUrl":"/media/351059/rise.png",
         "Symbol":"RISEVISION",
         "FullName":"Rise (RISEVISION)"
      },
      "REVE":{
         "Id":"22169",
         "ImageUrl":"/media/351061/rev.png",
         "Symbol":"REVE",
         "FullName":"Revenu (REVE)"
      },
      "PBC":{
         "Id":"22171",
         "ImageUrl":"/media/351062/pbc.png",
         "Symbol":"PBC",
         "FullName":"PabyosiCoin (PBC)"
      },
      "OBSCURE":{
         "Id":"22177",
         "ImageUrl":"/media/351064/obs.png",
         "Symbol":"OBSCURE",
         "FullName":"Obscurebay (OBSCURE)"
      },
      "EXIT":{
         "Id":"22180",
         "ImageUrl":"/media/351065/exit.png",
         "Symbol":"EXIT",
         "FullName":"ExitCoin (EXIT)"
      },
      "EDUC":{
         "Id":"22185",
         "ImageUrl":"/media/351066/edc.png",
         "Symbol":"EDUC",
         "FullName":"EducoinV (EDUC)"
      },
      "CLINT":{
         "Id":"22191",
         "ImageUrl":"/media/351067/clint.png",
         "Symbol":"CLINT",
         "FullName":"Clinton (CLINT)"
      },
      "CKC":{
         "Id":"22207",
         "ImageUrl":"/media/351068/ckc.png",
         "Symbol":"CKC",
         "FullName":"Clockcoin (CKC)"
      },
      "VIP":{
         "Id":"22212",
         "ImageUrl":"/media/351069/vip.png",
         "Symbol":"VIP",
         "FullName":"VIP Tokens (VIP)"
      },
      "NXE":{
         "Id":"22240",
         "ImageUrl":"/media/351070/nxe.png",
         "Symbol":"NXE",
         "FullName":"NXEcoin (NXE)"
      },
      "ZOOM":{
         "Id":"22245",
         "ImageUrl":"/media/351081/zoom.png",
         "Symbol":"ZOOM",
         "FullName":"ZoomCoin (ZOOM)"
      },
      "DRACO":{
         "Id":"22248",
         "ImageUrl":"/media/351390/dt-token.png",
         "Symbol":"DRACO",
         "FullName":"DT Token (DRACO)"
      },
      "YOVI":{
         "Id":"22254",
         "ImageUrl":"/media/351073/yovi.png",
         "Symbol":"YOVI",
         "FullName":"YobitVirtualCoin (YOVI)"
      },
      "ORLY":{
         "Id":"22258",
         "ImageUrl":"/media/351076/orly.png",
         "Symbol":"ORLY",
         "FullName":"OrlyCoin (ORLY)"
      },
      "KUBOS":{
         "Id":"22262",
         "ImageUrl":"/media/351077/kubo.png",
         "Symbol":"KUBOS",
         "FullName":"KubosCoin (KUBOS)"
      },
      "INCP":{
         "Id":"22264",
         "ImageUrl":"/media/351078/incp.png",
         "Symbol":"INCP",
         "FullName":"InceptionCoin (INCP)"
      },
      "SAK":{
         "Id":"22268",
         "ImageUrl":"/media/351079/sak.png",
         "Symbol":"SAK",
         "FullName":"SharkCoin (SAK)"
      },
      "EVIL":{
         "Id":"22272",
         "ImageUrl":"/media/351080/evil.png",
         "Symbol":"EVIL",
         "FullName":"EvilCoin (EVIL)"
      },
      "OMA":{
         "Id":"22280",
         "ImageUrl":"/media/35651316/omega300x300.png",
         "Symbol":"OMA",
         "FullName":"OmegaCoin (OMA)"
      },
      "MUE":{
         "Id":"22325",
         "ImageUrl":"/media/35651317/monetaryunit300x300.png",
         "Symbol":"MUE",
         "FullName":"MonetaryUnit (MUE)"
      },
      "COX":{
         "Id":"22326",
         "ImageUrl":"/media/351083/cox.png",
         "Symbol":"COX",
         "FullName":"CobraCoin (COX)"
      },
      "BSEND":{
         "Id":"22329",
         "ImageUrl":"/media/351086/bsd.png",
         "Symbol":"BSEND",
         "FullName":"BitSend (BSEND)"
      },
      "DESTINY":{
         "Id":"22330",
         "ImageUrl":"/media/351087/des.png",
         "Symbol":"DESTINY",
         "FullName":"Destiny (DESTINY)"
      },
      "BIT16":{
         "Id":"22333",
         "ImageUrl":"/media/20181/16bit.png",
         "Symbol":"BIT16",
         "FullName":"16BitCoin (BIT16)"
      },
      "PDC":{
         "Id":"22352",
         "ImageUrl":"/media/351088/pdc.png",
         "Symbol":"PDC",
         "FullName":"Project Decorum (PDC)"
      },
      "CMTC":{
         "Id":"22354",
         "ImageUrl":"/media/34835904/cmtc.png",
         "Symbol":"CMTC",
         "FullName":"CometCoin (CMTC)"
      },
      "SPACECOIN":{
         "Id":"22410",
         "ImageUrl":"/media/351095/space.png",
         "Symbol":"SPACECOIN",
         "FullName":"SpaceCoin (SPACECOIN)"
      },
      "REE":{
         "Id":"22418",
         "ImageUrl":"/media/351096/ree.png",
         "Symbol":"REE",
         "FullName":"ReeCoin (REE)"
      },
      "LQD":{
         "Id":"22422",
         "ImageUrl":"/media/351097/lqd.png",
         "Symbol":"LQD",
         "FullName":"Liquid (LQD)"
      },
      "MARV":{
         "Id":"22428",
         "ImageUrl":"/media/351099/marv.png",
         "Symbol":"MARV",
         "FullName":"Marvelous (MARV)"
      },
      "VEC2":{
         "Id":"22434",
         "ImageUrl":"/media/351101/vec2.png",
         "Symbol":"VEC2",
         "FullName":"VectorCoin 2.0 (VEC2)"
      },
      "OMNI":{
         "Id":"22441",
         "ImageUrl":"/media/37747105/omni.png",
         "Symbol":"OMNI",
         "FullName":"Omni (OMNI)"
      },
      "GSY":{
         "Id":"22453",
         "ImageUrl":"/media/351103/gsy.png",
         "Symbol":"GSY",
         "FullName":"GenesysCoin (GSY)"
      },
      "LIR":{
         "Id":"23423",
         "ImageUrl":"/media/351208/lir.png",
         "Symbol":"LIR",
         "FullName":"Let it Ride (LIR)"
      },
      "MMNXT":{
         "Id":"23425",
         "ImageUrl":"/media/351209/nxtasset.png",
         "Symbol":"MMNXT",
         "FullName":"MMNXT (MMNXT)"
      },
      "SCRPT":{
         "Id":"23429",
         "ImageUrl":"/media/351210/scrpt.png",
         "Symbol":"SCRPT",
         "FullName":"ScryptCoin (SCRPT)"
      },
      "SPCIE":{
         "Id":"23435",
         "ImageUrl":"/media/351212/spx.png",
         "Symbol":"SPCIE",
         "FullName":"Specie (SPCIE)"
      },
      "CJ":{
         "Id":"23734",
         "ImageUrl":"/media/351234/cj.png",
         "Symbol":"CJ",
         "FullName":"CryptoJacks (CJ)"
      },
      "PUT":{
         "Id":"23737",
         "ImageUrl":"/media/1383668/put1.png",
         "Symbol":"PUT",
         "FullName":"PutinCoin (PUT)"
      },
      "KRAK":{
         "Id":"23741",
         "ImageUrl":"/media/35651345/kraken300x300.png",
         "Symbol":"KRAK",
         "FullName":"Kraken (KRAK)"
      },
      "DLISK":{
         "Id":"23743",
         "ImageUrl":"/media/351237/dlisk.png",
         "Symbol":"DLISK",
         "FullName":"Dlisk (DLISK)"
      },
      "STRAX":{
         "Id":"24294",
         "ImageUrl":"/media/37746904/strax.png",
         "Symbol":"STRAX",
         "FullName":"Stratis (STRAX)"
      },
      "VOYA":{
         "Id":"24305",
         "ImageUrl":"/media/351304/voya.png",
         "Symbol":"VOYA",
         "FullName":"Voyacoin (VOYA)"
      },
      "ENTER":{
         "Id":"24307",
         "ImageUrl":"/media/35650561/enter.png",
         "Symbol":"ENTER",
         "FullName":"EnterCoin (ENTER)"
      },
      "BM":{
         "Id":"24405",
         "ImageUrl":"/media/351311/bm.png",
         "Symbol":"BM",
         "FullName":"BitMoon (BM)"
      },
      "FRWC":{
         "Id":"24866",
         "ImageUrl":"/media/351361/frwc.png",
         "Symbol":"FRWC",
         "FullName":"Frankywillcoin (FRWC)"
      },
      "PSILOC":{
         "Id":"24871",
         "ImageUrl":"/media/351362/psy.png",
         "Symbol":"PSILOC",
         "FullName":"Psilocybin (PSILOC)"
      },
      "XTREME":{
         "Id":"24885",
         "ImageUrl":"/media/351364/xt.png",
         "Symbol":"XTREME",
         "FullName":"ExtremeCoin (XTREME)"
      },
      "RUST":{
         "Id":"24887",
         "ImageUrl":"/media/351365/rust.png",
         "Symbol":"RUST",
         "FullName":"RustCoin (RUST)"
      },
      "NZC":{
         "Id":"24892",
         "ImageUrl":"/media/351366/nzc.png",
         "Symbol":"NZC",
         "FullName":"NewZealandCoin (NZC)"
      },
      "XAUR":{
         "Id":"25082",
         "ImageUrl":"/media/351382/xaur.png",
         "Symbol":"XAUR",
         "FullName":"Xaurum (XAUR)"
      },
      "BFX":{
         "Id":"25238",
         "ImageUrl":"/media/19554/bitfinex.png",
         "Symbol":"BFX",
         "FullName":"BitFinex Tokens (BFX)"
      },
      "UNIQ":{
         "Id":"25594",
         "ImageUrl":"/media/351387/uniq.png",
         "Symbol":"UNIQ",
         "FullName":"Uniqredit (UNIQ)"
      },
      "CRX":{
         "Id":"25613",
         "ImageUrl":"/media/351388/crx.png",
         "Symbol":"CRX",
         "FullName":"ChronosCoin (CRX)"
      },
      "DCT":{
         "Id":"25721",
         "ImageUrl":"/media/40200173/dct.png",
         "Symbol":"DCT",
         "FullName":"Decent (DCT)"
      },
      "XPOKE":{
         "Id":"25817",
         "ImageUrl":"/media/351393/xpoke.png",
         "Symbol":"XPOKE",
         "FullName":"PokeChain (XPOKE)"
      },
      "MUDRA":{
         "Id":"25820",
         "ImageUrl":"/media/351394/mudra.png",
         "Symbol":"MUDRA",
         "FullName":"MudraCoin (MUDRA)"
      },
      "WARP":{
         "Id":"25822",
         "ImageUrl":"/media/351395/warp.png",
         "Symbol":"WARP",
         "FullName":"WarpCoin (WARP)"
      },
      "CNMT":{
         "Id":"25825",
         "ImageUrl":"/media/351396/cnmt.png",
         "Symbol":"CNMT",
         "FullName":"Coinomat (CNMT)"
      },
      "PIZZACOIN":{
         "Id":"25830",
         "ImageUrl":"/media/351397/pizza.png",
         "Symbol":"PIZZACOIN",
         "FullName":"PizzaCoin (PIZZACOIN)"
      },
      "LUTETIUM":{
         "Id":"25916",
         "ImageUrl":"/media/351398/lc.png",
         "Symbol":"LUTETIUM",
         "FullName":"Lutetium Coin (LUTETIUM)"
      },
      "HEAT":{
         "Id":"25917",
         "ImageUrl":"/media/351399/heat.png",
         "Symbol":"HEAT",
         "FullName":"Heat Ledger (HEAT)"
      },
      "ICN":{
         "Id":"25921",
         "ImageUrl":"/media/351400/icn.png",
         "Symbol":"ICN",
         "FullName":"Iconomi (ICN)"
      },
      "EXB":{
         "Id":"25925",
         "ImageUrl":"/media/351401/exb.png",
         "Symbol":"EXB",
         "FullName":"ExaByte (EXB) (EXB)"
      },
      "CDEX":{
         "Id":"26113",
         "ImageUrl":"/media/351404/cdx.png",
         "Symbol":"CDEX",
         "FullName":"Cryptodex (CDEX)"
      },
      "RBIT":{
         "Id":"26121",
         "ImageUrl":"/media/351405/rbit.png",
         "Symbol":"RBIT",
         "FullName":"ReturnBit (RBIT)"
      },
      "DCS.":{
         "Id":"26129",
         "ImageUrl":"/media/351407/cloud.png",
         "Symbol":"DCS.",
         "FullName":"deCLOUDs (DCS)"
      },
      "GB":{
         "Id":"26194",
         "ImageUrl":"/media/351411/db.png",
         "Symbol":"GB",
         "FullName":"GoldBlocks (GB)"
      },
      "SYNX":{
         "Id":"27591",
         "ImageUrl":"/media/15887426/synx.png",
         "Symbol":"SYNX",
         "FullName":"Syndicate (SYNX)"
      },
      "EDC":{
         "Id":"27634",
         "ImageUrl":"/media/35650352/edc.png",
         "Symbol":"EDC",
         "FullName":"EDC Blockchain (EDC)"
      },
      "JWL":{
         "Id":"27674",
         "ImageUrl":"/media/36640216/jwllogo.png",
         "Symbol":"JWL",
         "FullName":"Jewels (JWL)"
      },
      "WAY":{
         "Id":"27681",
         "ImageUrl":"/media/351433/way.png",
         "Symbol":"WAY",
         "FullName":"WayCoin (WAY)"
      },
      "TAB":{
         "Id":"27993",
         "ImageUrl":"/media/351488/tab.png",
         "Symbol":"TAB",
         "FullName":"MollyCoin (TAB)"
      },
      "TRIG":{
         "Id":"27996",
         "ImageUrl":"/media/351489/trg.png",
         "Symbol":"TRIG",
         "FullName":"Trigger (TRIG)"
      },
      "BITCNY":{
         "Id":"28019",
         "ImageUrl":"/media/35650719/bitcny.png",
         "Symbol":"BITCNY",
         "FullName":"bitCNY (BITCNY)"
      },
      "BITUSD":{
         "Id":"28021",
         "ImageUrl":"/media/351491/bitusd.png",
         "Symbol":"BITUSD",
         "FullName":"bitUSD (BITUSD)"
      },
      "ATMC":{
         "Id":"28023",
         "ImageUrl":"/media/351492/atm.png",
         "Symbol":"ATMC",
         "FullName":"Autumncoin (ATMC)"
      },
      "STO":{
         "Id":"28025",
         "ImageUrl":"/media/351493/sto.png",
         "Symbol":"STO",
         "FullName":"Save The Ocean (STO)"
      },
      "CARTERCOIN":{
         "Id":"28083",
         "ImageUrl":"/media/351496/ctc.png",
         "Symbol":"CARTERCOIN",
         "FullName":"CarterCoin (CARTERCOIN)"
      },
      "TOT":{
         "Id":"28087",
         "ImageUrl":"/media/351497/tot.png",
         "Symbol":"TOT",
         "FullName":"TotCoin (TOT)"
      },
      "BTD":{
         "Id":"28089",
         "ImageUrl":"/media/351498/btd.png",
         "Symbol":"BTD",
         "FullName":"Bitcloud (BTD)"
      },
      "BOTS":{
         "Id":"28125",
         "ImageUrl":"/media/351499/bot.png",
         "Symbol":"BOTS",
         "FullName":"ArkDAO (BOTS)"
      },
      "MDC":{
         "Id":"28128",
         "ImageUrl":"/media/351500/mdc.png",
         "Symbol":"MDC",
         "FullName":"MedicCoin (MDC)"
      },
      "FTP":{
         "Id":"28131",
         "ImageUrl":"/media/351501/ftp.png",
         "Symbol":"FTP",
         "FullName":"FuturePoints (FTP)"
      },
      "ZET2":{
         "Id":"28136",
         "ImageUrl":"/media/351502/zet2.png",
         "Symbol":"ZET2",
         "FullName":"Zeta2Coin (ZET2)"
      },
      "CVNC":{
         "Id":"28151",
         "ImageUrl":"/media/351503/cov.png",
         "Symbol":"CVNC",
         "FullName":"CovenCoin (CVNC)"
      },
      "KRB":{
         "Id":"28154",
         "ImageUrl":"/media/25792684/krb.png",
         "Symbol":"KRB",
         "FullName":"Karbo (KRB)"
      },
      "TELL":{
         "Id":"28172",
         "ImageUrl":"/media/351505/tell.png",
         "Symbol":"TELL",
         "FullName":"Tellurion (TELL)"
      },
      "ENE":{
         "Id":"28174",
         "ImageUrl":"/media/351506/ene.png",
         "Symbol":"ENE",
         "FullName":"EneCoin (ENE)"
      },
      "TDFB":{
         "Id":"28176",
         "ImageUrl":"/media/351507/tdfb.png",
         "Symbol":"TDFB",
         "FullName":"TDFB (TDFB)"
      },
      "BLOCKPAY":{
         "Id":"28204",
         "ImageUrl":"/media/351508/blockpay.png",
         "Symbol":"BLOCKPAY",
         "FullName":"BlockPay (BLOCKPAY)"
      },
      "BXT":{
         "Id":"28208",
         "ImageUrl":"/media/351509/bxt.png",
         "Symbol":"BXT",
         "FullName":"BitTokens (BXT)"
      },
      "ZYD":{
         "Id":"28216",
         "ImageUrl":"/media/351510/zyd.png",
         "Symbol":"ZYD",
         "FullName":"ZayedCoin (ZYD)"
      },
      "MUSTANGC":{
         "Id":"28219",
         "ImageUrl":"/media/351529/mst1.png",
         "Symbol":"MUSTANGC",
         "FullName":"MustangCoin (MUSTANGC)"
      },
      "GOON":{
         "Id":"28221",
         "ImageUrl":"/media/351512/goon.png",
         "Symbol":"GOON",
         "FullName":"Goonies (GOON)"
      },
      "VLT":{
         "Id":"28225",
         "ImageUrl":"/media/351514/vlt.png",
         "Symbol":"VLT",
         "FullName":"Veltor (VLT)"
      },
      "ZNE":{
         "Id":"28227",
         "ImageUrl":"/media/351515/zne.jpg",
         "Symbol":"ZNE",
         "FullName":"ZoneCoin (ZNE)"
      },
      "DCK":{
         "Id":"28229",
         "ImageUrl":"/media/351516/dck.png",
         "Symbol":"DCK",
         "FullName":"DickCoin (DCK)"
      },
      "COVAL":{
         "Id":"28276",
         "ImageUrl":"/media/37746285/coval.png",
         "Symbol":"COVAL",
         "FullName":"Circuits of Value (COVAL)"
      },
      "DGDC":{
         "Id":"28278",
         "ImageUrl":"/media/351520/dgd.png",
         "Symbol":"DGDC",
         "FullName":"DarkGold (DGDC)"
      },
      "TODAY":{
         "Id":"28317",
         "ImageUrl":"/media/351521/today.png",
         "Symbol":"TODAY",
         "FullName":"TodayCoin (TODAY)"
      },
      "VRM":{
         "Id":"28323",
         "ImageUrl":"/media/351522/vrm.png",
         "Symbol":"VRM",
         "FullName":"Verium (VRM)"
      },
      "ROOT":{
         "Id":"28326",
         "ImageUrl":"/media/351523/root.png",
         "Symbol":"ROOT",
         "FullName":"RootCoin (ROOT)"
      },
      "1ST":{
         "Id":"28328",
         "ImageUrl":"/media/351524/1st.png",
         "Symbol":"1ST",
         "FullName":"FirstBlood (1ST)"
      },
      "GPL":{
         "Id":"28330",
         "ImageUrl":"/media/351525/gpl.png",
         "Symbol":"GPL",
         "FullName":"Gold Pressed Latinum (GPL)"
      },
      "DOPE":{
         "Id":"28332",
         "ImageUrl":"/media/351526/dope.png",
         "Symbol":"DOPE",
         "FullName":"DopeCoin (DOPE)"
      },
      "B3":{
         "Id":"28333",
         "ImageUrl":"/media/35651389/b3300x300.jpg",
         "Symbol":"B3",
         "FullName":"B3 Coin (B3)"
      },
      "PIO":{
         "Id":"28342",
         "ImageUrl":"/media/351528/pio.png",
         "Symbol":"PIO",
         "FullName":"Pioneershares (PIO)"
      },
      "PROUD":{
         "Id":"28431",
         "ImageUrl":"/media/32655932/proud.png",
         "Symbol":"PROUD",
         "FullName":"PROUD Money (PROUD)"
      },
      "SMSR":{
         "Id":"28650",
         "ImageUrl":"/media/351543/smsr.png",
         "Symbol":"SMSR",
         "FullName":"Samsara Coin (SMSR)"
      },
      "UBIQ":{
         "Id":"28652",
         "ImageUrl":"/media/351544/ubiq.png",
         "Symbol":"UBIQ",
         "FullName":"Ubiqoin (UBIQ)"
      },
      "ARM":{
         "Id":"28654",
         "ImageUrl":"/media/351545/arm.png",
         "Symbol":"ARM",
         "FullName":"Armory Coin (ARM)"
      },
      "ERB":{
         "Id":"28665",
         "ImageUrl":"/media/351550/erb.png",
         "Symbol":"ERB",
         "FullName":"ERBCoin (ERB)"
      },
      "LAZ":{
         "Id":"28700",
         "ImageUrl":"/media/351552/laz.png",
         "Symbol":"LAZ",
         "FullName":"Lazarus (LAZ)"
      },
      "FONZ":{
         "Id":"28703",
         "ImageUrl":"/media/351553/fonz.png",
         "Symbol":"FONZ",
         "FullName":"FonzieCoin (FONZ)"
      },
      "BTCR":{
         "Id":"28764",
         "ImageUrl":"/media/351554/btr.png",
         "Symbol":"BTCR",
         "FullName":"BitCurrency (BTCR)"
      },
      "FCTC":{
         "Id":"28767",
         "ImageUrl":"/media/351555/drop.png",
         "Symbol":"FCTC",
         "FullName":"FaucetCoin (FCTC)"
      },
      "SANDG":{
         "Id":"28770",
         "ImageUrl":"/media/351556/sandt.png",
         "Symbol":"SANDG",
         "FullName":"Save and Gain (SANDG)"
      },
      "PUNK":{
         "Id":"28772",
         "ImageUrl":"/media/351557/pnk.png",
         "Symbol":"PUNK",
         "FullName":"SteamPunk (PUNK)"
      },
      "MOOND":{
         "Id":"28774",
         "ImageUrl":"/media/351558/moond.png",
         "Symbol":"MOOND",
         "FullName":"Dark Moon (MOOND)"
      },
      "DLC":{
         "Id":"28776",
         "ImageUrl":"/media/351559/dlc.png",
         "Symbol":"DLC",
         "FullName":"DollarCoin (DLC)"
      },
      "SEN":{
         "Id":"28778",
         "ImageUrl":"/media/351560/sen.png",
         "Symbol":"SEN",
         "FullName":"Sentaro (SEN)"
      },
      "SCN":{
         "Id":"28880",
         "ImageUrl":"/media/351563/scn.png",
         "Symbol":"SCN",
         "FullName":"Swiscoin (SCN)"
      },
      "LTH":{
         "Id":"28885",
         "ImageUrl":"/media/351565/lth.png",
         "Symbol":"LTH",
         "FullName":"Lathaan (LTH)"
      },
      "BRONZ":{
         "Id":"28888",
         "ImageUrl":"/media/33957382/bronz.png",
         "Symbol":"BRONZ",
         "FullName":"BitBronze (BRONZ)"
      },
      "BUZZ":{
         "Id":"28893",
         "ImageUrl":"/media/15887419/buzz.png",
         "Symbol":"BUZZ",
         "FullName":"BuzzCoin (BUZZ)"
      },
      "MINDGENE":{
         "Id":"29001",
         "ImageUrl":"/media/351588/mg.png",
         "Symbol":"MINDGENE",
         "FullName":"Mind Gene (MINDGENE)"
      },
      "PSI":{
         "Id":"29004",
         "ImageUrl":"/media/351589/psi.png",
         "Symbol":"PSI",
         "FullName":"PSIcoin (PSI)"
      },
      "XPO":{
         "Id":"29008",
         "ImageUrl":"/media/351590/xpo.png",
         "Symbol":"XPO",
         "FullName":"Opair (XPO)"
      },
      "NLC":{
         "Id":"29010",
         "ImageUrl":"/media/35650712/nlc.png",
         "Symbol":"NLC",
         "FullName":"NoLimitCoin (NLC)"
      },
      "PESOBIT":{
         "Id":"29041",
         "ImageUrl":"/media/40040081/pesobit.png",
         "Symbol":"PESOBIT",
         "FullName":"PesoBit (PESOBIT)"
      },
      "XBTS":{
         "Id":"29131",
         "ImageUrl":"/media/351617/beats.png",
         "Symbol":"XBTS",
         "FullName":"Beats (XBTS)"
      },
      "FITC":{
         "Id":"29133",
         "ImageUrl":"/media/35650713/fit.png",
         "Symbol":"FITC",
         "FullName":"Fitcoin (FITC)"
      },
      "PINKX":{
         "Id":"29193",
         "ImageUrl":"/media/351624/pinkx.png",
         "Symbol":"PINKX",
         "FullName":"PantherCoin (PINKX)"
      },
      "FIRE":{
         "Id":"29196",
         "ImageUrl":"/media/351625/fire.png",
         "Symbol":"FIRE",
         "FullName":"FireCoin (FIRE)"
      },
      "UNF":{
         "Id":"29198",
         "ImageUrl":"/media/351626/unf.png",
         "Symbol":"UNF",
         "FullName":"Unfed Coin (UNF)"
      },
      "SPORT":{
         "Id":"29200",
         "ImageUrl":"/media/351627/sports.png",
         "Symbol":"SPORT",
         "FullName":"SportsCoin (SPORT)"
      },
      "PPY":{
         "Id":"29348",
         "ImageUrl":"/media/35650382/ppy.png",
         "Symbol":"PPY",
         "FullName":"Peerplays (PPY)"
      },
      "NTC":{
         "Id":"29366",
         "ImageUrl":"/media/351631/ntc.png",
         "Symbol":"NTC",
         "FullName":"NineElevenTruthCoin (NTC)"
      },
      "EGO":{
         "Id":"29368",
         "ImageUrl":"/media/351632/ego.png",
         "Symbol":"EGO",
         "FullName":"EGOcoin (EGO)"
      },
      "RCOIN":{
         "Id":"29374",
         "ImageUrl":"/media/351634/rcn.png",
         "Symbol":"RCOIN",
         "FullName":"RCoin (RCOIN)"
      },
      "X2":{
         "Id":"29376",
         "ImageUrl":"/media/351635/x2.png",
         "Symbol":"X2",
         "FullName":"X2Coin (X2)"
      },
      "MYCELIUM":{
         "Id":"29378",
         "ImageUrl":"/media/19453/mycelium.png",
         "Symbol":"MYCELIUM",
         "FullName":"Mycelium Token (MYCELIUM)"
      },
      "TIA":{
         "Id":"29455",
         "ImageUrl":"/media/351636/tia.png",
         "Symbol":"TIA",
         "FullName":"Tianhe (TIA)"
      },
      "GBRC":{
         "Id":"29458",
         "ImageUrl":"/media/351637/gbrc.png",
         "Symbol":"GBRC",
         "FullName":"GBR Coin (GBRC)"
      },
      "UPCOIN":{
         "Id":"29460",
         "ImageUrl":"/media/351638/xup.png",
         "Symbol":"UPCOIN",
         "FullName":"UPcoin (UPCOIN)"
      },
      "HALLO":{
         "Id":"29552",
         "ImageUrl":"/media/351657/hallo.png",
         "Symbol":"HALLO",
         "FullName":"Halloween Coin (HALLO)"
      },
      "BBCC":{
         "Id":"29554",
         "ImageUrl":"/media/351658/bbcc.png",
         "Symbol":"BBCC",
         "FullName":"BaseballCardCoin (BBCC)"
      },
      "EMIGR":{
         "Id":"29556",
         "ImageUrl":"/media/351659/emirg.png",
         "Symbol":"EMIGR",
         "FullName":"EmiratesGoldCoin (EMIGR)"
      },
      "BIGHAN":{
         "Id":"29559",
         "ImageUrl":"/media/351660/bhc.png",
         "Symbol":"BIGHAN",
         "FullName":"BighanCoin (BIGHAN)"
      },
      "CRAFTCOIN":{
         "Id":"29711",
         "ImageUrl":"/media/351681/craft.png",
         "Symbol":"CRAFTCOIN",
         "FullName":"Craftcoin (CRAFTCOIN)"
      },
      "INVIC":{
         "Id":"29713",
         "ImageUrl":"/media/351682/inv.png",
         "Symbol":"INVIC",
         "FullName":"Invictus (INVIC)"
      },
      "OLYMP":{
         "Id":"29715",
         "ImageUrl":"/media/351683/olymp.png",
         "Symbol":"OLYMP",
         "FullName":"OlympCoin (OLYMP)"
      },
      "DPAY":{
         "Id":"29718",
         "ImageUrl":"/media/351684/dpay.png",
         "Symbol":"DPAY",
         "FullName":"DelightPay (DPAY)"
      },
      "HKG":{
         "Id":"29733",
         "ImageUrl":"/media/351689/hkg.jpg",
         "Symbol":"HKG",
         "FullName":"Hacker Gold (HKG)"
      },
      "JOBS":{
         "Id":"29762",
         "ImageUrl":"/media/351691/jobs.png",
         "Symbol":"JOBS",
         "FullName":"JobsCoin (JOBS)"
      },
      "DGORE":{
         "Id":"29904",
         "ImageUrl":"/media/351697/dgore.png",
         "Symbol":"DGORE",
         "FullName":"DogeGoreCoin (DGORE)"
      },
      "TETRA":{
         "Id":"29926",
         "ImageUrl":"/media/351700/tra.png",
         "Symbol":"TETRA",
         "FullName":"Tetra (TETRA)"
      },
      "RMS":{
         "Id":"29928",
         "ImageUrl":"/media/351701/rms.png",
         "Symbol":"RMS",
         "FullName":"Resumeo Shares (RMS)"
      },
      "FJC":{
         "Id":"29935",
         "ImageUrl":"/media/27010498/fjc.png",
         "Symbol":"FJC",
         "FullName":"FujiCoin (FJC)"
      },
      "VAPOR":{
         "Id":"30016",
         "ImageUrl":"/media/351708/vapor.png",
         "Symbol":"VAPOR",
         "FullName":"Vaporcoin (VAPOR)"
      },
      "SDP":{
         "Id":"30019",
         "ImageUrl":"/media/351709/sdp.jpg",
         "Symbol":"SDP",
         "FullName":"SydPakCoin (SDP)"
      },
      "RRT":{
         "Id":"30020",
         "ImageUrl":"/media/19554/bitfinex.png",
         "Symbol":"RRT",
         "FullName":"Recovery Right Tokens (RRT)"
      },
      "PREM":{
         "Id":"30024",
         "ImageUrl":"/media/351711/pre.png",
         "Symbol":"PREM",
         "FullName":"Premium (PREM)"
      },
      "CALC":{
         "Id":"30029",
         "ImageUrl":"/media/351712/calc.png",
         "Symbol":"CALC",
         "FullName":"CaliphCoin (CALC)"
      },
      "LEA":{
         "Id":"30117",
         "ImageUrl":"/media/351729/lea.png",
         "Symbol":"LEA",
         "FullName":"LeaCoin (LEA)"
      },
      "CF":{
         "Id":"30119",
         "ImageUrl":"/media/351730/cf.png",
         "Symbol":"CF",
         "FullName":"Californium (CF)"
      },
      "CRNK":{
         "Id":"30121",
         "ImageUrl":"/media/351731/crnk.png",
         "Symbol":"CRNK",
         "FullName":"CrankCoin (CRNK)"
      },
      "COFFEECOIN":{
         "Id":"30123",
         "ImageUrl":"/media/35650714/cfc.png",
         "Symbol":"COFFEECOIN",
         "FullName":"CoffeeCoin (COFFEECOIN)"
      },
      "VTY":{
         "Id":"30126",
         "ImageUrl":"/media/351733/vty.png",
         "Symbol":"VTY",
         "FullName":"Victoriouscoin (VTY)"
      },
      "BS":{
         "Id":"30175",
         "ImageUrl":"/media/351737/bs.png",
         "Symbol":"BS",
         "FullName":"BlackShadowCoin (BS)"
      },
      "JIF":{
         "Id":"30177",
         "ImageUrl":"/media/351738/jif.png",
         "Symbol":"JIF",
         "FullName":"JiffyCoin (JIF)"
      },
      "CRAB":{
         "Id":"30179",
         "ImageUrl":"/media/351739/crab.png",
         "Symbol":"CRAB",
         "FullName":"CrabCoin (CRAB)"
      },
      "HILL":{
         "Id":"30359",
         "ImageUrl":"/media/351747/hill.png",
         "Symbol":"HILL",
         "FullName":"President Clinton (HILL)"
      },
      "MONETA":{
         "Id":"30364",
         "ImageUrl":"/media/351749/moneta.png",
         "Symbol":"MONETA",
         "FullName":"Moneta (MONETA)"
      },
      "ECLIP":{
         "Id":"30367",
         "ImageUrl":"/media/351750/ec.jpg",
         "Symbol":"ECLIP",
         "FullName":"Eclipse (ECLIP)"
      },
      "RUBIT":{
         "Id":"30369",
         "ImageUrl":"/media/351751/rubit.png",
         "Symbol":"RUBIT",
         "FullName":"Rublebit (RUBIT)"
      },
      "HCC":{
         "Id":"30371",
         "ImageUrl":"/media/351752/hcc.png",
         "Symbol":"HCC",
         "FullName":"HappyCreatorCoin (HCC)"
      },
      "BRAIN":{
         "Id":"30373",
         "ImageUrl":"/media/351753/brain.png",
         "Symbol":"BRAIN",
         "FullName":"BrainCoin (BRAIN)"
      },
      "VERTEX":{
         "Id":"30377",
         "ImageUrl":"/media/351754/vertex.png",
         "Symbol":"VERTEX",
         "FullName":"Vertex (VERTEX)"
      },
      "KRC":{
         "Id":"30379",
         "ImageUrl":"/media/351755/krc.png",
         "Symbol":"KRC",
         "FullName":"KRCoin (KRC)"
      },
      "ROYAL":{
         "Id":"30386",
         "ImageUrl":"/media/351756/royal.png",
         "Symbol":"ROYAL",
         "FullName":"RoyalCoin (ROYAL)"
      },
      "LFC":{
         "Id":"30388",
         "ImageUrl":"/media/351757/lfc.png",
         "Symbol":"LFC",
         "FullName":"BigLifeCoin (LFC)"
      },
      "ZUR":{
         "Id":"30391",
         "ImageUrl":"/media/35280521/zur.png",
         "Symbol":"ZUR",
         "FullName":"Zurcoin (ZUR)"
      },
      "NUBIS":{
         "Id":"30393",
         "ImageUrl":"/media/351759/nubis.png",
         "Symbol":"NUBIS",
         "FullName":"NubisCoin (NUBIS)"
      },
      "TENNET":{
         "Id":"30421",
         "ImageUrl":"/media/351760/tennet.png",
         "Symbol":"TENNET",
         "FullName":"Tennet (TENNET)"
      },
      "PEC":{
         "Id":"30423",
         "ImageUrl":"/media/351761/pec.png",
         "Symbol":"PEC",
         "FullName":"PeaceCoin (PEC)"
      },
      "32BIT":{
         "Id":"30428",
         "ImageUrl":"/media/351763/32bit.png",
         "Symbol":"32BIT",
         "FullName":"32Bitcoin (32BIT)"
      },
      "GNJ":{
         "Id":"30521",
         "ImageUrl":"/media/351789/gnj.png",
         "Symbol":"GNJ",
         "FullName":"GanjaCoin V2 (GNJ)"
      },
      "TEAM":{
         "Id":"30523",
         "ImageUrl":"/media/351790/team.png",
         "Symbol":"TEAM",
         "FullName":"TeamUP (TEAM)"
      },
      "SCT":{
         "Id":"30536",
         "ImageUrl":"/media/351791/sct.png",
         "Symbol":"SCT",
         "FullName":"ScryptToken (SCT)"
      },
      "LANA":{
         "Id":"30544",
         "ImageUrl":"/media/36934957/lana.png",
         "Symbol":"LANA",
         "FullName":"LanaCoin (LANA)"
      },
      "ELE":{
         "Id":"30550",
         "ImageUrl":"/media/351793/ele.png",
         "Symbol":"ELE",
         "FullName":"Elementrem (ELE)"
      },
      "GCC":{
         "Id":"30566",
         "ImageUrl":"/media/351796/gcc.jpg",
         "Symbol":"GCC",
         "FullName":"GuccioneCoin (GCC)"
      },
      "AND":{
         "Id":"30568",
         "ImageUrl":"/media/351797/and.png",
         "Symbol":"AND",
         "FullName":"AndromedaCoin (AND)"
      },
      "EQUAL":{
         "Id":"30883",
         "ImageUrl":"/media/351867/equal.png",
         "Symbol":"EQUAL",
         "FullName":"EqualCoin (EQUAL)"
      },
      "SWEET":{
         "Id":"30887",
         "ImageUrl":"/media/351868/sweet.png",
         "Symbol":"SWEET",
         "FullName":"SweetStake (SWEET)"
      },
      "2BACCO":{
         "Id":"30912",
         "ImageUrl":"/media/351869/2bacco.png",
         "Symbol":"2BACCO",
         "FullName":"2BACCO Coin (2BACCO)"
      },
      "DKC":{
         "Id":"30920",
         "ImageUrl":"/media/351870/dkc.png",
         "Symbol":"DKC",
         "FullName":"DarkKnightCoin (DKC)"
      },
      "COC":{
         "Id":"30925",
         "ImageUrl":"/media/351872/coc.png",
         "Symbol":"COC",
         "FullName":"Community Coin (COC)"
      },
      "CHOOF":{
         "Id":"31002",
         "ImageUrl":"/media/351876/choof.png",
         "Symbol":"CHOOF",
         "FullName":"ChoofCoin (CHOOF)"
      },
      "CSH":{
         "Id":"31004",
         "ImageUrl":"/media/351877/csh.png",
         "Symbol":"CSH",
         "FullName":"CashOut (CSH)"
      },
      "ZCL":{
         "Id":"32544",
         "ImageUrl":"/media/35650715/zcl.png",
         "Symbol":"ZCL",
         "FullName":"ZClassic (ZCL)"
      },
      "RYCN":{
         "Id":"32548",
         "ImageUrl":"/media/351756/royal.png",
         "Symbol":"RYCN",
         "FullName":"RoyalCoin 2.0 (RYCN)"
      },
      "PCS":{
         "Id":"32686",
         "ImageUrl":"/media/351927/pabyosi.png",
         "Symbol":"PCS",
         "FullName":"Pabyosi Coin (PCS)"
      },
      "NBIT":{
         "Id":"32688",
         "ImageUrl":"/media/351928/nbit.png",
         "Symbol":"NBIT",
         "FullName":"NetBit (NBIT)"
      },
      "WINE":{
         "Id":"32691",
         "ImageUrl":"/media/351929/wine.png",
         "Symbol":"WINE",
         "FullName":"WineCoin (WINE)"
      },
      "DARCRUS":{
         "Id":"32694",
         "ImageUrl":"/media/351930/dar.png",
         "Symbol":"DARCRUS",
         "FullName":"Darcrus (DARCRUS)"
      },
      "IFLT":{
         "Id":"32775",
         "ImageUrl":"/media/35309724/iflt.png",
         "Symbol":"IFLT",
         "FullName":"InflationCoin (IFLT)"
      },
      "ZECD":{
         "Id":"32777",
         "ImageUrl":"/media/351935/zecd.png",
         "Symbol":"ZECD",
         "FullName":"ZCashDarkCoin (ZECD)"
      },
      "ZXT":{
         "Id":"32785",
         "ImageUrl":"/media/351936/zxt.png",
         "Symbol":"ZXT",
         "FullName":"Zcrypt (ZXT)"
      },
      "WASH":{
         "Id":"32870",
         "ImageUrl":"/media/351944/wash.png",
         "Symbol":"WASH",
         "FullName":"WashingtonCoin (WASH)"
      },
      "TESLA":{
         "Id":"32873",
         "ImageUrl":"/media/351945/tesla.png",
         "Symbol":"TESLA",
         "FullName":"TeslaCoilCoin (TESLA)"
      },
      "LUCKYB":{
         "Id":"32875",
         "ImageUrl":"/media/351946/lucky.png",
         "Symbol":"LUCKYB",
         "FullName":"LuckyBlocks (LUCKYB)"
      },
      "VSL":{
         "Id":"32880",
         "ImageUrl":"/media/352113/d5a4e4f0366d3ae8cdbc45ad097f664c2557a55f0c237c1710-pimgpsh_fullsize_distr.jpg",
         "Symbol":"VSL",
         "FullName":"vSlice (VSL)"
      },
      "TPG":{
         "Id":"32882",
         "ImageUrl":"/media/351948/tpg.png",
         "Symbol":"TPG",
         "FullName":"Troll Payment (TPG)"
      },
      "MIDN":{
         "Id":"33004",
         "ImageUrl":"/media/351989/mdt.png",
         "Symbol":"MIDN",
         "FullName":"Midnight (MIDN)"
      },
      "CBD":{
         "Id":"33008",
         "ImageUrl":"/media/351990/cbd.png",
         "Symbol":"CBD",
         "FullName":"CBD Crystals (CBD)"
      },
      "POSEX":{
         "Id":"33010",
         "ImageUrl":"/media/351992/pex.png",
         "Symbol":"POSEX",
         "FullName":"PosEx (POSEX)"
      },
      "INSANE":{
         "Id":"33017",
         "ImageUrl":"/media/35650716/insane.png",
         "Symbol":"INSANE",
         "FullName":"InsaneCoin (INSANE)"
      },
      "PENC":{
         "Id":"33127",
         "ImageUrl":"/media/20384/pen.png",
         "Symbol":"PENC",
         "FullName":"PenCoin (PENC)"
      },
      "BASH":{
         "Id":"33129",
         "ImageUrl":"/media/352004/bash.png",
         "Symbol":"BASH",
         "FullName":"LuckChain (BASH)"
      },
      "FAMEC":{
         "Id":"33268",
         "ImageUrl":"/media/352006/fame.png",
         "Symbol":"FAMEC",
         "FullName":"FameCoin (FAMEC)"
      },
      "LIV":{
         "Id":"33271",
         "ImageUrl":"/media/352007/liv.png",
         "Symbol":"LIV",
         "FullName":"LiviaCoin (LIV)"
      },
      "SP":{
         "Id":"33332",
         "ImageUrl":"/media/352018/sp.png",
         "Symbol":"SP",
         "FullName":"Sex Pistols (SP)"
      },
      "MEGA":{
         "Id":"33393",
         "ImageUrl":"/media/352020/mega.png",
         "Symbol":"MEGA",
         "FullName":"MegaFlash (MEGA)"
      },
      "ALC":{
         "Id":"33401",
         "ImageUrl":"/media/352022/alc.png",
         "Symbol":"ALC",
         "FullName":"Arab League Coin (ALC)"
      },
      "DOGETH":{
         "Id":"33403",
         "ImageUrl":"/media/352023/dogeth-2.png",
         "Symbol":"DOGETH",
         "FullName":"EtherDoge (DOGETH)"
      },
      "KLC":{
         "Id":"33405",
         "ImageUrl":"/media/352024/klc.png",
         "Symbol":"KLC",
         "FullName":"KiloCoin (KLC)"
      },
      "HUSH":{
         "Id":"33460",
         "ImageUrl":"/media/1383138/thehush_300x300.png",
         "Symbol":"HUSH",
         "FullName":"Hush (HUSH)"
      },
      "BTLC":{
         "Id":"33522",
         "ImageUrl":"/media/352054/btlc.png",
         "Symbol":"BTLC",
         "FullName":"BitLuckCoin (BTLC)"
      },
      "DRM8":{
         "Id":"33524",
         "ImageUrl":"/media/352055/drm8.png",
         "Symbol":"DRM8",
         "FullName":"Dream8Coin (DRM8)"
      },
      "FIST":{
         "Id":"33526",
         "ImageUrl":"/media/352056/fist.png",
         "Symbol":"FIST",
         "FullName":"FistBump (FIST)"
      },
      "EBZ":{
         "Id":"33636",
         "ImageUrl":"/media/352069/ebz.png",
         "Symbol":"EBZ",
         "FullName":"Ebitz (EBZ)"
      },
      "DRS":{
         "Id":"33645",
         "ImageUrl":"/media/352072/drs.png",
         "Symbol":"DRS",
         "FullName":"Digital Rupees (DRS)"
      },
      "FGZ":{
         "Id":"33866",
         "ImageUrl":"/media/352082/fgz.png",
         "Symbol":"FGZ",
         "FullName":"Free Game Zone (FGZ)"
      },
      "BOSONC":{
         "Id":"33869",
         "ImageUrl":"/media/352083/boson.png",
         "Symbol":"BOSONC",
         "FullName":"BosonCoin (BOSONC)"
      },
      "ATX":{
         "Id":"33871",
         "ImageUrl":"/media/352084/atx.png",
         "Symbol":"ATX",
         "FullName":"ArtexCoin (ATX)"
      },
      "PNC":{
         "Id":"33873",
         "ImageUrl":"/media/352085/pnc.png",
         "Symbol":"PNC",
         "FullName":"PlatiniumCoin (PNC)"
      },
      "BRDD":{
         "Id":"33875",
         "ImageUrl":"/media/352086/brdd.png",
         "Symbol":"BRDD",
         "FullName":"BeardDollars (BRDD)"
      },
      "TIME":{
         "Id":"33914",
         "ImageUrl":"/media/38554074/time.png",
         "Symbol":"TIME",
         "FullName":"Chrono.tech (TIME)"
      },
      "BIPC":{
         "Id":"33936",
         "ImageUrl":"/media/352108/bip.png",
         "Symbol":"BIPC",
         "FullName":"BipCoin (BIPC)"
      },
      "EMBER":{
         "Id":"33942",
         "ImageUrl":"/media/352110/emb.png",
         "Symbol":"EMBER",
         "FullName":"EmberCoin (EMBER)"
      },
      "BTTF":{
         "Id":"33945",
         "ImageUrl":"/media/352111/bttf.png",
         "Symbol":"BTTF",
         "FullName":"Coin to the Future (BTTF)"
      },
      "DLR":{
         "Id":"34213",
         "ImageUrl":"/media/352114/dollarcoin.png",
         "Symbol":"DLR",
         "FullName":"DollarOnline (DLR)"
      },
      "CSMIC":{
         "Id":"34215",
         "ImageUrl":"/media/352115/csmic.png",
         "Symbol":"CSMIC",
         "FullName":"Cosmic (CSMIC)"
      },
      "JIO":{
         "Id":"34332",
         "ImageUrl":"/media/352120/jio.png",
         "Symbol":"JIO",
         "FullName":"JIO Token (JIO)"
      },
      "IW":{
         "Id":"34334",
         "ImageUrl":"/media/352121/iw.png",
         "Symbol":"IW",
         "FullName":"iWallet (IW)"
      },
      "JNS":{
         "Id":"34440",
         "ImageUrl":"/media/352126/jns.png",
         "Symbol":"JNS",
         "FullName":"Janus (JNS)"
      },
      "TRICK":{
         "Id":"34483",
         "ImageUrl":"/media/352127/trick.png",
         "Symbol":"TRICK",
         "FullName":"TrickyCoin (TRICK)"
      },
      "DCRE":{
         "Id":"34487",
         "ImageUrl":"/media/352128/dcre.png",
         "Symbol":"DCRE",
         "FullName":"DeltaCredits (DCRE)"
      },
      "FRE":{
         "Id":"34489",
         "ImageUrl":"/media/352129/fre.png",
         "Symbol":"FRE",
         "FullName":"FreeCoin (FRE)"
      },
      "NPC":{
         "Id":"34491",
         "ImageUrl":"/media/352130/npc.png",
         "Symbol":"NPC",
         "FullName":"NPCcoin (NPC)"
      },
      "PLNC":{
         "Id":"34493",
         "ImageUrl":"/media/352131/plnc.png",
         "Symbol":"PLNC",
         "FullName":"PLNCoin (PLNC)"
      },
      "DGMS":{
         "Id":"34496",
         "ImageUrl":"/media/352132/dgms.png",
         "Symbol":"DGMS",
         "FullName":"Digigems (DGMS)"
      },
      "ARCO":{
         "Id":"34506",
         "ImageUrl":"/media/352134/arco.png",
         "Symbol":"ARCO",
         "FullName":"AquariusCoin (ARCO)"
      },
      "KURT":{
         "Id":"34602",
         "ImageUrl":"/media/352155/kurt.png",
         "Symbol":"KURT",
         "FullName":"Kurrent (KURT)"
      },
      "XCRE":{
         "Id":"34604",
         "ImageUrl":"/media/352156/xcre.png",
         "Symbol":"XCRE",
         "FullName":"Creatio (XCRE)"
      },
      "ENT":{
         "Id":"34609",
         "ImageUrl":"/media/352157/ent.jpg",
         "Symbol":"ENT",
         "FullName":"Eternity (ENT)"
      },
      "UR":{
         "Id":"34750",
         "ImageUrl":"/media/352182/ur.jpg",
         "Symbol":"UR",
         "FullName":"UR (UR)"
      },
      "MTLM3":{
         "Id":"34754",
         "ImageUrl":"/media/352183/mtmc3.png",
         "Symbol":"MTLM3",
         "FullName":"Metal Music v3 (MTLM3)"
      },
      "EUC":{
         "Id":"34849",
         "ImageUrl":"/media/1382471/euc.png",
         "Symbol":"EUC",
         "FullName":"Eurocoin (EUC)"
      },
      "CCXC":{
         "Id":"34851",
         "ImageUrl":"/media/352188/ccx.png",
         "Symbol":"CCXC",
         "FullName":"CoolinDarkCoin (CCXC)"
      },
      "BCF":{
         "Id":"34854",
         "ImageUrl":"/media/352189/btf.png",
         "Symbol":"BCF",
         "FullName":"BitcoinFast (BCF)"
      },
      "SEEDS":{
         "Id":"35027",
         "ImageUrl":"/media/352190/seeds.png",
         "Symbol":"SEEDS",
         "FullName":"SeedShares (SEEDS)"
      },
      "TKS":{
         "Id":"35124",
         "ImageUrl":"/media/35309097/tks.png",
         "Symbol":"TKS",
         "FullName":"Tokes (TKS)"
      },
      "BCCOIN":{
         "Id":"35165",
         "ImageUrl":"/media/9350709/bccoin1.png",
         "Symbol":"BCCOIN",
         "FullName":"BitConnect Coin (BCCOIN)"
      },
      "SHORTY":{
         "Id":"35226",
         "ImageUrl":"/media/352222/shorty.png",
         "Symbol":"SHORTY",
         "FullName":"ShortyCoin (SHORTY)"
      },
      "PCM":{
         "Id":"35228",
         "ImageUrl":"/media/352223/pcm.png",
         "Symbol":"PCM",
         "FullName":"Procom (PCM)"
      },
      "KC":{
         "Id":"35230",
         "ImageUrl":"/media/352224/kc.png",
         "Symbol":"KC",
         "FullName":"Kernalcoin (KC)"
      },
      "CORAL":{
         "Id":"35232",
         "ImageUrl":"/media/352225/coral.png",
         "Symbol":"CORAL",
         "FullName":"CoralPay (CORAL)"
      },
      "BamitCoin":{
         "Id":"35407",
         "ImageUrl":"/media/352236/bam.png",
         "Symbol":"BamitCoin",
         "FullName":"BAM (BAM)"
      },
      "NXC":{
         "Id":"35678",
         "ImageUrl":"/media/352248/nxc.png",
         "Symbol":"NXC",
         "FullName":"Nexium (NXC)"
      },
      "MONEY":{
         "Id":"35681",
         "ImageUrl":"/media/352249/money.png",
         "Symbol":"MONEY",
         "FullName":"MoneyCoin (MONEY)"
      },
      "BSTAR":{
         "Id":"35684",
         "ImageUrl":"/media/352250/bstar.png",
         "Symbol":"BSTAR",
         "FullName":"Blackstar (BSTAR)"
      },
      "HSP":{
         "Id":"35687",
         "ImageUrl":"/media/352251/hsp.png",
         "Symbol":"HSP",
         "FullName":"Horse Power (HSP)"
      },
      "HZT":{
         "Id":"35811",
         "ImageUrl":"/media/352291/hzt.png",
         "Symbol":"HZT",
         "FullName":"HazMatCoin (HZT)"
      },
      "CRSP":{
         "Id":"35813",
         "ImageUrl":"/media/352292/cs.png",
         "Symbol":"CRSP",
         "FullName":"CryptoSpots (CRSP)"
      },
      "XSPT":{
         "Id":"35816",
         "ImageUrl":"/media/352293/xsp.png",
         "Symbol":"XSPT",
         "FullName":"PoolStamp (XSPT)"
      },
      "CCRB":{
         "Id":"35818",
         "ImageUrl":"/media/27011026/ccrb.png",
         "Symbol":"CCRB",
         "FullName":"CryptoCarbon (CCRB)"
      },
      "BULLS":{
         "Id":"35821",
         "ImageUrl":"/media/352295/bulls.png",
         "Symbol":"BULLS",
         "FullName":"BullshitCoin (BULLS)"
      },
      "INCNT":{
         "Id":"35823",
         "ImageUrl":"/media/35650787/300x3001.jpg",
         "Symbol":"INCNT",
         "FullName":"Incent (INCNT)"
      },
      "ICON":{
         "Id":"35825",
         "ImageUrl":"/media/352297/icon.png",
         "Symbol":"ICON",
         "FullName":"Iconic (ICON)"
      },
      "NIC":{
         "Id":"35947",
         "ImageUrl":"/media/352309/nic.png",
         "Symbol":"NIC",
         "FullName":"NewInvestCoin (NIC)"
      },
      "ACN":{
         "Id":"35949",
         "ImageUrl":"/media/352310/acn.png",
         "Symbol":"ACN",
         "FullName":"AvonCoin (ACN)"
      },
      "XNG":{
         "Id":"35953",
         "ImageUrl":"/media/352311/xng.png",
         "Symbol":"XNG",
         "FullName":"Enigma (XNG)"
      },
      "XCI":{
         "Id":"35955",
         "ImageUrl":"/media/352312/xci.png",
         "Symbol":"XCI",
         "FullName":"Cannabis Industry Coin (XCI)"
      },
      "LOOK":{
         "Id":"36984",
         "ImageUrl":"/media/1381970/look.png",
         "Symbol":"LOOK",
         "FullName":"LookCoin (LOOK)"
      },
      "LOCO":{
         "Id":"36988",
         "ImageUrl":"/media/1381971/loc.png",
         "Symbol":"LOCO",
         "FullName":"Loco (LOCO)"
      },
      "MMXVI":{
         "Id":"36992",
         "ImageUrl":"/media/1381972/mmxvi.png",
         "Symbol":"MMXVI",
         "FullName":"MMXVI (MMXVI)"
      },
      "TRST":{
         "Id":"37040",
         "ImageUrl":"/media/1381975/trst.png",
         "Symbol":"TRST",
         "FullName":"TrustCoin (TRST)"
      },
      "MISCOIN":{
         "Id":"37190",
         "ImageUrl":"/media/1381981/mis.png",
         "Symbol":"MISCOIN",
         "FullName":"MIScoin (MISCOIN)"
      },
      "WOP":{
         "Id":"37191",
         "ImageUrl":"/media/1381982/wop.png",
         "Symbol":"WOP",
         "FullName":"WorldPay (WOP)"
      },
      "CQST":{
         "Id":"37195",
         "ImageUrl":"/media/1381983/cqst.png",
         "Symbol":"CQST",
         "FullName":"ConquestCoin (CQST)"
      },
      "IMPS":{
         "Id":"37204",
         "ImageUrl":"/media/1381984/imps.jpg",
         "Symbol":"IMPS",
         "FullName":"Impulse Coin (IMPS)"
      },
      "IN":{
         "Id":"37210",
         "ImageUrl":"/media/1381987/in.png",
         "Symbol":"IN",
         "FullName":"InCoin (IN)"
      },
      "CHIEF":{
         "Id":"37214",
         "ImageUrl":"/media/1381988/chief.png",
         "Symbol":"CHIEF",
         "FullName":"TheChiefCoin (CHIEF)"
      },
      "GOAT":{
         "Id":"37356",
         "ImageUrl":"/media/1381990/goat.png",
         "Symbol":"GOAT",
         "FullName":"Goat (GOAT)"
      },
      "ANAL":{
         "Id":"37359",
         "ImageUrl":"/media/1381991/anal.jpg",
         "Symbol":"ANAL",
         "FullName":"AnalCoin (ANAL)"
      },
      "RC":{
         "Id":"37361",
         "ImageUrl":"/media/1381992/rc.png",
         "Symbol":"RC",
         "FullName":"Russiacoin (RC)"
      },
      "PND":{
         "Id":"37366",
         "ImageUrl":"/media/12318184/pnd.png",
         "Symbol":"PND",
         "FullName":"PandaCoin (PND)"
      },
      "PX":{
         "Id":"37370",
         "ImageUrl":"/media/1381994/px.png",
         "Symbol":"PX",
         "FullName":"PXcoin (PX)"
      },
      "OPTION":{
         "Id":"37749",
         "ImageUrl":"/media/1381998/option.png",
         "Symbol":"OPTION",
         "FullName":"OptionCoin (OPTION)"
      },
      "AV":{
         "Id":"38026",
         "ImageUrl":"/media/1382048/av.png",
         "Symbol":"AV",
         "FullName":"Avatar Coin (AV)"
      },
      "LTD":{
         "Id":"38030",
         "ImageUrl":"/media/1382049/ltd.png",
         "Symbol":"LTD",
         "FullName":"Limited Coin (LTD)"
      },
      "UNITS":{
         "Id":"38032",
         "ImageUrl":"/media/1382050/units.png",
         "Symbol":"UNITS",
         "FullName":"GameUnits (UNITS)"
      },
      "HEEL":{
         "Id":"38035",
         "ImageUrl":"/media/1382051/heel.png",
         "Symbol":"HEEL",
         "FullName":"HeelCoin (HEEL)"
      },
      "GAKH":{
         "Id":"38277",
         "ImageUrl":"/media/1382090/gakh.png",
         "Symbol":"GAKH",
         "FullName":"GAKHcoin (GAKH)"
      },
      "GAIN":{
         "Id":"38279",
         "ImageUrl":"/media/35521188/gain.png",
         "Symbol":"GAIN",
         "FullName":"Gainfy (GAIN)"
      },
      "S8C":{
         "Id":"38310",
         "ImageUrl":"/media/1382093/s8c.png",
         "Symbol":"S8C",
         "FullName":"S88 Coin (S8C)"
      },
      "LVG":{
         "Id":"38312",
         "ImageUrl":"/media/1382094/lvg.png",
         "Symbol":"LVG",
         "FullName":"Leverage Coin (LVG)"
      },
      "DRA":{
         "Id":"38360",
         "ImageUrl":"/media/1382095/dra.png",
         "Symbol":"DRA",
         "FullName":"DraculaCoin (DRA)"
      },
      "ASAFE2":{
         "Id":"38367",
         "ImageUrl":"/media/37748011/asafe2.png",
         "Symbol":"ASAFE2",
         "FullName":"Allsafe (ASAFE2)"
      },
      "LTCR":{
         "Id":"38370",
         "ImageUrl":"/media/1382097/ltcr.png",
         "Symbol":"LTCR",
         "FullName":"LiteCreed (LTCR)"
      },
      "QBC":{
         "Id":"38371",
         "ImageUrl":"/media/19874/qbc.png",
         "Symbol":"QBC",
         "FullName":"Quebecoin (QBC)"
      },
      "XPRO":{
         "Id":"38380",
         "ImageUrl":"/media/1382098/xpro.png",
         "Symbol":"XPRO",
         "FullName":"ProCoin (XPRO)"
      },
      "ASTRAL":{
         "Id":"38959",
         "ImageUrl":"/media/1382170/ast.png",
         "Symbol":"ASTRAL",
         "FullName":"Astral (ASTRAL)"
      },
      "GIFT":{
         "Id":"38962",
         "ImageUrl":"/media/1382171/gift.png",
         "Symbol":"GIFT",
         "FullName":"GiftNet (GIFT)"
      },
      "VIDZ":{
         "Id":"38964",
         "ImageUrl":"/media/1382172/vidz.png",
         "Symbol":"VIDZ",
         "FullName":"PureVidz (VIDZ)"
      },
      "INC":{
         "Id":"38967",
         "ImageUrl":"/media/1382173/inc.png",
         "Symbol":"INC",
         "FullName":"Incrementum (INC)"
      },
      "PTA":{
         "Id":"39698",
         "ImageUrl":"/media/1382236/pta.png",
         "Symbol":"PTA",
         "FullName":"PentaCoin (PTA)"
      },
      "ACID":{
         "Id":"39700",
         "ImageUrl":"/media/1382237/acid.png",
         "Symbol":"ACID",
         "FullName":"AcidCoin (ACID)"
      },
      "ZLQ":{
         "Id":"39704",
         "ImageUrl":"/media/1382238/zlq.png",
         "Symbol":"ZLQ",
         "FullName":"ZLiteQubit (ZLQ)"
      },
      "RADI":{
         "Id":"39707",
         "ImageUrl":"/media/1382239/rad.png",
         "Symbol":"RADI",
         "FullName":"RadicalCoin (RADI)"
      },
      "RNC":{
         "Id":"39710",
         "ImageUrl":"/media/1382240/rnc.png",
         "Symbol":"RNC",
         "FullName":"ReturnCoin (RNC)"
      },
      "GOLOS":{
         "Id":"40806",
         "ImageUrl":"/media/36934978/apple-touch-icon.png",
         "Symbol":"GOLOS",
         "FullName":"Golos (GOLOS)"
      },
      "PASC":{
         "Id":"40811",
         "ImageUrl":"/media/1382247/pasc.png",
         "Symbol":"PASC",
         "FullName":"Pascal Coin (PASC)"
      },
      "TWIST":{
         "Id":"40839",
         "ImageUrl":"/media/1382250/twist1.png",
         "Symbol":"TWIST",
         "FullName":"TwisterCoin (TWIST)"
      },
      "PAYP":{
         "Id":"40842",
         "ImageUrl":"/media/1382251/payp.png",
         "Symbol":"PAYP",
         "FullName":"PayPeer (PAYP)"
      },
      "DETH":{
         "Id":"40845",
         "ImageUrl":"/media/1382252/deth.png",
         "Symbol":"DETH",
         "FullName":"DarkEther (DETH)"
      },
      "YAYCOIN":{
         "Id":"40847",
         "ImageUrl":"/media/1382253/yay.png",
         "Symbol":"YAYCOIN",
         "FullName":"YAYcoin (YAYCOIN)"
      },
      "LENIN":{
         "Id":"40992",
         "ImageUrl":"/media/1382270/lenin.png",
         "Symbol":"LENIN",
         "FullName":"LeninCoin (LENIN)"
      },
      "MRSA":{
         "Id":"41116",
         "ImageUrl":"/media/1382287/msra.png",
         "Symbol":"MRSA",
         "FullName":"MrsaCoin (MRSA)"
      },
      "OS76":{
         "Id":"41122",
         "ImageUrl":"/media/1382288/os76.png",
         "Symbol":"OS76",
         "FullName":"OsmiumCoin (OS76)"
      },
      "BOSS":{
         "Id":"41125",
         "ImageUrl":"/media/1382289/boss.png",
         "Symbol":"BOSS",
         "FullName":"BitBoss (BOSS)"
      },
      "BIC":{
         "Id":"41587",
         "ImageUrl":"/media/1382337/bic.png",
         "Symbol":"BIC",
         "FullName":"Bikercoins (BIC)"
      },
      "CRPS":{
         "Id":"41590",
         "ImageUrl":"/media/1382338/crps.png",
         "Symbol":"CRPS",
         "FullName":"CryptoPennies (CRPS)"
      },
      "MOTO":{
         "Id":"41592",
         "ImageUrl":"/media/1382339/moto.png",
         "Symbol":"MOTO",
         "FullName":"Motocoin (MOTO)"
      },
      "NTCC":{
         "Id":"41819",
         "ImageUrl":"/media/1382346/ntcc.png",
         "Symbol":"NTCC",
         "FullName":"NeptuneClassic (NTCC)"
      },
      "HXX":{
         "Id":"41868",
         "ImageUrl":"/media/1382348/hexx.jpg",
         "Symbol":"HXX",
         "FullName":"HexxCoin (HXX)"
      },
      "SPKTR":{
         "Id":"41871",
         "ImageUrl":"/media/1382349/spkr.png",
         "Symbol":"SPKTR",
         "FullName":"Ghost Coin (SPKTR)"
      },
      "MAC":{
         "Id":"41962",
         "ImageUrl":"/media/1382368/mac.png",
         "Symbol":"MAC",
         "FullName":"MachineCoin (MAC)"
      },
      "SEL":{
         "Id":"41967",
         "ImageUrl":"/media/1382369/sel.png",
         "Symbol":"SEL",
         "FullName":"SelenCoin (SEL)"
      },
      "NOO":{
         "Id":"41971",
         "ImageUrl":"/media/1382370/noo.png",
         "Symbol":"NOO",
         "FullName":"Noocoin (NOO)"
      },
      "CHAO":{
         "Id":"41974",
         "ImageUrl":"/media/1382371/chao.png",
         "Symbol":"CHAO",
         "FullName":"23 Skidoo (CHAO)"
      },
      "XGB":{
         "Id":"41989",
         "ImageUrl":"/media/1382372/xgb.png",
         "Symbol":"XGB",
         "FullName":"GoldenBird (XGB)"
      },
      "YMC":{
         "Id":"42099",
         "ImageUrl":"/media/1382380/ymc.png",
         "Symbol":"YMC",
         "FullName":"YamahaCoin (YMC)"
      },
      "JOK":{
         "Id":"42101",
         "ImageUrl":"/media/1382381/jok.png",
         "Symbol":"JOK",
         "FullName":"JokerCoin (JOK)"
      },
      "GBIT":{
         "Id":"42103",
         "ImageUrl":"/media/1382382/gbit.jpg",
         "Symbol":"GBIT",
         "FullName":"GravityBit (GBIT)"
      },
      "TEC":{
         "Id":"42106",
         "ImageUrl":"/media/1382383/tecoin.png",
         "Symbol":"TEC",
         "FullName":"TeCoin (TEC)"
      },
      "BOMBC":{
         "Id":"42110",
         "ImageUrl":"/media/1382384/bomb.png",
         "Symbol":"BOMBC",
         "FullName":"BombCoin (BOMBC)"
      },
      "RIDE":{
         "Id":"42344",
         "ImageUrl":"/media/1382388/ride.png",
         "Symbol":"RIDE",
         "FullName":"Ride My Car (RIDE)"
      },
      "KED":{
         "Id":"42435",
         "ImageUrl":"/media/1382390/ked.png",
         "Symbol":"KED",
         "FullName":"Klingon Empire Darsek (KED)"
      },
      "CNO":{
         "Id":"42438",
         "ImageUrl":"/media/1382391/coino.png",
         "Symbol":"CNO",
         "FullName":"Coino (CNO)"
      },
      "WEALTH":{
         "Id":"42440",
         "ImageUrl":"/media/1382392/wealth.png",
         "Symbol":"WEALTH",
         "FullName":"WealthCoin (WEALTH)"
      },
      "IOP":{
         "Id":"42596",
         "ImageUrl":"/media/12318262/iop.png",
         "Symbol":"IOP",
         "FullName":"Internet of People (IOP)"
      },
      "XSPEC":{
         "Id":"42598",
         "ImageUrl":"/media/1382395/xspec.png",
         "Symbol":"XSPEC",
         "FullName":"Spectre (XSPEC)"
      },
      "PEPECASH":{
         "Id":"42663",
         "ImageUrl":"/media/1382397/pepecash.png",
         "Symbol":"PEPECASH",
         "FullName":"Pepe Cash (PEPECASH)"
      },
      "CLICK":{
         "Id":"42680",
         "ImageUrl":"/media/1382399/click.png",
         "Symbol":"CLICK",
         "FullName":"Clickcoin (CLICK)"
      },
      "ELS":{
         "Id":"42685",
         "ImageUrl":"/media/39500748/els.png",
         "Symbol":"ELS",
         "FullName":"Elysium (ELS)"
      },
      "KUSH":{
         "Id":"42687",
         "ImageUrl":"/media/1382401/kush.png",
         "Symbol":"KUSH",
         "FullName":"KushCoin (KUSH)"
      },
      "ERY":{
         "Id":"42694",
         "ImageUrl":"/media/1382403/ely2.png",
         "Symbol":"ERY",
         "FullName":"Eryllium (ERY)"
      },
      "PLU":{
         "Id":"42837",
         "ImageUrl":"/media/1382431/plu.png",
         "Symbol":"PLU",
         "FullName":"Pluton (PLU)"
      },
      "PRES":{
         "Id":"42841",
         "ImageUrl":"/media/1382432/pres.png",
         "Symbol":"PRES",
         "FullName":"President Trump (PRES)"
      },
      "BTZ":{
         "Id":"42843",
         "ImageUrl":"/media/1382433/btz.png",
         "Symbol":"BTZ",
         "FullName":"BitzCoin (BTZ)"
      },
      "OPES":{
         "Id":"42850",
         "ImageUrl":"/media/1382434/opes.png",
         "Symbol":"OPES",
         "FullName":"Opes (OPES)"
      },
      "WCT":{
         "Id":"43042",
         "ImageUrl":"/media/38553084/wct.png",
         "Symbol":"WCT",
         "FullName":"Waves Community Token (WCT)"
      },
      "RATIO":{
         "Id":"43046",
         "ImageUrl":"/media/1382442/ratio.png",
         "Symbol":"RATIO",
         "FullName":"Ratio (RATIO)"
      },
      "BANC":{
         "Id":"43247",
         "ImageUrl":"/media/1382466/ban.png",
         "Symbol":"BANC",
         "FullName":"Babes and Nerds (BANC)"
      },
      "NICEC":{
         "Id":"43253",
         "ImageUrl":"/media/1382467/nice.png",
         "Symbol":"NICEC",
         "FullName":"NiceCoin (NICEC)"
      },
      "SMF":{
         "Id":"43257",
         "ImageUrl":"/media/1382468/xmf.png",
         "Symbol":"SMF",
         "FullName":"SmurfCoin (SMF)"
      },
      "CWXT":{
         "Id":"43265",
         "ImageUrl":"/media/1382470/cwxt.png",
         "Symbol":"CWXT",
         "FullName":"CryptoWorldXToken (CWXT)"
      },
      "TECH":{
         "Id":"43595",
         "ImageUrl":"/media/1382505/tech.png",
         "Symbol":"TECH",
         "FullName":"TechCoin (TECH)"
      },
      "CIR":{
         "Id":"43598",
         "ImageUrl":"/media/1382506/cir.png",
         "Symbol":"CIR",
         "FullName":"CircuitCoin (CIR)"
      },
      "LEPEN":{
         "Id":"43602",
         "ImageUrl":"/media/1382507/lepen.png",
         "Symbol":"LEPEN",
         "FullName":"LePenCoin (LEPEN)"
      },
      "ROUND":{
         "Id":"43604",
         "ImageUrl":"/media/1382508/round.png",
         "Symbol":"ROUND",
         "FullName":"RoundCoin (ROUND)"
      },
      "MARXCOIN":{
         "Id":"43818",
         "ImageUrl":"/media/1382578/marx.png",
         "Symbol":"MARXCOIN",
         "FullName":"MarxCoin (MARXCOIN)"
      },
      "HAZE":{
         "Id":"43937",
         "ImageUrl":"/media/1382595/haze.png",
         "Symbol":"HAZE",
         "FullName":"HazeCoin (HAZE)"
      },
      "PRX":{
         "Id":"43998",
         "ImageUrl":"/media/1382603/prx.png",
         "Symbol":"PRX",
         "FullName":"Printerium (PRX)"
      },
      "NRC":{
         "Id":"44001",
         "ImageUrl":"/media/1382604/nrc.png",
         "Symbol":"NRC",
         "FullName":"Neurocoin (NRC)"
      },
      "IMPCH":{
         "Id":"44007",
         "ImageUrl":"/media/1382606/impch.png",
         "Symbol":"IMPCH",
         "FullName":"Impeach (IMPCH)"
      },
      "ERR":{
         "Id":"44749",
         "ImageUrl":"/media/1382624/err.png",
         "Symbol":"ERR",
         "FullName":"ErrorCoin (ERR)"
      },
      "TIC":{
         "Id":"44752",
         "ImageUrl":"/media/1382625/tic.png",
         "Symbol":"TIC",
         "FullName":"TrueInvestmentCoin (TIC)"
      },
      "NUKE":{
         "Id":"44799",
         "ImageUrl":"/media/1382626/nuke.png",
         "Symbol":"NUKE",
         "FullName":"NukeCoin (NUKE)"
      },
      "EOC":{
         "Id":"44803",
         "ImageUrl":"/media/1382628/eoc.png",
         "Symbol":"EOC",
         "FullName":"EveryonesCoin (EOC)"
      },
      "SFC":{
         "Id":"44952",
         "ImageUrl":"/media/1382639/sfc.png",
         "Symbol":"SFC",
         "FullName":"Solarflarecoin (SFC)"
      },
      "JANE":{
         "Id":"44955",
         "ImageUrl":"/media/1382640/jane.png",
         "Symbol":"JANE",
         "FullName":"JaneCoin (JANE)"
      },
      "PARANOIA":{
         "Id":"44957",
         "ImageUrl":"/media/1382641/para.png",
         "Symbol":"PARANOIA",
         "FullName":"ParanoiaCoin (PARANOIA)"
      },
      "MASTERMINT":{
         "Id":"44959",
         "ImageUrl":"/media/1382642/mm.jpg",
         "Symbol":"MASTERMINT",
         "FullName":"MasterMint (MASTERMINT)"
      },
      "CTL":{
         "Id":"45031",
         "ImageUrl":"/media/33842977/ctl.jpg",
         "Symbol":"CTL",
         "FullName":"Citadel (CTL)"
      },
      "NDOGE":{
         "Id":"45044",
         "ImageUrl":"/media/1382650/ndoge.png",
         "Symbol":"NDOGE",
         "FullName":"NinjaDoge (NDOGE)"
      },
      "ZILBERCOIN":{
         "Id":"45250",
         "ImageUrl":"/media/35284309/zbc.png",
         "Symbol":"ZILBERCOIN",
         "FullName":"Zilbercoin (ZILBERCOIN)"
      },
      "FRST":{
         "Id":"45258",
         "ImageUrl":"/media/1382654/first.png",
         "Symbol":"FRST",
         "FullName":"FirstCoin (FRST)"
      },
      "OROCOIN":{
         "Id":"45262",
         "ImageUrl":"/media/1382656/oro.png",
         "Symbol":"OROCOIN",
         "FullName":"OroCoin (OROCOIN)"
      },
      "ALEX":{
         "Id":"45607",
         "ImageUrl":"/media/1382657/alex.png",
         "Symbol":"ALEX",
         "FullName":"Alexandrite (ALEX)"
      },
      "TBCX":{
         "Id":"45609",
         "ImageUrl":"/media/1382658/tbcx.png",
         "Symbol":"TBCX",
         "FullName":"TrashBurn (TBCX)"
      },
      "MCAR":{
         "Id":"45612",
         "ImageUrl":"/media/1382659/mcar.png",
         "Symbol":"MCAR",
         "FullName":"MasterCar (MCAR)"
      },
      "THS":{
         "Id":"45615",
         "ImageUrl":"/media/1382660/ths.png",
         "Symbol":"THS",
         "FullName":"TechShares (THS)"
      },
      "ACES":{
         "Id":"45617",
         "ImageUrl":"/media/1382661/aces.png",
         "Symbol":"ACES",
         "FullName":"AcesCoin (ACES)"
      },
      "UAEC":{
         "Id":"45816",
         "ImageUrl":"/media/1382684/uaec.png",
         "Symbol":"UAEC",
         "FullName":"United Arab Emirates Coin (UAEC)"
      },
      "EA":{
         "Id":"45821",
         "ImageUrl":"/media/1382685/ea.png",
         "Symbol":"EA",
         "FullName":"EagleCoin (EA)"
      },
      "PIE":{
         "Id":"45832",
         "ImageUrl":"/media/1382686/pie.png",
         "Symbol":"PIE",
         "FullName":"Persistent Information Exchange (PIE)"
      },
      "WISC":{
         "Id":"48794",
         "ImageUrl":"/media/1382710/wisc.jpg",
         "Symbol":"WISC",
         "FullName":"WisdomCoin (WISC)"
      },
      "BVC":{
         "Id":"48800",
         "ImageUrl":"/media/1382711/bvc.png",
         "Symbol":"BVC",
         "FullName":"BeaverCoin (BVC)"
      },
      "FIND":{
         "Id":"48807",
         "ImageUrl":"/media/1382713/find.png",
         "Symbol":"FIND",
         "FullName":"FindCoin (FIND)"
      },
      "MLITE":{
         "Id":"49600",
         "ImageUrl":"/media/1382725/mlite.png",
         "Symbol":"MLITE",
         "FullName":"MeLite (MLITE)"
      },
      "STALIN":{
         "Id":"49605",
         "ImageUrl":"/media/1382726/stalin.png",
         "Symbol":"STALIN",
         "FullName":"StalinCoin (STALIN)"
      },
      "TSE":{
         "Id":"49610",
         "ImageUrl":"/media/1382790/tato1.png",
         "Symbol":"TSE",
         "FullName":"TattooCoin (TSE)"
      },
      "VLTC":{
         "Id":"50730",
         "ImageUrl":"/media/1382738/vltc.png",
         "Symbol":"VLTC",
         "FullName":"VaultCoin (VLTC)"
      },
      "BIOB":{
         "Id":"50734",
         "ImageUrl":"/media/1382739/biob.png",
         "Symbol":"BIOB",
         "FullName":"BioBar (BIOB)"
      },
      "SWT":{
         "Id":"50741",
         "ImageUrl":"/media/1382740/swt.jpg",
         "Symbol":"SWT",
         "FullName":"Swarm City Token (SWT)"
      },
      "PASL":{
         "Id":"50754",
         "ImageUrl":"/media/1382741/pasl.png",
         "Symbol":"PASL",
         "FullName":"Pascal Lite (PASL)"
      },
      "ZER":{
         "Id":"51845",
         "ImageUrl":"/media/34155612/zer.png",
         "Symbol":"ZER",
         "FullName":"Zero (ZER)"
      },
      "CHAT":{
         "Id":"52008",
         "ImageUrl":"/media/34478301/logo_132_132_chat.png",
         "Symbol":"CHAT",
         "FullName":"OpenChat (CHAT)"
      },
      "CDN":{
         "Id":"52015",
         "ImageUrl":"/media/37747661/cdn.png",
         "Symbol":"CDN",
         "FullName":"Canada eCoin (CDN)"
      },
      "NETKO":{
         "Id":"53174",
         "ImageUrl":"/media/1382771/netko.png",
         "Symbol":"NETKO",
         "FullName":"Netko (NETKO)"
      },
      "ZOI":{
         "Id":"53178",
         "ImageUrl":"/media/27011018/zoi.png",
         "Symbol":"ZOI",
         "FullName":"Zoin (ZOI)"
      },
      "HONEY":{
         "Id":"53915",
         "ImageUrl":"/media/1382937/honey1.png",
         "Symbol":"HONEY",
         "FullName":"Honey (HONEY)"
      },
      "MXTC":{
         "Id":"53944",
         "ImageUrl":"/media/1382782/mxt.jpg",
         "Symbol":"MXTC",
         "FullName":"MartexCoin (MXTC)"
      },
      "DTB":{
         "Id":"55540",
         "ImageUrl":"/media/1382791/dtb.png",
         "Symbol":"DTB",
         "FullName":"Databits (DTB)"
      },
      "VEG":{
         "Id":"55544",
         "ImageUrl":"/media/1382792/veg.png",
         "Symbol":"VEG",
         "FullName":"BitVegan (VEG)"
      },
      "MBIT":{
         "Id":"55547",
         "ImageUrl":"/media/1382793/mbit.png",
         "Symbol":"MBIT",
         "FullName":"Mbitbooks (MBIT)"
      },
      "BITVOLT":{
         "Id":"55553",
         "ImageUrl":"/media/1382794/volt.png",
         "Symbol":"BITVOLT",
         "FullName":"BitVolt (BITVOLT)"
      },
      "EDG":{
         "Id":"55676",
         "ImageUrl":"/media/1382799/edg.jpg",
         "Symbol":"EDG",
         "FullName":"Edgeless (EDG)"
      },
      "B@":{
         "Id":"56078",
         "ImageUrl":"/media/1382804/b.png",
         "Symbol":"B@",
         "FullName":"BankCoin (B@)"
      },
      "CHC":{
         "Id":"56249",
         "ImageUrl":"/media/33842945/chc.jpg",
         "Symbol":"CHC",
         "FullName":"ChainCoin (CHC)"
      },
      "ZENI":{
         "Id":"56253",
         "ImageUrl":"/media/1382807/zen.png",
         "Symbol":"ZENI",
         "FullName":"Zennies (ZENI)"
      },
      "PLANET":{
         "Id":"56654",
         "ImageUrl":"/media/1382851/planet.png",
         "Symbol":"PLANET",
         "FullName":"PlanetCoin (PLANET)"
      },
      "DUCKD":{
         "Id":"56678",
         "ImageUrl":"/media/1382852/duckduckcoin.png",
         "Symbol":"DUCKD",
         "FullName":"DuckDuckCoin (DUCKD)"
      },
      "BNRTX":{
         "Id":"56682",
         "ImageUrl":"/media/1382853/bnx.png",
         "Symbol":"BNRTX",
         "FullName":"BnrtxCoin (BNRTX)"
      },
      "BSTK":{
         "Id":"57466",
         "ImageUrl":"/media/1382858/bstk.png",
         "Symbol":"BSTK",
         "FullName":"BattleStake (BSTK)"
      },
      "RNS":{
         "Id":"57471",
         "ImageUrl":"/media/35309730/rns.png",
         "Symbol":"RNS",
         "FullName":"RenosCoin (RNS)"
      },
      "DBIX":{
         "Id":"57481",
         "ImageUrl":"/media/1382860/dbix.png",
         "Symbol":"DBIX",
         "FullName":"DubaiCoin (DBIX)"
      },
      "AMIS":{
         "Id":"57676",
         "ImageUrl":"/media/1382862/amis.png",
         "Symbol":"AMIS",
         "FullName":"AMIS (AMIS)"
      },
      "KAYI":{
         "Id":"57705",
         "ImageUrl":"/media/1382863/kayi.png",
         "Symbol":"KAYI",
         "FullName":"Kayı (KAYI)"
      },
      "XVP":{
         "Id":"57734",
         "ImageUrl":"/media/1382865/xvp.png",
         "Symbol":"XVP",
         "FullName":"VirtacoinPlus (XVP)"
      },
      "BOAT":{
         "Id":"57742",
         "ImageUrl":"/media/1382866/boat.png",
         "Symbol":"BOAT",
         "FullName":"Doubloon (BOAT)"
      },
      "TAJ":{
         "Id":"57750",
         "ImageUrl":"/media/1382867/taj.png",
         "Symbol":"TAJ",
         "FullName":"TajCoin (TAJ)"
      },
      "CJC":{
         "Id":"58125",
         "ImageUrl":"/media/1382887/cjc.png",
         "Symbol":"CJC",
         "FullName":"CryptoJournal (CJC)"
      },
      "AMY":{
         "Id":"59304",
         "ImageUrl":"/media/1382935/amy.jpg",
         "Symbol":"AMY",
         "FullName":"Amygws (AMY)"
      },
      "EB3":{
         "Id":"59968",
         "ImageUrl":"/media/1382938/eb3.png",
         "Symbol":"EB3",
         "FullName":"EB3coin (EB3)"
      },
      "XVE":{
         "Id":"59973",
         "ImageUrl":"/media/1382937/xve.png",
         "Symbol":"XVE",
         "FullName":"The Vegan Initiative (XVE)"
      },
      "FAZZ":{
         "Id":"60409",
         "ImageUrl":"/media/1382944/fazz.png",
         "Symbol":"FAZZ",
         "FullName":"FazzCoin (FAZZ)"
      },
      "APTCOIN":{
         "Id":"60419",
         "ImageUrl":"/media/1382945/apt.png",
         "Symbol":"APTCOIN",
         "FullName":"Aptcoin (APTCOIN)"
      },
      "BLAZR":{
         "Id":"60424",
         "ImageUrl":"/media/1382946/blazr.png",
         "Symbol":"BLAZR",
         "FullName":"BlazerCoin (BLAZR)"
      },
      "ARPAC":{
         "Id":"60618",
         "ImageUrl":"/media/1382966/arpa.png",
         "Symbol":"ARPAC",
         "FullName":"ArpaCoin (ARPAC)"
      },
      "ECOC":{
         "Id":"61047",
         "ImageUrl":"/media/1382993/eco.png",
         "Symbol":"ECOC",
         "FullName":"ECOcoin (ECOC)"
      },
      "XLR":{
         "Id":"61061",
         "ImageUrl":"/media/1382994/xlr.png",
         "Symbol":"XLR",
         "FullName":"Solaris (XLR)"
      },
      "DARK":{
         "Id":"61066",
         "ImageUrl":"/media/1382995/dark.png",
         "Symbol":"DARK",
         "FullName":"Dark (DARK)"
      },
      "DONATION":{
         "Id":"61073",
         "ImageUrl":"/media/1382995/don.png",
         "Symbol":"DONATION",
         "FullName":"DonationCoin (DONATION)"
      },
      "MERCURY":{
         "Id":"61138",
         "ImageUrl":"/media/14913628/mer.png",
         "Symbol":"MERCURY",
         "FullName":"Mercury (MERCURY)"
      },
      "WGO":{
         "Id":"61667",
         "ImageUrl":"/media/1382998/wgo.png",
         "Symbol":"WGO",
         "FullName":"WavesGO (WGO)"
      },
      "ATMOS":{
         "Id":"61902",
         "ImageUrl":"/media/30002333/atmos.jpg",
         "Symbol":"ATMOS",
         "FullName":"Novusphere (ATMOS)"
      },
      "ETT":{
         "Id":"62529",
         "ImageUrl":"/media/1383046/ett.png",
         "Symbol":"ETT",
         "FullName":"EncryptoTel (ETT)"
      },
      "VISIO":{
         "Id":"62648",
         "ImageUrl":"/media/1383047/visio.png",
         "Symbol":"VISIO",
         "FullName":"Visio (VISIO)"
      },
      "HPC":{
         "Id":"62659",
         "ImageUrl":"/media/1383046/hpc.png",
         "Symbol":"HPC",
         "FullName":"HappyCoin (HPC)"
      },
      "GIOT":{
         "Id":"63304",
         "ImageUrl":"/media/1383079/got.png",
         "Symbol":"GIOT",
         "FullName":"Giotto Coin (GIOT)"
      },
      "CXT":{
         "Id":"63308",
         "ImageUrl":"/media/1383080/cxt.png",
         "Symbol":"CXT",
         "FullName":"Coinonat (CXT)"
      },
      "EMPC":{
         "Id":"63312",
         "ImageUrl":"/media/1383081/empc.png",
         "Symbol":"EMPC",
         "FullName":"EmporiumCoin (EMPC)"
      },
      "LGD":{
         "Id":"66259",
         "ImageUrl":"/media/1383085/lgd.png",
         "Symbol":"LGD",
         "FullName":"Legends Cryptocurrency (LGD)"
      },
      "TAAS":{
         "Id":"66270",
         "ImageUrl":"/media/1383085/taas.png",
         "Symbol":"TAAS",
         "FullName":"Token as a Service (TAAS)"
      },
      "BUCKS":{
         "Id":"66685",
         "ImageUrl":"/media/1383089/bucks.png",
         "Symbol":"BUCKS",
         "FullName":"SwagBucks (BUCKS)"
      },
      "XBY":{
         "Id":"66694",
         "ImageUrl":"/media/38553756/xby.png",
         "Symbol":"XBY",
         "FullName":"XTRABYTES (XBY)"
      },
      "MCRN":{
         "Id":"67430",
         "ImageUrl":"/media/1383111/mcrn.png",
         "Symbol":"MCRN",
         "FullName":"MacronCoin (MCRN)"
      },
      "CONDENSATE":{
         "Id":"67462",
         "ImageUrl":"/media/1383114/rain.png",
         "Symbol":"CONDENSATE",
         "FullName":"Condensate (CONDENSATE)"
      },
      "WSX":{
         "Id":"68084",
         "ImageUrl":"/media/1383144/wsx.png",
         "Symbol":"WSX",
         "FullName":"WeAreSatoshi (WSX)"
      },
      "IEC":{
         "Id":"68088",
         "ImageUrl":"/media/1383144/wsx.png",
         "Symbol":"IEC",
         "FullName":"IvugeoEvolutionCoin (IEC)"
      },
      "IMS":{
         "Id":"68093",
         "ImageUrl":"/media/1383145/ims.png",
         "Symbol":"IMS",
         "FullName":"Independent Money System (IMS)"
      },
      "ARGUS":{
         "Id":"70352",
         "ImageUrl":"/media/1383149/argus.png",
         "Symbol":"ARGUS",
         "FullName":"ArgusCoin (ARGUS)"
      },
      "CNT":{
         "Id":"70365",
         "ImageUrl":"/media/1383150/cnt.png",
         "Symbol":"CNT",
         "FullName":"Centurion (CNT)"
      },
      "LMC":{
         "Id":"70469",
         "ImageUrl":"/media/1383139/lmc.png",
         "Symbol":"LMC",
         "FullName":"LomoCoin (LMC)"
      },
      "BTCS":{
         "Id":"71321",
         "ImageUrl":"/media/1383158/btcs.png",
         "Symbol":"BTCS",
         "FullName":"Bitcoin Scrypt (BTCS)"
      },
      "PROC":{
         "Id":"71334",
         "ImageUrl":"/media/1383159/proc.png",
         "Symbol":"PROC",
         "FullName":"ProCurrency (PROC)"
      },
      "XGR":{
         "Id":"71862",
         "ImageUrl":"/media/1383161/xgr.png",
         "Symbol":"XGR",
         "FullName":"GoldReserve (XGR)"
      },
      "BENJI":{
         "Id":"71884",
         "ImageUrl":"/media/1383163/benji.png",
         "Symbol":"BENJI",
         "FullName":"BenjiRolls (BENJI)"
      },
      "HMQ":{
         "Id":"72438",
         "ImageUrl":"/media/1383174/hmq.png",
         "Symbol":"HMQ",
         "FullName":"Humaniq (HMQ)"
      },
      "BCAP":{
         "Id":"72955",
         "ImageUrl":"/media/1383948/bcap1.png",
         "Symbol":"BCAP",
         "FullName":"Blockchain Capital (BCAP)"
      },
      "RBX":{
         "Id":"73143",
         "ImageUrl":"/media/1383197/rbx.png",
         "Symbol":"RBX",
         "FullName":"RiptoBuX (RBX)"
      },
      "GRW":{
         "Id":"74894",
         "ImageUrl":"/media/1383234/grw.png",
         "Symbol":"GRW",
         "FullName":"GrowthCoin (GRW)"
      },
      "MILOCOIN":{
         "Id":"74924",
         "ImageUrl":"/media/1383236/milo.png",
         "Symbol":"MILOCOIN",
         "FullName":"MiloCoin (MILOCOIN)"
      },
      "OLV":{
         "Id":"75285",
         "ImageUrl":"/media/1383239/xvs.png",
         "Symbol":"OLV",
         "FullName":"OldV (OLV)"
      },
      "ILC":{
         "Id":"75440",
         "ImageUrl":"/media/37454847/ilc.png",
         "Symbol":"ILC",
         "FullName":"ILCOIN (ILC)"
      },
      "MRT":{
         "Id":"75475",
         "ImageUrl":"/media/350884/waves_1.png",
         "Symbol":"MRT",
         "FullName":"MinersReward (MRT)"
      },
      "IOU":{
         "Id":"77286",
         "ImageUrl":"/media/1383241/iou1.png",
         "Symbol":"IOU",
         "FullName":"IOU1 (IOU)"
      },
      "PZM":{
         "Id":"77306",
         "ImageUrl":"/media/1383242/pzm.jpg",
         "Symbol":"PZM",
         "FullName":"Prizm (PZM)"
      },
      "PHR":{
         "Id":"77337",
         "ImageUrl":"/media/1383243/phr.jpg",
         "Symbol":"PHR",
         "FullName":"Phreak (PHR)"
      },
      "PUPA":{
         "Id":"78172",
         "ImageUrl":"/media/1383245/pupa.png",
         "Symbol":"PUPA",
         "FullName":"PupaCoin (PUPA)"
      }
   },
   "RateLimit":{

   },
   "HasWarning":false,
   "Type":100
}
""".utf8)
    }
}
