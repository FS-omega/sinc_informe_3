-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2023 a las 00:39:11
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cft`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add bloque', 7, 'add_bloque'),
(26, 'Can change bloque', 7, 'change_bloque'),
(27, 'Can delete bloque', 7, 'delete_bloque'),
(28, 'Can view bloque', 7, 'view_bloque'),
(29, 'Can add carrera', 8, 'add_carrera'),
(30, 'Can change carrera', 8, 'change_carrera'),
(31, 'Can delete carrera', 8, 'delete_carrera'),
(32, 'Can view carrera', 8, 'view_carrera'),
(33, 'Can add carr mod', 9, 'add_carrmod'),
(34, 'Can change carr mod', 9, 'change_carrmod'),
(35, 'Can delete carr mod', 9, 'delete_carrmod'),
(36, 'Can view carr mod', 9, 'view_carrmod'),
(37, 'Can add dia', 10, 'add_dia'),
(38, 'Can change dia', 10, 'change_dia'),
(39, 'Can delete dia', 10, 'delete_dia'),
(40, 'Can view dia', 10, 'view_dia'),
(41, 'Can add disp docente', 11, 'add_dispdocente'),
(42, 'Can change disp docente', 11, 'change_dispdocente'),
(43, 'Can delete disp docente', 11, 'delete_dispdocente'),
(44, 'Can view disp docente', 11, 'view_dispdocente'),
(45, 'Can add docente', 12, 'add_docente'),
(46, 'Can change docente', 12, 'change_docente'),
(47, 'Can delete docente', 12, 'delete_docente'),
(48, 'Can view docente', 12, 'view_docente'),
(49, 'Can add estado', 13, 'add_estado'),
(50, 'Can change estado', 13, 'change_estado'),
(51, 'Can delete estado', 13, 'delete_estado'),
(52, 'Can view estado', 13, 'view_estado'),
(53, 'Can add estudiante', 14, 'add_estudiante'),
(54, 'Can change estudiante', 14, 'change_estudiante'),
(55, 'Can delete estudiante', 14, 'delete_estudiante'),
(56, 'Can view estudiante', 14, 'view_estudiante'),
(57, 'Can add est mod', 15, 'add_estmod'),
(58, 'Can change est mod', 15, 'change_estmod'),
(59, 'Can delete est mod', 15, 'delete_estmod'),
(60, 'Can view est mod', 15, 'view_estmod'),
(61, 'Can add horario', 16, 'add_horario'),
(62, 'Can change horario', 16, 'change_horario'),
(63, 'Can delete horario', 16, 'delete_horario'),
(64, 'Can view horario', 16, 'view_horario'),
(65, 'Can add jefe carrera', 17, 'add_jefecarrera'),
(66, 'Can change jefe carrera', 17, 'change_jefecarrera'),
(67, 'Can delete jefe carrera', 17, 'delete_jefecarrera'),
(68, 'Can view jefe carrera', 17, 'view_jefecarrera'),
(69, 'Can add jornada', 18, 'add_jornada'),
(70, 'Can change jornada', 18, 'change_jornada'),
(71, 'Can delete jornada', 18, 'delete_jornada'),
(72, 'Can view jornada', 18, 'view_jornada'),
(73, 'Can add mod doc', 19, 'add_moddoc'),
(74, 'Can change mod doc', 19, 'change_moddoc'),
(75, 'Can delete mod doc', 19, 'delete_moddoc'),
(76, 'Can view mod doc', 19, 'view_moddoc'),
(77, 'Can add sinc_informe_3_modulo', 20, 'add_sinc_informe_3_modulo'),
(78, 'Can change sinc_informe_3_modulo', 20, 'change_sinc_informe_3_modulo'),
(79, 'Can delete sinc_informe_3_modulo', 20, 'delete_sinc_informe_3_modulo'),
(80, 'Can view sinc_informe_3_modulo', 20, 'view_sinc_informe_3_modulo'),
(81, 'Can add sala', 21, 'add_sala'),
(82, 'Can change sala', 21, 'change_sala'),
(83, 'Can delete sala', 21, 'delete_sala'),
(84, 'Can view sala', 21, 'view_sala'),
(85, 'Can add semestre', 22, 'add_semestre'),
(86, 'Can change semestre', 22, 'change_semestre'),
(87, 'Can delete semestre', 22, 'delete_semestre'),
(88, 'Can view semestre', 22, 'view_semestre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bloque`
--

CREATE TABLE `bloque` (
  `bloque_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `id_carrera` int(10) NOT NULL,
  `nombre_c` char(10) DEFAULT NULL,
  `fecha_hora` datetime DEFAULT NULL,
  `modulo_id` int(255) NOT NULL,
  `id_jefe` int(10) NOT NULL,
  `jornada_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carr_mod`
--

CREATE TABLE `carr_mod` (
  `carre_mod_id` int(10) NOT NULL,
  `modulo_id` int(10) NOT NULL,
  `id_carrera` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dia`
--

CREATE TABLE `dia` (
  `dia_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `disp_docente`
--

CREATE TABLE `disp_docente` (
  `disp_doc_id` int(10) NOT NULL,
  `id_docente` int(10) NOT NULL,
  `bloque_id` int(10) NOT NULL,
  `jornada_id` int(10) NOT NULL,
  `estado_id` int(10) NOT NULL,
  `id_usuario` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'formulario', 'bloque'),
(8, 'formulario', 'carrera'),
(9, 'formulario', 'carrmod'),
(10, 'formulario', 'dia'),
(11, 'formulario', 'dispdocente'),
(12, 'formulario', 'docente'),
(13, 'formulario', 'estado'),
(15, 'formulario', 'estmod'),
(14, 'formulario', 'estudiante'),
(16, 'formulario', 'horario'),
(17, 'formulario', 'jefecarrera'),
(18, 'formulario', 'jornada'),
(19, 'formulario', 'moddoc'),
(21, 'formulario', 'sala'),
(22, 'formulario', 'semestre'),
(20, 'formulario', 'sinc_informe_3_modulo'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-12-01 23:23:40.651644'),
(2, 'auth', '0001_initial', '2023-12-01 23:23:40.803596'),
(3, 'admin', '0001_initial', '2023-12-01 23:23:40.846242'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-12-01 23:23:40.850804'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-12-01 23:23:40.855789'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-12-01 23:23:40.882299'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-12-01 23:23:40.902602'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-12-01 23:23:40.909797'),
(9, 'auth', '0004_alter_user_username_opts', '2023-12-01 23:23:40.914687'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-12-01 23:23:40.929545'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-12-01 23:23:40.929545'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-12-01 23:23:40.937505'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-12-01 23:23:40.944443'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-12-01 23:23:40.950547'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-12-01 23:23:40.957493'),
(16, 'auth', '0011_update_proxy_permissions', '2023-12-01 23:23:40.970257'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-12-01 23:23:40.977213'),
(18, 'sessions', '0001_initial', '2023-12-01 23:23:40.987233');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `id_docente` int(10) NOT NULL,
  `d_nombre` char(10) DEFAULT NULL,
  `email` char(15) DEFAULT NULL,
  `jornada_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `estado_id` int(10) NOT NULL,
  `id_usuario` int(10) NOT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  `fecha_hora` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `est_id` int(10) NOT NULL,
  `id_usuario` int(10) DEFAULT NULL,
  `estado_id` int(10) DEFAULT NULL,
  `est_nombre` char(10) DEFAULT NULL,
  `email_est` char(10) DEFAULT NULL,
  `modulo_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `est_mod`
--

CREATE TABLE `est_mod` (
  `id_est_mod` int(10) NOT NULL,
  `est_id` int(10) NOT NULL,
  `modulo_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulario_docente`
--

CREATE TABLE `formulario_docente` (
  `id_docente` int(10) NOT NULL,
  `d_nombre` char(10) DEFAULT NULL,
  `email` char(15) DEFAULT NULL,
  `jornada_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `formulario_docente`
--

INSERT INTO `formulario_docente` (`id_docente`, `d_nombre`, `email`, `jornada_id`) VALUES
(1, 'aaa', '1@g.cl', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `horario_id` int(10) NOT NULL,
  `jornada_id` int(10) NOT NULL,
  `estado_id` int(10) NOT NULL,
  `horario_year` int(10) DEFAULT NULL,
  `bloque_id` int(10) NOT NULL,
  `sala_id` int(10) NOT NULL,
  `modulo_id` int(10) NOT NULL,
  `dia_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jefe_carrera`
--

CREATE TABLE `jefe_carrera` (
  `id_jefe` int(10) NOT NULL,
  `id_docente` int(10) DEFAULT NULL,
  `estado_id` int(10) DEFAULT NULL,
  `nombre_jefe` char(10) DEFAULT NULL,
  `email` char(10) DEFAULT NULL,
  `sala_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jornada`
--

CREATE TABLE `jornada` (
  `jornada_id` int(10) NOT NULL,
  `jor_inscrip` char(20) DEFAULT NULL,
  `jor_horario` char(10) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `diurna` varchar(255) DEFAULT NULL,
  `vespertina` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `modulo_id` int(10) NOT NULL,
  `mod_nombre` char(1) DEFAULT NULL,
  `tipo_j` char(10) DEFAULT NULL,
  `fecha_hora` int(10) DEFAULT NULL,
  `estado_id` int(10) NOT NULL,
  `id_usuario` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_doc`
--

CREATE TABLE `mod_doc` (
  `id_mod_doc` int(10) NOT NULL,
  `modulo_id` int(10) NOT NULL,
  `id_docente` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sala`
--

CREATE TABLE `sala` (
  `sala_id` int(10) NOT NULL,
  `capacidad_sala` int(11) DEFAULT NULL,
  `sala_tipo` char(10) DEFAULT NULL,
  `id_usuario` int(10) NOT NULL,
  `estado_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `semestre`
--

CREATE TABLE `semestre` (
  `id_semestre` int(10) NOT NULL,
  `sem_ano` int(10) DEFAULT NULL,
  `fecha_inicio` int(10) DEFAULT NULL,
  `estado_id` int(10) NOT NULL,
  `id_usuario` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(10) NOT NULL,
  `nombre_usuario` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `bloque`
--
ALTER TABLE `bloque`
  ADD PRIMARY KEY (`bloque_id`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`id_carrera`),
  ADD KEY `FK_PersonOrder` (`modulo_id`),
  ADD KEY `fk_carrera_jefe` (`id_jefe`),
  ADD KEY `fk_carrera_jef` (`jornada_id`);

--
-- Indices de la tabla `carr_mod`
--
ALTER TABLE `carr_mod`
  ADD PRIMARY KEY (`carre_mod_id`),
  ADD KEY `fk_carrera_modulo` (`modulo_id`),
  ADD KEY `fk_carrera_modul` (`id_carrera`);

--
-- Indices de la tabla `dia`
--
ALTER TABLE `dia`
  ADD PRIMARY KEY (`dia_id`);

--
-- Indices de la tabla `disp_docente`
--
ALTER TABLE `disp_docente`
  ADD PRIMARY KEY (`disp_doc_id`),
  ADD KEY `FK_disp_docente2` (`bloque_id`),
  ADD KEY `FK_disp_docente3` (`jornada_id`),
  ADD KEY `FK_disp_docente4` (`estado_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`id_docente`),
  ADD KEY `FK_jornada_docente` (`jornada_id`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`estado_id`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`est_id`),
  ADD KEY `fk_estudiante_usuario` (`id_usuario`),
  ADD KEY `fk_estudiante_estado` (`estado_id`),
  ADD KEY `FK_estmod` (`modulo_id`);

--
-- Indices de la tabla `est_mod`
--
ALTER TABLE `est_mod`
  ADD PRIMARY KEY (`id_est_mod`),
  ADD KEY `FK_est_id` (`est_id`),
  ADD KEY `FK_modulo` (`modulo_id`);

--
-- Indices de la tabla `formulario_docente`
--
ALTER TABLE `formulario_docente`
  ADD PRIMARY KEY (`id_docente`),
  ADD KEY `FK_jornada_docente` (`jornada_id`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`horario_id`),
  ADD KEY `jornada_id` (`jornada_id`),
  ADD KEY `estado_id` (`estado_id`),
  ADD KEY `fk_bloque_horario` (`bloque_id`),
  ADD KEY `FK_sala_horario` (`sala_id`),
  ADD KEY `FK_modulo_horario` (`modulo_id`),
  ADD KEY `FK_dia_horario` (`dia_id`);

--
-- Indices de la tabla `jefe_carrera`
--
ALTER TABLE `jefe_carrera`
  ADD PRIMARY KEY (`id_jefe`),
  ADD KEY `fk_jefe_carrera_docente` (`id_docente`),
  ADD KEY `fk_jefe_carrera_estado` (`estado_id`),
  ADD KEY `FK_sala_id` (`sala_id`);

--
-- Indices de la tabla `jornada`
--
ALTER TABLE `jornada`
  ADD PRIMARY KEY (`jornada_id`);

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`modulo_id`),
  ADD KEY `fk_estado_modulo` (`estado_id`),
  ADD KEY `fk_usuario_modulo` (`id_usuario`);

--
-- Indices de la tabla `mod_doc`
--
ALTER TABLE `mod_doc`
  ADD PRIMARY KEY (`id_mod_doc`),
  ADD KEY `FK_id_docente` (`id_docente`),
  ADD KEY `fk_modulo_id` (`modulo_id`);

--
-- Indices de la tabla `sala`
--
ALTER TABLE `sala`
  ADD PRIMARY KEY (`sala_id`),
  ADD KEY `FK_id_usuario` (`id_usuario`),
  ADD KEY `fk_estado_id` (`estado_id`);

--
-- Indices de la tabla `semestre`
--
ALTER TABLE `semestre`
  ADD PRIMARY KEY (`id_semestre`),
  ADD KEY `fk_estado_semestre` (`estado_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `id_docente` int(10) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD CONSTRAINT `FK_PersonOrder` FOREIGN KEY (`modulo_id`) REFERENCES `modulo` (`modulo_id`),
  ADD CONSTRAINT `fk_carrera_jef` FOREIGN KEY (`jornada_id`) REFERENCES `jornada` (`jornada_id`),
  ADD CONSTRAINT `fk_carrera_jefe` FOREIGN KEY (`id_jefe`) REFERENCES `jefe_carrera` (`id_jefe`);

--
-- Filtros para la tabla `carr_mod`
--
ALTER TABLE `carr_mod`
  ADD CONSTRAINT `fk_carrera_modul` FOREIGN KEY (`id_carrera`) REFERENCES `carrera` (`id_carrera`),
  ADD CONSTRAINT `fk_carrera_modulo` FOREIGN KEY (`modulo_id`) REFERENCES `modulo` (`modulo_id`);

--
-- Filtros para la tabla `disp_docente`
--
ALTER TABLE `disp_docente`
  ADD CONSTRAINT `FK_disp_docente1` FOREIGN KEY (`id_docente`) REFERENCES `formulario_docente` (`id_docente`),
  ADD CONSTRAINT `FK_disp_docente2` FOREIGN KEY (`bloque_id`) REFERENCES `bloque` (`bloque_id`),
  ADD CONSTRAINT `FK_disp_docente3` FOREIGN KEY (`jornada_id`) REFERENCES `jornada` (`jornada_id`),
  ADD CONSTRAINT `FK_disp_docente4` FOREIGN KEY (`estado_id`) REFERENCES `estado` (`estado_id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `FK_estmod` FOREIGN KEY (`modulo_id`) REFERENCES `modulo` (`modulo_id`),
  ADD CONSTRAINT `fk_estudiante_estado` FOREIGN KEY (`estado_id`) REFERENCES `estado` (`estado_id`),
  ADD CONSTRAINT `fk_estudiante_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `est_mod`
--
ALTER TABLE `est_mod`
  ADD CONSTRAINT `FK_est_id` FOREIGN KEY (`est_id`) REFERENCES `estudiante` (`est_id`),
  ADD CONSTRAINT `FK_modulo` FOREIGN KEY (`modulo_id`) REFERENCES `modulo` (`modulo_id`);

--
-- Filtros para la tabla `formulario_docente`
--
ALTER TABLE `formulario_docente`
  ADD CONSTRAINT `FK_jornada_docente` FOREIGN KEY (`jornada_id`) REFERENCES `jornada` (`jornada_id`);

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `FK_dia_horario` FOREIGN KEY (`dia_id`) REFERENCES `dia` (`dia_id`),
  ADD CONSTRAINT `FK_modulo_horario` FOREIGN KEY (`modulo_id`) REFERENCES `modulo` (`modulo_id`),
  ADD CONSTRAINT `FK_sala_horario` FOREIGN KEY (`sala_id`) REFERENCES `sala` (`sala_id`),
  ADD CONSTRAINT `fk_bloque_horario` FOREIGN KEY (`bloque_id`) REFERENCES `bloque` (`bloque_id`),
  ADD CONSTRAINT `horario_ibfk_1` FOREIGN KEY (`jornada_id`) REFERENCES `jornada` (`jornada_id`),
  ADD CONSTRAINT `horario_ibfk_2` FOREIGN KEY (`estado_id`) REFERENCES `estado` (`estado_id`);

--
-- Filtros para la tabla `jefe_carrera`
--
ALTER TABLE `jefe_carrera`
  ADD CONSTRAINT `FK_sala_id` FOREIGN KEY (`sala_id`) REFERENCES `sala` (`sala_id`),
  ADD CONSTRAINT `fk_jefe_carrera_docente` FOREIGN KEY (`id_docente`) REFERENCES `formulario_docente` (`id_docente`),
  ADD CONSTRAINT `fk_jefe_carrera_estado` FOREIGN KEY (`estado_id`) REFERENCES `estado` (`estado_id`);

--
-- Filtros para la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD CONSTRAINT `fk_estado_modulo` FOREIGN KEY (`estado_id`) REFERENCES `estado` (`estado_id`),
  ADD CONSTRAINT `fk_usuario_modulo` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `mod_doc`
--
ALTER TABLE `mod_doc`
  ADD CONSTRAINT `FK_id_docente` FOREIGN KEY (`id_docente`) REFERENCES `formulario_docente` (`id_docente`),
  ADD CONSTRAINT `fk_modulo_id` FOREIGN KEY (`modulo_id`) REFERENCES `modulo` (`modulo_id`);

--
-- Filtros para la tabla `sala`
--
ALTER TABLE `sala`
  ADD CONSTRAINT `FK_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `fk_estado_id` FOREIGN KEY (`estado_id`) REFERENCES `estado` (`estado_id`);

--
-- Filtros para la tabla `semestre`
--
ALTER TABLE `semestre`
  ADD CONSTRAINT `fk_estado_semestre` FOREIGN KEY (`estado_id`) REFERENCES `estado` (`estado_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
