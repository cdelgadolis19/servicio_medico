--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.6
-- Dumped by pg_dump version 9.4.6
-- Started on 2016-10-14 12:27:04 VET

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 1 (class 3079 OID 11861)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2368 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 215 (class 1259 OID 41601)
-- Name: actividad; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE actividad (
    id_actividad integer NOT NULL,
    actividad character varying(250) NOT NULL,
    lugar character varying(100) NOT NULL,
    responsable character varying(100) NOT NULL,
    hora_entrada character varying(8) NOT NULL,
    hora_salida character varying(8),
    fecha_entrada date NOT NULL,
    fecha_salida date NOT NULL,
    fk_estatus integer NOT NULL,
    es_activo boolean DEFAULT true NOT NULL,
    fecha_creacion date DEFAULT now(),
    usuario_creacion integer,
    fecha_actualizacion date DEFAULT now(),
    usuario_actualizacion integer,
    fk_sede integer NOT NULL,
    descripcion text
);


ALTER TABLE actividad OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 41599)
-- Name: actividad_id_actividad_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE actividad_id_actividad_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE actividad_id_actividad_seq OWNER TO postgres;

--
-- TOC entry 2369 (class 0 OID 0)
-- Dependencies: 214
-- Name: actividad_id_actividad_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE actividad_id_actividad_seq OWNED BY actividad.id_actividad;


--
-- TOC entry 209 (class 1259 OID 41494)
-- Name: dias; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE dias (
    id_dia integer NOT NULL,
    dia character varying(100),
    status boolean,
    fecha_creacion date DEFAULT now(),
    usuario_creacion integer,
    fecha_actualizacion date DEFAULT now(),
    usuario_actualizacion integer
);


ALTER TABLE dias OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 41492)
-- Name: dias_id_dia_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE dias_id_dia_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dias_id_dia_seq OWNER TO postgres;

--
-- TOC entry 2370 (class 0 OID 0)
-- Dependencies: 208
-- Name: dias_id_dia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE dias_id_dia_seq OWNED BY dias.id_dia;


--
-- TOC entry 207 (class 1259 OID 41478)
-- Name: especialidad; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE especialidad (
    id_especialidad integer NOT NULL,
    descripcion character varying(100),
    sede integer,
    es_activo boolean DEFAULT true NOT NULL,
    fecha_creacion timestamp without time zone DEFAULT now(),
    fecha_actualizacion timestamp without time zone DEFAULT now(),
    usuario_creacion integer,
    usuario_actualizacion integer
);


ALTER TABLE especialidad OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 41476)
-- Name: especialidad_id_especialidad_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE especialidad_id_especialidad_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE especialidad_id_especialidad_seq OWNER TO postgres;

--
-- TOC entry 2371 (class 0 OID 0)
-- Dependencies: 206
-- Name: especialidad_id_especialidad_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE especialidad_id_especialidad_seq OWNED BY especialidad.id_especialidad;


--
-- TOC entry 174 (class 1259 OID 32785)
-- Name: estado; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE estado (
    id_estado integer NOT NULL,
    nombre character varying(100),
    siglas character varying(2),
    estatus boolean DEFAULT true,
    fecha_creacion timestamp without time zone DEFAULT now(),
    fecha_actualizacion timestamp without time zone DEFAULT now(),
    fk_usuario_creacion integer,
    fk_usuario_actualizacion integer
);


ALTER TABLE estado OWNER TO postgres;

--
-- TOC entry 194 (class 1259 OID 33003)
-- Name: estado_civil; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE estado_civil (
    id_edo_civil integer NOT NULL,
    edo_civil character varying(100),
    fecha_creacion date DEFAULT now(),
    usuario_actualizacion integer,
    usuario_creacion integer,
    status boolean,
    fecha_actualizacion date DEFAULT now()
);


ALTER TABLE estado_civil OWNER TO postgres;

--
-- TOC entry 193 (class 1259 OID 33001)
-- Name: estado_civil_id_edo_civil_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE estado_civil_id_edo_civil_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE estado_civil_id_edo_civil_seq OWNER TO postgres;

--
-- TOC entry 2372 (class 0 OID 0)
-- Dependencies: 193
-- Name: estado_civil_id_edo_civil_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE estado_civil_id_edo_civil_seq OWNED BY estado_civil.id_edo_civil;


--
-- TOC entry 173 (class 1259 OID 32783)
-- Name: estado_id_estado_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE estado_id_estado_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE estado_id_estado_seq OWNER TO postgres;

--
-- TOC entry 2373 (class 0 OID 0)
-- Dependencies: 173
-- Name: estado_id_estado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE estado_id_estado_seq OWNED BY estado.id_estado;


--
-- TOC entry 200 (class 1259 OID 41015)
-- Name: evolucion; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE evolucion (
    id_evaluacion integer NOT NULL,
    paciente integer NOT NULL,
    motivo_consulta character varying(30),
    tension_alta character varying(20),
    frecuencia_cardiaca character varying(20),
    frecuencia_respiratoria character varying(20),
    peso character varying(10),
    talla character varying(10),
    pulso character varying(10),
    circunferencia_cefalica character varying(20),
    circunferencia_abdominal character varying(20),
    otros_sv character varying(100),
    examen_fisico text NOT NULL,
    laboratorio text,
    imageneologia text,
    otros_examenes text,
    impresion_diagnostica text NOT NULL,
    plan_tratamiento text NOT NULL,
    reposo boolean,
    observacion text,
    fecha_creacion date DEFAULT now(),
    usuario_creacion integer,
    fecha_actualizacion date DEFAULT now(),
    usuario_actualizacion integer,
    status boolean
);


ALTER TABLE evolucion OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 41013)
-- Name: evolucion_id_evaluacion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE evolucion_id_evaluacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE evolucion_id_evaluacion_seq OWNER TO postgres;

--
-- TOC entry 2374 (class 0 OID 0)
-- Dependencies: 199
-- Name: evolucion_id_evaluacion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE evolucion_id_evaluacion_seq OWNED BY evolucion.id_evaluacion;


--
-- TOC entry 196 (class 1259 OID 33038)
-- Name: historia_clinica; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE historia_clinica (
    id_historia_clinica integer NOT NULL,
    paciente integer NOT NULL,
    peso character varying(3),
    talla character varying(3),
    frecuencia_cardiaca character varying(10),
    frecuencia_respiratoria character varying(10),
    tension_alta character varying(10),
    pulso character varying(10),
    circunferencia_cefalica character varying(10),
    circunferencia_abdominal character varying(10),
    otros character varying(100),
    alergico character varying(200),
    medicacion character varying(200),
    enfermedades text,
    observacion text NOT NULL,
    comentarios text NOT NULL,
    impresion_diagnostica text NOT NULL,
    tratamiento text NOT NULL,
    evolucion text NOT NULL,
    laboratorio text NOT NULL,
    examenes_otros text NOT NULL,
    estatus boolean DEFAULT true,
    fecha_creacion timestamp without time zone DEFAULT now(),
    fecha_actualizacion timestamp without time zone DEFAULT now(),
    fk_usuario_creacion integer,
    fk_usuario_actualizacion integer,
    imageneologia text,
    plan_tratamiento text,
    examen_fisico text,
    motivo_consulta text NOT NULL,
    enfermedad_actual text NOT NULL,
    antecedentes_personales text NOT NULL,
    padre text,
    madre text,
    hermanos text,
    otros_hp text,
    fumar character varying(50),
    alcohol character varying(50),
    cafe character varying(50),
    drogas character varying(50),
    m_mejillas character varying(50),
    m_labios character varying(50),
    m_unas character varying(50),
    otros_habitosp text,
    "FRS" character varying(100),
    "FUR" character varying(100),
    "PRS" character varying(100),
    "CICLO" character varying(100),
    sinusorragia character varying(100),
    orgasmos character varying(100),
    maridos character varying(100),
    infeccion_ur character varying(100),
    dispareunia character varying(100),
    libido character varying(100),
    "AVM" character varying(100),
    "DIU" character varying(100),
    "EIP" character varying(100),
    "ACO" character varying(100),
    lactancia character varying(100),
    puerperio character varying(100),
    gestas text
);


ALTER TABLE historia_clinica OWNER TO postgres;

--
-- TOC entry 195 (class 1259 OID 33036)
-- Name: historia_clinica_id_historia_clinica_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE historia_clinica_id_historia_clinica_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE historia_clinica_id_historia_clinica_seq OWNER TO postgres;

--
-- TOC entry 2375 (class 0 OID 0)
-- Dependencies: 195
-- Name: historia_clinica_id_historia_clinica_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE historia_clinica_id_historia_clinica_seq OWNED BY historia_clinica.id_historia_clinica;


--
-- TOC entry 201 (class 1259 OID 41042)
-- Name: historia_clinica_maf_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE historia_clinica_maf_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE historia_clinica_maf_seq OWNER TO postgres;

--
-- TOC entry 2376 (class 0 OID 0)
-- Dependencies: 201
-- Name: historia_clinica_maf_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE historia_clinica_maf_seq OWNED BY historia_clinica.madre;


--
-- TOC entry 182 (class 1259 OID 32856)
-- Name: institucion; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE institucion (
    id_institucion integer NOT NULL,
    nombre character varying(100),
    rif character varying(20),
    direccion character varying(200),
    telefono character varying(15),
    telefono2 character varying(15),
    fecha_creacion timestamp without time zone DEFAULT now(),
    usuario_actualizacion integer,
    usuario_creacion integer,
    status boolean,
    fecha_actualizacion timestamp without time zone DEFAULT now()
);


ALTER TABLE institucion OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 32854)
-- Name: institucion_id_institucion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE institucion_id_institucion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE institucion_id_institucion_seq OWNER TO postgres;

--
-- TOC entry 2377 (class 0 OID 0)
-- Dependencies: 181
-- Name: institucion_id_institucion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE institucion_id_institucion_seq OWNED BY institucion.id_institucion;


--
-- TOC entry 213 (class 1259 OID 41570)
-- Name: medico_horario; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE medico_horario (
    id_medico_horario integer NOT NULL,
    medico integer NOT NULL,
    dia integer NOT NULL,
    hora_entrada time without time zone NOT NULL,
    hora_salida time with time zone NOT NULL,
    es_activo boolean DEFAULT true NOT NULL,
    fecha_creacion date DEFAULT now(),
    usuario_creacion integer,
    fecha_actualizacion date DEFAULT now(),
    usuario_actualizacion integer
);


ALTER TABLE medico_horario OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 41568)
-- Name: medico_horario_id_medico_horario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE medico_horario_id_medico_horario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE medico_horario_id_medico_horario_seq OWNER TO postgres;

--
-- TOC entry 2378 (class 0 OID 0)
-- Dependencies: 212
-- Name: medico_horario_id_medico_horario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE medico_horario_id_medico_horario_seq OWNED BY medico_horario.id_medico_horario;


--
-- TOC entry 211 (class 1259 OID 41514)
-- Name: medicos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE medicos (
    id_medico integer NOT NULL,
    nombres character varying(100),
    apellidos character varying(100),
    especialidad integer,
    telefono_oficina character varying(15),
    telefono_celular character varying(15) NOT NULL,
    correo character varying(50) NOT NULL,
    status boolean,
    nro_medico character varying(50),
    cant_paciente_dia integer,
    foto character varying(200) DEFAULT 'foto-medico.png'::character varying,
    fecha_creacion date DEFAULT now(),
    usuario_creacion integer,
    fecha_actualizacion date DEFAULT now(),
    usuario_actualizacion integer,
    sede integer
);


ALTER TABLE medicos OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 41512)
-- Name: medicos_id_medico_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE medicos_id_medico_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE medicos_id_medico_seq OWNER TO postgres;

--
-- TOC entry 2379 (class 0 OID 0)
-- Dependencies: 210
-- Name: medicos_id_medico_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE medicos_id_medico_seq OWNED BY medicos.id_medico;


--
-- TOC entry 176 (class 1259 OID 32800)
-- Name: municipio; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE municipio (
    id_municipio integer NOT NULL,
    estado integer NOT NULL,
    nombre character varying(100),
    estatus boolean DEFAULT true,
    fecha_creacion timestamp without time zone DEFAULT now(),
    fecha_actualizacion timestamp without time zone DEFAULT now(),
    fk_usuario_creacion integer,
    fk_usuario_actualizacion integer
);


ALTER TABLE municipio OWNER TO postgres;

--
-- TOC entry 175 (class 1259 OID 32798)
-- Name: municipio_id_municipio_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE municipio_id_municipio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE municipio_id_municipio_seq OWNER TO postgres;

--
-- TOC entry 2380 (class 0 OID 0)
-- Dependencies: 175
-- Name: municipio_id_municipio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE municipio_id_municipio_seq OWNED BY municipio.id_municipio;


--
-- TOC entry 190 (class 1259 OID 32937)
-- Name: paciente; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE paciente (
    id_paciente integer NOT NULL,
    cedula character varying(15) NOT NULL,
    numero_historia character varying(15),
    nombre character varying(70) NOT NULL,
    apellido character varying(70) NOT NULL,
    fecha_nacimiento timestamp without time zone DEFAULT now(),
    sexo character(1) NOT NULL,
    estado_civil integer NOT NULL,
    tipo_persona integer NOT NULL,
    tipo_trabajador integer NOT NULL,
    institucion integer NOT NULL,
    departamento character varying(90) NOT NULL,
    ocupacion character varying(90) NOT NULL,
    cedula_representante character varying(15),
    nombre_representante character varying(70),
    parentesco integer,
    fk_estado integer,
    direccion character varying(200) NOT NULL,
    lugar_nacimiento character varying(200) NOT NULL,
    telefono_celular character varying(15) NOT NULL,
    telefono_oficina character varying(15),
    telefono_fijo character varying(15),
    correo character varying(50) NOT NULL,
    foto character varying(200) DEFAULT 'foto-paciente.png'::character varying,
    estatus boolean DEFAULT true,
    fecha_creacion timestamp without time zone DEFAULT now(),
    fecha_actualizacion timestamp without time zone DEFAULT now(),
    fk_usuario_creacion integer,
    fk_usuario_actualizacion integer,
    nacionalidad character(1) NOT NULL,
    correo_sec character varying(50)
);


ALTER TABLE paciente OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 32935)
-- Name: paciente_id_paciente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE paciente_id_paciente_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE paciente_id_paciente_seq OWNER TO postgres;

--
-- TOC entry 2381 (class 0 OID 0)
-- Dependencies: 189
-- Name: paciente_id_paciente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE paciente_id_paciente_seq OWNED BY paciente.id_paciente;


--
-- TOC entry 188 (class 1259 OID 32916)
-- Name: parentesco; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE parentesco (
    id_parentesco integer NOT NULL,
    parentesco character varying(100),
    fecha_creacion date DEFAULT now(),
    usuario_actualizacion integer,
    usuario_creacion integer,
    status boolean,
    fecha_actualizacion date DEFAULT now()
);


ALTER TABLE parentesco OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 32914)
-- Name: parentesco_id_parentesco_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE parentesco_id_parentesco_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE parentesco_id_parentesco_seq OWNER TO postgres;

--
-- TOC entry 2382 (class 0 OID 0)
-- Dependencies: 187
-- Name: parentesco_id_parentesco_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE parentesco_id_parentesco_seq OWNED BY parentesco.id_parentesco;


--
-- TOC entry 178 (class 1259 OID 32811)
-- Name: parroquia; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE parroquia (
    id_parroquia integer NOT NULL,
    municipio integer NOT NULL,
    nombre character varying(100),
    estatus boolean DEFAULT true,
    fecha_creacion timestamp without time zone DEFAULT now(),
    fecha_actualizacion timestamp without time zone DEFAULT now(),
    fk_usuario_creacion integer,
    fk_usuario_actualizacion integer
);


ALTER TABLE parroquia OWNER TO postgres;

--
-- TOC entry 177 (class 1259 OID 32809)
-- Name: parroquia_id_parroquia_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE parroquia_id_parroquia_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE parroquia_id_parroquia_seq OWNER TO postgres;

--
-- TOC entry 2383 (class 0 OID 0)
-- Dependencies: 177
-- Name: parroquia_id_parroquia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE parroquia_id_parroquia_seq OWNED BY parroquia.id_parroquia;


--
-- TOC entry 198 (class 1259 OID 40995)
-- Name: patologias; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE patologias (
    id_tipo_patologia integer NOT NULL,
    patologia character varying(100),
    fecha_creacion date DEFAULT now(),
    usuario_creacion integer,
    fecha_actualizacion date DEFAULT now(),
    usuario_actualizacion integer,
    status boolean
);


ALTER TABLE patologias OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 40993)
-- Name: patologias_id_tipo_patologia_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE patologias_id_tipo_patologia_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE patologias_id_tipo_patologia_seq OWNER TO postgres;

--
-- TOC entry 2384 (class 0 OID 0)
-- Dependencies: 197
-- Name: patologias_id_tipo_patologia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE patologias_id_tipo_patologia_seq OWNED BY patologias.id_tipo_patologia;


--
-- TOC entry 192 (class 1259 OID 32987)
-- Name: reposo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE reposo (
    id_reposo integer NOT NULL,
    paciente integer NOT NULL,
    tiempo_reposo integer NOT NULL,
    medida_reposo character varying(200),
    observacion character varying(200),
    estatus boolean DEFAULT true,
    fecha_creacion timestamp without time zone DEFAULT now(),
    fecha_actualizacion timestamp without time zone DEFAULT now(),
    fk_usuario_creacion integer,
    fk_usuario_actualizacion integer
);


ALTER TABLE reposo OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 32985)
-- Name: reposo_id_reposo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE reposo_id_reposo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE reposo_id_reposo_seq OWNER TO postgres;

--
-- TOC entry 2385 (class 0 OID 0)
-- Dependencies: 191
-- Name: reposo_id_reposo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE reposo_id_reposo_seq OWNED BY reposo.id_reposo;


--
-- TOC entry 203 (class 1259 OID 41395)
-- Name: sede; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sede (
    id_sede integer NOT NULL,
    sede character varying(100),
    direccion character varying(500),
    estado integer NOT NULL,
    foto_sede character varying,
    horario_entrada character varying,
    horario_salida character varying,
    contacto character varying(100),
    correo_sede character varying(100),
    nombre_responsable character varying(50),
    cedula_responsable integer,
    es_activo boolean DEFAULT true,
    fecha_creacion timestamp without time zone DEFAULT now(),
    fecha_actualizacion timestamp without time zone DEFAULT now(),
    fk_usuario_creacion integer,
    fk_usuario_actualizacion integer,
    telefono_1 character varying(15),
    telefono_2 character varying(15),
    telefono_3 character varying(15)
);


ALTER TABLE sede OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 41438)
-- Name: sede_foto; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sede_foto (
    id_sede_foto integer NOT NULL,
    fk_sede integer NOT NULL,
    foto character varying(200),
    descripcion_foto character varying(300),
    es_activo boolean DEFAULT true,
    fecha_creacion timestamp without time zone DEFAULT now(),
    fecha_actualizacion timestamp without time zone DEFAULT now(),
    fk_usuario_creacion integer,
    fk_usuario_actualizacion integer
);


ALTER TABLE sede_foto OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 41436)
-- Name: sede_foto_id_sede_foto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sede_foto_id_sede_foto_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sede_foto_id_sede_foto_seq OWNER TO postgres;

--
-- TOC entry 2386 (class 0 OID 0)
-- Dependencies: 204
-- Name: sede_foto_id_sede_foto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sede_foto_id_sede_foto_seq OWNED BY sede_foto.id_sede_foto;


--
-- TOC entry 202 (class 1259 OID 41393)
-- Name: sede_id_sede_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sede_id_sede_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sede_id_sede_seq OWNER TO postgres;

--
-- TOC entry 2387 (class 0 OID 0)
-- Dependencies: 202
-- Name: sede_id_sede_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sede_id_sede_seq OWNED BY sede.id_sede;


--
-- TOC entry 217 (class 1259 OID 41623)
-- Name: solicitud; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE solicitud (
    id_solicitud integer NOT NULL,
    fk_paciente integer NOT NULL,
    fk_sede integer,
    fk_especialidad integer NOT NULL,
    fecha_solicitud date NOT NULL,
    hora time with time zone,
    motivo_consulta character varying(300),
    medico_referido character varying(200),
    fecha_creacion date DEFAULT now(),
    usuario_creacion integer,
    es_activo boolean DEFAULT true
);


ALTER TABLE solicitud OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 41621)
-- Name: solicitud_id_solicitud_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE solicitud_id_solicitud_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE solicitud_id_solicitud_seq OWNER TO postgres;

--
-- TOC entry 2388 (class 0 OID 0)
-- Dependencies: 216
-- Name: solicitud_id_solicitud_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE solicitud_id_solicitud_seq OWNED BY solicitud.id_solicitud;


--
-- TOC entry 184 (class 1259 OID 32876)
-- Name: tipo_persona; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tipo_persona (
    id_tipo_persona integer NOT NULL,
    tipo_persona character varying(100),
    fecha_creacion date DEFAULT now(),
    usuario_actualizacion integer,
    usuario_creacion integer,
    status boolean,
    fecha_actualizacion date DEFAULT now()
);


ALTER TABLE tipo_persona OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 32874)
-- Name: tipo_persona_id_tipo_persona_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tipo_persona_id_tipo_persona_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tipo_persona_id_tipo_persona_seq OWNER TO postgres;

--
-- TOC entry 2389 (class 0 OID 0)
-- Dependencies: 183
-- Name: tipo_persona_id_tipo_persona_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tipo_persona_id_tipo_persona_seq OWNED BY tipo_persona.id_tipo_persona;


--
-- TOC entry 186 (class 1259 OID 32896)
-- Name: tipo_trabajador; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tipo_trabajador (
    id_tipo_trabajador integer NOT NULL,
    tipo_trabajador character varying(100),
    fecha_creacion date DEFAULT now(),
    usuario_actualizacion integer,
    usuario_creacion integer,
    status boolean,
    fecha_actualizacion date DEFAULT now()
);


ALTER TABLE tipo_trabajador OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 32894)
-- Name: tipo_trabajador_id_tipo_trabajador_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tipo_trabajador_id_tipo_trabajador_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tipo_trabajador_id_tipo_trabajador_seq OWNER TO postgres;

--
-- TOC entry 2390 (class 0 OID 0)
-- Dependencies: 185
-- Name: tipo_trabajador_id_tipo_trabajador_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tipo_trabajador_id_tipo_trabajador_seq OWNED BY tipo_trabajador.id_tipo_trabajador;


--
-- TOC entry 180 (class 1259 OID 32835)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE usuario (
    id_usuario integer NOT NULL,
    usuario character varying(13) NOT NULL,
    clave character varying(80) NOT NULL,
    nombre character varying(70) NOT NULL,
    apellido character varying(70) NOT NULL,
    telefono_oficina character varying(15),
    telefono_celular character varying(15) NOT NULL,
    correo character varying(50) NOT NULL,
    estatus boolean DEFAULT true,
    perfil character varying(20),
    fecha_creacion timestamp without time zone DEFAULT now(),
    fecha_actualizacion timestamp without time zone DEFAULT now(),
    fk_usuario_creacion integer,
    fk_usuario_actualizacion integer
);


ALTER TABLE usuario OWNER TO postgres;

--
-- TOC entry 179 (class 1259 OID 32833)
-- Name: usuario_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE usuario_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE usuario_id_usuario_seq OWNER TO postgres;

--
-- TOC entry 2391 (class 0 OID 0)
-- Dependencies: 179
-- Name: usuario_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE usuario_id_usuario_seq OWNED BY usuario.id_usuario;


--
-- TOC entry 2096 (class 2604 OID 41604)
-- Name: id_actividad; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY actividad ALTER COLUMN id_actividad SET DEFAULT nextval('actividad_id_actividad_seq'::regclass);


--
-- TOC entry 2084 (class 2604 OID 41497)
-- Name: id_dia; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dias ALTER COLUMN id_dia SET DEFAULT nextval('dias_id_dia_seq'::regclass);


--
-- TOC entry 2080 (class 2604 OID 41481)
-- Name: id_especialidad; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY especialidad ALTER COLUMN id_especialidad SET DEFAULT nextval('especialidad_id_especialidad_seq'::regclass);


--
-- TOC entry 2021 (class 2604 OID 32788)
-- Name: id_estado; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY estado ALTER COLUMN id_estado SET DEFAULT nextval('estado_id_estado_seq'::regclass);


--
-- TOC entry 2059 (class 2604 OID 33006)
-- Name: id_edo_civil; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY estado_civil ALTER COLUMN id_edo_civil SET DEFAULT nextval('estado_civil_id_edo_civil_seq'::regclass);


--
-- TOC entry 2069 (class 2604 OID 41018)
-- Name: id_evaluacion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY evolucion ALTER COLUMN id_evaluacion SET DEFAULT nextval('evolucion_id_evaluacion_seq'::regclass);


--
-- TOC entry 2062 (class 2604 OID 33041)
-- Name: id_historia_clinica; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY historia_clinica ALTER COLUMN id_historia_clinica SET DEFAULT nextval('historia_clinica_id_historia_clinica_seq'::regclass);


--
-- TOC entry 2037 (class 2604 OID 32859)
-- Name: id_institucion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY institucion ALTER COLUMN id_institucion SET DEFAULT nextval('institucion_id_institucion_seq'::regclass);


--
-- TOC entry 2091 (class 2604 OID 41573)
-- Name: id_medico_horario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY medico_horario ALTER COLUMN id_medico_horario SET DEFAULT nextval('medico_horario_id_medico_horario_seq'::regclass);


--
-- TOC entry 2087 (class 2604 OID 41517)
-- Name: id_medico; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY medicos ALTER COLUMN id_medico SET DEFAULT nextval('medicos_id_medico_seq'::regclass);


--
-- TOC entry 2025 (class 2604 OID 32803)
-- Name: id_municipio; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY municipio ALTER COLUMN id_municipio SET DEFAULT nextval('municipio_id_municipio_seq'::regclass);


--
-- TOC entry 2049 (class 2604 OID 32940)
-- Name: id_paciente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY paciente ALTER COLUMN id_paciente SET DEFAULT nextval('paciente_id_paciente_seq'::regclass);


--
-- TOC entry 2046 (class 2604 OID 32919)
-- Name: id_parentesco; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY parentesco ALTER COLUMN id_parentesco SET DEFAULT nextval('parentesco_id_parentesco_seq'::regclass);


--
-- TOC entry 2029 (class 2604 OID 32814)
-- Name: id_parroquia; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY parroquia ALTER COLUMN id_parroquia SET DEFAULT nextval('parroquia_id_parroquia_seq'::regclass);


--
-- TOC entry 2066 (class 2604 OID 40998)
-- Name: id_tipo_patologia; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY patologias ALTER COLUMN id_tipo_patologia SET DEFAULT nextval('patologias_id_tipo_patologia_seq'::regclass);


--
-- TOC entry 2055 (class 2604 OID 32990)
-- Name: id_reposo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY reposo ALTER COLUMN id_reposo SET DEFAULT nextval('reposo_id_reposo_seq'::regclass);


--
-- TOC entry 2072 (class 2604 OID 41398)
-- Name: id_sede; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sede ALTER COLUMN id_sede SET DEFAULT nextval('sede_id_sede_seq'::regclass);


--
-- TOC entry 2076 (class 2604 OID 41441)
-- Name: id_sede_foto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sede_foto ALTER COLUMN id_sede_foto SET DEFAULT nextval('sede_foto_id_sede_foto_seq'::regclass);


--
-- TOC entry 2099 (class 2604 OID 41626)
-- Name: id_solicitud; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY solicitud ALTER COLUMN id_solicitud SET DEFAULT nextval('solicitud_id_solicitud_seq'::regclass);


--
-- TOC entry 2040 (class 2604 OID 32879)
-- Name: id_tipo_persona; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_persona ALTER COLUMN id_tipo_persona SET DEFAULT nextval('tipo_persona_id_tipo_persona_seq'::regclass);


--
-- TOC entry 2043 (class 2604 OID 32899)
-- Name: id_tipo_trabajador; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_trabajador ALTER COLUMN id_tipo_trabajador SET DEFAULT nextval('tipo_trabajador_id_tipo_trabajador_seq'::regclass);


--
-- TOC entry 2033 (class 2604 OID 32838)
-- Name: id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario ALTER COLUMN id_usuario SET DEFAULT nextval('usuario_id_usuario_seq'::regclass);


--
-- TOC entry 2358 (class 0 OID 41601)
-- Dependencies: 215
-- Data for Name: actividad; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2392 (class 0 OID 0)
-- Dependencies: 214
-- Name: actividad_id_actividad_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('actividad_id_actividad_seq', 1, false);


--
-- TOC entry 2352 (class 0 OID 41494)
-- Dependencies: 209
-- Data for Name: dias; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO dias VALUES (1, 'Domingo', true, '2016-09-13', 1, '2016-09-13', 1);


--
-- TOC entry 2393 (class 0 OID 0)
-- Dependencies: 208
-- Name: dias_id_dia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('dias_id_dia_seq', 1, true);


--
-- TOC entry 2350 (class 0 OID 41478)
-- Dependencies: 207
-- Data for Name: especialidad; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO especialidad VALUES (1, 'Odontología', 1, true, '2016-09-13 09:53:30.304204', '2016-09-13 09:53:30.304204', 1, NULL);
INSERT INTO especialidad VALUES (2, 'Medicina General', 1, true, '2016-09-14 04:08:52.79671', '2016-09-14 04:08:52.79671', 1, NULL);
INSERT INTO especialidad VALUES (3, 'Psiquiatría', 1, true, '2016-09-14 04:12:18.920649', '2016-09-14 04:12:18.920649', 1, NULL);
INSERT INTO especialidad VALUES (4, 'Medicina General', 2, true, '2016-09-14 04:13:42.105559', '2016-09-14 04:13:42.105559', 1, NULL);


--
-- TOC entry 2394 (class 0 OID 0)
-- Dependencies: 206
-- Name: especialidad_id_especialidad_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('especialidad_id_especialidad_seq', 4, true);


--
-- TOC entry 2317 (class 0 OID 32785)
-- Dependencies: 174
-- Data for Name: estado; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO estado VALUES (2, 'Anzoátegui', 'AN', true, '2015-08-25 11:29:30.253165', NULL, 1, NULL);
INSERT INTO estado VALUES (1, 'Amazonas', 'AM', true, '2015-08-25 11:29:18.538547', NULL, 1, NULL);
INSERT INTO estado VALUES (3, 'Apure', 'AP', true, '2015-08-25 14:07:37.226565', NULL, 1, NULL);
INSERT INTO estado VALUES (4, 'Aragua', 'AR', true, '2015-08-25 14:09:31.918425', NULL, 1, NULL);
INSERT INTO estado VALUES (5, 'Barinas', 'BA', true, '2015-08-25 14:10:33.536987', NULL, 1, NULL);
INSERT INTO estado VALUES (6, 'BolÃ­var', 'BO', true, '2015-08-25 14:10:48.28322', NULL, 1, NULL);
INSERT INTO estado VALUES (7, 'Carabobo', 'CA', true, '2015-08-25 14:11:03.172771', NULL, 1, NULL);
INSERT INTO estado VALUES (8, 'Cojedes', 'CO', true, '2015-08-25 14:11:20.165195', NULL, 1, NULL);
INSERT INTO estado VALUES (9, 'Delta Amacuro', 'DA', true, '2015-08-25 14:11:35.894017', NULL, 1, NULL);
INSERT INTO estado VALUES (10, 'Distrito Capital', 'DC', true, '2015-08-25 14:11:55.891623', NULL, 1, NULL);
INSERT INTO estado VALUES (11, 'Falcón', 'FA', true, '2015-08-25 14:12:05.615864', NULL, 1, NULL);
INSERT INTO estado VALUES (12, 'Guárico', 'GU', true, '2015-08-25 14:12:22.885827', NULL, 1, NULL);
INSERT INTO estado VALUES (13, 'Lara', 'LA', true, '2015-08-25 14:12:40.302746', NULL, 1, NULL);
INSERT INTO estado VALUES (14, 'Mérida', 'ME', true, '2015-08-25 14:13:15.962726', NULL, 1, NULL);
INSERT INTO estado VALUES (15, 'Miranda', 'MI', true, '2015-08-25 14:13:21.45205', NULL, 1, NULL);
INSERT INTO estado VALUES (16, 'Monagas', 'MO', true, '2015-08-25 14:13:33.698225', NULL, 1, NULL);
INSERT INTO estado VALUES (17, 'Nueva Esparta', 'NE', true, '2015-08-25 14:13:58.484103', NULL, 1, NULL);
INSERT INTO estado VALUES (18, 'Portuguesa', 'PO', true, '2015-08-25 14:14:17.704198', NULL, 1, NULL);
INSERT INTO estado VALUES (19, 'Sucre', 'SU', true, '2015-08-25 14:14:41.639901', NULL, 1, NULL);
INSERT INTO estado VALUES (20, 'Táchira', 'TA', true, '2015-08-25 14:14:49.813575', NULL, 1, NULL);
INSERT INTO estado VALUES (22, 'Vargas', 'VA', true, '2015-08-25 14:15:15.582557', NULL, 1, NULL);
INSERT INTO estado VALUES (23, 'Yaracuy', 'YA', true, '2015-08-25 14:15:31.961235', NULL, 1, NULL);
INSERT INTO estado VALUES (21, 'Trujillo', 'TR', true, '2015-08-25 14:15:08.982647', NULL, 1, NULL);
INSERT INTO estado VALUES (24, 'Zulia', 'ZU', false, '2015-08-25 14:15:38.595598', '2016-09-01 00:00:00', 1, 1);


--
-- TOC entry 2337 (class 0 OID 33003)
-- Dependencies: 194
-- Data for Name: estado_civil; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO estado_civil VALUES (3, 'Viudo', '2016-08-17', 1, 1, true, '2016-09-07');
INSERT INTO estado_civil VALUES (2, 'Casado', '2016-08-17', 1, 1, true, '2016-09-07');
INSERT INTO estado_civil VALUES (1, 'Soltero', '2016-08-17', 1, 1, true, '2016-09-07');


--
-- TOC entry 2395 (class 0 OID 0)
-- Dependencies: 193
-- Name: estado_civil_id_edo_civil_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('estado_civil_id_edo_civil_seq', 3, true);


--
-- TOC entry 2396 (class 0 OID 0)
-- Dependencies: 173
-- Name: estado_id_estado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('estado_id_estado_seq', 1, false);


--
-- TOC entry 2343 (class 0 OID 41015)
-- Dependencies: 200
-- Data for Name: evolucion; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2397 (class 0 OID 0)
-- Dependencies: 199
-- Name: evolucion_id_evaluacion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('evolucion_id_evaluacion_seq', 1, true);


--
-- TOC entry 2339 (class 0 OID 33038)
-- Dependencies: 196
-- Data for Name: historia_clinica; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2398 (class 0 OID 0)
-- Dependencies: 195
-- Name: historia_clinica_id_historia_clinica_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('historia_clinica_id_historia_clinica_seq', 1, false);


--
-- TOC entry 2399 (class 0 OID 0)
-- Dependencies: 201
-- Name: historia_clinica_maf_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('historia_clinica_maf_seq', 1, false);


--
-- TOC entry 2325 (class 0 OID 32856)
-- Dependencies: 182
-- Data for Name: institucion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO institucion VALUES (1, 'Archivo General de la Nación', '', 'Final avenida Panteón', '(0212)-000-0000', '(0212)-000-0000', '2016-08-17 00:00:00', 1, 1, true, '2016-09-05 00:00:00');
INSERT INTO institucion VALUES (2, 'Biblioteca Ayacucho', '', 'Av. Urdaneta', '(0212)-000-0000', '(0212)-000-0000', '2016-08-17 00:00:00', 1, 1, true, '2016-09-05 00:00:00');
INSERT INTO institucion VALUES (3, 'Casa de Bello', '', 'Esquina de Salas', '(0212)-000-0000', '(0212)-000-0000', '2016-08-17 00:00:00', 1, 1, true, '2016-09-05 00:00:00');


--
-- TOC entry 2400 (class 0 OID 0)
-- Dependencies: 181
-- Name: institucion_id_institucion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('institucion_id_institucion_seq', 3, true);


--
-- TOC entry 2356 (class 0 OID 41570)
-- Dependencies: 213
-- Data for Name: medico_horario; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2401 (class 0 OID 0)
-- Dependencies: 212
-- Name: medico_horario_id_medico_horario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('medico_horario_id_medico_horario_seq', 1, false);


--
-- TOC entry 2354 (class 0 OID 41514)
-- Dependencies: 211
-- Data for Name: medicos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2402 (class 0 OID 0)
-- Dependencies: 210
-- Name: medicos_id_medico_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('medicos_id_medico_seq', 1, false);


--
-- TOC entry 2319 (class 0 OID 32800)
-- Dependencies: 176
-- Data for Name: municipio; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2403 (class 0 OID 0)
-- Dependencies: 175
-- Name: municipio_id_municipio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('municipio_id_municipio_seq', 1, false);


--
-- TOC entry 2333 (class 0 OID 32937)
-- Dependencies: 190
-- Data for Name: paciente; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO paciente VALUES (5, '16027739', '', 'Lenin', 'Hernandez', '1983-08-27 00:00:00', 'M', 1, 1, 1, 1, 'Oficina de Tecnología de la Información', 'Bachiller I', '', '', NULL, 10, 'El paraiso', 'Caracas', '(0426)-902-8389', '(0212)-454-5454', '(0212)-541-6454', 'leninmhs@gmail.com', '', true, '2016-09-08 10:10:41.220202', '2016-09-08 10:10:41.220202', 1, NULL, 'V', '');
INSERT INTO paciente VALUES (7, '16027739', NULL, 'Liseth', 'Delgado', '2016-09-21 00:00:00', 'F', 3, 2, 1, 1, 'Oficina de Tecnología de la Información', 'Bachiller I', '', '', NULL, 2, 'Av. las fuentes del paraiso', 'Bocono. Estado Trujillo', '(0212)-121-2121', '', '(0426)-656-5656', 'leninmhs@gmail.com', NULL, true, '2016-09-08 13:17:45.590665', '2016-09-08 13:17:45.590665', NULL, NULL, 'V', '');
INSERT INTO paciente VALUES (8, '19186999', NULL, 'Liseth', 'Delgado', '2016-09-15 00:00:00', 'M', 1, 2, 2, 1, 'Oficina de Tecnología de la Información', 'Bachiller I', '', '', NULL, 4, 'Av. las fuentes del paraiso', 'Bocono. Estado Trujillo', '(0212)-121-2121', '', '', 'leninmhs@gmail.com', 'Captura de pantalla de 2016-06-22 09:53:57.png', true, '2016-09-08 13:23:31.462276', '2016-09-08 13:23:31.462276', NULL, NULL, 'V', '');
INSERT INTO paciente VALUES (6, '19186998', '19186999', 'Liseth', 'Delgado', '2016-09-28 00:00:00', 'F', 1, 1, 2, 1, 'Oficina de Tecnología de la Información', 'Bachiller I', '', '', NULL, 2, 'Av. las fuentes del paraiso', 'Bocono. Estado Trujillo', '(3245)-345-4352', '', '', 'leninmhs@gmail.com', NULL, true, '2016-09-08 10:23:47.350604', '2016-09-08 10:23:47.350604', 1, NULL, 'V', '');


--
-- TOC entry 2404 (class 0 OID 0)
-- Dependencies: 189
-- Name: paciente_id_paciente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('paciente_id_paciente_seq', 8, true);


--
-- TOC entry 2331 (class 0 OID 32916)
-- Dependencies: 188
-- Data for Name: parentesco; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO parentesco VALUES (4, 'Abuelo', '2016-08-17', 1, 1, true, '2016-09-01');
INSERT INTO parentesco VALUES (3, 'Hijo', '2016-08-17', 1, 1, true, '2016-09-07');
INSERT INTO parentesco VALUES (2, 'Madre', '2016-08-17', 1, 1, true, '2016-09-07');
INSERT INTO parentesco VALUES (1, 'Padre', '2016-08-17', 1, 1, true, '2016-09-07');


--
-- TOC entry 2405 (class 0 OID 0)
-- Dependencies: 187
-- Name: parentesco_id_parentesco_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('parentesco_id_parentesco_seq', 4, true);


--
-- TOC entry 2321 (class 0 OID 32811)
-- Dependencies: 178
-- Data for Name: parroquia; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2406 (class 0 OID 0)
-- Dependencies: 177
-- Name: parroquia_id_parroquia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('parroquia_id_parroquia_seq', 1, false);


--
-- TOC entry 2341 (class 0 OID 40995)
-- Dependencies: 198
-- Data for Name: patologias; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO patologias VALUES (1, 'Enfermedades respiratorias', '2016-09-02', 1, '2016-09-05', 1, true);


--
-- TOC entry 2407 (class 0 OID 0)
-- Dependencies: 197
-- Name: patologias_id_tipo_patologia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('patologias_id_tipo_patologia_seq', 1, true);


--
-- TOC entry 2335 (class 0 OID 32987)
-- Dependencies: 192
-- Data for Name: reposo; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2408 (class 0 OID 0)
-- Dependencies: 191
-- Name: reposo_id_reposo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('reposo_id_reposo_seq', 1, false);


--
-- TOC entry 2346 (class 0 OID 41395)
-- Dependencies: 203
-- Data for Name: sede; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO sede VALUES (1, 'Servicio Médico "Lic. Pedro Torres"', 'Final avenida Panteón, edificio Sede Administrativa Biblioteca Nacional, Complejo Cultural Foro Libertador. Parroquia Altagracia', 10, 'bn.jpg', '7:00 AM', '4:00 PM', '04142368578', 'servicio.medico@bnv.gob.ve', 'Pablo Torres', 5523612, true, '2016-09-13 05:04:25.298516', '2016-09-13 00:00:00', 1, 1, '(0212)-505-9345', '', '');
INSERT INTO sede VALUES (2, 'Servicio Médico "Las Torres"', 'Avenida Baralt', 10, 'bn.jpg', '6:00 AM', '5:00 PM', '0212-5050000', 'casa.artista@gmail.com', 'Juan Perez', NULL, true, '2016-09-14 04:08:11.304085', '2016-09-14 00:00:00', 1, 1, '(0212)-000-0000', '', '');


--
-- TOC entry 2348 (class 0 OID 41438)
-- Dependencies: 205
-- Data for Name: sede_foto; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2409 (class 0 OID 0)
-- Dependencies: 204
-- Name: sede_foto_id_sede_foto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sede_foto_id_sede_foto_seq', 1, false);


--
-- TOC entry 2410 (class 0 OID 0)
-- Dependencies: 202
-- Name: sede_id_sede_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sede_id_sede_seq', 2, true);


--
-- TOC entry 2360 (class 0 OID 41623)
-- Dependencies: 217
-- Data for Name: solicitud; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2411 (class 0 OID 0)
-- Dependencies: 216
-- Name: solicitud_id_solicitud_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('solicitud_id_solicitud_seq', 1, false);


--
-- TOC entry 2327 (class 0 OID 32876)
-- Dependencies: 184
-- Data for Name: tipo_persona; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tipo_persona VALUES (1, 'Titular', '2016-08-17', NULL, 1, true, '2016-08-17');
INSERT INTO tipo_persona VALUES (2, 'Beneficiario', '2016-08-17', 1, 1, true, '2016-09-01');
INSERT INTO tipo_persona VALUES (3, 'Beneficiario menor', '2016-09-12', 1, 1, true, '2016-09-12');


--
-- TOC entry 2412 (class 0 OID 0)
-- Dependencies: 183
-- Name: tipo_persona_id_tipo_persona_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_persona_id_tipo_persona_seq', 3, true);


--
-- TOC entry 2329 (class 0 OID 32896)
-- Dependencies: 186
-- Data for Name: tipo_trabajador; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tipo_trabajador VALUES (1, 'Contratado', '2016-08-17', NULL, 1, true, '2016-08-17');
INSERT INTO tipo_trabajador VALUES (2, 'Fijo', '2016-08-17', 1, 1, true, '2016-09-01');


--
-- TOC entry 2413 (class 0 OID 0)
-- Dependencies: 185
-- Name: tipo_trabajador_id_tipo_trabajador_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_trabajador_id_tipo_trabajador_seq', 2, true);


--
-- TOC entry 2323 (class 0 OID 32835)
-- Dependencies: 180
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO usuario VALUES (1, 'leninmhs', 'e10adc3949ba59abbe56e057f20f883e', 'Lenin', 'Hernandez', NULL, '04269028389', 'leninmhs@gmail.com', true, 'Admin', '2016-08-17 08:17:50.37125', '2016-08-17 08:17:50.37125', NULL, NULL);


--
-- TOC entry 2414 (class 0 OID 0)
-- Dependencies: 179
-- Name: usuario_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuario_id_usuario_seq', 1, true);


--
-- TOC entry 2145 (class 2606 OID 41578)
-- Name: id_medico_horario; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY medico_horario
    ADD CONSTRAINT id_medico_horario PRIMARY KEY (id_medico_horario);


--
-- TOC entry 2149 (class 2606 OID 41633)
-- Name: id_solicitud; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY solicitud
    ADD CONSTRAINT id_solicitud PRIMARY KEY (id_solicitud);


--
-- TOC entry 2103 (class 2606 OID 32795)
-- Name: nombre; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY estado
    ADD CONSTRAINT nombre UNIQUE (nombre);


--
-- TOC entry 2141 (class 2606 OID 41501)
-- Name: pk_dia; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY dias
    ADD CONSTRAINT pk_dia PRIMARY KEY (id_dia);


--
-- TOC entry 2139 (class 2606 OID 41486)
-- Name: pk_especialidad; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY especialidad
    ADD CONSTRAINT pk_especialidad PRIMARY KEY (id_especialidad);


--
-- TOC entry 2105 (class 2606 OID 32793)
-- Name: pk_estado; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY estado
    ADD CONSTRAINT pk_estado PRIMARY KEY (id_estado);


--
-- TOC entry 2127 (class 2606 OID 33010)
-- Name: pk_estado_civil; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY estado_civil
    ADD CONSTRAINT pk_estado_civil PRIMARY KEY (id_edo_civil);


--
-- TOC entry 2129 (class 2606 OID 33049)
-- Name: pk_historia_clinica; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY historia_clinica
    ADD CONSTRAINT pk_historia_clinica PRIMARY KEY (id_historia_clinica);


--
-- TOC entry 2147 (class 2606 OID 41609)
-- Name: pk_id_actividad; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY actividad
    ADD CONSTRAINT pk_id_actividad PRIMARY KEY (id_actividad);


--
-- TOC entry 2133 (class 2606 OID 41025)
-- Name: pk_id_evaluacion; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY evolucion
    ADD CONSTRAINT pk_id_evaluacion PRIMARY KEY (id_evaluacion);


--
-- TOC entry 2115 (class 2606 OID 32863)
-- Name: pk_institucion; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY institucion
    ADD CONSTRAINT pk_institucion PRIMARY KEY (id_institucion);


--
-- TOC entry 2143 (class 2606 OID 41525)
-- Name: pk_medico; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY medicos
    ADD CONSTRAINT pk_medico PRIMARY KEY (id_medico);


--
-- TOC entry 2109 (class 2606 OID 32808)
-- Name: pk_municipio; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY municipio
    ADD CONSTRAINT pk_municipio PRIMARY KEY (id_municipio);


--
-- TOC entry 2123 (class 2606 OID 32949)
-- Name: pk_paciente; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY paciente
    ADD CONSTRAINT pk_paciente PRIMARY KEY (id_paciente);


--
-- TOC entry 2121 (class 2606 OID 32923)
-- Name: pk_parentesco; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY parentesco
    ADD CONSTRAINT pk_parentesco PRIMARY KEY (id_parentesco);


--
-- TOC entry 2111 (class 2606 OID 32819)
-- Name: pk_parroquia; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY parroquia
    ADD CONSTRAINT pk_parroquia PRIMARY KEY (id_parroquia);


--
-- TOC entry 2125 (class 2606 OID 32995)
-- Name: pk_reposo; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY reposo
    ADD CONSTRAINT pk_reposo PRIMARY KEY (id_reposo);


--
-- TOC entry 2135 (class 2606 OID 41406)
-- Name: pk_sede; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sede
    ADD CONSTRAINT pk_sede PRIMARY KEY (id_sede);


--
-- TOC entry 2137 (class 2606 OID 41449)
-- Name: pk_sede_foto; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sede_foto
    ADD CONSTRAINT pk_sede_foto PRIMARY KEY (id_sede_foto);


--
-- TOC entry 2131 (class 2606 OID 41002)
-- Name: pk_tipo_patologia; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY patologias
    ADD CONSTRAINT pk_tipo_patologia PRIMARY KEY (id_tipo_patologia);


--
-- TOC entry 2117 (class 2606 OID 32883)
-- Name: pk_tipo_persona; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tipo_persona
    ADD CONSTRAINT pk_tipo_persona PRIMARY KEY (id_tipo_persona);


--
-- TOC entry 2119 (class 2606 OID 32903)
-- Name: pk_tipo_trabajador; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tipo_trabajador
    ADD CONSTRAINT pk_tipo_trabajador PRIMARY KEY (id_tipo_trabajador);


--
-- TOC entry 2113 (class 2606 OID 32843)
-- Name: pk_usuario; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT pk_usuario PRIMARY KEY (id_usuario);


--
-- TOC entry 2107 (class 2606 OID 32797)
-- Name: siglas; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY estado
    ADD CONSTRAINT siglas UNIQUE (siglas);


--
-- TOC entry 2199 (class 2606 OID 41584)
-- Name: fk_dia; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY medico_horario
    ADD CONSTRAINT fk_dia FOREIGN KEY (dia) REFERENCES dias(id_dia);


--
-- TOC entry 2173 (class 2606 OID 33021)
-- Name: fk_edo_civil; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY paciente
    ADD CONSTRAINT fk_edo_civil FOREIGN KEY (estado_civil) REFERENCES estado_civil(id_edo_civil);


--
-- TOC entry 2196 (class 2606 OID 41536)
-- Name: fk_especialidad; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY medicos
    ADD CONSTRAINT fk_especialidad FOREIGN KEY (especialidad) REFERENCES especialidad(id_especialidad) MATCH FULL;


--
-- TOC entry 2167 (class 2606 OID 32955)
-- Name: fk_estado; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY paciente
    ADD CONSTRAINT fk_estado FOREIGN KEY (fk_estado) REFERENCES estado(id_estado);


--
-- TOC entry 2183 (class 2606 OID 41407)
-- Name: fk_estado; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sede
    ADD CONSTRAINT fk_estado FOREIGN KEY (estado) REFERENCES estado(id_estado);


--
-- TOC entry 2166 (class 2606 OID 32950)
-- Name: fk_institucion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY paciente
    ADD CONSTRAINT fk_institucion FOREIGN KEY (institucion) REFERENCES institucion(id_institucion);


--
-- TOC entry 2198 (class 2606 OID 41579)
-- Name: fk_medico_horario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY medico_horario
    ADD CONSTRAINT fk_medico_horario FOREIGN KEY (medico) REFERENCES medicos(id_medico);


--
-- TOC entry 2174 (class 2606 OID 32996)
-- Name: fk_paciente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY reposo
    ADD CONSTRAINT fk_paciente FOREIGN KEY (paciente) REFERENCES paciente(id_paciente);


--
-- TOC entry 2177 (class 2606 OID 33050)
-- Name: fk_paciente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY historia_clinica
    ADD CONSTRAINT fk_paciente FOREIGN KEY (paciente) REFERENCES paciente(id_paciente);


--
-- TOC entry 2182 (class 2606 OID 41036)
-- Name: fk_paciente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY evolucion
    ADD CONSTRAINT fk_paciente FOREIGN KEY (paciente) REFERENCES paciente(id_paciente);


--
-- TOC entry 2205 (class 2606 OID 41634)
-- Name: fk_paciente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY solicitud
    ADD CONSTRAINT fk_paciente FOREIGN KEY (fk_paciente) REFERENCES paciente(id_paciente);


--
-- TOC entry 2170 (class 2606 OID 32970)
-- Name: fk_parentesco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY paciente
    ADD CONSTRAINT fk_parentesco FOREIGN KEY (parentesco) REFERENCES parentesco(id_parentesco);


--
-- TOC entry 2186 (class 2606 OID 41450)
-- Name: fk_sede; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sede_foto
    ADD CONSTRAINT fk_sede FOREIGN KEY (fk_sede) REFERENCES sede(id_sede);


--
-- TOC entry 2189 (class 2606 OID 41487)
-- Name: fk_sede; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY especialidad
    ADD CONSTRAINT fk_sede FOREIGN KEY (sede) REFERENCES sede(id_sede);


--
-- TOC entry 2206 (class 2606 OID 41639)
-- Name: fk_sede; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY solicitud
    ADD CONSTRAINT fk_sede FOREIGN KEY (fk_sede) REFERENCES sede(id_sede);


--
-- TOC entry 2204 (class 2606 OID 41644)
-- Name: fk_sede; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY actividad
    ADD CONSTRAINT fk_sede FOREIGN KEY (fk_sede) REFERENCES sede(id_sede);


--
-- TOC entry 2197 (class 2606 OID 41662)
-- Name: fk_sede; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY medicos
    ADD CONSTRAINT fk_sede FOREIGN KEY (sede) REFERENCES sede(id_sede) MATCH FULL;


--
-- TOC entry 2168 (class 2606 OID 32960)
-- Name: fk_tipo_persona; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY paciente
    ADD CONSTRAINT fk_tipo_persona FOREIGN KEY (tipo_persona) REFERENCES tipo_persona(id_tipo_persona);


--
-- TOC entry 2169 (class 2606 OID 32965)
-- Name: fk_tipo_trabajador; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY paciente
    ADD CONSTRAINT fk_tipo_trabajador FOREIGN KEY (tipo_trabajador) REFERENCES tipo_trabajador(id_tipo_trabajador);


--
-- TOC entry 2156 (class 2606 OID 32844)
-- Name: fk_usuario_actualizacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT fk_usuario_actualizacion FOREIGN KEY (fk_usuario_actualizacion) REFERENCES usuario(id_usuario) MATCH FULL;


--
-- TOC entry 2158 (class 2606 OID 32864)
-- Name: fk_usuario_actualizacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY institucion
    ADD CONSTRAINT fk_usuario_actualizacion FOREIGN KEY (usuario_actualizacion) REFERENCES usuario(id_usuario) MATCH FULL;


--
-- TOC entry 2160 (class 2606 OID 32884)
-- Name: fk_usuario_actualizacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_persona
    ADD CONSTRAINT fk_usuario_actualizacion FOREIGN KEY (usuario_actualizacion) REFERENCES usuario(id_usuario) MATCH FULL;


--
-- TOC entry 2162 (class 2606 OID 32904)
-- Name: fk_usuario_actualizacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_trabajador
    ADD CONSTRAINT fk_usuario_actualizacion FOREIGN KEY (usuario_actualizacion) REFERENCES usuario(id_usuario) MATCH FULL;


--
-- TOC entry 2164 (class 2606 OID 32924)
-- Name: fk_usuario_actualizacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY parentesco
    ADD CONSTRAINT fk_usuario_actualizacion FOREIGN KEY (usuario_actualizacion) REFERENCES usuario(id_usuario) MATCH FULL;


--
-- TOC entry 2172 (class 2606 OID 32980)
-- Name: fk_usuario_actualizacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY paciente
    ADD CONSTRAINT fk_usuario_actualizacion FOREIGN KEY (fk_usuario_actualizacion) REFERENCES usuario(id_usuario);


--
-- TOC entry 2175 (class 2606 OID 33011)
-- Name: fk_usuario_actualizacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY estado_civil
    ADD CONSTRAINT fk_usuario_actualizacion FOREIGN KEY (usuario_actualizacion) REFERENCES usuario(id_usuario) MATCH FULL;


--
-- TOC entry 2151 (class 2606 OID 40968)
-- Name: fk_usuario_actualizacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY estado
    ADD CONSTRAINT fk_usuario_actualizacion FOREIGN KEY (fk_usuario_actualizacion) REFERENCES usuario(id_usuario) MATCH FULL;


--
-- TOC entry 2153 (class 2606 OID 40978)
-- Name: fk_usuario_actualizacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY municipio
    ADD CONSTRAINT fk_usuario_actualizacion FOREIGN KEY (fk_usuario_actualizacion) REFERENCES usuario(id_usuario) MATCH FULL;


--
-- TOC entry 2155 (class 2606 OID 40988)
-- Name: fk_usuario_actualizacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY parroquia
    ADD CONSTRAINT fk_usuario_actualizacion FOREIGN KEY (fk_usuario_actualizacion) REFERENCES usuario(id_usuario) MATCH FULL;


--
-- TOC entry 2178 (class 2606 OID 41003)
-- Name: fk_usuario_actualizacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY patologias
    ADD CONSTRAINT fk_usuario_actualizacion FOREIGN KEY (usuario_actualizacion) REFERENCES usuario(id_usuario) MATCH FULL;


--
-- TOC entry 2180 (class 2606 OID 41026)
-- Name: fk_usuario_actualizacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY evolucion
    ADD CONSTRAINT fk_usuario_actualizacion FOREIGN KEY (usuario_actualizacion) REFERENCES usuario(id_usuario) MATCH FULL;


--
-- TOC entry 2184 (class 2606 OID 41412)
-- Name: fk_usuario_actualizacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sede
    ADD CONSTRAINT fk_usuario_actualizacion FOREIGN KEY (fk_usuario_actualizacion) REFERENCES usuario(id_usuario);


--
-- TOC entry 2187 (class 2606 OID 41455)
-- Name: fk_usuario_actualizacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sede_foto
    ADD CONSTRAINT fk_usuario_actualizacion FOREIGN KEY (fk_usuario_actualizacion) REFERENCES usuario(id_usuario);


--
-- TOC entry 2192 (class 2606 OID 41502)
-- Name: fk_usuario_actualizacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dias
    ADD CONSTRAINT fk_usuario_actualizacion FOREIGN KEY (usuario_actualizacion) REFERENCES usuario(id_usuario) MATCH FULL;


--
-- TOC entry 2194 (class 2606 OID 41526)
-- Name: fk_usuario_actualizacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY medicos
    ADD CONSTRAINT fk_usuario_actualizacion FOREIGN KEY (usuario_actualizacion) REFERENCES usuario(id_usuario) MATCH FULL;


--
-- TOC entry 2200 (class 2606 OID 41589)
-- Name: fk_usuario_actualizacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY medico_horario
    ADD CONSTRAINT fk_usuario_actualizacion FOREIGN KEY (usuario_actualizacion) REFERENCES usuario(id_usuario) MATCH FULL;


--
-- TOC entry 2202 (class 2606 OID 41610)
-- Name: fk_usuario_actualizacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY actividad
    ADD CONSTRAINT fk_usuario_actualizacion FOREIGN KEY (usuario_actualizacion) REFERENCES usuario(id_usuario) MATCH FULL;


--
-- TOC entry 2191 (class 2606 OID 41657)
-- Name: fk_usuario_actualizacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY especialidad
    ADD CONSTRAINT fk_usuario_actualizacion FOREIGN KEY (usuario_actualizacion) REFERENCES usuario(id_usuario);


--
-- TOC entry 2157 (class 2606 OID 32849)
-- Name: fk_usuario_creacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT fk_usuario_creacion FOREIGN KEY (fk_usuario_creacion) REFERENCES usuario(id_usuario) MATCH FULL;


--
-- TOC entry 2159 (class 2606 OID 32869)
-- Name: fk_usuario_creacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY institucion
    ADD CONSTRAINT fk_usuario_creacion FOREIGN KEY (usuario_creacion) REFERENCES usuario(id_usuario) MATCH FULL;


--
-- TOC entry 2161 (class 2606 OID 32889)
-- Name: fk_usuario_creacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_persona
    ADD CONSTRAINT fk_usuario_creacion FOREIGN KEY (usuario_creacion) REFERENCES usuario(id_usuario) MATCH FULL;


--
-- TOC entry 2163 (class 2606 OID 32909)
-- Name: fk_usuario_creacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_trabajador
    ADD CONSTRAINT fk_usuario_creacion FOREIGN KEY (usuario_creacion) REFERENCES usuario(id_usuario) MATCH FULL;


--
-- TOC entry 2165 (class 2606 OID 32929)
-- Name: fk_usuario_creacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY parentesco
    ADD CONSTRAINT fk_usuario_creacion FOREIGN KEY (usuario_creacion) REFERENCES usuario(id_usuario) MATCH FULL;


--
-- TOC entry 2171 (class 2606 OID 32975)
-- Name: fk_usuario_creacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY paciente
    ADD CONSTRAINT fk_usuario_creacion FOREIGN KEY (fk_usuario_creacion) REFERENCES usuario(id_usuario);


--
-- TOC entry 2176 (class 2606 OID 33016)
-- Name: fk_usuario_creacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY estado_civil
    ADD CONSTRAINT fk_usuario_creacion FOREIGN KEY (usuario_creacion) REFERENCES usuario(id_usuario) MATCH FULL;


--
-- TOC entry 2150 (class 2606 OID 40963)
-- Name: fk_usuario_creacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY estado
    ADD CONSTRAINT fk_usuario_creacion FOREIGN KEY (fk_usuario_creacion) REFERENCES usuario(id_usuario) MATCH FULL;


--
-- TOC entry 2152 (class 2606 OID 40973)
-- Name: fk_usuario_creacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY municipio
    ADD CONSTRAINT fk_usuario_creacion FOREIGN KEY (fk_usuario_creacion) REFERENCES usuario(id_usuario) MATCH FULL;


--
-- TOC entry 2154 (class 2606 OID 40983)
-- Name: fk_usuario_creacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY parroquia
    ADD CONSTRAINT fk_usuario_creacion FOREIGN KEY (fk_usuario_creacion) REFERENCES usuario(id_usuario) MATCH FULL;


--
-- TOC entry 2179 (class 2606 OID 41008)
-- Name: fk_usuario_creacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY patologias
    ADD CONSTRAINT fk_usuario_creacion FOREIGN KEY (usuario_creacion) REFERENCES usuario(id_usuario) MATCH FULL;


--
-- TOC entry 2181 (class 2606 OID 41031)
-- Name: fk_usuario_creacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY evolucion
    ADD CONSTRAINT fk_usuario_creacion FOREIGN KEY (usuario_creacion) REFERENCES usuario(id_usuario) MATCH FULL;


--
-- TOC entry 2185 (class 2606 OID 41417)
-- Name: fk_usuario_creacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sede
    ADD CONSTRAINT fk_usuario_creacion FOREIGN KEY (fk_usuario_creacion) REFERENCES usuario(id_usuario);


--
-- TOC entry 2188 (class 2606 OID 41460)
-- Name: fk_usuario_creacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sede_foto
    ADD CONSTRAINT fk_usuario_creacion FOREIGN KEY (fk_usuario_creacion) REFERENCES usuario(id_usuario);


--
-- TOC entry 2193 (class 2606 OID 41507)
-- Name: fk_usuario_creacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dias
    ADD CONSTRAINT fk_usuario_creacion FOREIGN KEY (usuario_creacion) REFERENCES usuario(id_usuario) MATCH FULL;


--
-- TOC entry 2195 (class 2606 OID 41531)
-- Name: fk_usuario_creacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY medicos
    ADD CONSTRAINT fk_usuario_creacion FOREIGN KEY (usuario_creacion) REFERENCES usuario(id_usuario) MATCH FULL;


--
-- TOC entry 2201 (class 2606 OID 41594)
-- Name: fk_usuario_creacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY medico_horario
    ADD CONSTRAINT fk_usuario_creacion FOREIGN KEY (usuario_creacion) REFERENCES usuario(id_usuario) MATCH FULL;


--
-- TOC entry 2203 (class 2606 OID 41615)
-- Name: fk_usuario_creacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY actividad
    ADD CONSTRAINT fk_usuario_creacion FOREIGN KEY (usuario_creacion) REFERENCES usuario(id_usuario) MATCH FULL;


--
-- TOC entry 2190 (class 2606 OID 41652)
-- Name: fk_usuario_creacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY especialidad
    ADD CONSTRAINT fk_usuario_creacion FOREIGN KEY (usuario_creacion) REFERENCES usuario(id_usuario);


--
-- TOC entry 2367 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2016-10-14 12:27:05 VET

--
-- PostgreSQL database dump complete
--

