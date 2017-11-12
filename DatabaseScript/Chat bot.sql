
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

--*********************************************************************************************************

--nhap du lieu cho bang cau hoi
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('1', ' Có tính tự lập',1,1);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('2', '  Có đầu óc suy nghĩ thực tế',1,1);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('3', ' Dễ thích nghi với môi trường mới',1,1);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('4', ' Có khả năng điều khiển các máy móc, thiết bị',1,1);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('5', ' Làm tốt các công việc thủ công như gấp giấy, cắt, dán, đan, móc',1,1);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('6', ' Thích tiếp xúc với thiên nhiên, động - thực vật',1,1);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('7', '  Thích làm công việc mang tính thực hành, tay chân',1,1);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('8', ' Thích làm những công việc mang lại kết quả thực tế',1,1);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('9', ' Thích làm việc ngoài trời hơn là trong văn phòng',1,1);

INSERT INTO `CauHoi_TNTinhCach`
VALUES ('10', 'Thích tìm hiểu, khám phá những vấn đề mới',1,2);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('11', '  Có khả năng phân tích vấn đề',1,2);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('12', ' Có tư duy logic, suy nghĩ mạch lạc, chặt chẽ',1,2);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('13', ' CThích quan sát, nghiên cứu',1,2);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('14', '  Có khả năng tổng hợp, khái quát, suy đoán',1,2);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('15', ' Thích hoạt động điều tra, phân loại, kiểm tra, đánh giá',1,2);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('16', '  Biết tự tổ chức, sắp xếp công việc',1,2);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('17', '  Thích thử thách, khó khăn',1,2);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('18', '  Có khả năng giải quyết vấn đề',1,2);


INSERT INTO `CauHoi_TNTinhCach`
VALUES ('19', ' Dễ xúc động',1,3);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('20', ' Giàu trí tưởng tượng',1,3);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('21', ' Thích tự do, không theo khuôn mẫu',1,3);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('22', ' Giỏi thuyết trình, diễn xuất',1,3);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('23', ' Thích chụp ảnh, vẽ, trang trí, điêu khắc',1,3);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('24', '  Có năng khiếu âm nhạc',1,3);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('25', ' Có khả năng viết, trình bày ý tưởng',1,3);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('26', ' Thích sự mới mẻ, những  công việc sáng tạo',1,3);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('27', ' Thoải mái biểu lộ những ý thích riêng',1,3);

INSERT INTO `CauHoi_TNTinhCach`
VALUES ('28', ' Thân thiện, hay giúp đỡ người khác',1,4);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('29', ' Thích gặp gỡ, làm việc với nhiều người',1,4);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('30', ' Lịch thiệp, tử tế',1,4);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('31', '  Thích khuyên bảo, giảng giải cho người khác',1,4);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('32', ' Biết lắng nghe, chia sẻ',1,4);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('33', ' Thích các công việc chăm sóc sức khỏe',1,4);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('34', ' Thích hoạt động công tác xã hội, phục vụ cộng đồng',1,4);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('35', ' Mong muốn được đóng góp để xã hội tốt đẹp hơn',1,4);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('36', 'Có khả năng hòa giải, giải quyết mâu thuẫn',1,4);

INSERT INTO `CauHoi_TNTinhCach`
VALUES ('37', ' Thích phiêu lưu',1,5);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('38', ' Có tính quyết đoán',1,5);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('39', ' Năng động',1,5);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('40', '  Có khả năng diễn đạt, tranh luận, thuyết phục',1,5);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('41', '  Thích làm quản lý, chỉ đạo, nhận xét, đánh giá',1,5);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('42', ' Thường đặt ra mục tiêu, kế hoạch trong cuộc sống',1,5);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('43', '  Thích tạo ảnh hưởng đối với người khác',1,5);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('44', ' Thích cạnh tranh để vượt qua người khác',1, 5);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('45', ' Muốn được mọi người kính trọng, vị nể',1, 5);

INSERT INTO `CauHoi_TNTinhCach`
VALUES ('46', '  Có đầu óc tổ chức, sắp xếp, ngăn nắp',1,6);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('47', '  Cẩn thận, tỉ mỉ',1, 6);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('48', ' Chu đáo, chính xác, đáng tin cậy',1, 6);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('49', ' Có khả năng tính toán, so sánh, ghi chép số liệu',1, 6);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('50', 'Thích công việc lưu trữ, phân loại, cập nhật thông tin',1, 6);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('51', '  Thường dự kiến về chi tiêu, ngân sách',1, 6);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('52', ' Thích làm việc có nhiệm vụ, mục tiêu rõ ràng',1, 6);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('53', '  Có khả năng lên kế hoạch, điều phối công việc',1, 6);
INSERT INTO `CauHoi_TNTinhCach`
VALUES ('54', ' Thích làm việc với con số, theo hướng dẫn, quy trình',1, 6);
--*********************************************************************************************************

INSERT INTO `NhomCauHoi`
VALUES ('1', 'Người thực tế');

INSERT INTO `NhomCauHoi`
VALUES ('2', 'Người nghiên cứu');

INSERT INTO `NhomCauHoi`
VALUES ('3', 'Người nghệ thuật');

INSERT INTO `NhomCauHoi`
VALUES ('4', ' Người xã hội');

INSERT INTO `NhomCauHoi`
VALUES ('5', ' Người kinh doanh');

INSERT INTO `NhomCauHoi`
VALUES ('6', ' Người quy củ');
--*********************************************************************************************************

INSERT INTO `ChuDe`
VALUES ('1', ' Trắc nghiệm tính cách');

INSERT INTO `ChuDe`
VALUES ('2', 'Tìm bài hát theo tâm trạng');

INSERT INTO `ChuDe`
VALUES ('1', ' 10 vạn câu hỏi vì sao');
