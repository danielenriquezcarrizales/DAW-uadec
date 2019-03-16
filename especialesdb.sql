/*
Navicat MySQL Data Transfer

Source Server         : Web
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : especialesdb

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-03-12 17:27:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `alumnos`
-- ----------------------------
DROP TABLE IF EXISTS `alumnos`;
CREATE TABLE `alumnos` (
  `Matricula` int(10) NOT NULL,
  `Nombre` char(30) DEFAULT NULL,
  `Correo` varchar(30) DEFAULT NULL,
  `Telefono` varchar(10) DEFAULT NULL,
  `Grado` char(10) DEFAULT '',
  `Id_carrera` int(10) DEFAULT NULL,
  `Id_materia` int(10) DEFAULT NULL,
  `Estatus` char(10) DEFAULT NULL,
  PRIMARY KEY (`Matricula`),
  KEY `id_carrera` (`Id_carrera`),
  KEY `id_materia` (`Id_materia`),
  CONSTRAINT `id_carrera` FOREIGN KEY (`Id_carrera`) REFERENCES `carrera` (`Id_carrera`),
  CONSTRAINT `id_materia` FOREIGN KEY (`Id_materia`) REFERENCES `materias` (`Id_materia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of alumnos
-- ----------------------------
INSERT INTO `alumnos` VALUES ('4287439', 'Ernesto Perez', 'ernesto@uadec.edu.mx', '8441027426', '3', '4', '1', 'Activo');
INSERT INTO `alumnos` VALUES ('13214207', 'Daniel Enriquez', 'daniel@uadec.edu.mx', '8441234567', '8', '2', '1', 'Activo');
INSERT INTO `alumnos` VALUES ('13214567', 'Juan Carlos', 'carlos@uadec.edu.mx', '8440128493', '9', '2', '4', 'Activo');
INSERT INTO `alumnos` VALUES ('50128535', 'Jose jimenez', 'jose@uadec.edu.mx', '8440148273', '7', '4', '3', 'Inactivo');
INSERT INTO `alumnos` VALUES ('52359036', 'Raul Martinez', 'raul@uadec.edu.mx', '8440194725', '9', '2', '2', 'Activo');

-- ----------------------------
-- Table structure for `carrera`
-- ----------------------------
DROP TABLE IF EXISTS `carrera`;
CREATE TABLE `carrera` (
  `Id_carrera` int(10) NOT NULL,
  `Nombre_carrera` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_carrera`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of carrera
-- ----------------------------
INSERT INTO `carrera` VALUES ('1', 'Ingeniero en electronica y comunicaciones');
INSERT INTO `carrera` VALUES ('2', 'Ingeniero en sistemas computacionales');
INSERT INTO `carrera` VALUES ('3', 'Ingeniero industrial y de sistemas');
INSERT INTO `carrera` VALUES ('4', 'Ingeniero en tecnologias de informacion y cominica');

-- ----------------------------
-- Table structure for `materias`
-- ----------------------------
DROP TABLE IF EXISTS `materias`;
CREATE TABLE `materias` (
  `Id_materia` int(10) NOT NULL,
  `Nombre_materia` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`Id_materia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of materias
-- ----------------------------
INSERT INTO `materias` VALUES ('1', 'Calculo diferencial');
INSERT INTO `materias` VALUES ('2', 'Programacion 1');
INSERT INTO `materias` VALUES ('3', 'Base de datos 2');
INSERT INTO `materias` VALUES ('4', 'Dibujo Tecnico');
