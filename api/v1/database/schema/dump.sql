-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: vec-fleet-crud-api-mariadb
-- Tiempo de generación: 03-02-2023 a las 10:20:02
-- Versión del servidor: 10.6.11-MariaDB
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vecfleet`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config_business`
--

CREATE TABLE `config_business` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seccion` varchar(255) NOT NULL,
  `grupo` varchar(255) NOT NULL,
  `subgrupo` varchar(255) NOT NULL,
  `parametro` varchar(255) NOT NULL,
  `valor` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `config_business`
--

INSERT INTO `config_business` (`id`, `seccion`, `grupo`, `subgrupo`, `parametro`, `valor`) VALUES
(1, 'app', '', '', 'version', '2.0.4'),
(2, 'api', 'avl', '', 'identifier_field', 'plate'),
(3, 'authentication', 'services', '', 'azure', 'false'),
(4, 'authentication', 'services', '', 'classic', 'true'),
(5, 'avl_service', '', '', 'external_timezone', 'null'),
(6, 'avl_service', '', '', 'query_timezone', 'America/Buenos_Aires'),
(7, 'avl_service', '', '', 'service', 'uboro'),
(8, 'avl_service', '', '', 'timezone', '0'),
(9, 'avl_service', 'alertasGeotab', '', 'habilitado', 'false'),
(10, 'avl_service', 'alertasGeotab', '', 'umbralHora', '72'),
(11, 'bases', 'centroCostos', '', 'habilitado', 'false'),
(12, 'bases', 'atributosCedis', '', 'habilitado', 'false'),
(13, 'centrosCosto', '', '', 'camposExtras', 'true'),
(14, 'checklist', '', '', 'generarRop', 'false'),
(15, 'checklist', '', '', 'habilitado', 'true'),
(16, 'checklist', '', '', 'toleranciaUbicacion', '250'),
(17, 'checklist', 'atributosDinamicos', '', 'mostrarInactivos', 'true'),
(18, 'checklist', 'pais', '', 'habilitado', 'true'),
(19, 'combustibles', '', '', 'habilitado', 'true'),
(20, 'combustibles', '', '', 'porcentajeLitrosCargados', '10'),
(21, 'combustibles', '', '', 'proveedores_habilitados', 'EDENREDMXC,TICKETLOG'),
(22, 'combustibles', '', '', 'toleranciaUbicacion', '500'),
(23, 'combustibles', '', '', 'unidadDefault', '999999'),
(24, 'combustibles', '', '', 'usarUnidadDefault', 'true'),
(25, 'combustibles', '', '', 'toleranciaRendimientoInferior', '10'),
(26, 'combustibles', '', '', 'toleranciaRendimientoSuperior', '30'),
(27, 'combustibles', 'centroCostos', '', 'calculoMoviles', 'responsables'),
(28, 'combustibles', '', '', 'tarjetaSaldo', 'true'),
(29, 'combustibles', 'importar', '', 'fila_encabezado', '6'),
(30, 'combustibles', '', '', 'limiteOdometroMensual', '30000'),
(31, 'combustibles', 'controlDistanciaEntreCargas', '', 'habilitado', 'true'),
(32, 'combustibles', 'controlDistanciaEntreCargas', '', 'kilometros', '100'),
(33, 'combustibles', 'controlConductor', '', 'habilitado', 'true'),
(34, 'combustibles', 'controlConductor', '', 'tipoControl', 'legajo'),
(35, 'combustibles', 'controlConductor', '', 'grilla', 'true'),
(36, 'combustibles', 'pais', '', 'habilitado', 'true'),
(37, 'combustibles', 'unidad', '', 'grilla', 'false'),
(38, 'combustibles', 'base', '', 'grilla', 'false'),
(39, 'combustibles', 'ubicacion', '', 'obligatorio', 'true'),
(40, 'crons', 'noReportan', '', 'intervalo', '72'),
(41, 'dashboard', '', '', 'asignacionGerenciador', 'true'),
(42, 'dashboard', '', '', 'enReparacion', 'true'),
(43, 'dashboard', '', '', 'estadoOperativo', 'true'),
(44, 'dashboard', 'kpiActivos', '', 'habilitado', 'true'),
(45, 'dashboard', 'kpiActivos', '', 'posicion', '1'),
(46, 'dashboard', 'kpiActivos', '', 'titulo', 'Móviles Cargados'),
(47, 'dashboard', 'kpiAlertaCombustibles', '', 'habilitado', 'true'),
(48, 'dashboard', 'kpiAlertaDocChoferVencida', '', 'habilitado', 'true'),
(49, 'dashboard', 'kpiAlertaDocMovilVencida', '', 'habilitado', 'true'),
(50, 'dashboard', 'kpiAlertaDTC', '', 'habilitado', 'true'),
(51, 'dashboard', 'kpiAlertaEnTaller', '', 'habilitado', 'true'),
(52, 'dashboard', 'kpiAlertaInfAbonadas', '', 'habilitado', 'true'),
(53, 'dashboard', 'kpiAlertaInfPendienteConfirmacion', '', 'habilitado', 'true'),
(54, 'dashboard', 'kpiAlertaInfPendientePago', '', 'habilitado', 'true'),
(55, 'dashboard', 'kpiAlertaInfracciones', '', 'habilitado', 'true'),
(56, 'dashboard', 'kpiAlertaInfTotal', '', 'habilitado', 'true'),
(57, 'dashboard', 'kpiAlertaSinGps', '', 'habilitado', 'true'),
(58, 'dashboard', 'kpiAprobados', '', 'habilitado', 'true'),
(59, 'dashboard', 'kpiAprobados', '', 'posicion', '10'),
(60, 'dashboard', 'kpiAprobados', '', 'titulo', 'Tickets Aprobados'),
(61, 'dashboard', 'kpiCorrectivos', '', 'habilitado', 'true'),
(62, 'dashboard', 'kpiEnComodato', '', 'habilitado', 'false'),
(63, 'dashboard', 'kpiEnComodato', '', 'posicion', '4'),
(64, 'dashboard', 'kpiEnComodato', '', 'titulo', 'Móviles En Comodato'),
(65, 'dashboard', 'kpiEnTaller', '', 'habilitado', 'true'),
(66, 'dashboard', 'kpiEnTaller', '', 'posicion', '5'),
(67, 'dashboard', 'kpiEnTaller', '', 'titulo', 'Móviles En Taller'),
(68, 'dashboard', 'kpiFueraDeServicio', '', 'habilitado', 'false'),
(69, 'dashboard', 'kpiFueraDeServicio', '', 'posicion', '3'),
(70, 'dashboard', 'kpiFueraDeServicio', '', 'titulo', 'Móviles Fuera de Servicio'),
(71, 'dashboard', 'kpiGestoria', '', 'habilitado', 'true'),
(72, 'dashboard', 'kpiListoParaRetirar', '', 'habilitado', 'true'),
(73, 'dashboard', 'kpiListoParaRetirar', '', 'posicion', '9'),
(74, 'dashboard', 'kpiListoParaRetirar', '', 'titulo', 'Tickets Listos para Retirar'),
(75, 'dashboard', 'kpiMovilesDisponibles', '', 'habilitado', 'true'),
(76, 'dashboard', 'kpiMovilesDisponibles', '', 'posicion', '2'),
(77, 'dashboard', 'kpiMovilesDisponibles', '', 'titulo', 'Móviles Disponibles'),
(78, 'dashboard', 'kpiNoOperativos', '', 'habilitado', 'true'),
(79, 'dashboard', 'kpiNoOperativos', '', 'posicion', '11'),
(80, 'dashboard', 'kpiNoOperativos', '', 'titulo', 'Móviles No Operativos'),
(81, 'dashboard', 'kpiPresupuestados', '', 'habilitado', 'true'),
(82, 'dashboard', 'kpiPresupuestados', '', 'posicion', '8'),
(83, 'dashboard', 'kpiPresupuestados', '', 'titulo', 'Tickets Presupuestados'),
(84, 'dashboard', 'kpiPreventivos', '', 'habilitado', 'true'),
(85, 'dashboard', 'kpiSinGps', '', 'habilitado', 'true'),
(86, 'dashboard', 'kpiSinGps', '', 'posicion', '6'),
(87, 'dashboard', 'kpiSinGps', '', 'titulo', 'Móviles No Reportan'),
(88, 'dashboard', 'kpiTicketsEnGestion', '', 'habilitado', 'true'),
(89, 'dashboard', 'kpiTicketsEnGestion', '', 'posicion', '7'),
(90, 'dashboard', 'kpiTicketsEnGestion', '', 'titulo', 'Tickets En Gestión'),
(91, 'dashboard', 'kpiVencimientosMoviles', '', 'habilitado', 'true'),
(92, 'dashboard', 'kpiVencimientosPersonas', '', 'habilitado', 'false'),
(93, 'direccion', '', '', 'latitud', '19.39068'),
(94, 'direccion', '', '', 'longitud', '-99.2836996'),
(95, 'facturas', 'region', '', 'habilitado', 'false'),
(96, 'facturas', 'sap', '', 'habilitado', 'false'),
(97, 'facturas', 'subregion', '', 'habilitado', 'false'),
(98, 'facturas', 'tickets', '', 'estado', 'CERRADO'),
(99, 'frontend', '', '', 'googleMapsKey', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(100, 'frontend', '', '', 'multilenguaje', '[]'),
(101, 'frontend', '', '', 'showLogout', 'true'),
(102, 'frontend', '', '', 'traccarHash', ''),
(103, 'frontend', '', '', 'urlAvl', ''),
(104, 'frontend', '', '', 'timezoneDefault', 'America/Argentina/Buenos_Aires'),
(105, 'frontend', 'loginInstancia', '', 'habilitado', 'true'),
(106, 'generales', '', '', 'codigoCompania', 'etionic'),
(107, 'generales', '', '', 'mostrarBotonGooglePlay', 'true'),
(108, 'infracciones', '', '', 'estadosMovil', '0KM,OPERATIVO,COMODATO,A REMATE'),
(109, 'infracciones', '', '', 'fuentes', ''),
(110, 'infracciones', '', '', 'habilitado', 'true'),
(111, 'infracciones', '', '', 'toleranciaUbicacion', '1000'),
(112, 'infracciones', '', '', 'diasVencimiento', '10'),
(113, 'llantas', '', '', 'causasDeBaja', 'ALTA PRESION,CORTE EN EL COSTADO,DESGARRE DE HOMBRO,DESGARRE DE BANDA DE RODAMIENTO,DESGASTE EXCESIVO,DESPEGUE DE BANDA,DISTENCION DE ALAMBRES,FATIGA DE CARCASA,FIN DE CICLO,FRICCION EN EL COSTADO,RECHAZO RASPADO,REPARACION FUERA DE LIMITE,REPARACION NO TECNICA,SEPACION DE CINTURONES,SEPARACION DE LONAS'),
(114, 'llantas', '', '', 'diferenciaEntreDosMediciones', '5'),
(115, 'llantas', '', '', 'estadoAlmacen', 'EN_ESTADO_ALMACEN_1,EN_ESTADO_ALMACEN_2,EN_ESTADO_ALMACEN_2'),
(116, 'llantas', '', '', 'estadoAsignada', 'ASIGNADA'),
(117, 'llantas', '', '', 'estadoBaja', 'NO_ACTIVO'),
(118, 'llantas', '', '', 'estadoEnRecapado', 'EN_RECAPADO'),
(119, 'llantas', '', '', 'estadoEnTaller', 'EN_TALLER'),
(120, 'llantas', '', '', 'estadoEnTallerLabel', 'EN_TALLER'),
(121, 'llantas', '', '', 'estados', 'EN REPARACION,EN REENCAUCHE,FVU,EN TALLER,ACTIVA'),
(122, 'llantas', '', '', 'habilitado', 'true'),
(123, 'llantas', '', '', 'servicioGomeriaId', '19'),
(124, 'llantas', '', '', 'servicioRecapadoId', '177'),
(125, 'llantas', '', '', 'tareasGomeria', '531'),
(126, 'llantas', '', '', 'ultimaMedicionDiasAlerta', '10'),
(127, 'llantas', '', '', 'bandas', 'INDELBAND,GRADER,BDR_HG,AHT3,ZT,LTG,THY,ISR,BUILD - UP,B104,BT - 220,HWL,BDR - HG,RTP,HDC1,BDM,UDR,ESY,BDL,ZAP,WHL,T4100,CB,BT220,WBL,BRX,HDR,KERS'),
(128, 'llantas', 'kpis', '', 'diasDesdeUltimaInspeccion', '2'),
(129, 'llantas', 'importar', '', 'fila_encabezado', '1'),
(130, 'mantenimientos', 'correctivo', '', 'tareasAsignables', 'true'),
(131, 'mantenimientos', 'correctivo', 'abono', 'habilitado', 'false'),
(132, 'mantenimientos', 'correctivo', 'gerenciadores', 'habilitado', 'false'),
(133, 'mantenimientos', 'gestoria', '', 'habilitado', 'true'),
(134, 'mantenimientos', 'vencimiento', 'autogestion', 'valorPorDefecto', 'false'),
(135, 'mantenimientos', 'preventivo', 'autogestion', 'valorPorDefecto', 'false'),
(136, 'moviles', '', '', 'estados', '0KM,OPERATIVO,COMODATO,FUERA DE SERVICIO,VENDIDO,INEXISTENTE,BAJA POR ROBO,BAJA POR SINIESTRO,A REMATE'),
(137, 'moviles', '', '', 'estadosActivos', '0KM,OPERATIVO,COMODATO,A REMATE'),
(138, 'moviles', '', '', 'estadosFiltroGeneracionPreventivos', 'OPERATIVO'),
(139, 'moviles', '', '', 'estadosFiltroGeneracionVencimientos', 'OPERATIVO'),
(140, 'moviles', '', '', 'estadosInactivos', 'FUERA DE SERVICIO,VENDIDO,INEXISTENTE,BAJA POR ROBO,BAJA POR SINIESTRO'),
(141, 'moviles', '', '', 'estadosMovilesEnFlota', '0KM,OPERATIVO'),
(142, 'moviles', '', '', 'estadosResaltados', 'FUERA DE SERVICIO,COMODATO,A REMATE'),
(143, 'moviles', 'estadosErp', '', 'habilitado', 'true'),
(144, 'moviles', 'estadosErp', '', 'activos', 'Disp,Mont'),
(145, 'moviles', 'estadosErp', '', 'inactivos', 'Mont NoAc,Mont NoAc PTBO'),
(146, 'moviles', 'estadosErp', '', 'activoDefault', 'OPERATIVO'),
(147, 'moviles', 'estadosErp', '', 'inactivoDefault', 'FUERA DE SERVICIO'),
(148, 'moviles', 'estadosErp', '', 'estadoErpActivoDefault', 'Disp'),
(149, 'moviles', 'estadosErp', '', 'estadoErpInactivoDefault', 'Mont NoAc'),
(150, 'moviles', '', '', 'toleranciaUbicacion', '250'),
(151, 'moviles', '', '', 'visualizar_restringido', 'false'),
(152, 'moviles', 'alturaEspacioCarga', '', 'obligatorio', 'false'),
(153, 'moviles', 'anchoEspacioCarga', '', 'obligatorio', 'false'),
(154, 'moviles', 'anio', '', 'obligatorio', 'true'),
(155, 'moviles', 'base', '', 'habilitado', 'false'),
(156, 'moviles', 'base', '', 'grilla', 'true'),
(157, 'moviles', 'base', '', 'mostrarEnDatosGenerales', 'true'),
(158, 'moviles', 'cantidadCompartimentos', '', 'obligatorio', 'false'),
(159, 'moviles', 'cebe', '', 'habilitado', 'false'),
(160, 'moviles', 'cebe', '', 'obligatorio', 'false'),
(161, 'moviles', 'centroCostos', '', 'grilla', 'false'),
(162, 'moviles', 'centroCostos', '', 'habilitado', 'true'),
(163, 'moviles', 'centroCostos', '', 'obligatorio', 'true'),
(164, 'moviles', 'centroCostos', '', 'diasHistoricoMaximo', '30'),
(165, 'moviles', 'cecosDireccion', '', 'grilla', 'false'),
(166, 'moviles', 'cecosMercado', '', 'grilla', 'false'),
(167, 'moviles', 'cecosGerencia', '', 'grilla', 'false'),
(168, 'moviles', 'cecosArea', '', 'grilla', 'false'),
(169, 'moviles', 'centroCostosResponsable', '', 'habilitado', 'false'),
(170, 'moviles', 'centroCostosResponsable', '', 'obligatorio', 'false'),
(171, 'moviles', 'chasis', '', 'habilitado', 'false'),
(172, 'moviles', 'chasis', '', 'grilla', 'true'),
(173, 'moviles', 'chasis', '', 'obligatorio', 'true'),
(174, 'moviles', 'color', '', 'habilitado', 'true'),
(175, 'moviles', 'movilCombustibleTipo', '', 'obligatorio', 'false'),
(176, 'moviles', 'companiaOrigen', '', 'habilitado', 'false'),
(177, 'moviles', 'companiaOrigen', '', 'grilla', 'false'),
(178, 'moviles', 'companiaOrigen', '', 'inputType', 'text'),
(179, 'moviles', 'companiaOrigen', '', 'obligatorio', 'false'),
(180, 'moviles', 'companiaOrigen', '', 'valores', ' '),
(181, 'moviles', 'dnrpaSeccional', '', 'obligatorio', 'false'),
(182, 'moviles', 'editaKm', '', 'habilitado', 'true'),
(183, 'moviles', 'editaKm', '', 'maximo', '1000'),
(184, 'moviles', 'estado', '', 'habilitado', 'true'),
(185, 'moviles', 'fechaAlta', '', 'obligatorio', 'true'),
(186, 'moviles', 'fechaFinGarantia', '', 'obligatorio', 'false'),
(187, 'moviles', 'importar', '', 'fila_encabezado', '1'),
(188, 'moviles', 'longitudEspacioCarga', '', 'obligatorio', 'false'),
(189, 'moviles', 'lugarGuarda', '', 'obligatorio', 'false'),
(190, 'moviles', 'marca', '', 'obligatorio', 'true'),
(191, 'moviles', 'modelo', '', 'obligatorio', 'true'),
(192, 'moviles', 'motor', '', 'obligatorio', 'true'),
(193, 'moviles', 'nroDnrpa', '', 'obligatorio', 'false'),
(194, 'moviles', 'patente', '', 'patentesValidas', '((^|^(101))[a-zA-Z]{2,2}[0-9]{3,3}[a-zA-Z]{2,2}$)|((^|^(101))[a-zA-Z]{3,3}[0-9]{3,3}$)|((^)[a-zA-Z]{4,4}[0-9]{2,2}$)|((^)[0-9]{4,4}[a-zA-Z]{3,3}$)|((^)[a-zA-Z]{2,2}[0-9]{4,4}$)|((^)[0-9]{6,6}$)|((^)[a-zA-Z]{1,1}[0-9]{6,6}$)'),
(195, 'moviles', 'patente', '', 'validaPatentes', 'false'),
(196, 'moviles', 'funcion', '', 'habilitado', 'true'),
(197, 'moviles', 'pesoCargaMaxima', '', 'obligatorio', 'false'),
(198, 'moviles', 'pesoCargaTotalAutorizado', '', 'obligatorio', 'false'),
(199, 'moviles', 'poliza', '', 'habilitado', 'true'),
(200, 'moviles', 'pais', '', 'grilla', 'true'),
(201, 'moviles', 'region', '', 'obligatorio', 'false'),
(202, 'moviles', 'region', '', 'grilla', 'false'),
(203, 'moviles', 'subRegion', '', 'grilla', 'true'),
(204, 'moviles', 'responsable1', '', 'grilla', 'false'),
(205, 'moviles', 'titular', '', 'habilitado', 'false'),
(206, 'moviles', 'titular', '', 'grilla', 'false'),
(207, 'moviles', 'titular', '', 'inputType', 'text'),
(208, 'moviles', 'titular', '', 'label', 'Titular'),
(209, 'moviles', 'titular', '', 'obligatorio', 'false'),
(210, 'moviles', 'titular', '', 'valores', ' '),
(211, 'moviles', 'traccion', '', 'obligatorio', 'false'),
(212, 'moviles', 'unidad', '', 'grilla', 'true'),
(213, 'moviles', 'valorAdquisicion', '', 'obligatorio', 'false'),
(214, 'moviles', 'valorAlquiler', '', 'obligatorio', 'false'),
(215, 'moviles', 'valorAmortizacion', '', 'obligatorio', 'false'),
(216, 'moviles', 'valorContable', '', 'obligatorio', 'false'),
(217, 'moviles', 'volumenAreaCarga', '', 'obligatorio', 'false'),
(218, 'moviles', 'ypfRuta', '', 'habilitado', 'true'),
(219, 'moviles', 'planMantPreventivo', '', 'obligatorio', 'false'),
(220, 'moviles', '', '', 'rendimientoLitrosCada100km', 'true'),
(221, 'moviles', 'kmActual', '', 'obligatorio', 'false'),
(222, 'personas', '', '', 'nroDocFormatosValidos', '((^)[0-9]{1,20}$)'),
(223, 'personas', 'base', '', 'obligatorio', 'true'),
(224, 'personas', 'centroCostos', '', 'habilitado', 'true'),
(225, 'personas', 'centroCostos', '', 'obligatorio', 'true'),
(226, 'personas', 'centroCostos', '', 'origen', ' '),
(227, 'personas', 'companiaOrigen', '', 'habilitado', 'false'),
(228, 'personas', 'ypfRuta', '', 'habilitado', 'true'),
(229, 'planesMantenimiento', 'vencimiento', '', 'habilitado', 'true'),
(230, 'pointer', '', '', 'modeloMovil', '118'),
(231, 'pointer', '', '', 'perfilJefeBase', '118'),
(232, 'pointer', '', '', 'disableFields', 'false'),
(233, 'geotab', '', '', 'modeloMovil', '118'),
(234, 'geotab', '', '', 'perfilJefeBase', '118'),
(235, 'geotab', '', '', 'disableFields', 'false'),
(236, 'servicios', '', '', 'noAutogestionables', '37'),
(237, 'servicios', 'alertaDiasPrevios', '', 'habilitado', 'false'),
(238, 'servicios', 'alertaDiasPrevios', '', 'valor', '7'),
(239, 'servicios', 'costoEscribania', '', 'habilitado', 'false'),
(240, 'servicios', 'costoEscribania', '', 'valor', '13'),
(241, 'servicios', 'costoFormularios', '', 'habilitado', 'false'),
(242, 'servicios', 'costoFormularios', '', 'valor', '15'),
(243, 'servicios', 'costoGestoria', '', 'habilitado', 'false'),
(244, 'servicios', 'costoGestoria', '', 'valor', '14'),
(245, 'servicios', 'emisionDiasPrevios', '', 'habilitado', 'false'),
(246, 'servicios', 'emisionDiasPrevios', '', 'valor', '5'),
(247, 'servicios', 'montoAutoAprobacion', '', 'habilitado', 'false'),
(248, 'servicios', 'vencimientoMesesDuracion', '', 'habilitado', 'false'),
(249, 'servicios', 'vencimientoMesesDuracion', '', 'valor', '12'),
(250, 'servicios', 'repuestos', '', 'habilitado', 'true'),
(251, 'tareas', 'montoAutoAprobacion', '', 'habilitado', 'true'),
(252, 'tareas', 'precio', '', 'habilitado', 'true'),
(253, 'tickets', 'exportarCsv', '', 'cantidadMinima', '10000'),
(254, 'tickets', 'cambiosEstados', 'APROBAR_AUDITOR', 'categoria', '8'),
(255, 'tickets', 'centroBeneficiosGrilla', '', 'habilitado', 'false'),
(256, 'tickets', 'centroCostos', '', 'calculoMoviles', 'movil'),
(257, 'tickets', 'centroCostos', '', 'calculoPersonas', 'persona'),
(258, 'tickets', 'centroCostosGrilla', '', 'habilitado', 'false'),
(259, 'tickets', 'estadoPresupuestadoSV', '', 'habilitado', 'false'),
(260, 'tickets', 'imprimirTicket', '', 'habilitado', 'true'),
(261, 'tickets', 'inmovilizado', '', 'habilitado', 'true'),
(262, 'tickets', 'inmovilizado', '', 'exporta_detalle_tareas', 'false'),
(263, 'tickets', 'montoAutoAprobacion', '', 'habilitado', 'true'),
(264, 'tickets', 'fechaHoraTurno', '', 'habilitado', 'false'),
(265, 'tickets', 'preventivos', '', 'cantidadAGenerarPorDia', '200'),
(266, 'tickets', 'preventivos', '', 'umbralDias', '40'),
(267, 'tickets', 'preventivos', '', 'umbralKm', '1000'),
(268, 'tickets', 'region', '', 'habilitado', 'false'),
(269, 'tickets', 'region', '', 'grilla', 'false'),
(270, 'tickets', 'responsable1', '', 'habilitado', 'true'),
(271, 'tickets', 'tareasCierre', '', 'habilitado', 'true'),
(272, 'tickets', 'tareasCierre', '', 'montosRepuesto', 'true'),
(273, 'tickets', 'trabajaConNivelesDeAprobacion', '', 'habilitado', 'false'),
(274, 'tickets', 'trabajaConNivelesDeAprobacion', '', 'grilla', 'false'),
(275, 'tickets', 'trabajaConNivelesDeAprobacion', '', 'montoMaximoAprobacionN1', '2000'),
(276, 'tickets', 'trabajaConNivelesDeAprobacion', '', 'montoMaximoAprobacionN2', '4000'),
(277, 'tickets', 'adjuntoPresupuesto', '', 'obligatorio', 'true'),
(278, 'tickets', 'comparativaPrecios', '', 'habilitado', 'true'),
(279, 'tickets', 'comparativaPrecios', '', 'porcentajeAmarillo', '15'),
(280, 'tickets', 'comparativaPrecios', '', 'porcentajeRojo', '30'),
(281, 'tickets', 'solicitarEncuestaSatisfaccion', '', 'grillaHabilitado', 'true'),
(282, 'tickets', 'solicitarEncuestaSatisfaccion', '', 'correctivo', 'true'),
(283, 'tickets', 'solicitarEncuestaSatisfaccion', '', 'preventivo', 'true'),
(284, 'tickets', 'solicitarEncuestaSatisfaccion', '', 'vencimiento', 'true'),
(285, 'tickets', 'reemplazoVehiculo', '', 'habilitado', 'true'),
(286, 'tickets', 'OTAsociada', '', 'habilitado', 'true'),
(287, 'tickets', 'fechaRealizado', '', 'diasAnterioresPermitido', '30'),
(288, 'tickets', 'editarKmRealizado', '', 'habilitado', 'true'),
(289, 'tickets', 'periodoGarantia', '', 'habilitado', 'true'),
(290, 'tickets', 'periodoGarantia', '', 'periodoDias', '30'),
(291, 'tickets', 'alertaCheckList', '', 'habilitado', 'true'),
(292, 'tickets', 'movil', '', 'modelo', 'true'),
(293, 'tickets', 'informaFechaApertura', '', 'habilitado', 'true'),
(294, 'tickets', 'informaFechaInicioReparacion', '', 'habilitado', 'true'),
(295, 'tickets', 'informaFechaFinReparacion', '', 'habilitado', 'true'),
(296, 'tickets', 'informaFechaSalidaTaller', '', 'habilitado', 'true'),
(297, 'tickets', 'envioTicketERP', '', 'habilitado', 'true'),
(298, 'tickets', 'trabajaConRepuestos', '', 'habilitado', 'false'),
(299, 'tickets', 'generacionMasiva', '', 'habilitado', 'true'),
(300, 'notificaciones', '', '', 'agrupacion', 'false'),
(301, 'notificaciones', '', '', 'sincronizacionSapDestinatarioEmail', 'xxxxxx@vecfleet.io'),
(302, 'notificaciones', '', '', 'cambioEstadoMovil', 'true'),
(303, 'rop', '', '', 'habilitado', 'false'),
(304, 'rop', '', '', 'gerenciador', '10'),
(305, 'mtek', '', '', 'url', 'http://apiq.solistica.com/maintenance/CustomerTransactions/postMsgToEam'),
(306, 'mtek', '', '', 'habilitado', 'false'),
(307, 'mtek', '', '', 'servicioPorDefectoORSinCotizacion', ''),
(308, 'mtek', 'cotizacion', '', 'diasCancelacionAutomatica', '30'),
(309, 'mtek', '', '', 'empresa', 'HEINEKEN'),
(310, 'controles', '', '', 'diasPreventivo', '7'),
(311, 'controles', '', '', 'diasVencimiento', '7'),
(312, 'controles', '', '', 'proveedores_online', 'COPEC,EDENREDMXC,EDENREDARG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_02_140342_create_config_business_table', 1),
(6, '2023_02_02_163239_create_pais_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `abreviatura` varchar(3) NOT NULL,
  `moneda_nombre` varchar(100) DEFAULT NULL,
  `moneda_codigo_iso` varchar(20) DEFAULT NULL,
  `moneda_simbolo` varchar(10) DEFAULT NULL,
  `moneda_simbolo_font` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`id`, `nombre`, `abreviatura`, `moneda_nombre`, `moneda_codigo_iso`, `moneda_simbolo`, `moneda_simbolo_font`) VALUES
(1, 'ARGENTINA', 'ARG', 'PESO ARGENTINO', 'ARS', '$', '$'),
(2, 'BOLIVIA', 'BOL', 'BOLIVIANO', 'BOB', 'Bs.', 'Bs.'),
(3, 'BRASIL', 'BRA', 'REAL BRASILEÑO', 'BRL', 'R$', 'R$'),
(4, 'CHILE', 'CHL', 'PESO CHILENO', 'CLP', '$', '$'),
(5, 'COLOMBIA', 'COL', 'PESO COLOMBIANO', 'COP', '$', '$'),
(6, 'COSTA RICA', 'CRI', 'COLÓN COSTARRICENSE', 'CRC', '₡', '₡'),
(7, 'ECUADOR', 'ECU', 'DÓLAR ESTADOUNIDENSE', 'USD', '$', '$'),
(8, 'EL SALVADOR', 'SLV', 'COLÓN SALVADOREÑO', 'SVC', '¢', '$'),
(9, 'GUATEMALA', 'GTM', 'QUETZAL', 'GTQ', 'Q', 'Q'),
(10, 'HONDURAS', 'HND', 'LEMPIRA', 'HNL', 'L', 'L'),
(11, 'MEXICO', 'MEX', 'PESO MEXICANO', 'MXN', '$', '$'),
(12, 'NICARAGUA', 'NIC', 'CÓRDOBA NICARAGÜENSE', 'NIO', 'C$', 'C$'),
(13, 'PANAMÁ', 'PAN', 'BALBOA PANAMEÑO', 'PAB', 'B/.', 'B/.'),
(14, 'PARAGUAY', 'PRY', 'GUARANÍ PARAGUAYO', 'PYG', '₲', 'Gs'),
(15, 'PERU', 'PER', 'SOL', 'PEN', 'S/.', 'S/.'),
(16, 'PUERTO RICO', 'PRI', 'DÓLAR ESTADOUNIDENSE', 'USD', '$', '$'),
(17, 'REPÚBLICA DOMINICANA', 'DOM', 'PESO DOMINICANO', 'DOP', 'RD$', 'RD$'),
(18, 'URUGUAY', 'URY', 'PESO URUGUAYO', 'UYU', '$', '$'),
(19, 'VENEZUELA', 'VEN', 'BOLÍVAR FUERTE', 'VEF', 'Bs', 'Bs'),
(20, 'CUBA', 'CUB', 'PESO CUBANO', 'CUP', '$', '₱'),
(21, 'ESPAÑA', 'ESP', 'EURO', 'EUR', '€', '€'),
(22, 'AFGANISTÁN', 'AFG', 'AFGANI', 'AFN', 'Af', '؋'),
(23, 'ISLAS DE ÅLAND', 'ALA', 'EURO', 'EUR', '€', '€'),
(24, 'ALBANIA', 'ALB', 'LEK', 'ALL', 'L', 'L'),
(25, 'ARGELIA', 'DZA', 'DINAR', 'DZD', 'DA', 'د.ج'),
(26, 'SAMOA AMERICANA', 'ASM', 'DÓLAR ESTADOUNIDENSE', 'USD', '$', '$'),
(27, 'ANDORRA', 'AND', 'EURO', 'EUR', '€', '€'),
(28, 'ANGOLA', 'AGO', 'KUANZA DE ANGOLA', 'AOA', 'Kz', 'Kz'),
(29, 'ANGUILA', 'AIA', 'DÓLAR DEL CARIBE ORIENTAL', 'XCD', '$', '$'),
(30, 'ANTÁRTIDA', 'ATA', NULL, NULL, NULL, NULL),
(31, 'ANTIGUA Y BARBUDA', 'ATG', 'DÓLAR DEL CARIBE ORIENTAL', 'XCD', '$', '$'),
(32, 'ARMENIA', 'ARM', 'DRAM ARMENIO', 'AMD', '֏', 'դր.'),
(33, 'ARUBA', 'ABW', 'FLORÍN ARUBANO', 'AWG', 'ƒ', 'ƒ'),
(34, 'AUSTRALIA', 'AUS', 'DÓLAR AUSTRALIANO', 'AUD', '$', '$'),
(35, 'AUSTRIA', 'AUT', 'EURO', 'EUR', '€', '€'),
(36, 'AZERBAYÁN', 'AZE', 'MANAT AZERBAYANO', 'AZN', 'm', '₼'),
(37, 'BAHAMAS', 'BHS', 'DÓLAR DE LAS BAHAMAS', 'BSD', '$', '$'),
(38, 'BARÉIN', 'BHR', 'DINAR DE BARÉIN', 'BHD', 'BD', '.د.ب'),
(39, 'BANGLADESH', 'BGD', 'TAKA DE BANGLADÉS', 'BDT', 'Tk', '৳'),
(40, 'BARBADOS', 'BRB', 'DÓLAR DE LAS BARBADOS', 'BBD', '$', '$'),
(41, 'BIELORRUSIA', 'BLR', 'RUBLO BIELORRUSO', 'BYR', 'Br', 'Br'),
(42, 'BÉLGICA', 'BEL', 'EURO', 'EUR', '€', '€'),
(43, 'BELICE', 'BLZ', 'DÓLAR BELICEÑO', 'BZD', '$', 'BZ$'),
(44, 'BENÍN', 'BEN', 'FRANCO CFA', 'XOF', 'Fr', 'FCFA'),
(45, 'BERMUDA', 'BMU', 'DÓLAR BERMUDEÑO', 'BMD', '$', '$'),
(46, 'BUTÁN', 'BTN', 'GULTRUM BUTANÉS', 'BTN', 'Nu.', 'Nu.'),
(47, 'BONAIRE, SAN EUSTAQUIO Y SABA', 'BES', 'DÓLAR ESTADOUNIDENSE', 'USD', '$', '$'),
(48, 'BOSNIA Y HERZEGOVINA', 'BIH', 'MARCO CONVERTIBLE DE BOSNIA Y HERZEGOVINA', 'BAM', 'KM', 'KM'),
(49, 'BOTSUANA', 'BWA', 'PULA DE BOTSUANA', 'BWP', 'P', 'P'),
(50, 'ISLA BOUVET', 'BVT', 'CORONA NORUEGA', 'NOK', 'kr', 'kr'),
(51, 'TERRITORIO BRITÁNICO DEL OCÉANO ÍNDICO', 'IOT', 'LIBRA ESTERLINA', 'GBP', '£', '£'),
(52, 'ISLAS VÍRGENES BRITÁNICAS', 'VGB', 'DÓLAR ESTADOUNIDENSE', 'USD', '$', '$'),
(53, 'BRUNEI', 'BRN', 'DÓLAR DE BRUNEI', 'BND', '$', '$'),
(54, 'BULGARIA', 'BGR', 'LEVA BÚLGARO', 'BGN', 'лв', 'лв'),
(55, 'BURKINA FASO', 'BFA', 'FRANCO CFA', 'XOF', 'Fr', 'FCFA'),
(56, 'BURUNDI', 'BDI', 'FRANCO BURUNDÉS', 'BIF', 'Fr', 'FBu'),
(57, 'CAMBOYA', 'KHM', 'RIEL CAMBOYANO', 'KHR', '៛', '៛'),
(58, 'CAMERÚN', 'CMR', 'FRANCO CFA', 'XOF', 'Fr', 'FCFA'),
(59, 'CANADÁ', 'CAN', 'DÓLAR CANADIENSE', 'CAD', '$', '$'),
(60, 'CABO VERDE', 'CPV', 'ESCUDO DE CABO VERDE', 'CVE', '$', 'Esc'),
(61, 'ISLAS CAIMÁN', 'CYM', 'DÓLAR DE LAS ISLAS CAIMÁN', 'KYD', '$', '$'),
(62, 'REPÚBLICA CENTROAFRICANA', 'CAF', 'FRANCO CFA', 'XAF', 'Fr', 'FCFA'),
(63, 'CHAD', 'TCD', 'FRANCO CFA', 'XAF', 'Fr', 'FCFA'),
(64, 'CHINA', 'CHN', 'YUAN', 'CNY', '¥', '¥'),
(65, 'ISLA DE PASCUA', 'CXR', 'PESO CHILENO', 'CLP', '$', '$'),
(66, 'ISLAS COCOS', 'CCK', 'DÓLAR AUSTRALIANO', 'AUD', '$', '$'),
(67, 'COMORES', 'COM', 'FRANCO COMORANO', 'KMF', 'Fr', '₣'),
(68, 'ISLAS COOK', 'COK', 'DÓLAR DE NUEVA ZELANDA', 'NZD', '$', '$'),
(69, 'CROACIA', 'HRV', 'KUNA CROATA', 'HRK', 'kn', 'kn'),
(70, 'CURAZAO', 'CUW', 'FLORÍN DE LAS ANTILLAS NEERLANDESAS', 'ANG', 'ƒ', 'ƒ'),
(71, 'CHIPRE', 'CYP', 'EURO', 'EUR', '€', '€'),
(72, 'REPÚBLICA CHECA', 'CZE', 'CORONA CHECA', 'CZK', 'Kc', 'Kč'),
(73, 'REPÚBLICA DEMOCRÁTICA DEL CONGO', 'COD', 'FRANCO CONGOLEÑO', 'CDF', 'Fr', 'F'),
(74, 'DINAMARCA', 'DNK', 'CORONA DANESA', 'DKK', 'kr', 'kr'),
(75, 'YIBUTI', 'DJI', 'FRANCO YIBUTIANO', 'DJF', 'Fr', '₣'),
(76, 'DOMINICA', 'DMA', 'DÓLAR DEL CARIBE ORIENTAL', 'XCD', '$', '$'),
(77, 'TIMOR ORIENTAL', 'TLS', 'DÓLAR ESTADOUNIDENSE', 'USD', '$', '$'),
(78, 'EGIPTO', 'EGY', 'LIBRA EGIPCIA', 'EGP', '£', '£'),
(79, 'GUINEA ECUATORIAL', 'GNQ', 'FRANCO CFA', 'XAF', 'Fr', 'FCFA'),
(80, 'ERITREA', 'ERI', 'NAKFA DE ERITREA', 'ERN', 'Nfk', 'Nfk'),
(81, 'ESTONIA', 'EST', 'EURO', 'EUR', '€', '€'),
(82, 'ETIOPÍA', 'ETH', 'BIR', 'ETB', 'Br', 'Br'),
(83, 'ISLAS MALVINAS', 'FLK', 'LIBRA MALVINENSE', 'FKP', '£', '£'),
(84, 'ISLAS FAROE', 'FRO', 'CORONA DANESA', 'DKK', 'kr', 'kr'),
(85, 'FIJI', 'FJI', 'DÓLAR FIYIANO', 'FJD', '$', '$'),
(86, 'FINLANDIA', 'FIN', 'EURO', 'EUR', '€', '€'),
(87, 'FRANCIA', 'FRA', 'EURO', 'EUR', '€', '€'),
(88, 'GUAYANA FRANCESA', 'GUF', 'EURO', 'EUR', '€', '€'),
(89, 'POLINESIA FRANCESA', 'PYF', 'FRANCO CFP', 'XPF', 'Fr', 'F'),
(90, 'TERRITORIOS DEL SUR FRANCESES', 'ATF', 'EURO', 'EUR', '€', '€'),
(91, 'GABÓN', 'GAB', 'FRANCO CFA', 'XAF', 'Fr', 'FCFA'),
(92, 'GAMBIA', 'GMB', 'DALASI GAMBIANO', 'GMD', 'D', 'D'),
(93, 'GEORGIA', 'GEO', 'LARI GEORGIANO', 'GEL', 'ლ', 'ლ'),
(94, 'ALEMANIA', 'DEU', 'EURO', 'EUR', '€', '€'),
(95, 'GHANA', 'GHA', 'CEDI DE GHANA', 'GHS', '?', '¢'),
(96, 'GIBRALTAR', 'GIB', 'LIBRA DE GIBRALTAR', 'GIP', '£', '£'),
(97, 'GRECIA', 'GRC', 'EURO', 'EUR', '€', '€'),
(98, 'GROENLANDIA', 'GRL', 'CORONA DANESA', 'DKK', 'kr', 'kr'),
(99, 'GRANADA', 'GRD', 'DÓLAR DEL CARIBE ORIENTAL', 'XCD', '$', '$'),
(100, 'GUADALUPE', 'GLP', 'EURO', 'EUR', '€', '€'),
(101, 'GUAM', 'GUM', 'DÓLAR ESTADOUNIDENSE', 'USD', '$', '$'),
(102, 'GUERNSEY', 'GGY', 'LIBRA ESTERLINA', 'GBP', '£', '£'),
(103, 'GUINEA', 'GIN', 'FRANCO GUINEANO', 'GNF', 'Fr', 'FG'),
(104, 'GUINEA BISSAU', 'GNB', 'FRANCO CFA', 'XOF', 'Fr', 'FCFA'),
(105, 'GUYANA', 'GUY', 'DÓLAR GUYANÉS', 'GYD', '$', '$'),
(106, 'HAITÍ', 'HTI', 'GOURDE', 'HTG', 'G', 'G'),
(107, 'ISLAS HEARD Y MCDONALD', 'HMD', 'DÓLAR AUSTRALIANO', 'AUD', '$', '$'),
(108, 'HONG KONG', 'HKG', 'DÓLAR DE HONG KONG', 'HKD', '$', '$'),
(109, 'HUNGRÍA', 'HUN', 'FORINTO', 'HUF', 'Ft', 'Ft'),
(110, 'ISLANDIA', 'ISL', 'CORONA ISLANDESA', 'ISK', 'kr', 'kr'),
(111, 'INDIA', 'IND', 'RUPIA INDIA', 'INR', '₹', '₹'),
(112, 'INDONESIA', 'IDN', 'RUPIA INDONESIA', 'IDR', 'Rp', 'Rp'),
(113, 'IRÁN', 'IRN', 'RIAL IRANÍ', 'IRR', '﷼', '﷼'),
(114, 'IRAK', 'IRQ', 'DINAR IRAKÍ', 'IQD', 'ع.د', 'ع.د'),
(115, 'IRLANDA', 'IRL', 'EURO', 'EUR', '€', '€'),
(116, 'ISLA DE MAN', 'IMN', 'LIBRA ESTERLINA', 'GBP', '£', '£'),
(117, 'ISRAEL', 'ISR', 'NUEVO SÉQUEL', 'ILS', '₪', '₪'),
(118, 'ITALIA', 'ITA', 'EURO', 'EUR', '€', '€'),
(119, 'COSTA DE MARFIL', 'CIV', 'FRANCO CFA', 'XOF', 'Fr', 'FCFA'),
(120, 'JAMAICA', 'JAM', 'DÓLAR JAMAICANO', 'JMD', '$', 'J$'),
(121, 'JAPÓN', 'JPN', 'YEN', 'JPY', '¥', '¥'),
(122, 'JERSEY', 'JEY', 'LIBRA ESTERLINA', 'GBP', '£', '£'),
(123, 'JORDANIA', 'JOR', 'DINAR JORDANO', 'JOD', 'JD', 'د.ا'),
(124, 'KAZAJISTÁN', 'KAZ', 'TENGUE KAZAJO', 'KZT', 'T', '₸'),
(125, 'KENIA', 'KEN', 'CHELÍN KENIANO', 'KES', 'Sh', 'KSh'),
(126, 'KIRIBATI', 'KIR', 'DÓLAR AUSTRALIANO', 'AUD', '$', '$'),
(127, 'KOSOVO', 'XKX', 'EURO', 'EUR', '€', '€'),
(128, 'KUWAIT', 'KWT', 'DINAR KUWAITÍ', 'KWD', 'د.ك', 'د.ك'),
(129, 'KIRGUISTÁN', 'KGZ', 'SOM KIRGUÍS', 'KGS', 'C', 'лв'),
(130, 'LAOS', 'LAO', 'KIP', 'LAK', '₭', '₭N'),
(131, 'LETONIA', 'LVA', 'EURO', 'EUR', '€', '€'),
(132, 'LÍBANO', 'LBN', 'LIBRA LIBANESA', 'LBP', 'ل.ل', 'ل.ل'),
(133, 'LESOTO', 'LSO', 'LOTI DE LESOTO', 'LSL', 'L', 'L'),
(134, 'LIBERIA', 'LBR', 'DÓLAR LIBERIANO', 'LRD', '$', '$'),
(135, 'LIBIA', 'LBY', 'DINAR LIBIO', 'LYD', 'LD', 'ل.د'),
(136, 'LIECHTENSTEIN', 'LIE', 'FRANCO SUIZO', 'CHF', 'Fr', 'CHF'),
(137, 'LITUANIA', 'LTU', 'EURO', 'EUR', '€', '€'),
(138, 'LUXEMBURGO', 'LUX', 'EURO', 'EUR', '€', '€'),
(139, 'MACAO', 'MAC', 'PATACA DE MACAO', 'MOP', 'P', 'MOP$'),
(140, 'MACEDONIA', 'MKD', 'DENAR', 'MKD', 'ден', 'ден'),
(141, 'MADAGASCAR', 'MDG', 'ARIARI', 'MGA', 'Ar', 'Ar'),
(142, 'MALAUI', 'MWI', 'KWACHA DE MALAUI', 'MWK', 'MK', 'MK'),
(143, 'MALASIA', 'MYS', 'RINGIT', 'MYR', 'RM', 'RM'),
(144, 'MALDIVAS', 'MDV', 'RUFIYA', 'MVR', 'Rf', '.ރ'),
(145, 'MALÍ', 'MLI', 'FRANCO CFA', 'XOF', 'Fr', 'FCFA'),
(146, 'MALTA', 'MLT', 'EURO', 'EUR', '€', '€'),
(147, 'ISLAS MARSHALL', 'MHL', 'DÓLAR ESTADOUNIDENSE', 'USD', '$', '$'),
(148, 'MARTINICA', 'MTQ', 'EURO', 'EUR', '€', '€'),
(149, 'MAURITANIA', 'MRT', 'UGUIYA', 'MRO', 'UM', 'UM'),
(150, 'MAURICIO', 'MUS', 'RUPIA DE MAURICIO', 'MUR', 'Rs', '₨'),
(151, 'MAYOTTE', 'MYT', 'EURO', 'EUR', '€', '€'),
(152, 'MICRONESIA', 'FSM', 'DÓLAR ESTADOUNIDENSE', 'USD', '$', '$'),
(153, 'MOLDAVIA', 'MDA', 'LEU MOLDAVO', 'MDL', 'L', 'L'),
(154, 'MÓNACO', 'MCO', 'EURO', 'EUR', '€', '€'),
(155, 'MONGOLIA', 'MNG', 'TUGRIK MONGOL', 'MNT', '₮', '₮'),
(156, 'MONTENEGRO', 'MNE', 'EURO', 'EUR', '€', '€'),
(157, 'MONTSERRAT', 'MSR', 'DÓLAR DEL CARIBE ORIENTAL', 'XCD', '$', '$'),
(158, 'MARRUECOS', 'MAR', 'DÍRHAM', 'MAD', 'د.م.', 'د.م.'),
(159, 'MOZAMBIQUE', 'MOZ', 'METICAL', 'MZN', 'MT', 'MT'),
(160, 'MYANMAR', 'MMR', 'KYAT DE BIRMANIA', 'MMK', 'Ks', 'K'),
(161, 'NAMIBIA', 'NAM', 'DÓLAR DE NAMIBIA', 'NAD', '$', '$'),
(162, 'NAURU', 'NRU', 'DÓLAR AUSTRALIANO', 'AUD', '$', '$'),
(163, 'NEPAL', 'NPL', 'RUPIA NEPALÍ', 'NPR', 'Rs', '₨'),
(164, 'PAÍSES BAJOS', 'NLD', 'EURO', 'EUR', '€', '€'),
(165, 'ANTILLAS HOLANDESAS', 'ANT', 'FLORÍN DE LAS ANTILLAS NEERLANDESAS', 'ANG', 'ƒ', 'ƒ'),
(166, 'NUEVA CALEDONIA', 'NCL', 'FRANCO CFP', 'XPF', 'Fr', 'F'),
(167, 'NUEVA ZELANDA', 'NZL', 'DÓLAR DE NUEVA ZELANDA', 'NZD', '$', '$'),
(168, 'NÍGER', 'NER', 'FRANCO CFA', 'XOF', 'Fr', 'FCFA'),
(169, 'NIGERIA', 'NGA', 'NAIRA NIGERIANO', 'NGN', '₦', '₦'),
(170, 'NIUE', 'NIU', 'DÓLAR DE NUEVA ZELANDA', 'NZD', '$', '$'),
(171, 'ISLA NORFOLK', 'NFK', 'DÓLAR AUSTRALIANO', 'AUD', '$', '$'),
(172, 'COREA DEL NORTE', 'PRK', 'WON NORCOREANO', 'KPW', '₩', '₩'),
(173, 'ISLAS MARIANAS DEL NORTE', 'MNP', 'DÓLAR ESTADOUNIDENSE', 'USD', '$', '$'),
(174, 'NORUEGA', 'NOR', 'CORONA NORUEGA', 'NOK', 'kr', 'kr'),
(175, 'OMÁN', 'OMN', 'RIAL DE OMÁN', 'OMR', 'ر.ع.', 'ر.ع.'),
(176, 'PAKISTÁN', 'PAK', 'RUPIA PAKISTANÍ', 'PKR', 'Rs', '₨'),
(177, 'PALAOS', 'PLW', 'DÓLAR ESTADOUNIDENSE', 'USD', '$', '$'),
(178, 'TERRITORIOS PALESTINOS', 'PSE', 'DINAR JORDANO', 'JOD', 'JD', 'د.ا'),
(179, 'PAPÚA NUEVA GUINEA', 'PNG', 'KINA', 'PGK', 'K', 'K'),
(180, 'FILIPINAS', 'PHL', 'PESO FILIPINO', 'PHP', '₱', '₱'),
(181, 'ISLAS PITCAIRN', 'PCN', 'DÓLAR DE NUEVA ZELANDA', 'NZD', '$', '$'),
(182, 'POLONIA', 'POL', 'ZLÓTI', 'PLN', 'zł', 'zł'),
(183, 'PORTUGAL', 'PRT', 'EURO', 'EUR', '€', '€'),
(184, 'CATAR', 'QAT', 'RIAL CATARÍ', 'QAR', 'QR', 'ر.ق'),
(185, 'REPÚBLICA DEL CONGO', 'COG', 'FRANCO CFA', 'XAF', 'Fr', 'FCFA'),
(186, 'REUNIÓN', 'REU', 'EURO', 'EUR', '€', '€'),
(187, 'RUMANÍA', 'ROU', 'LEU RUMANO', 'RON', 'L', 'L'),
(188, 'RUSIA', 'RUS', 'RUBLO', 'RUB', 'руб.', '₽'),
(189, 'RUANDA', 'RWA', 'FRANCO RUANDÉS', 'RWF', 'Fr', 'RF'),
(190, 'SAN BARTOLOMÉ', 'BLM', 'EURO', 'EUR', '€', '€'),
(191, 'SANTA ELENA', 'SHN', 'LIBRA DE SANTA ELENA', 'SHP', '£', '£'),
(192, 'SAN CRISTÓBAL Y NIEVES', 'KNA', 'DÓLAR DEL CARIBE ORIENTAL', 'XCD', '$', '$'),
(193, 'SANTA LUCÍA', 'LCA', 'DÓLAR DEL CARIBE ORIENTAL', 'XCD', '$', '$'),
(194, 'SAN MARTÍN', 'MAF', 'EURO', 'EUR', '€', '€'),
(195, 'SAN PEDRO Y MIGUELÓN', 'SPM', 'EURO', 'EUR', '€', '€'),
(196, 'SAN VICENTE Y LAS GRANADINAS', 'VCT', 'DÓLAR DEL CARIBE ORIENTAL', 'XCD', '$', '$'),
(197, 'SAMOA OCCIDENTAL', 'WSM', 'TALA', 'WST', 'T', 'T'),
(198, 'SAN MARINO', 'SMR', 'EURO', 'EUR', '€', '€'),
(199, 'SANTO TOMÉ Y PRÍNCIPE', 'STP', 'DOBRA', 'STD', 'Db', 'Db'),
(200, 'ARABIA SAUDITA', 'SAU', 'RIAL SAUDÍ', 'SAR', 'SR', 'ر.س'),
(201, 'SENEGAL', 'SEN', 'FRANCO CFA', 'XOF', 'Fr', 'FCFA'),
(202, 'SERBIA', 'SRB', 'DINAR SERBIO', 'RSD', 'Дин.', 'Дин.'),
(203, 'SERBIA Y MONTENEGRO', 'SCG', NULL, NULL, NULL, NULL),
(204, 'SEYCHELLES', 'SYC', 'RUPIA SEYCHELLENSE', 'SCR', 'SR', '₨'),
(205, 'SIERRA LEONA', 'SLE', 'LEONA', 'SLL', 'Le', 'Le'),
(206, 'SINGAPUR', 'SGP', 'DÓLAR SINGAPURENSE', 'SGD', '$', '$'),
(207, 'SAN MARTÍN', 'SXM', 'FLORÍN DE LAS ANTILLAS NEERLANDESAS', 'ANG', 'ƒ', 'ƒ'),
(208, 'ESLOVAQUIA', 'SVK', 'EURO', 'EUR', '€', '€'),
(209, 'ESLOVENIA', 'SVN', 'EURO', 'EUR', '€', '€'),
(210, 'ISLAS SALOMÓN', 'SLB', 'DÓLAR SALOMONENSE', 'SBD', '$', '$'),
(211, 'SOMALIA', 'SOM', 'CHELÍN SOMALÍ', 'SOS', 'Sh', 'S'),
(212, 'SUDÁFRICA', 'ZAF', 'RAND', 'ZAR', 'R', 'R'),
(213, 'ISLAS GEORGIA DEL SUR Y SANDWICH DEL SUR', 'SGS', 'LIBRA ESTERLINA', 'GBP', '£', '£'),
(214, 'COREA DEL SUR', 'KOR', 'WON SURCOREANO', 'KRW', '₩', '₩'),
(215, 'SUDÁN DEL SUR', 'SSD', 'LIBRA SURSUDANESA', 'SSP', '£', '£'),
(216, 'SRI LANKA', 'LKA', 'RUPIA CEILANDESA', 'LKR', 'Rs', '₨'),
(217, 'SUDÁN', 'SDN', 'LIBRA SUDANESA', 'SDG', '£', 'SD£'),
(218, 'SURINAM', 'SUR', 'DÓLAR SURINAMÉS', 'SRD', '$', '$'),
(219, 'ISLAS SVALBARD Y JAN MAYEN', 'SJM', 'CORONA NORUEGA', 'NOK', 'kr', 'kr'),
(220, 'SUAZILANDIA', 'SWZ', 'LILANGENI', 'SZL', 'L', 'SZL'),
(221, 'SUECIA', 'SWE', 'CORONA SUECA', 'SEK', 'kr', 'kr'),
(222, 'SUIZA', 'CHE', 'FRANCO SUIZO', 'CHF', 'Fr', 'CHF'),
(223, 'SIRIA', 'SYR', 'LIBRA SIRIA', 'SYP', 'S£', 'ل.س'),
(224, 'TAIWÁN', 'TWN', 'NUEVO DÓLAR DE TAIWÁN', 'TWD', '$', 'NT$'),
(225, 'TAYIKISTÁN', 'TJK', 'SOMONI', 'TJS', 'SM', 'SM'),
(226, 'TANZANIA', 'TZA', 'CHELÍN TANZANIANO', 'TZS', 'Sh', 'Tsh'),
(227, 'TAILANDIA', 'THA', 'BAT', 'THB', '฿', '฿'),
(228, 'REPÚBLICA TOGOLESA', 'TGO', 'FRANCO CFA', 'XOF', 'Fr', 'FCFA'),
(229, 'ISLAS TOKELAU', 'TKL', 'DÓLAR DE NUEVA ZELANDA', 'NZD', '$', '$'),
(230, 'TONGA', 'TON', 'PAANGA', 'TOP', 'T$', 'T$'),
(231, 'TRINIDAD Y TOBAGO', 'TTO', 'DÓLAR TRINITENSE', 'TTD', '$', 'TT$'),
(232, 'TÚNEZ', 'TUN', 'DINAR TUNECINO', 'TND', 'د.ت', 'د.ت'),
(233, 'TURQUÍA', 'TUR', 'LIRA TURCA', 'TRY', 'TL', 'TL'),
(234, 'TURKMENISTÁN', 'TKM', 'MANAT TURCOMANO', 'TMT', 'm', '₼'),
(235, 'ISLAS TURCAS Y CAICOS', 'TCA', 'DÓLAR ESTADOUNIDENSE', 'USD', '$', '$'),
(236, 'TUVALU', 'TUV', 'DÓLAR AUSTRALIANO', 'AUD', '$', '$'),
(237, 'ISLAS VÍRGENES DE LOS EE.UU.', 'VIR', 'DÓLAR ESTADOUNIDENSE', 'USD', '$', '$'),
(238, 'UGANDA', 'UGA', 'CHELÍN UGANDÉS', 'UGX', 'Sh', 'USh'),
(239, 'UCRANIA', 'UKR', 'GRIVNA', 'UAH', '₴', '₴'),
(240, 'EMIRATOS ÁRABES UNIDOS', 'ARE', 'DÍRHAM', 'AED', 'DH', 'د.إ'),
(241, 'REINO UNIDO', 'GBR', 'LIBRA ESTERLINA', 'GBP', '£', '£'),
(242, 'ESTADOS UNIDOS', 'USA', 'DÓLAR ESTADOUNIDENSE', 'USD', '$', '$'),
(243, 'ISLAS MENORES ALEJADAS DE LOS ESTADOS UNIDOS', 'UMI', 'DÓLAR ESTADOUNIDENSE', 'USD', '$', '$'),
(244, 'UZBEKISTÁN', 'UZB', 'SUM', 'UZS', 'лв', 'лв'),
(245, 'VANUATU', 'VUT', 'VATU DO VANUATU', 'VUV', 'Vt', 'Vt'),
(246, 'CIUDAD DEL VATICANO', 'VAT', 'EURO', 'EUR', '€', '€'),
(247, 'VIETNAM', 'VNM', 'DONG', 'VND', '₫', '₫'),
(248, 'WALLIS Y FUTUNA', 'WLF', 'FRANCO CFP', 'XPF', 'Fr', 'F'),
(249, 'SAHARA OCCIDENTAL', 'ESH', 'DÍRHAM', 'MAD', 'د.م.', 'د.م.'),
(250, 'YEMEN', 'YEM', 'RIAL YEMENÍ', 'YER', '﷼', '﷼'),
(251, 'ZAMBIA', 'ZMB', 'KUACHA ZAMBIANO', 'ZMK', 'ZK', 'ZK'),
(252, 'ZIMBABUE', 'ZWE', 'DÓLAR ZIMBABUENSE', 'ZWL', '$', 'Z$');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', 'dd7f35491289e43252a73a7bc685d940807a54f2d2a1f69d8b5c965264b460f7', '[\"*\"]', NULL, NULL, '2023-02-03 10:03:53', '2023-02-03 10:03:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'yois', 'sioy23@gmail.com', NULL, '$2y$10$PVUrhaPHfIwfpgVsdlYY..ItVYpUkdU4oytalUHqqTfoUr1ZTlJJq', NULL, '2023-02-03 10:03:53', '2023-02-03 10:03:53');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `config_business`
--
ALTER TABLE `config_business`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `abreviatura_UNIQUE` (`abreviatura`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `config_business`
--
ALTER TABLE `config_business`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
