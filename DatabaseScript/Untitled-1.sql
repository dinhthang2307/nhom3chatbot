
DROP TABLE IF EXISTS `NhomCauHoi`;
create table `NhomCauHoi`(
`Id_NhomCauHoi`	int(11)not null AUTO_INCREMENT,
`TenNhomCauHoi` varchar(100) COLLATE utf8_unicode_ci not null, 
primary key(`Id_NhomCauHoi`)
)ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `DapAn_TNTinhCach`;
create table `DapAn_TNTinhCach`(
`Id_NhomCauHoi`	int(11)not null AUTO_INCREMENT,
`DapAn` varchar(100) COLLATE utf8_unicode_ci not null, 
primary key(`Id_NhomCauHoi`)
)ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `CauHoi_TNTinhCach`;
create table `CauHoi_TNTinhCach`(
`Id_CauHoi`	int(11)not null AUTO_INCREMENT,
`NoiDung` varchar(100) COLLATE utf8_unicode_ci not null,
 `Id_ChuDeChat`	int(11)not null,
 `NhomCauHoi` int(11) not null,
primary key(`Id_CauHoi`)
)ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `TraLoi`;
create table `TraLoi`(
`Id_CauHoi`	int(11)not null AUTO_INCREMENT,
`GmailNguoiDung` varchar(100) COLLATE utf8_unicode_ci not null,
 `DiemSo`	int(11)not null,
primary key(`Id_CauHoi`)
)ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `ChuDe`;
create table `ChuDe`(
`Id_ChuDeChat`	int(11)not null AUTO_INCREMENT,
`TenChuDe` varchar(100) COLLATE utf8_unicode_ci not null,
 primary key(`Id_ChuDeChat`)
)ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `CauHoi`;
create table `CauHoi`(
`Id_CauHoi`	int(11)not null AUTO_INCREMENT,
`CauHoi` varchar(100) COLLATE utf8_unicode_ci not null,
 `Id_DapAn`	int(11)not null,
 `Id_DanhMuc` int(11) not null,
 `ThoiGianNhap` Datetime not null,
 `Id_TacGia` int(11) not null,
 `Id_ChuDeChat` int(11) not null,
 `Id_NguoiNhap` int(11) not null,
primary key(`Id_CauHoi`)
)ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `DapAn`;
create table `DapAn`(
`Id_DapAn`	int(11)not null AUTO_INCREMENT,
`DapAn` varchar(100) COLLATE utf8_unicode_ci not null,
 primary key(`Id_DapAn`)
)ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `DanhMuc`;
create table `DanhMuc`(
`Id_DanhMuc`	int(11)not null AUTO_INCREMENT,
`TenDanhMuc` varchar(100) COLLATE utf8_unicode_ci not null,
 primary key(`Id_DanhMuc`)
)ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `TacGia_CauHoi`;
create table `TacGia_CauHoi`(
`Id_TacGia`	int(11)not null AUTO_INCREMENT,
`TenTacGia` varchar(100) COLLATE utf8_unicode_ci not null,
`TT_TacGia` varchar(100) COLLATE utf8_unicode_ci not null,
 primary key(`Id_TacGia`)
)ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `NguoiNhap`;
create table `NguoiNhap`(
`Id_NguoiNhap`	int(11)not null AUTO_INCREMENT,
`TenNguoiNhap` varchar(100) COLLATE utf8_unicode_ci not null,
 primary key(`Id_NguoiNhap`)
)ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `NguoiNhap`;
create table `NguoiNhap`(
`Id_NguoiNhap`	int(11)not null AUTO_INCREMENT,
`TenNguoiNhap` varchar(100) COLLATE utf8_unicode_ci not null,
 primary key(`Id_NguoiNhap`)
)ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `BaiHat`;
create table `BaiHat`(
`Id_BaiHat`	int(11)not null AUTO_INCREMENT,
`TenBaiHat` varchar(100) COLLATE utf8_unicode_ci not null,
`Id_TheLoai2` int(11) not null,
`Id_CaSi` int(11) not null,
`Id_TacGia` int(11) not null,
`Id_TamTrang` int(11) not null,
`Id_HoatDong` int(11) not null,
`Id_ChuDeChat` int(11) not null,
`LuotTim` int(11) not null,
 primary key(`Id_BaiHat`)
)ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `HoatDong`;
create table `HoatDong`(
`Id_HoatDong`	int(11)not null AUTO_INCREMENT,
`TenHoatDong` varchar(100) COLLATE utf8_unicode_ci not null,
 primary key(`Id_HoatDong`)
)ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `TheLoai2`;
create table `TheLoai2`(
`Id_TheLoai2`	int(11)not null AUTO_INCREMENT,
`TenTheLoai2` varchar(100) COLLATE utf8_unicode_ci not null,
`Id_TheLoai1`  int(11) not null,
 primary key(`Id_TheLoai2`)
)ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `TheLoai1`;
create table `TheLoai1`(
`Id_TheLoai1`	int(11)not null AUTO_INCREMENT,
`TenTheLoai1` varchar(100) COLLATE utf8_unicode_ci not null,
 primary key(`Id_TheLoai1`)
)ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `TacGia_BH`;
create table `TacGia_BH`(
`Id_TacGia`	int(11)not null AUTO_INCREMENT,
`TenTacGia` varchar(100) COLLATE utf8_unicode_ci not null,
`TT_TacGia`  varchar(100) COLLATE utf8_unicode_ci,
 primary key(`Id_TacGia`)
)ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `TacGia_BH`;
create table `TacGia_BH`(
`Id_TacGia`	int(11)not null AUTO_INCREMENT,
`TenTacGia` varchar(100) COLLATE utf8_unicode_ci not null,
`TT_TacGia`  varchar(100) COLLATE utf8_unicode_ci,
 primary key(`Id_TacGia`)
)ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `CaSi`;
create table `CaSi`(
`Id_CaSi`	int(11)not null AUTO_INCREMENT,
`TenCaSi` varchar(100) COLLATE utf8_unicode_ci not null,
`TT_CaSi`  varchar(100) COLLATE utf8_unicode_ci,
 primary key(`Id_CaSi`)
)ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `TamTrang`;
create table `TamTrang`(
`Id_TacGia`	int(11)not null AUTO_INCREMENT,
`TenTacGia` varchar(100) COLLATE utf8_unicode_ci not null,
`TT_TacGia`  varchar(100) COLLATE utf8_unicode_ci,
 primary key(`Id_TacGia`)
)ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `LuotTim`;
create table `LuotTim`(
`Id_BaiHat`	int(11)not null AUTO_INCREMENT,
`ThoiGian` Datetime not null,

 primary key(`Id_BaiHat`)
)ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
***********************************************************************************

ALTER TABLE DapAn_TNTinhCach ADD FOREIGN KEY(Id_NhomCauHoi) REFERENCES NhomCauHoi(Id_NhomCauHoi);
ALTER TABLE CauHoi_TNTinhCach ADD FOREIGN KEY(NhomCauHoi) REFERENCES NhomCauHoi(Id_NhomCauHoi);
ALTER TABLE TraLoi ADD FOREIGN KEY(Id_CauHoi) REFERENCES CauHoi_TNTinhCach(Id_Cauhoi);

ALTER TABLE CauHoi_TNTinhCach ADD FOREIGN KEY(Id_ChuDeChat) REFERENCES ChuDe(Id_ChuDeChat);
ALTER TABLE CauHoi ADD FOREIGN KEY(Id_ChuDeChat) REFERENCES ChuDe(Id_ChuDeChat);
ALTER TABLE CauHoi ADD FOREIGN KEY(Id_DanhMuc) REFERENCES DanhMuc(Id_DanhMuc);
ALTER TABLE CauHoi ADD FOREIGN KEY(Id_DapAn) REFERENCES DapAn(Id_DapAn);
ALTER TABLE CauHoi ADD FOREIGN KEY(Id_TacGia) REFERENCES TacGia_CauHoi(Id_TacGia);
ALTER TABLE CauHoi ADD FOREIGN KEY(Id_NguoiNhap) REFERENCES NguoiNhap(Id_NguoiNhap);
ALTER TABLE BaiHat ADD FOREIGN KEY(Id_ChuDeChat) REFERENCES ChuDe(Id_ChuDeChat);
ALTER TABLE BaiHat ADD FOREIGN KEY(Id_HoatDong) REFERENCES HoatDong(Id_HoatDong);
ALTER TABLE BaiHat ADD FOREIGN KEY(Id_TacGia) REFERENCES TacGia_BH(Id_TacGia);
ALTER TABLE BaiHat ADD FOREIGN KEY(Id_CaSi) REFERENCES CaSi(Id_CaSi);
ALTER TABLE BaiHat ADD FOREIGN KEY(Id_TamTrang) REFERENCES TamTrang(Id_TamTrang);
ALTER TABLE BaiHat ADD FOREIGN KEY(Id_TheLoai2) REFERENCES TheLoai2(Id_TheLoai2);
ALTER TABLE TheLoai2 ADD FOREIGN KEY(Id_TheLoai1) REFERENCES TheLoai1(Id_TheLoai1);
ALTER TABLE LuotTim ADD FOREIGN KEY(Id_BaiHat) REFERENCES BaiHat(Id_BaiHat);

***************************************************************************************

