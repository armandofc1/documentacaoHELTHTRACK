-- Gerado por Oracle SQL Developer Data Modeler 18.1.0.082.1035
--   em:        2018-05-28 20:16:54 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



CREATE TABLE t_ht_alimentacao (
    cd_alimentacao        NUMBER(9) NOT NULL,
    cd_usuario            NUMBER(9) NOT NULL,
    nm_alimento           VARCHAR2(150) NOT NULL,
    ds_alimento           VARCHAR2(250),
    vl_calorias           NUMBER(6,3) NOT NULL,
    dt_consumo            DATE NOT NULL,
    cd_tipo_alimentacao   NUMBER(3) NOT NULL
);

ALTER TABLE t_ht_alimentacao ADD CONSTRAINT t_ht_alimentacao_pk PRIMARY KEY ( cd_alimentacao );

CREATE TABLE t_ht_atividade_fisica (
    cd_atividade_fisica        NUMBER(9) NOT NULL,
    nm_atividade_fisica        VARCHAR2(200) NOT NULL,
    ds_atividade_fisica        VARCHAR2(250),
    vl_gasto_calorico          NUMBER(6,3) NOT NULL,
    dt_realizada               DATE NOT NULL,
    cd_tipo_atividade_fisica   NUMBER(3) NOT NULL,
    cd_usuario                 NUMBER(9) NOT NULL
);

ALTER TABLE t_ht_atividade_fisica ADD CONSTRAINT t_ht_atividade_fisica_pk PRIMARY KEY ( cd_atividade_fisica );

CREATE TABLE t_ht_contato (
    cd_contato   NUMBER(9) NOT NULL,
    cd_usuario   NUMBER(9) NOT NULL
);

ALTER TABLE t_ht_contato ADD CONSTRAINT t_ht_contato_pk PRIMARY KEY ( cd_contato,
                                                                      cd_usuario );

CREATE TABLE t_ht_contato_email (
    cd_contato   NUMBER(9) NOT NULL,
    cd_email     NUMBER(3) NOT NULL,
    cd_usuario   NUMBER(9) NOT NULL
);

ALTER TABLE t_ht_contato_email
    ADD CONSTRAINT t_ht_contato_email_pk PRIMARY KEY ( cd_contato,
                                                       cd_usuario,
                                                       cd_email );

CREATE TABLE t_ht_contato_telefone (
    cd_contato    NUMBER(9) NOT NULL,
    cd_telefone   NUMBER(9) NOT NULL,
    cd_usuario    NUMBER(9) NOT NULL
);

ALTER TABLE t_ht_contato_telefone
    ADD CONSTRAINT t_ht_contato_telefone_pk PRIMARY KEY ( cd_contato,
                                                          cd_usuario,
                                                          cd_telefone );

CREATE TABLE t_ht_email (
    cd_email        NUMBER(3) NOT NULL,
    ds_email        VARCHAR2(200) NOT NULL,
    cd_tipo_email   NUMBER(3) NOT NULL
);

ALTER TABLE t_ht_email ADD CONSTRAINT t_ht_email_pk PRIMARY KEY ( cd_email );

CREATE TABLE t_ht_endereco (
    cd_endereco        NUMBER(6) NOT NULL,
    cd_tipo_endereco   NUMBER(3) NOT NULL,
    cd_estado          NUMBER(3) NOT NULL,
    ds_rua             VARCHAR2(150) NOT NULL,
    vl_numero          VARCHAR2(20) NOT NULL,
    ds_caixa_postal    VARCHAR2(30),
    ds_bairro          VARCHAR2(50),
    ds_cidade          VARCHAR2(200),
    vl_cep             VARCHAR2(9) NOT NULL
);

ALTER TABLE t_ht_endereco ADD CONSTRAINT t_ht_endereco_pk PRIMARY KEY ( cd_endereco );

CREATE TABLE t_ht_endereco_usuario (
    cd_endereco   NUMBER(6) NOT NULL,
    cd_usuario    NUMBER(9) NOT NULL
);

ALTER TABLE t_ht_endereco_usuario ADD CONSTRAINT t_ht_endereco_usuario_pk PRIMARY KEY ( cd_endereco,
                                                                                        cd_usuario );

CREATE TABLE t_ht_estado (
    cd_estado   NUMBER(3) NOT NULL,
    cd_pais     NUMBER(4) NOT NULL,
    nm_estado   VARCHAR2(100) NOT NULL
);

ALTER TABLE t_ht_estado ADD CONSTRAINT t_ht_estado_pk PRIMARY KEY ( cd_estado );

CREATE TABLE t_ht_evolucao (
    cd_evolucao       NUMBER(9) NOT NULL,
    cd_planejamento   NUMBER(6) NOT NULL,
    cd_peso           NUMBER(9) NOT NULL,
    cd_medidas        NUMBER(9) NOT NULL,
    cd_pressao        NUMBER(9) NOT NULL,
    ds_foto           VARCHAR2(250),
    dt_registro       DATE NOT NULL
);

ALTER TABLE t_ht_evolucao ADD CONSTRAINT t_ht_evolucao_pk PRIMARY KEY ( cd_evolucao );

CREATE TABLE t_ht_historico_acesso (
    cd_usuario   NUMBER(9),
    dt_acesso    DATE NOT NULL
);

CREATE TABLE t_ht_medidas_corporais (
    cd_medidas             NUMBER(9) NOT NULL,
    cd_usuario             NUMBER(9) NOT NULL,
    vl_peito               NUMBER(4,3),
    vl_cintura             NUMBER(4,3),
    vl_quadril             NUMBER(4,3),
    vl_panturrilha         NUMBER(4,3),
    vl_pescoco             NUMBER(4,3),
    vl_largura_ombros      NUMBER(4,3),
    vl_comprimento_braco   NUMBER(4,3),
    vl_pulso               NUMBER(4,3),
    dt_medicao             DATE NOT NULL
);

ALTER TABLE t_ht_medidas_corporais ADD CONSTRAINT t_ht_medidas_corporais_pk PRIMARY KEY ( cd_medidas );

CREATE TABLE t_ht_menu (
    cd_menu      NUMBER(3) NOT NULL,
    nm_menu      VARCHAR2(100) NOT NULL,
    ds_caminho   VARCHAR2(250) NOT NULL
);

ALTER TABLE t_ht_menu ADD CONSTRAINT t_ht_menu_pk PRIMARY KEY ( cd_menu );

CREATE TABLE t_ht_pais (
    cd_pais   NUMBER(4) NOT NULL,
    nm_pais   VARCHAR2(250) NOT NULL
);

ALTER TABLE t_ht_pais ADD CONSTRAINT t_ht_pais_pk PRIMARY KEY ( cd_pais );

CREATE TABLE t_ht_peso (
    cd_peso      NUMBER(9) NOT NULL,
    vl_peso      NUMBER(3,3) NOT NULL,
    dt_medicao   DATE NOT NULL,
    cd_usuario   NUMBER(9) NOT NULL
);

ALTER TABLE t_ht_peso ADD CONSTRAINT t_ht_peso_pk PRIMARY KEY ( cd_peso );

CREATE TABLE t_ht_planejamento (
    cd_planejamento   NUMBER(6) NOT NULL,
    cd_usuario        NUMBER(9) NOT NULL,
    nm_plano          VARCHAR2(150) NOT NULL,
    ds_objetivo       VARCHAR2(255),
    dt_inicio         DATE NOT NULL,
    dt_fim            DATE NOT NULL
);

ALTER TABLE t_ht_planejamento ADD CONSTRAINT t_ht_planejamento_pk PRIMARY KEY ( cd_planejamento );

CREATE TABLE t_ht_pressao_arterial (
    cd_pressao              NUMBER(9) NOT NULL,
    cd_usuario              NUMBER(9) NOT NULL,
    vl_pressao_sistolica    NUMBER(4,3) NOT NULL,
    vl_pressao_diastolica   NUMBER(4,3) NOT NULL,
    dt_medicao              DATE NOT NULL
);

ALTER TABLE t_ht_pressao_arterial ADD CONSTRAINT t_ht_pressao_arterial_pk PRIMARY KEY ( cd_pressao );

CREATE TABLE t_ht_relembrar_senha (
    cd_usuario   NUMBER(9),
    dm_email     VARCHAR2(250) NOT NULL,
    dt_envio     DATE NOT NULL
);

CREATE TABLE t_ht_telefone (
    cd_telefone        NUMBER(9) NOT NULL,
    cd_tipo_telefone   NUMBER(3) NOT NULL,
    vl_ddi             VARCHAR2(3),
    vl_ddd             VARCHAR2(3) NOT NULL,
    vl_prefixo         VARCHAR2(5) NOT NULL,
    vl_sufixo          VARCHAR2(4) NOT NULL
);

ALTER TABLE t_ht_telefone ADD CONSTRAINT t_ht_telefone_pk PRIMARY KEY ( cd_telefone );

CREATE TABLE t_ht_tipo_alimentacao (
    cd_tipo_alimentacao   NUMBER(3) NOT NULL,
    nm_tipo_alimentacao   VARCHAR2(150) NOT NULL
);

ALTER TABLE t_ht_tipo_alimentacao ADD CONSTRAINT t_ht_tipo_alimentacao_pk PRIMARY KEY ( cd_tipo_alimentacao );

CREATE TABLE t_ht_tipo_atividade_fisica (
    cd_tipo_atividade_fisica   NUMBER(3) NOT NULL,
    nm_tipo_atividade_fisica   VARCHAR2(200) NOT NULL
);

ALTER TABLE t_ht_tipo_atividade_fisica ADD CONSTRAINT t_ht_tipo_atividade_fisica_pk PRIMARY KEY ( cd_tipo_atividade_fisica );

CREATE TABLE t_ht_tipo_email (
    cd_tipo_email   NUMBER(3) NOT NULL,
    nm_tipo_email   VARCHAR2(50) NOT NULL
);

ALTER TABLE t_ht_tipo_email ADD CONSTRAINT t_ht_tipo_email_pk PRIMARY KEY ( cd_tipo_email );

CREATE TABLE t_ht_tipo_endereco (
    cd_tipo_endereco   NUMBER(3) NOT NULL,
    nm_tipo            VARCHAR2(50) NOT NULL
);

ALTER TABLE t_ht_tipo_endereco ADD CONSTRAINT t_ht_tipo_endereco_pk PRIMARY KEY ( cd_tipo_endereco );

CREATE TABLE t_ht_tipo_telefone (
    cd_tipo_telefone   NUMBER(3) NOT NULL,
    nm_tipo_telefone   VARCHAR2(50) NOT NULL
);

ALTER TABLE t_ht_tipo_telefone ADD CONSTRAINT t_ht_tipo_telefone_pk PRIMARY KEY ( cd_tipo_telefone );

CREATE TABLE t_ht_usuario (
    cd_usuario      NUMBER(9) NOT NULL,
    login           VARCHAR2(20) NOT NULL,
    senha           VARCHAR2(20) NOT NULL,
    nm_nome         VARCHAR2(100) NOT NULL,
    nm_sobrenome    VARCHAR2(100),
    sexo            VARCHAR2(1) NOT NULL,
    dt_nascimento   DATE NOT NULL,
    vl_altura       NUMBER(3,2) NOT NULL,
    ds_foto         VARCHAR2(255),
    dt_cadastro     DATE NOT NULL
);

ALTER TABLE t_ht_usuario ADD CONSTRAINT t_ht_usuario_pk PRIMARY KEY ( cd_usuario );

ALTER TABLE t_ht_email
    ADD CONSTRAINT relation_1 FOREIGN KEY ( cd_tipo_email )
        REFERENCES t_ht_tipo_email ( cd_tipo_email );

ALTER TABLE t_ht_contato_telefone
    ADD CONSTRAINT relation_10 FOREIGN KEY ( cd_telefone )
        REFERENCES t_ht_telefone ( cd_telefone );

ALTER TABLE t_ht_endereco_usuario
    ADD CONSTRAINT relation_11 FOREIGN KEY ( cd_endereco )
        REFERENCES t_ht_endereco ( cd_endereco );

ALTER TABLE t_ht_endereco_usuario
    ADD CONSTRAINT relation_12 FOREIGN KEY ( cd_usuario )
        REFERENCES t_ht_usuario ( cd_usuario );

ALTER TABLE t_ht_estado
    ADD CONSTRAINT relation_13 FOREIGN KEY ( cd_pais )
        REFERENCES t_ht_pais ( cd_pais );

ALTER TABLE t_ht_historico_acesso
    ADD CONSTRAINT relation_16 FOREIGN KEY ( cd_usuario )
        REFERENCES t_ht_usuario ( cd_usuario );

ALTER TABLE t_ht_contato
    ADD CONSTRAINT relation_17 FOREIGN KEY ( cd_usuario )
        REFERENCES t_ht_usuario ( cd_usuario );

ALTER TABLE t_ht_medidas_corporais
    ADD CONSTRAINT relation_18 FOREIGN KEY ( cd_usuario )
        REFERENCES t_ht_usuario ( cd_usuario );

ALTER TABLE t_ht_pressao_arterial
    ADD CONSTRAINT relation_19 FOREIGN KEY ( cd_usuario )
        REFERENCES t_ht_usuario ( cd_usuario );

ALTER TABLE t_ht_telefone
    ADD CONSTRAINT relation_2 FOREIGN KEY ( cd_tipo_telefone )
        REFERENCES t_ht_tipo_telefone ( cd_tipo_telefone );

ALTER TABLE t_ht_alimentacao
    ADD CONSTRAINT relation_20 FOREIGN KEY ( cd_usuario )
        REFERENCES t_ht_usuario ( cd_usuario );

ALTER TABLE t_ht_evolucao
    ADD CONSTRAINT relation_21 FOREIGN KEY ( cd_planejamento )
        REFERENCES t_ht_planejamento ( cd_planejamento );

ALTER TABLE t_ht_atividade_fisica
    ADD CONSTRAINT relation_22 FOREIGN KEY ( cd_usuario )
        REFERENCES t_ht_usuario ( cd_usuario );

ALTER TABLE t_ht_peso
    ADD CONSTRAINT relation_23 FOREIGN KEY ( cd_usuario )
        REFERENCES t_ht_usuario ( cd_usuario );

ALTER TABLE t_ht_evolucao
    ADD CONSTRAINT relation_27 FOREIGN KEY ( cd_peso )
        REFERENCES t_ht_peso ( cd_peso );

ALTER TABLE t_ht_evolucao
    ADD CONSTRAINT relation_28 FOREIGN KEY ( cd_pressao )
        REFERENCES t_ht_pressao_arterial ( cd_pressao );

ALTER TABLE t_ht_evolucao
    ADD CONSTRAINT relation_29 FOREIGN KEY ( cd_medidas )
        REFERENCES t_ht_medidas_corporais ( cd_medidas );

ALTER TABLE t_ht_endereco
    ADD CONSTRAINT relation_3 FOREIGN KEY ( cd_tipo_endereco )
        REFERENCES t_ht_tipo_endereco ( cd_tipo_endereco );

ALTER TABLE t_ht_planejamento
    ADD CONSTRAINT relation_30 FOREIGN KEY ( cd_usuario )
        REFERENCES t_ht_usuario ( cd_usuario );

ALTER TABLE t_ht_relembrar_senha
    ADD CONSTRAINT relation_31 FOREIGN KEY ( cd_usuario )
        REFERENCES t_ht_usuario ( cd_usuario );

ALTER TABLE t_ht_atividade_fisica
    ADD CONSTRAINT relation_4 FOREIGN KEY ( cd_tipo_atividade_fisica )
        REFERENCES t_ht_tipo_atividade_fisica ( cd_tipo_atividade_fisica );

ALTER TABLE t_ht_alimentacao
    ADD CONSTRAINT relation_5 FOREIGN KEY ( cd_tipo_alimentacao )
        REFERENCES t_ht_tipo_alimentacao ( cd_tipo_alimentacao );

ALTER TABLE t_ht_endereco
    ADD CONSTRAINT relation_6 FOREIGN KEY ( cd_estado )
        REFERENCES t_ht_estado ( cd_estado );

ALTER TABLE t_ht_contato_email
    ADD CONSTRAINT relation_7 FOREIGN KEY ( cd_contato,
                                            cd_usuario )
        REFERENCES t_ht_contato ( cd_contato,
                                  cd_usuario );

ALTER TABLE t_ht_contato_email
    ADD CONSTRAINT relation_8 FOREIGN KEY ( cd_email )
        REFERENCES t_ht_email ( cd_email );

ALTER TABLE t_ht_contato_telefone
    ADD CONSTRAINT relation_9 FOREIGN KEY ( cd_contato,
                                            cd_usuario )
        REFERENCES t_ht_contato ( cd_contato,
                                  cd_usuario );

CREATE OR REPLACE TRIGGER fkntm_t_ht_alimentacao BEFORE
    UPDATE OF cd_usuario ON t_ht_alimentacao
BEGIN
    raise_application_error(-20225,'Non Transferable FK constraint  on table T_HT_ALIMENTACAO is violated');
END;
/



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            25
-- CREATE INDEX                             0
-- ALTER TABLE                             49
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           1
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
