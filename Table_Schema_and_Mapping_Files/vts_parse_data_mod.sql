-- Adminer 4.1.0 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

#DROP TABLE IF EXISTS `vts_parse_data`;
CREATE TABLE `vts_parse_data` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `PKT_HEADER` varchar(3) NOT NULL,
  `DEVICE_ID` varchar(10) NOT NULL,
  `PACKET_CODE` varchar(2) NOT NULL,
  `MISC_BYTES` varchar(2) NOT NULL,
  `IGN_STATUS` tinyint(4) NOT NULL COMMENT 'IGNITION STATUS',
  `ACC_DISTANCE` varchar(8) NOT NULL COMMENT 'IN KNOTS',
  `SIGNAL_STRENGTH` tinyint(4) NOT NULL COMMENT '00 TO 31. 99=> NON COVERAGE, 88 NOT CALCULATED',
  `COUNTRY_CODE` varchar(3) NOT NULL,
  `NETWORK_CODE` varchar(3) NOT NULL,
  `LOCATION_AREA_CODE` varchar(4) NOT NULL,
  `CELL_ID` varchar(4) NOT NULL,
  `NO_SATELLITE_IN_VIEW` tinyint(4) NOT NULL,
  `EXT_BATTERY_VOLTAGE` varchar(4) NOT NULL,
  `INTERNAL_BATTERY_VTG` varchar(4) NOT NULL,
  `SENSOR_INFO` varchar(2) NOT NULL,
  `DIGITAL_INPUT` varchar(2) NOT NULL,
  `IST_TIME` time NOT NULL,
  `DIGITAL_OUTPUT` varchar(2) NOT NULL,
  `ANALOG_INPUT` varchar(4) NOT NULL,
  `MAX_SPEED` varchar(3) NOT NULL,
  `GPRMC_HEADER` varchar(5) NOT NULL,
  `DATA_STATUS` varchar(1) NOT NULL DEFAULT 'A',
  `LAT_DEGREE` varchar(10) NOT NULL,
  `NS` varchar(1) NOT NULL DEFAULT 'N',
  `LAT` decimal(10,8) NOT NULL,
  `LONGITUDE_DEGREE` varchar(11) NOT NULL,
  `EW` varchar(1) NOT NULL DEFAULT 'E',
  `LONGITUDE` decimal(11,8) NOT NULL,
  `VEHICLE_DIRECTION` varchar(7) NOT NULL,
  `SPEED_KNOTS` varchar(8) NOT NULL,
  `SPEED_KMPH` decimal(5,2) NOT NULL,
  `GMT_TIME` varchar(6) NOT NULL,
  `GMT_DATE` varchar(100) NOT NULL,
  `IST_DATE` datetime NOT NULL,
  `VARIATION_SENSE` varchar(100) NOT NULL,
  `MAGNETIC_VARIATION` varchar(100) NOT NULL,
  `CHECKSUM_HEX` text NOT NULL,
  `PARSER_VERSION` varchar(10) DEFAULT NULL,
  `SERVER_PORT` varchar(16) DEFAULT NULL,
  `PARSER_VERSION_DATE` date DEFAULT NULL,
  `CREATED_DATE` DATETIME DEFAULT NULL,
  `RECORD_STATUS` varchar(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`ID`,`CREATED_DATE`),
  KEY `IDX_CREATED_DATE_LAT_LONGITUDE` (`CREATED_DATE`,`LAT`,`LONGITUDE`),
  KEY `IDX_CREATED_DATE_DEVICE_ID` (`CREATED_DATE`,`DEVICE_ID`),
  KEY `IDX_IST_DATE_DEVICE_ID` (`IST_DATE`,`DEVICE_ID`),
  KEY `IDX_DEVICE_ID_IST_DATE` (`DEVICE_ID`,`IST_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
/*!50500 PARTITION BY RANGE  COLUMNS(CREATED_DATE)
(PARTITION p01July16 VALUES LESS THAN ('2016-07-02 00:00:00') ENGINE = InnoDB,
 PARTITION p02July16 VALUES LESS THAN ('2016-07-03 00:00:00') ENGINE = InnoDB,
 PARTITION p03July16 VALUES LESS THAN ('2016-07-04 00:00:00') ENGINE = InnoDB,
 PARTITION p04July16 VALUES LESS THAN ('2016-07-05 00:00:00') ENGINE = InnoDB,
 PARTITION p05July16 VALUES LESS THAN ('2016-07-06 00:00:00') ENGINE = InnoDB,
 PARTITION p06July16 VALUES LESS THAN ('2016-07-07 00:00:00') ENGINE = InnoDB,
 PARTITION p07July16 VALUES LESS THAN ('2016-07-08 00:00:00') ENGINE = InnoDB,
 PARTITION p08July16 VALUES LESS THAN ('2016-07-09 00:00:00') ENGINE = InnoDB,
 PARTITION p09July16 VALUES LESS THAN ('2016-07-10 00:00:00') ENGINE = InnoDB,
 PARTITION p10July16 VALUES LESS THAN ('2016-07-11 00:00:00') ENGINE = InnoDB,
 PARTITION p11July16 VALUES LESS THAN ('2016-07-12 00:00:00') ENGINE = InnoDB,
 PARTITION p12July16 VALUES LESS THAN ('2016-07-13 00:00:00') ENGINE = InnoDB,
 PARTITION p13July16 VALUES LESS THAN ('2016-07-14 00:00:00') ENGINE = InnoDB,
 PARTITION p14July16 VALUES LESS THAN ('2016-07-15 00:00:00') ENGINE = InnoDB,
 PARTITION p15July16 VALUES LESS THAN ('2016-07-16 00:00:00') ENGINE = InnoDB,
 PARTITION p16July16 VALUES LESS THAN ('2016-07-17 00:00:00') ENGINE = InnoDB,
 PARTITION p17July16 VALUES LESS THAN ('2016-07-18 00:00:00') ENGINE = InnoDB,
 PARTITION p18July16 VALUES LESS THAN ('2016-07-19 00:00:00') ENGINE = InnoDB,
 PARTITION p19July16 VALUES LESS THAN ('2016-07-20 00:00:00') ENGINE = InnoDB,
 PARTITION p20July16 VALUES LESS THAN ('2016-07-21 00:00:00') ENGINE = InnoDB,
 PARTITION p21July16 VALUES LESS THAN ('2016-07-22 00:00:00') ENGINE = InnoDB,
 PARTITION p22July16 VALUES LESS THAN ('2016-07-23 00:00:00') ENGINE = InnoDB,
 PARTITION p23July16 VALUES LESS THAN ('2016-07-24 00:00:00') ENGINE = InnoDB,
 PARTITION p24July16 VALUES LESS THAN ('2016-07-25 00:00:00') ENGINE = InnoDB,
 PARTITION p25July16 VALUES LESS THAN ('2016-07-26 00:00:00') ENGINE = InnoDB,
 PARTITION p26July16 VALUES LESS THAN ('2016-07-27 00:00:00') ENGINE = InnoDB,
 PARTITION p27July16 VALUES LESS THAN ('2016-07-28 00:00:00') ENGINE = InnoDB,
 PARTITION p28July16 VALUES LESS THAN ('2016-07-29 00:00:00') ENGINE = InnoDB,
 PARTITION p29July16 VALUES LESS THAN ('2016-07-30 00:00:00') ENGINE = InnoDB,
 PARTITION p30July16 VALUES LESS THAN ('2016-07-31 00:00:00') ENGINE = InnoDB,
 PARTITION p31July16 VALUES LESS THAN ('2016-08-01 00:00:00') ENGINE = InnoDB,
 PARTITION p01Aug16 VALUES LESS THAN ('2016-08-02 00:00:00') ENGINE = InnoDB,
 PARTITION p02Aug16 VALUES LESS THAN ('2016-08-03 00:00:00') ENGINE = InnoDB,
 PARTITION p03Aug16 VALUES LESS THAN ('2016-08-04 00:00:00') ENGINE = InnoDB,
 PARTITION p04Aug16 VALUES LESS THAN ('2016-08-05 00:00:00') ENGINE = InnoDB,
 PARTITION p05Aug16 VALUES LESS THAN ('2016-08-06 00:00:00') ENGINE = InnoDB,
 PARTITION p06Aug16 VALUES LESS THAN ('2016-08-07 00:00:00') ENGINE = InnoDB,
 PARTITION p07Aug16 VALUES LESS THAN ('2016-08-08 00:00:00') ENGINE = InnoDB,
 PARTITION p08Aug16 VALUES LESS THAN ('2016-08-09 00:00:00') ENGINE = InnoDB,
 PARTITION p09Aug16 VALUES LESS THAN ('2016-08-10 00:00:00') ENGINE = InnoDB,
 PARTITION p10Aug16 VALUES LESS THAN ('2016-08-11 00:00:00') ENGINE = InnoDB,
 PARTITION p11Aug16 VALUES LESS THAN ('2016-08-12 00:00:00') ENGINE = InnoDB,
 PARTITION p12Aug16 VALUES LESS THAN ('2016-08-13 00:00:00') ENGINE = InnoDB,
 PARTITION p13Aug16 VALUES LESS THAN ('2016-08-14 00:00:00') ENGINE = InnoDB,
 PARTITION p14Aug16 VALUES LESS THAN ('2016-08-15 00:00:00') ENGINE = InnoDB,
 PARTITION p15Aug16 VALUES LESS THAN ('2016-08-16 00:00:00') ENGINE = InnoDB,
 PARTITION p16Aug16 VALUES LESS THAN ('2016-08-17 00:00:00') ENGINE = InnoDB,
 PARTITION p17Aug16 VALUES LESS THAN ('2016-08-18 00:00:00') ENGINE = InnoDB,
 PARTITION p18Aug16 VALUES LESS THAN ('2016-08-19 00:00:00') ENGINE = InnoDB,
 PARTITION p19Aug16 VALUES LESS THAN ('2016-08-20 00:00:00') ENGINE = InnoDB,
 PARTITION p20Aug16 VALUES LESS THAN ('2016-08-21 00:00:00') ENGINE = InnoDB,
 PARTITION p21Aug16 VALUES LESS THAN ('2016-08-22 00:00:00') ENGINE = InnoDB,
 PARTITION p22Aug16 VALUES LESS THAN ('2016-08-23 00:00:00') ENGINE = InnoDB,
 PARTITION p23Aug16 VALUES LESS THAN ('2016-08-24 00:00:00') ENGINE = InnoDB,
 PARTITION p24Aug16 VALUES LESS THAN ('2016-08-25 00:00:00') ENGINE = InnoDB,
 PARTITION p25Aug16 VALUES LESS THAN ('2016-08-26 00:00:00') ENGINE = InnoDB,
 PARTITION p26Aug16 VALUES LESS THAN ('2016-08-27 00:00:00') ENGINE = InnoDB,
 PARTITION p27Aug16 VALUES LESS THAN ('2016-08-28 00:00:00') ENGINE = InnoDB,
 PARTITION p28Aug16 VALUES LESS THAN ('2016-08-29 00:00:00') ENGINE = InnoDB,
 PARTITION p29Aug16 VALUES LESS THAN ('2016-08-30 00:00:00') ENGINE = InnoDB,
 PARTITION p30Aug16 VALUES LESS THAN ('2016-08-31 00:00:00') ENGINE = InnoDB,
 PARTITION p31Aug16 VALUES LESS THAN ('2016-09-01 00:00:00') ENGINE = InnoDB,
 PARTITION p01Sept16 VALUES LESS THAN ('2016-09-02 00:00:00') ENGINE = InnoDB,
 PARTITION p02Sept16 VALUES LESS THAN ('2016-09-03 00:00:00') ENGINE = InnoDB,
 PARTITION p03Sept16 VALUES LESS THAN ('2016-09-04 00:00:00') ENGINE = InnoDB,
 PARTITION p04Sept16 VALUES LESS THAN ('2016-09-05 00:00:00') ENGINE = InnoDB,
 PARTITION p05Sept16 VALUES LESS THAN ('2016-09-06 00:00:00') ENGINE = InnoDB,
 PARTITION p06Sept16 VALUES LESS THAN ('2016-09-07 00:00:00') ENGINE = InnoDB,
 PARTITION p07Sept16 VALUES LESS THAN ('2016-09-08 00:00:00') ENGINE = InnoDB,
 PARTITION p08Sept16 VALUES LESS THAN ('2016-09-09 00:00:00') ENGINE = InnoDB,
 PARTITION p09Sept16 VALUES LESS THAN ('2016-09-10 00:00:00') ENGINE = InnoDB,
 PARTITION p10Sept16 VALUES LESS THAN ('2016-09-11 00:00:00') ENGINE = InnoDB,
 PARTITION p11Sept16 VALUES LESS THAN ('2016-09-12 00:00:00') ENGINE = InnoDB,
 PARTITION p12Sept16 VALUES LESS THAN ('2016-09-13 00:00:00') ENGINE = InnoDB,
 PARTITION p13Sept16 VALUES LESS THAN ('2016-09-14 00:00:00') ENGINE = InnoDB,
 PARTITION p14Sept16 VALUES LESS THAN ('2016-09-15 00:00:00') ENGINE = InnoDB,
 PARTITION p15Sept16 VALUES LESS THAN ('2016-09-16 00:00:00') ENGINE = InnoDB,
 PARTITION p16Sept16 VALUES LESS THAN ('2016-09-17 00:00:00') ENGINE = InnoDB,
 PARTITION p17Sept16 VALUES LESS THAN ('2016-09-18 00:00:00') ENGINE = InnoDB,
 PARTITION p18Sept16 VALUES LESS THAN ('2016-09-19 00:00:00') ENGINE = InnoDB,
 PARTITION p19Sept16 VALUES LESS THAN ('2016-09-20 00:00:00') ENGINE = InnoDB,
 PARTITION p20Sept16 VALUES LESS THAN ('2016-09-21 00:00:00') ENGINE = InnoDB,
 PARTITION p21Sept16 VALUES LESS THAN ('2016-09-22 00:00:00') ENGINE = InnoDB,
 PARTITION p22Sept16 VALUES LESS THAN ('2016-09-23 00:00:00') ENGINE = InnoDB,
 PARTITION p23Sept16 VALUES LESS THAN ('2016-09-24 00:00:00') ENGINE = InnoDB,
 PARTITION p24Sept16 VALUES LESS THAN ('2016-09-25 00:00:00') ENGINE = InnoDB,
 PARTITION p25Sept16 VALUES LESS THAN ('2016-09-26 00:00:00') ENGINE = InnoDB,
 PARTITION p26Sept16 VALUES LESS THAN ('2016-09-27 00:00:00') ENGINE = InnoDB,
 PARTITION p27Sept16 VALUES LESS THAN ('2016-09-28 00:00:00') ENGINE = InnoDB,
 PARTITION p28Sept16 VALUES LESS THAN ('2016-09-29 00:00:00') ENGINE = InnoDB,
 PARTITION p29Sept16 VALUES LESS THAN ('2016-09-30 00:00:00') ENGINE = InnoDB,
 PARTITION p30Sept16 VALUES LESS THAN ('2016-10-01 00:00:00') ENGINE = InnoDB,
 PARTITION p01Oct16 VALUES LESS THAN ('2016-10-02 00:00:00') ENGINE = InnoDB,
 PARTITION p02Oct16 VALUES LESS THAN ('2016-10-03 00:00:00') ENGINE = InnoDB,
 PARTITION p03Oct16 VALUES LESS THAN ('2016-10-04 00:00:00') ENGINE = InnoDB,
 PARTITION p04Oct16 VALUES LESS THAN ('2016-10-05 00:00:00') ENGINE = InnoDB,
 PARTITION p05Oct16 VALUES LESS THAN ('2016-10-06 00:00:00') ENGINE = InnoDB,
 PARTITION p06Oct16 VALUES LESS THAN ('2016-10-07 00:00:00') ENGINE = InnoDB,
 PARTITION p07Oct16 VALUES LESS THAN ('2016-10-08 00:00:00') ENGINE = InnoDB,
 PARTITION p08Oct16 VALUES LESS THAN ('2016-10-09 00:00:00') ENGINE = InnoDB,
 PARTITION p09Oct16 VALUES LESS THAN ('2016-10-10 00:00:00') ENGINE = InnoDB,
 PARTITION p10Oct16 VALUES LESS THAN ('2016-10-11 00:00:00') ENGINE = InnoDB,
 PARTITION p11Oct16 VALUES LESS THAN ('2016-10-12 00:00:00') ENGINE = InnoDB,
 PARTITION p12Oct16 VALUES LESS THAN ('2016-10-13 00:00:00') ENGINE = InnoDB,
 PARTITION p13Oct16 VALUES LESS THAN ('2016-10-14 00:00:00') ENGINE = InnoDB,
 PARTITION p14Oct16 VALUES LESS THAN ('2016-10-15 00:00:00') ENGINE = InnoDB,
 PARTITION p15Oct16 VALUES LESS THAN ('2016-10-16 00:00:00') ENGINE = InnoDB,
 PARTITION p16Oct16 VALUES LESS THAN ('2016-10-17 00:00:00') ENGINE = InnoDB,
 PARTITION p17Oct16 VALUES LESS THAN ('2016-10-18 00:00:00') ENGINE = InnoDB,
 PARTITION p18Oct16 VALUES LESS THAN ('2016-10-19 00:00:00') ENGINE = InnoDB,
 PARTITION p19Oct16 VALUES LESS THAN ('2016-10-20 00:00:00') ENGINE = InnoDB,
 PARTITION p20Oct16 VALUES LESS THAN ('2016-10-21 00:00:00') ENGINE = InnoDB,
 PARTITION p21Oct16 VALUES LESS THAN ('2016-10-22 00:00:00') ENGINE = InnoDB,
 PARTITION p22Oct16 VALUES LESS THAN ('2016-10-23 00:00:00') ENGINE = InnoDB,
 PARTITION p23Oct16 VALUES LESS THAN ('2016-10-24 00:00:00') ENGINE = InnoDB,
 PARTITION p24Oct16 VALUES LESS THAN ('2016-10-25 00:00:00') ENGINE = InnoDB,
 PARTITION p25Oct16 VALUES LESS THAN ('2016-10-26 00:00:00') ENGINE = InnoDB,
 PARTITION p26Oct16 VALUES LESS THAN ('2016-10-27 00:00:00') ENGINE = InnoDB,
 PARTITION p27Oct16 VALUES LESS THAN ('2016-10-28 00:00:00') ENGINE = InnoDB,
 PARTITION p28Oct16 VALUES LESS THAN ('2016-10-29 00:00:00') ENGINE = InnoDB,
 PARTITION p29Oct16 VALUES LESS THAN ('2016-10-30 00:00:00') ENGINE = InnoDB,
 PARTITION p30Oct16 VALUES LESS THAN ('2016-10-31 00:00:00') ENGINE = InnoDB,
 PARTITION p31Oct16 VALUES LESS THAN ('2016-11-01 00:00:00') ENGINE = InnoDB) */;


-- 2016-10-20 06:25:12
