PGDMP     8    '            
    z            db_formulario    15.0    15.0     	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16533    db_formulario    DATABASE     ?   CREATE DATABASE db_formulario WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Ecuador.1252';
    DROP DATABASE db_formulario;
                postgres    false            ?            1259    16534    s_calificacion    SEQUENCE     |   CREATE SEQUENCE public.s_calificacion
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 9999999
    CACHE 1;
 %   DROP SEQUENCE public.s_calificacion;
       public          postgres    false            ?            1259    16535    tb_notas    TABLE     ?   CREATE TABLE public.tb_notas (
    id_no integer DEFAULT nextval('public.s_calificacion'::regclass) NOT NULL,
    nota1 integer,
    nota2 integer,
    nota3 integer,
    nota4 integer,
    nota5 integer,
    notafinal integer,
    nombre_us text
);
    DROP TABLE public.tb_notas;
       public         heap    postgres    false    214            ?            1259    16541    tb_usuarios    TABLE     ?   CREATE TABLE public.tb_usuarios (
    id_us integer DEFAULT nextval('public.s_calificacion'::regclass) NOT NULL,
    nombre_us text,
    foto_us bytea
);
    DROP TABLE public.tb_usuarios;
       public         heap    postgres    false    214            ?            1259    16547    tb_valoracion    TABLE     ?   CREATE TABLE public.tb_valoracion (
    id_va integer NOT NULL,
    valoracion_va integer,
    opinion_va text,
    nombre_us text
);
 !   DROP TABLE public.tb_valoracion;
       public         heap    postgres    false                      0    16535    tb_notas 
   TABLE DATA           b   COPY public.tb_notas (id_no, nota1, nota2, nota3, nota4, nota5, notafinal, nombre_us) FROM stdin;
    public          postgres    false    215   ?                 0    16541    tb_usuarios 
   TABLE DATA           @   COPY public.tb_usuarios (id_us, nombre_us, foto_us) FROM stdin;
    public          postgres    false    216   ?                 0    16547    tb_valoracion 
   TABLE DATA           T   COPY public.tb_valoracion (id_va, valoracion_va, opinion_va, nombre_us) FROM stdin;
    public          postgres    false    217                     0    0    s_calificacion    SEQUENCE SET     <   SELECT pg_catalog.setval('public.s_calificacion', 1, true);
          public          postgres    false    214            p           2606    16558    tb_notas tb_notas_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.tb_notas
    ADD CONSTRAINT tb_notas_pkey PRIMARY KEY (id_no);
 @   ALTER TABLE ONLY public.tb_notas DROP CONSTRAINT tb_notas_pkey;
       public            postgres    false    215            r           2606    16560    tb_usuarios tb_usuarios_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.tb_usuarios
    ADD CONSTRAINT tb_usuarios_pkey PRIMARY KEY (id_us);
 F   ALTER TABLE ONLY public.tb_usuarios DROP CONSTRAINT tb_usuarios_pkey;
       public            postgres    false    216            t           2606    16562     tb_valoracion tb_valoracion_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.tb_valoracion
    ADD CONSTRAINT tb_valoracion_pkey PRIMARY KEY (id_va);
 J   ALTER TABLE ONLY public.tb_valoracion DROP CONSTRAINT tb_valoracion_pkey;
       public            postgres    false    217                  x?????? ? ?            x?????? ? ?            x?????? ? ?     