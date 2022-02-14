PGDMP     7                    z            postgres #   12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)     14.0 (Ubuntu 14.0-1.pgdg20.04+1) p    7           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            8           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            9           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            :           1262    13465    postgres    DATABASE     ]   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'pt_BR.UTF-8';
    DROP DATABASE postgres;
                postgres    false            ;           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3130            �            1259    16766    d_br    TABLE     ]   CREATE TABLE public.d_br (
    id_unico integer NOT NULL,
    descr character varying(50)
);
    DROP TABLE public.d_br;
       public         heap    kaio    false            �            1259    16764    d_br_id_unico_seq    SEQUENCE     �   CREATE SEQUENCE public.d_br_id_unico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.d_br_id_unico_seq;
       public          kaio    false    209            <           0    0    d_br_id_unico_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.d_br_id_unico_seq OWNED BY public.d_br.id_unico;
          public          kaio    false    208            �            1259    16863    d_causa    TABLE     a   CREATE TABLE public.d_causa (
    id_unico integer NOT NULL,
    descr character varying(100)
);
    DROP TABLE public.d_causa;
       public         heap    kaio    false            �            1259    16861    d_causa_id_unico_seq    SEQUENCE     �   CREATE SEQUENCE public.d_causa_id_unico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.d_causa_id_unico_seq;
       public          kaio    false    231            =           0    0    d_causa_id_unico_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.d_causa_id_unico_seq OWNED BY public.d_causa.id_unico;
          public          kaio    false    230            �            1259    16806    d_class    TABLE     `   CREATE TABLE public.d_class (
    id_unico integer NOT NULL,
    descr character varying(50)
);
    DROP TABLE public.d_class;
       public         heap    kaio    false            �            1259    16804    d_class_id_unico_seq    SEQUENCE     �   CREATE SEQUENCE public.d_class_id_unico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.d_class_id_unico_seq;
       public          kaio    false    217            >           0    0    d_class_id_unico_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.d_class_id_unico_seq OWNED BY public.d_class.id_unico;
          public          kaio    false    216            �            1259    16831 
   d_condicao    TABLE     c   CREATE TABLE public.d_condicao (
    id_unico integer NOT NULL,
    descr character varying(50)
);
    DROP TABLE public.d_condicao;
       public         heap    kaio    false            �            1259    16829    d_condicao_id_unico_seq    SEQUENCE     �   CREATE SEQUENCE public.d_condicao_id_unico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.d_condicao_id_unico_seq;
       public          kaio    false    223            ?           0    0    d_condicao_id_unico_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.d_condicao_id_unico_seq OWNED BY public.d_condicao.id_unico;
          public          kaio    false    222            �            1259    16742    d_dia    TABLE     ^   CREATE TABLE public.d_dia (
    id_unico integer NOT NULL,
    descr character varying(50)
);
    DROP TABLE public.d_dia;
       public         heap    kaio    false            �            1259    16740    d_dia_id_unico_seq    SEQUENCE     �   CREATE SEQUENCE public.d_dia_id_unico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.d_dia_id_unico_seq;
       public          kaio    false    203            @           0    0    d_dia_id_unico_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.d_dia_id_unico_seq OWNED BY public.d_dia.id_unico;
          public          kaio    false    202            �            1259    16814 
   d_fase_dia    TABLE     c   CREATE TABLE public.d_fase_dia (
    id_unico integer NOT NULL,
    descr character varying(50)
);
    DROP TABLE public.d_fase_dia;
       public         heap    kaio    false            �            1259    16812    d_fase_dia_id_unico_seq    SEQUENCE     �   CREATE SEQUENCE public.d_fase_dia_id_unico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.d_fase_dia_id_unico_seq;
       public          kaio    false    219            A           0    0    d_fase_dia_id_unico_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.d_fase_dia_id_unico_seq OWNED BY public.d_fase_dia.id_unico;
          public          kaio    false    218            �            1259    16869    d_fato    TABLE     �  CREATE TABLE public.d_fato (
    id_unico text,
    data timestamp without time zone,
    "ID_dia" bigint,
    "ID_hora" bigint,
    "ID_uf" bigint,
    "ID_br" bigint,
    "ID_km" bigint,
    "ID_mun" bigint,
    "ID_causa" bigint,
    "ID_tipo" bigint,
    "ID_class" bigint,
    "ID_fase_dia" bigint,
    "ID_sentido" bigint,
    "ID_condicao" bigint,
    "ID_pista" bigint,
    "ID_tracado" bigint,
    "ID_solo" bigint,
    "Total_pessoas" double precision,
    "Total_mortos" double precision,
    "Total_feridos_leves" double precision,
    "Total_feridos_graves" double precision,
    "Total_ilesos" double precision,
    "Total_ignorados" double precision,
    "Total_feridos" double precision,
    "Total_veiculos" double precision
);
    DROP TABLE public.d_fato;
       public         heap    kaio    false            �            1259    16750    d_hora    TABLE     _   CREATE TABLE public.d_hora (
    id_unico integer NOT NULL,
    descr character varying(50)
);
    DROP TABLE public.d_hora;
       public         heap    kaio    false            �            1259    16748    d_hora_id_unico_seq    SEQUENCE     �   CREATE SEQUENCE public.d_hora_id_unico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.d_hora_id_unico_seq;
       public          kaio    false    205            B           0    0    d_hora_id_unico_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.d_hora_id_unico_seq OWNED BY public.d_hora.id_unico;
          public          kaio    false    204            �            1259    16774    d_km    TABLE     ]   CREATE TABLE public.d_km (
    id_unico integer NOT NULL,
    descr character varying(50)
);
    DROP TABLE public.d_km;
       public         heap    kaio    false            �            1259    16772    d_km_id_unico_seq    SEQUENCE     �   CREATE SEQUENCE public.d_km_id_unico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.d_km_id_unico_seq;
       public          kaio    false    211            C           0    0    d_km_id_unico_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.d_km_id_unico_seq OWNED BY public.d_km.id_unico;
          public          kaio    false    210            �            1259    16782    d_mun    TABLE     ^   CREATE TABLE public.d_mun (
    id_unico integer NOT NULL,
    descr character varying(50)
);
    DROP TABLE public.d_mun;
       public         heap    kaio    false            �            1259    16780    d_mun_id_unico_seq    SEQUENCE     �   CREATE SEQUENCE public.d_mun_id_unico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.d_mun_id_unico_seq;
       public          kaio    false    213            D           0    0    d_mun_id_unico_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.d_mun_id_unico_seq OWNED BY public.d_mun.id_unico;
          public          kaio    false    212            �            1259    16839    d_pista    TABLE     `   CREATE TABLE public.d_pista (
    id_unico integer NOT NULL,
    descr character varying(50)
);
    DROP TABLE public.d_pista;
       public         heap    kaio    false            �            1259    16837    d_pista_id_unico_seq    SEQUENCE     �   CREATE SEQUENCE public.d_pista_id_unico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.d_pista_id_unico_seq;
       public          kaio    false    225            E           0    0    d_pista_id_unico_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.d_pista_id_unico_seq OWNED BY public.d_pista.id_unico;
          public          kaio    false    224            �            1259    16822 	   d_sentido    TABLE     b   CREATE TABLE public.d_sentido (
    id_unico integer NOT NULL,
    descr character varying(50)
);
    DROP TABLE public.d_sentido;
       public         heap    kaio    false            �            1259    16820    d_sentido_id_unico_seq    SEQUENCE     �   CREATE SEQUENCE public.d_sentido_id_unico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.d_sentido_id_unico_seq;
       public          kaio    false    221            F           0    0    d_sentido_id_unico_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.d_sentido_id_unico_seq OWNED BY public.d_sentido.id_unico;
          public          kaio    false    220            �            1259    16855    d_solo    TABLE     _   CREATE TABLE public.d_solo (
    id_unico integer NOT NULL,
    descr character varying(50)
);
    DROP TABLE public.d_solo;
       public         heap    kaio    false            �            1259    16853    d_solo_id_unico_seq    SEQUENCE     �   CREATE SEQUENCE public.d_solo_id_unico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.d_solo_id_unico_seq;
       public          kaio    false    229            G           0    0    d_solo_id_unico_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.d_solo_id_unico_seq OWNED BY public.d_solo.id_unico;
          public          kaio    false    228            �            1259    16798    d_tipo    TABLE     _   CREATE TABLE public.d_tipo (
    id_unico integer NOT NULL,
    descr character varying(50)
);
    DROP TABLE public.d_tipo;
       public         heap    kaio    false            �            1259    16796    d_tipo_id_unico_seq    SEQUENCE     �   CREATE SEQUENCE public.d_tipo_id_unico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.d_tipo_id_unico_seq;
       public          kaio    false    215            H           0    0    d_tipo_id_unico_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.d_tipo_id_unico_seq OWNED BY public.d_tipo.id_unico;
          public          kaio    false    214            �            1259    16847 	   d_tracado    TABLE     b   CREATE TABLE public.d_tracado (
    id_unico integer NOT NULL,
    descr character varying(50)
);
    DROP TABLE public.d_tracado;
       public         heap    kaio    false            �            1259    16845    d_tracado_id_unico_seq    SEQUENCE     �   CREATE SEQUENCE public.d_tracado_id_unico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.d_tracado_id_unico_seq;
       public          kaio    false    227            I           0    0    d_tracado_id_unico_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.d_tracado_id_unico_seq OWNED BY public.d_tracado.id_unico;
          public          kaio    false    226            �            1259    16758    d_uf    TABLE     ]   CREATE TABLE public.d_uf (
    id_unico integer NOT NULL,
    descr character varying(50)
);
    DROP TABLE public.d_uf;
       public         heap    kaio    false            �            1259    16756    d_uf_id_unico_seq    SEQUENCE     �   CREATE SEQUENCE public.d_uf_id_unico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.d_uf_id_unico_seq;
       public          kaio    false    207            J           0    0    d_uf_id_unico_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.d_uf_id_unico_seq OWNED BY public.d_uf.id_unico;
          public          kaio    false    206            n           2604    16769    d_br id_unico    DEFAULT     n   ALTER TABLE ONLY public.d_br ALTER COLUMN id_unico SET DEFAULT nextval('public.d_br_id_unico_seq'::regclass);
 <   ALTER TABLE public.d_br ALTER COLUMN id_unico DROP DEFAULT;
       public          kaio    false    208    209    209            y           2604    16866    d_causa id_unico    DEFAULT     t   ALTER TABLE ONLY public.d_causa ALTER COLUMN id_unico SET DEFAULT nextval('public.d_causa_id_unico_seq'::regclass);
 ?   ALTER TABLE public.d_causa ALTER COLUMN id_unico DROP DEFAULT;
       public          kaio    false    230    231    231            r           2604    16809    d_class id_unico    DEFAULT     t   ALTER TABLE ONLY public.d_class ALTER COLUMN id_unico SET DEFAULT nextval('public.d_class_id_unico_seq'::regclass);
 ?   ALTER TABLE public.d_class ALTER COLUMN id_unico DROP DEFAULT;
       public          kaio    false    217    216    217            u           2604    16834    d_condicao id_unico    DEFAULT     z   ALTER TABLE ONLY public.d_condicao ALTER COLUMN id_unico SET DEFAULT nextval('public.d_condicao_id_unico_seq'::regclass);
 B   ALTER TABLE public.d_condicao ALTER COLUMN id_unico DROP DEFAULT;
       public          kaio    false    223    222    223            k           2604    16745    d_dia id_unico    DEFAULT     p   ALTER TABLE ONLY public.d_dia ALTER COLUMN id_unico SET DEFAULT nextval('public.d_dia_id_unico_seq'::regclass);
 =   ALTER TABLE public.d_dia ALTER COLUMN id_unico DROP DEFAULT;
       public          kaio    false    203    202    203            s           2604    16817    d_fase_dia id_unico    DEFAULT     z   ALTER TABLE ONLY public.d_fase_dia ALTER COLUMN id_unico SET DEFAULT nextval('public.d_fase_dia_id_unico_seq'::regclass);
 B   ALTER TABLE public.d_fase_dia ALTER COLUMN id_unico DROP DEFAULT;
       public          kaio    false    219    218    219            l           2604    16753    d_hora id_unico    DEFAULT     r   ALTER TABLE ONLY public.d_hora ALTER COLUMN id_unico SET DEFAULT nextval('public.d_hora_id_unico_seq'::regclass);
 >   ALTER TABLE public.d_hora ALTER COLUMN id_unico DROP DEFAULT;
       public          kaio    false    205    204    205            o           2604    16777    d_km id_unico    DEFAULT     n   ALTER TABLE ONLY public.d_km ALTER COLUMN id_unico SET DEFAULT nextval('public.d_km_id_unico_seq'::regclass);
 <   ALTER TABLE public.d_km ALTER COLUMN id_unico DROP DEFAULT;
       public          kaio    false    211    210    211            p           2604    16785    d_mun id_unico    DEFAULT     p   ALTER TABLE ONLY public.d_mun ALTER COLUMN id_unico SET DEFAULT nextval('public.d_mun_id_unico_seq'::regclass);
 =   ALTER TABLE public.d_mun ALTER COLUMN id_unico DROP DEFAULT;
       public          kaio    false    212    213    213            v           2604    16842    d_pista id_unico    DEFAULT     t   ALTER TABLE ONLY public.d_pista ALTER COLUMN id_unico SET DEFAULT nextval('public.d_pista_id_unico_seq'::regclass);
 ?   ALTER TABLE public.d_pista ALTER COLUMN id_unico DROP DEFAULT;
       public          kaio    false    224    225    225            t           2604    16825    d_sentido id_unico    DEFAULT     x   ALTER TABLE ONLY public.d_sentido ALTER COLUMN id_unico SET DEFAULT nextval('public.d_sentido_id_unico_seq'::regclass);
 A   ALTER TABLE public.d_sentido ALTER COLUMN id_unico DROP DEFAULT;
       public          kaio    false    221    220    221            x           2604    16858    d_solo id_unico    DEFAULT     r   ALTER TABLE ONLY public.d_solo ALTER COLUMN id_unico SET DEFAULT nextval('public.d_solo_id_unico_seq'::regclass);
 >   ALTER TABLE public.d_solo ALTER COLUMN id_unico DROP DEFAULT;
       public          kaio    false    229    228    229            q           2604    16801    d_tipo id_unico    DEFAULT     r   ALTER TABLE ONLY public.d_tipo ALTER COLUMN id_unico SET DEFAULT nextval('public.d_tipo_id_unico_seq'::regclass);
 >   ALTER TABLE public.d_tipo ALTER COLUMN id_unico DROP DEFAULT;
       public          kaio    false    215    214    215            w           2604    16850    d_tracado id_unico    DEFAULT     x   ALTER TABLE ONLY public.d_tracado ALTER COLUMN id_unico SET DEFAULT nextval('public.d_tracado_id_unico_seq'::regclass);
 A   ALTER TABLE public.d_tracado ALTER COLUMN id_unico DROP DEFAULT;
       public          kaio    false    226    227    227            m           2604    16761    d_uf id_unico    DEFAULT     n   ALTER TABLE ONLY public.d_uf ALTER COLUMN id_unico SET DEFAULT nextval('public.d_uf_id_unico_seq'::regclass);
 <   ALTER TABLE public.d_uf ALTER COLUMN id_unico DROP DEFAULT;
       public          kaio    false    206    207    207                      0    16766    d_br 
   TABLE DATA           /   COPY public.d_br (id_unico, descr) FROM stdin;
    public          kaio    false    209   �u       3          0    16863    d_causa 
   TABLE DATA           2   COPY public.d_causa (id_unico, descr) FROM stdin;
    public          kaio    false    231   tz       %          0    16806    d_class 
   TABLE DATA           2   COPY public.d_class (id_unico, descr) FROM stdin;
    public          kaio    false    217   T~       +          0    16831 
   d_condicao 
   TABLE DATA           5   COPY public.d_condicao (id_unico, descr) FROM stdin;
    public          kaio    false    223   �~                 0    16742    d_dia 
   TABLE DATA           0   COPY public.d_dia (id_unico, descr) FROM stdin;
    public          kaio    false    203   0       '          0    16814 
   d_fase_dia 
   TABLE DATA           5   COPY public.d_fase_dia (id_unico, descr) FROM stdin;
    public          kaio    false    219   �       4          0    16869    d_fato 
   TABLE DATA           t  COPY public.d_fato (id_unico, data, "ID_dia", "ID_hora", "ID_uf", "ID_br", "ID_km", "ID_mun", "ID_causa", "ID_tipo", "ID_class", "ID_fase_dia", "ID_sentido", "ID_condicao", "ID_pista", "ID_tracado", "ID_solo", "Total_pessoas", "Total_mortos", "Total_feridos_leves", "Total_feridos_graves", "Total_ilesos", "Total_ignorados", "Total_feridos", "Total_veiculos") FROM stdin;
    public          kaio    false    232   �                 0    16750    d_hora 
   TABLE DATA           1   COPY public.d_hora (id_unico, descr) FROM stdin;
    public          kaio    false    205   ��                 0    16774    d_km 
   TABLE DATA           /   COPY public.d_km (id_unico, descr) FROM stdin;
    public          kaio    false    211   B�       !          0    16782    d_mun 
   TABLE DATA           0   COPY public.d_mun (id_unico, descr) FROM stdin;
    public          kaio    false    213   �R      -          0    16839    d_pista 
   TABLE DATA           2   COPY public.d_pista (id_unico, descr) FROM stdin;
    public          kaio    false    225   �      )          0    16822 	   d_sentido 
   TABLE DATA           4   COPY public.d_sentido (id_unico, descr) FROM stdin;
    public          kaio    false    221   �      1          0    16855    d_solo 
   TABLE DATA           1   COPY public.d_solo (id_unico, descr) FROM stdin;
    public          kaio    false    229   I�      #          0    16798    d_tipo 
   TABLE DATA           1   COPY public.d_tipo (id_unico, descr) FROM stdin;
    public          kaio    false    215   ��      /          0    16847 	   d_tracado 
   TABLE DATA           4   COPY public.d_tracado (id_unico, descr) FROM stdin;
    public          kaio    false    227   ј                0    16758    d_uf 
   TABLE DATA           /   COPY public.d_uf (id_unico, descr) FROM stdin;
    public          kaio    false    207   v�      K           0    0    d_br_id_unico_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.d_br_id_unico_seq', 1, false);
          public          kaio    false    208            L           0    0    d_causa_id_unico_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.d_causa_id_unico_seq', 1, false);
          public          kaio    false    230            M           0    0    d_class_id_unico_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.d_class_id_unico_seq', 1, false);
          public          kaio    false    216            N           0    0    d_condicao_id_unico_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.d_condicao_id_unico_seq', 1, false);
          public          kaio    false    222            O           0    0    d_dia_id_unico_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.d_dia_id_unico_seq', 1, false);
          public          kaio    false    202            P           0    0    d_fase_dia_id_unico_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.d_fase_dia_id_unico_seq', 1, false);
          public          kaio    false    218            Q           0    0    d_hora_id_unico_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.d_hora_id_unico_seq', 1, false);
          public          kaio    false    204            R           0    0    d_km_id_unico_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.d_km_id_unico_seq', 1, false);
          public          kaio    false    210            S           0    0    d_mun_id_unico_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.d_mun_id_unico_seq', 1, false);
          public          kaio    false    212            T           0    0    d_pista_id_unico_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.d_pista_id_unico_seq', 1, false);
          public          kaio    false    224            U           0    0    d_sentido_id_unico_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.d_sentido_id_unico_seq', 1, false);
          public          kaio    false    220            V           0    0    d_solo_id_unico_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.d_solo_id_unico_seq', 1, false);
          public          kaio    false    228            W           0    0    d_tipo_id_unico_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.d_tipo_id_unico_seq', 1, false);
          public          kaio    false    214            X           0    0    d_tracado_id_unico_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.d_tracado_id_unico_seq', 1, false);
          public          kaio    false    226            Y           0    0    d_uf_id_unico_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.d_uf_id_unico_seq', 1, false);
          public          kaio    false    206            �           2606    16771    d_br d_br_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.d_br
    ADD CONSTRAINT d_br_pkey PRIMARY KEY (id_unico);
 8   ALTER TABLE ONLY public.d_br DROP CONSTRAINT d_br_pkey;
       public            kaio    false    209            �           2606    16868    d_causa d_causa_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.d_causa
    ADD CONSTRAINT d_causa_pkey PRIMARY KEY (id_unico);
 >   ALTER TABLE ONLY public.d_causa DROP CONSTRAINT d_causa_pkey;
       public            kaio    false    231            �           2606    16811    d_class d_class_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.d_class
    ADD CONSTRAINT d_class_pkey PRIMARY KEY (id_unico);
 >   ALTER TABLE ONLY public.d_class DROP CONSTRAINT d_class_pkey;
       public            kaio    false    217            �           2606    16836    d_condicao d_condicao_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.d_condicao
    ADD CONSTRAINT d_condicao_pkey PRIMARY KEY (id_unico);
 D   ALTER TABLE ONLY public.d_condicao DROP CONSTRAINT d_condicao_pkey;
       public            kaio    false    223            {           2606    16747    d_dia d_dia_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.d_dia
    ADD CONSTRAINT d_dia_pkey PRIMARY KEY (id_unico);
 :   ALTER TABLE ONLY public.d_dia DROP CONSTRAINT d_dia_pkey;
       public            kaio    false    203            �           2606    16819    d_fase_dia d_fase_dia_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.d_fase_dia
    ADD CONSTRAINT d_fase_dia_pkey PRIMARY KEY (id_unico);
 D   ALTER TABLE ONLY public.d_fase_dia DROP CONSTRAINT d_fase_dia_pkey;
       public            kaio    false    219            }           2606    16755    d_hora d_hora_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.d_hora
    ADD CONSTRAINT d_hora_pkey PRIMARY KEY (id_unico);
 <   ALTER TABLE ONLY public.d_hora DROP CONSTRAINT d_hora_pkey;
       public            kaio    false    205            �           2606    16779    d_km d_km_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.d_km
    ADD CONSTRAINT d_km_pkey PRIMARY KEY (id_unico);
 8   ALTER TABLE ONLY public.d_km DROP CONSTRAINT d_km_pkey;
       public            kaio    false    211            �           2606    16787    d_mun d_mun_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.d_mun
    ADD CONSTRAINT d_mun_pkey PRIMARY KEY (id_unico);
 :   ALTER TABLE ONLY public.d_mun DROP CONSTRAINT d_mun_pkey;
       public            kaio    false    213            �           2606    16844    d_pista d_pista_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.d_pista
    ADD CONSTRAINT d_pista_pkey PRIMARY KEY (id_unico);
 >   ALTER TABLE ONLY public.d_pista DROP CONSTRAINT d_pista_pkey;
       public            kaio    false    225            �           2606    16827    d_sentido d_sentido_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.d_sentido
    ADD CONSTRAINT d_sentido_pkey PRIMARY KEY (id_unico);
 B   ALTER TABLE ONLY public.d_sentido DROP CONSTRAINT d_sentido_pkey;
       public            kaio    false    221            �           2606    16860    d_solo d_solo_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.d_solo
    ADD CONSTRAINT d_solo_pkey PRIMARY KEY (id_unico);
 <   ALTER TABLE ONLY public.d_solo DROP CONSTRAINT d_solo_pkey;
       public            kaio    false    229            �           2606    16803    d_tipo d_tipo_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.d_tipo
    ADD CONSTRAINT d_tipo_pkey PRIMARY KEY (id_unico);
 <   ALTER TABLE ONLY public.d_tipo DROP CONSTRAINT d_tipo_pkey;
       public            kaio    false    215            �           2606    16852    d_tracado d_tracado_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.d_tracado
    ADD CONSTRAINT d_tracado_pkey PRIMARY KEY (id_unico);
 B   ALTER TABLE ONLY public.d_tracado DROP CONSTRAINT d_tracado_pkey;
       public            kaio    false    227                       2606    16763    d_uf d_uf_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.d_uf
    ADD CONSTRAINT d_uf_pkey PRIMARY KEY (id_unico);
 8   ALTER TABLE ONLY public.d_uf DROP CONSTRAINT d_uf_pkey;
       public            kaio    false    207               �  x�%�M]!�ǲ�v�sQ��K���Y��/q�^�^����3F�G�>�����嗱[���/n�\�_�y"�������E�V��j���'6�66�nC�t��z���Őf��1��a�Ū�5,�6��QL�Q�!Y;��C��6�63�j���䋱���<E=�`v����K��5}EA�+
K��x�d�Z%��[N�;�`a��xꈙ|˘x�s8'��9q�`��	��1a�VLX>�WΌ�,�bα(�L�;�`��rc�����'6n�ܲ�����~�������;9 [8 �/�@}�\�Q>���|��0���-}���h��B���8v!��	���$�d
3L��Sƈ�ۏ��������+k�9��E� �h:�f��ɏP}�q5�p>Mg�*V�_D��#�D��5J�P�YK3�������9dS�'��mܕH9ł��j��cj�>��U� �B���t�CҸ(�ީtJ��9�Z��:ɍDװ�@��z��v�}H{֣�.w �M�uo�	y県�#<|���J��W܆�9�x$�m$*/=������&I�6UPz-R�.�-'{/�+g�G��%z����!�%���\�䧮���T
�������A�$+/H��n뵜G�K�
��ي� ��S�')�oj����*H�$`!RV���JB��d�T�I��:l�(�����U>��e���J���dCO͑�|I>�j'	��C2��+�`$	A��EI$%��������P�6*M���b�T�����G|Uy�H����e)�|��!VF��t�*g����nUd#�[G��g��F���v�\��JU�h�q�;����q#5%���Zm�ՠ�T@J]�h�[-5+���o�m�H\!���}$u�Hn�K�m�ȝ�H	l;�r����`tԼ�Tf��a���>2̨�?���5wO#�-#����a���+�ں�*?�-5��j4T��U[Ej��5u��55�ﭩ/=��+�$��iJ�1R~_�:�Q�����I<��lF��\�s!������(���AG��jcO@G��!5y��}��o)�6�t/�jn���j��P��1�W��@W�W�����w@�L��k��F��5R	�F��`4�D���U��uZ#���>�B%��<�^_F���{��0C��u����|j��}��r�A^9ct�[#����mD��[S8��G��u�,��+"�m��S      3   �  x��U���6���@(%��w�/Nf��
.��uu_��]�Ȏ�?��/ޭ��h�伺�g�.N��,Y3�	ʒM�HVBs�frj�v�lM�uj��[{'k�Q?�Ҭhb�|]�8��u��5y�	���f���,I��̽k�&�7�u�H��/�#�w`m�?���
�Ro^hM�$�=2"#ܗ׾u���K��0�Ń���j'�B�PG
��< ���eQ�6��GYT����.(M�3E�/��6�:��ZU���
�E�#��?���3y��(��{����	&�B�1��5��,�jo�찜M0�ge�t�F������8Sb����8��{>�ue!6�'6@)X�3�ah�	ͿE�e)�UX�9�vYV�%����"���Vw���6u�uJ29�U���0ޡ�פ��I]���:�̊���2� H<d.L�t���P7r.w[U�x8k7�1�,� ��(�F�d��{O?��KK��]-'X�+�M���]�/��/=U�z^sb]�pr���+���Ս[���Ȫ�N,:��Q獐�;2��;�8'Rd5f�f'���#�����3�O�`�Z_ΉҼ�
��^�b,_�)�I`=$�������C��j��W�p�[��BP�l��z�h|�٬��eϙ}V��fRW7S��9/ l�U�iZ;� ʺFj�5��&8`��C`?���6���5y���Y7�:��Ӹ�f�Ի��zv��=n�����z�QK�O�:�%>5�	g��������'�Q�2!���(�&�E�hP�'�?_�u?s���U�&��೺`C��V�����k�<.^�&���4�U�Y���I�
��{��Ԣ�g<4�Bb��!!�#��&�|aE��m׃ـ�.bR�o(<�OU��>4�q�t���@q����i$�D�]��O�srw=��6-�]!6���L�]y+򼎝f�=A[�ű�V�:e���x�IJ�?(Ci      %   ?   x�3�t��U;��$37�X�-�(3%���M8�$1��˘38!�e�陞�_�������� 1�      +   }   x��=�0����)a���2g�X� 1��ԂH�-ҁq.=������SgQ�8�udl(�^ypl��%]r�&I��{:���]�^���ߎ#ͭ�.VS)�������ϛ��|�%j         I   x�3�,NM/�KI�2�,I-:�<�˘3%?73/=�˄��43�$���H,2̀�+��9g��I�)�\1z\\\ /i6      '   ?   x�3��I��WH�L�2���3KR��9s�2R�S��L8�� �)�F^iN�&W� {�      4   �  x��Y[��
�V��l�O�������
��eW����3ѓ��$DBn�1��ȿ@a?��z�����O���(���xb�횈��� �b��c؏�Ć�g�q �8Kk`�=���Ƥ���Oz�b���3���Yc�`/L�1��x�{�(Y/����Qy��>�Y���9�3��ъ^��8�sr��ڐy&&��O����u�g�4b�옘gZ����#�X�x|N,{"�w�y'�Z�ױj؏gޡ�5��/��y]߽�Y�N:��a?�)j��[�(7jh8�%͕z�.О�[�E��2�A1��� YE�7�|�4`�3lqĪH�M ]X���� Mr�U�t)�+���*����r'��] B�+��ۂܝ��%_Cm^�*7i韪z@��/�?�|�=�wU����iju����zS��>uu��{A%��\o3@\
�eRg�ӻ�Qj�7�;-�NS}$��iE�j%�ˊq7���"���Ԗ�)X	Б�-,�7
��YFVr�Y�2�����VT:V�p�
��|�woݸU"�>pm.�a�$xt�Ĳ�C\p(�.��n.3]m�pK�TN���D��|a;����KZ�B��ٓ�[���]�NH(��-X5����1e�H8� }����/�,%᠊�h�u
�Ӷ�C气����<'�.����&����=�M�ަ6Au-Ɍ�1����]��2���j���*,l�^���`��b{�&-٢��uŸ��]����,���,ާ:`Gu%5��	�����e��%���%��/���l��KB!7-ܼؽ勣נ;"	���p��4d�ܔ�׶��� nJ`�)�d,J�7���g��0�ER�W���[�18�&��$Kܘ9���&V�k��n��h�Ѵ���,��^ZM}Ki"�r�wTtKSV�gr��BXȆ��3��>r�(
���OG��F���� ����i_��ؼD[�|gy�˱�}�3m���dBȤ�f3-�f5�X�`q�Da�0�Yiq��p=�J��Y���U]䨄dx.61_c5yM{L#V�Z7� WU��os�`�6
�x_)pl`�#ˡFឰߝ69d0�E�0,��VΞ%,�4S@u;��s���g3_)(�ݎ�;�=X�VFw,��Ǧ0����x���>Sl��#�t���H���������9pt���]���s�}�ٱ؈
�n_�TnZ]aj��W�J����$��(VP�ztX�rm�Q��:y-��Y���Q*��`��X��5pU�q�E[�t�����>�U���s���#I.���~ۃ%)��s�H�&�fUN5I��5r�%�,Yc�}V`Ì�m:p�|]�u�6�\���$v���[ղc6h���*�[V�f���ε21;ja��R���������j����/�b�X��8J�����곟����Fm	R�i9���̟�Q���t����QaU�[�x�pN����g�eA���$�p����5���x���Aq����(�!1.��r�ay��:�A��.���p�E
����jL�e.͗�����{��n��0�[��1�Um:-Z��v����g�MM�J��m�'\=M�飄sX�M�b�-�����H��5��"���i-�7��o�hdp��[�r9�,�8���I�[�l����0Y�؟[t|v�ڪ�㩀����*�9~�2����ߟ���pS��         �   x�%��� C��.�Hg��s4�\@�ly|���F�zS��	]��<��6��E��t�y׼�ꂼi�=���ZQs	��[t��cs�?~.p�C��H�qt��K�g�?Oq�~�.q�ưo!�YD�G��m!���-F�&zB$����� �>�{>5            x�4�I�$�Ƿ�O���7�e��&u)����K��u��ֿ����~��������m��V�8�7���^���������7��ڿ�7N�B�W�PEkU����j;���[g���k�o�^���[���[��ک�e���
�_�$���]-�V�{�����;����Gg���f����{�/�����WGU���ߨ*�q�����w]5�vj�c���Ǯ�1���3jd�:[9U�:[��W-�*<[u�Հf��&c�1�9k|U�\U�����)8�����Y�����Us���jkR����6UkM���j�"Qs������j�Ӱ��ri��۵������I��Vm����ѯ=�_�er_ug��sZ5��Ǉ1n�a�ӭ16���|�_-r���Qߩ�0Y�S��k�OM0���XU멭�S�pۡ�&jv{�V�d����:{ǭ:���+�^tk�ּ��zۙ�[��]-��m��n���~�A���Gy5��55���K��{e��0ީ�`�Z��\�߫usR��W��C��w&��~��.s�~Ef�V�v�ߑb~�ծ���ת��w�z����N?���٨�h�-Z��&�6Ʀ�AƷzڊ�Ǫ���V'����~Q�r����ͯE{���⢽��k*k��]�"1w�GE�(���|?�]4�3����ZN*T�#�Ȑ�&�����jE�3#/J��5�c���T��bV5�E�w�nj��_m�_`<��c����A����֖�&�s��(����.{Ma5��m�%�6�+b1��£��2���H����d�g��HĹ��VԹ���kq)9_����yvTW��SP������	$�>nE��^�P?QL��A%��Ù/2�Ǌ�Ne{��z��P���6~1������A�-�'�樈��-����X�`Б��Ւj�����v,;\�[��k��P�m�/�!�n7��k�~��-���j!]΍��$��]we��[�(WFЊt�暚����gE�������:~H�C51�p����AS�;̩����^����a�9�����~�hriN7x�	���*��ɮ����(�,>4����Y�vf��p�����{�N��N��68�V�A��y�jVm�a��ƨ:��m��A�6Ϟ^d;�g���cx�U�E�C�ڡ��E�5���L*ķ�s�ЕMx��d/�p����9ͩ�W(��-�O�U����a�Z�,���ֿ��ֽ���n-x'K/��|�� ��"Y�Aʨ��Y�l�q+{rYdꇙuU���)�4�b�+���Ž<�`��Mt�hvJ)�hvug�h���j��:�9%=X^�%�+^�,��,@3���çs�N����w���B��&�f��MuOB��:�:�M紕nz����vE�J�s�ε'E��X�>��JA���:�r��"ܓz�ra��(w�e�r���Ю̦?�%�����8�`'�ȷ&�>?�Q��"ߧ��dp%�����%�*���~Tq�<(�[DQ�b���7��Ʈ(���J��/;��n5�E�cK��-�ɪ�����+����uN�,��,i�ꀀ�U�~9����I	�
�5��`��v��<
�E�C��h���:��u��V_J�����qM��l��l��a;��+s��vf8|'��@N�E�-�SS�ĆnH��ߢ��=z��Qt<�_��׹����E�t������b�զ��E�H�3zp�����ح���d&U�&�nn	P�@:�/:.��H��Zt�r�*B^��:�k��TQr�<H�ʼCRv���? e�Q��%�Q��$2������A�G��YGr�:�%�f[P�t
k<E��{�(J����۬���%ϟ� R��)�l�"��+R�f1�'"�xPB�(j��2��-�hs�c��4y��E�Ë��q�zU�<�_���"��	=o$�Y��@49���k 5�T��d5�?9O��._�!t�!|�X�ej�Hmd4\L�҈�z���E��#fr ��%�V78tg��Ȱ�z��P����(�7���H^�":���fUK��Q����N�q9$g�t>-��^@º�H�8��(Gy�ޟ�N���b3"K�a��!��E���â� 1����΢��(�u���m��~7F��s9C/r��rE��q5�7�Z�y$��9A��z�f�2��#��5Á�F���5gN�R(��������]�"�����?���VP��V !o;_��!�y`���E�~nb�e����y��A���nwR�fE^�O��f�E��U�.R���D�����'d���&d����ňJJ���M�X�kr��͢�H]��Oi�����j����I���;�2#YGUA��y�#G;z!Q��3����*,կ����g���:!RwN�U4��(�R�X
�����-�Z���-A�ş��Uk���^�Hp��?�#?�Zc�cA��g��D�B͏�յ>��W��o�����G�T��g֒���(�R�ߌop_e����d���ׂ5�1rP�0P����_�n���窬�sɪkSɔ�Ι[m	��F�E³%U3��-���4�3A���֌�X勄��8�!ꅞjÑ���(���u��������u=�����l����w��+��v�E�Ciz!aSi�r�'���ps!_7���LjC؝/r�B������;�S̵�B��D�B9����^��-S�YG����UT}�\VWQ��.�eq'�d_�~	9��.5l�����ũ��A̩�������ا����5O�����ܹ��T��p!�4��#�@�n�́<�����yU�+�5�2REk?���-%U$=m���/�z�W�����9���nMY�V��yl�`\}���E��٨�'�n9��D���md����E���z�O��v�k�.R��B\�ț��p��"�س�!_R��xV�!`[��'��:aEȇ�.:����=5¡�E�Qf��p��=姪|���â��s�܏�|�%�P2��Z]%��\���IB�m��Q9�QkuU�E�Mn��7��*'1Ծ���:����#j-e��P˹<��Vӳ�
�r�~����-���H�N��\0��*#R�C�:���#�lh��`h������5�����փ5lTЊo�Hx{���^܅�f'�#9��YTu�#9��p�G��^�6��LS1;��*"�!���ۼj¿�C�<2Jq	d���{��LU�����PIq���sG��p)y�Ǒi2]C��b����2�):�̓X��s�q15��P��饊_�~o��ԛr���k�����U��>�����V���"����`R�pPPW��)SP�(Z���j��}� "�yLC?�Eŗ�>h��W��!�Zt|���)H@���N����tp��w���kA�gtJ��nN,5�TQn�-�9��j_>.j�u�f$躼p�"f˪�х�$��6�#�)��=��?/�G����7Ł��R�RsT�K1�q���MW�dX'���V�����WF��q(�Wweu����ZG���H�E�"��c��f���B
�`��H0��AD�UmrS�����s�){�=��?�����JE�7Y�fJ���� a?�׍ƅTs,���]��a`ʦF祙����"=E����=wE����޼OѽREИ�H5����P�q!co���~�кP�Z/�)�M��k���y���v!h�\zV�p�5�A�^�.�<������p17y8ݢ�7��A����X��ٽ{!gG~!�9_�d%��%������T*'[Ջ�����m�����K5�v�ˎ��Ɛ�S]Q� ._��r0�k�HA�s;R�5�M���j�ټ�HZ6r<ɩA{-��P�f�;�ʗꈚ/�_]7z�a8H��mS���N!f��E���EЏ���)c�Ԓ�֠g(���fPm�Xm�����E�hk����[��.6v�E��N���.���Q{��t���)�V�E�ڦ.
�m���9U�p��]��º�l�SL������yٺ���Y��d{��&��R�E�^n���R�rQ�~�h��(��U3cb/_q"3:���Ϊ�    ���뮉X3���\�����&�c|�f��/�{�ߟ	�D���5PUQ�{5.cm�Nx9�W���3���i�ݣ��ꁋ�ˋ���~�*U�S�����[�!���I#Vk�|�����3%������P8r�=��L�C�V��~��U
<)�z����&F�_J����S��~F��G��M+GՀ�Z*{��K�:7|�[�;޶���\-��WK>�����Ke��`��az���$^Z1��*}�p^�"�cW�?=�����)4կ���v�y5�%�r�cp,d�Cp��<5W�0�8��J.��o!3�=���s�*���r����9��^Q��]GƗ�X�rj}���ɆH������x�D��+(=4]?x�� �A9�(X��Yot]YI����./>��d�m����xY��
'�x��8?@�{j: RD�V-x�E�W��n�Z�;��׷��O�����=��_i�m� ���<�	�F��Y��玼~���9/AR=�#����t�eཨsD x}@��)�$;JLHQ�B��� �յ��VF4����P��]y��A�徬A�ךl��<�E��2+FWr�J����H�~�`��P�Q�$��)"۲�dp�c���7L����=(��g�q0�#���һ�A��;�q��DW�Uɚ�.��7�	�*2�7�X��J��p�߸B?,S	�B�ɝ�3Ю�t��u0<޿��������g&s������������I6�e���[��	!@h��𳨚�Env���m�+����/W��
�-U���"?�
��߷�on���뽍�"��,#��t�yţ@1��_��V��L7��K~on�����Q��9핔+�Z��/���j؊��X���(N�[RnDC�Ф�թ$ǲ�ͱ���W몹O^�W�.�W���sT/{�\���gMF~��.�BX#E��;2�=I>Oq]?7�ɦ�o�)d� �ZOj�I@~�rg�������]��
�w.�B�`[�l�ͅC�"ۚ�02-S�rY���k�#v����@� ��p-���dJ&��&۪Zp���O6��������ҌB_��K�b�^Z����G�� �5�[ ˼�4�eݓ��,[-�#���0��91�xY���!�����b�3��M��IѥΗ��x��H3�����ne�fg��S
���Q��,��-~f����o�<2�FH���o��e�Q�s�l[�l��m��Y��Rڹ��QǾ��� ���eE�;$�#�䖔;�s1j�L���!�^>q�d h�k	���K]��V�<��.� �v�����p �h�9y��G� �����H����-k�E�
Pܝ�~&=ǚ�3��Fhn�%���3����v3T���Ԇ*�P��Skj�H�������njyӛ$� �����1�jr�o��`�N�ÀZ�BT#��	p��tl@�<u�z�t����r�]�:PT�=���&~�`C� s[& �>��b3o�0��s
 �X;�GM�5\U�4�hBA���!@���x�g��]Ǣ��r��(X5�~�a�<0si�P[��@���agc��z01o$��e�K'���I�U6�z D ���dh`ܚB ���#[�y���W��n,���-Z��~�)V2� w3��� ���n�[ܹ
�KLq�a��oC��9Ʌ���}�2Q?@���S����#�Cm���zk^T��;��c�T��|x���d54�ط4�qNV
�m�,8Ps�:��� �S�pj pO� ��A���33Zk�+9�39�@�i�k���i=�v
�ps�����W���Re����6��S�4[sms6�`t;34������_���ӷ!�u��-_|$����Z����;Q�"WH) �F�0rSuP���N����-Y�Y�5	obQm��E6)�r�*�"-��j�p��}�%@�H1nb�}`�9�"&Qs!ps�T04=�����h1^�r��Oύ�3#�fs�����C�#I;�3�'��:Ғ�5x�9��	���a���8�Cm��7@�q23\G4�5�t*[�X:�b0]���n�)A���4� 1y[ 1u.���X��,c���������Ȱ�:�D�D�)R��k���kh����t�u��X��َ ���M$r�{����= 0' |!v�@��;/;��ǥ/:�$uU���RMU7�}�"��,�ǝuE����-�'�P��=p;�st��<f��;���lcG���{n�`�n1��~٦�/�<Z�]7�w#.@�0FZ/���;��]kq� }o*`�C⇈�%�4������;����x���Vy� ���k�����4�"}6�E`�p���gh�So��;�"�y��T�Q�ֆԅs��X�|�3pyX�����ȼ��<0��~��ҁ�1�VeY�y-� �y�|�(���2@�� ������L�7�	�747`z�[��H�&��M��>h����p�(/����������Ak �sA�a3dd+R<�a��Y=8��
roe^L���A,Zvo�:*/��!���W-� |+���p1(Ԧ��4 *7�����9��}]�ß�%#y~�ɒ�v��^�G���V񎫳A׷4�5�}'?��/�T�	F�y
�O 	����\�@Y.����^�ܭ�S|�KK�(=E�6@~��@�E����^���!�~i��l�ȈP#�/�7x?�X�c����=�g�N��������C(�e��'�x�nS�?e��fRW��"�T��	z���
�'.�	����߈; �� �A��t��>˱l�)��Q�C�ܥ�Sf𾤆8\��w�!z=Yh@��֥�Mg�Uf��L"�g2�x��@�.)L���(����DZ6��*��@_�^���Ok-]���	�d0�ADL�0���}����܊�%YgXJ^o=V�<����	�0��g���[p����-QXt �畨��_��Qn����`���^��V�����xՄ~�g���a�K�H\�9�_6���yZ�As�P�7g>y$���I`�v�d0J �;��A���(����{��y �𓈁�m(�����DKxs�,���ꊃ�ߗ�2�q�v\�>p��""2���!��GJW?��̉q��nq~���)�*a����b�z�<���I�dR]S� 9<;LN%!���G21<�3h�l�o�	��-�.>k:�:�`�Ƀ?y%j8�7��-
N���3�hƓ���z\��s�D��)��Ven� ];�W+=��s�\~Fw8"�?_'1��� ����Х��`Q� B\Ტ�	q�>�]��6���[�����p��@�^3�&�P��ɡ"�j1��/w9,��ϗ5�tF�	p��ܶu����#K���K�%�N��]^XY�Y�b�- �N�?_ퟐP��ሙ.4�s��el�ϝ�$�צPpd�0�������D\q��8�7 �]l]�8wzub,4���0����lq��[<��ۊdt���Y�b�E��Zz��SA����*�O��3����e����������82+p����7�9.A2��Ǆ2F�/���kR1������e��pG?��.��=_Dc�̅4���4L�
t���Й�OdQ�[���-H%
���x#7�Mrj2�@�غ���1�v[�=�8�#+α�tm�L]0o�@C@�Қ�3{��p�}ܱG�����O
|�Gz������M�ˏbأ�+�����||�-z(�.׈��E5��.X��}�9]���f�4�y&R��8��9t@@�r40�K���j� g��g�ێ6�苓��e0��L�G��L�\l�TG��C0d� �sy2K�	����7nDo��2�Pb�	�z�у�Tl�	爀42Zg��Ѳ���/�:�v�^H�/�-����<ƢW�uE�� |Co�H��s�����̡tt]    {�)�m���eiq*ܙ��^B[�	� Z�ڰ]K6s��t�ŊgQuR��
<F��5m���X��T��&�ÈL r2��'yC�U'��������>��%}e� (�s@P�g�d��9 �~
�r�$��g���Q4��$�����x
���^k���ꅲ0��Ҁ�Q���Qv�jdd��b�U��lr�-��r��e�� X�cUY�#�^�Yެ�`�_
�yT�%%2�	0�������h�w���#�W�,���L��w88��H�-6�]YG�Ml�f���*�Z�tk�T�&�y��삕��˘��\��]��E=
�r|��e%�@^�V�^Ιu��I I�����rDI�G>�ٽ�}Xr+����F@�m�$�M�e��g�h�d@ni�DF�g
��Dv0F�V�j��I�*<"��րi�\.Aj�o'ݰ,�l�!Xs&���3�7�b~��AS7�k}�I�*� m�om^<���_"�ŏ"����P��^�:r�HXYɋv�=Ձ���D8..# ���U2�&?�Sȏ�r��l{̚{�R��JЍ�3T �M�8ZZ@��������D�0�(}@t�l/@�#�b@u��R�:���s���#P��	H���q�Tad�X��ey������ �$�KnL4V�d�Z ��za$�x��#�Z�g�2�=O�^�=��r9��+�/Ke����A��81��@�ln%v� w ~r�1�7��-�W"����Ӄ���[̲�<�,�" �D�:2r�.�,qw	�茴����(��O�
-py��ZN�KnWGO�=n���3HN]6�H�r �=Q� 	m�e�	�њ
]a�Bc@z�Jo�B��g���}p��8�=-��K1�<�D��o@Co�O�����:�7��#,��[�y{*<3K�q�<��|AcS-��/��X��C�-J�}����"HtE�(a�:�AD�"�K�q[7���s�"�P���bEuO�`E�ց��/�����~H=7qu����E%�Hv���(��Ir
o�.��
��hk_\��g�5wt���Xt��O#��u �6CKuТCQ��]�Z��T�#=�q�7y����� ��ޛ~�8�`wࢆ&,:2�p}�;XѾ�	��8J`E�a��i����F}�)��<>+-�'c��	���Jr��,�E�[�Q�2Ys��1�F�5�V���p���8/3���("��NAv�a�������?d�g�����E4\B:�$r��--euy�
��&� �ف'��z��0�/��h�.$q���"�7Kk7�3�?�F��:��|Ñ�[��F<Gl� E�GOE�XY䏙nM��N�F�/�(��Dx��_G�*�
�R�	� ���{Q�[��3�����Iary��-v�&�ɦ9�B��<�+�QˊUt� G�N1�2F;��%��`G���͢G���+��jс
��Ih���v$��C<��l�M��A������%�=�V����!����<F��O�/�w��Moq�iK���1�;��=z����H�-kM�"�b��+��	�������#�!��:����WPYKUh3�=��	4��1/� �w	�T� @:g>ӡ{��Rb0�=nL(Cc@Hu�F+T?�����g�P�: HWv��U�C�� ��e�X3�bN7d��>JT#ZG�1S'da H��E7ta�����ҝ�Do��)g]�R{��3�eqGi邚�|v"&o�Kcr;�ʄ�]�=A�ӱ�fǺ�FY3������#* �>�Xu	#5n0�04cz�"�C�قo��W�p�`H�VO-��oiH���&�]n:R���a�z{�4<`������Z�A�v=�{�Tb�Jp�ޛ�WD�J+f�"m�ouA�*�: ҭ?��"�8 �.	���� "m�5���Nr�h@í�z��܋��z�IC�"5�Ǫ��ŊV�
�i7 B���m� �%<z���d��A.n$����4Rũ� �*���p:)'	�fأntĜe IOv�����*Þ�4��M�?�j�0l�筅�	�M夞�M�QO�nfr_��ӵ�H]Շ����}���\^~iJ�i�G[�M��J��zV[cK��}EN�T���Ew|I0hYw���>fgv�V�r1��d6��M�2�l�&=�b�S�@�.�*u�:��O��Z6 C<h3Dx�g����	�4�.�8)9�	�{XF"s�ܜ��yDX��o�g��ŕŰ��륒=��jDp�i�ѻ- k���T��)�4紀��':�����$��z�z�3��}8q�ヤ�KK�?���0��+�T�y߅�LB��p ��?&����./g,����N�!�XRM�,�Y_�����S@�Z9F�5ܸ�b�ů�}8V*Cc!4)���l�	�g*��� N�M��&�@�I3�����$�R�����b3w�	,{�R�U#Ƥ��t[0�c�@� �t�44�z�&��X���-�ڑ�c�?�#S�����	�G�VrH�%�4��F���͘�4)�s:+�4+�4K���'�Oʝ�&���2\���*�I��b�N�1q;n��!у&=a��I��*x~E_��I}�I��F�4���	4�ޙX#6�?@�­�&�+++��+z��n�EN�K�{���D�qEQ�Ӂ�������~�x_I����A�6�8�0�FN:��c����Pv�<ڞ9�B�����7��Q/o��A��n����N'ٌ�d�_�`S%�"1xҞ�<��%z�$����'&�fb ��v#00֖�q;.�'pR-!4�Z��Խ-��,M:w�mQ��[n(Y3#<���	I[�=�Dy��ē�T��I�tP��А���ؠ�V� PV��{�t���/4Վh���49���zƺA@���ET>��9���>="��XI4e�-�A1����0�ܗ����K\=KV��hn��{���Б�.�d�F�L^�j�:hҥwyM�OZ%\M"'��L�Wv�Oh���}�����3����\�:���FjTHC�u���B;XR�t(�=�$; Ok�OɃCI�D���}�C�Ӹ̏��Տrt�* a/Ӈm%��i��l���$x�����e`�*4��6��a������I�	����*
ژR��3�m���q%����K�2������D�jb[����U� %�Y�G&��R��Jz#% %m����+v'�	�]��D{�t9�/c�%�/�A�[���R��h�B;xғ���Ig�r��]s�N{&�z#�Bw��a�:�'m+a��]+�]�I�a�3�������<�A�xŊ��Is�/�k$�T�FM:���A�N]�:h�)ڭ�&���4�z4G�Ҩ�j%=��L�1�3m��$D:PҞ�������bI�+}W� @�ofߕ�%��n��q�x����v4�F��_��u	A_����tdg�wc�3+ ;4Vw��Qx$���$�z8��%�D��v������'p�C�SGzs��#�/��qy�u�����Y7�/�Z�Y�F�-�H��4Bt� m�R#*W3�� �&���"]Y�k� �v��t������o	%�`�|*`���ʾ7�]�E�yK_K���B�( R���P�T���o|/ǟ#�7�X:ƺ��HO4k�H�S�TF�N��<�[��	ُ�I
���#�$R��t�f�tG0DzE3���#�# ���-���M�M���&����	:H��1m��ON�Cb��dr짳��(6_L�@H�>�}���`NI��7����{#)�~�T�^>Ş�ї>�."�]!|Z
��Gg�p�݀��������a�F�����\�����Ϯ(=녊�}�7ч�����Ǹ��[,0E}�s�-E�����~λU~�SD�X�% i{�m(_���������Ō� f����ټ �����]����>�����4���e@��Ҝ%@Hg$* �;�� !�Ѡ     !]��!��D���hP�F�tF�Bڅ��-,�w�$7I�V����q�^�4^��%R
Eф��� m�@�vݤ:�%�sd\F���{qƱ��h�S�3x[�Q��5x9"��#�Á�"=r0P�/�Q�F��H����n]�w�$v��G`o���T �������:Z`ӝ���d���y97�H�W�h��i����W0�M���!20�:z��NN(��6(R�tA�3sd��ԅ.tgG�L�[�0�����b���N�-��zQm���ό�i�I��t��O��3���Ǘ���#���(�e�V_Hw�p�M����@0��������r[`�+Hm�Cd��.�T�z#2)@���.)���J6[x���j+`��N�hb�� �s�#�޲I�,���iQbq�s"��&�F��HFzs���� ��h,��.C�up��h�����@��ԉ��>�B��QFQ^r�u>gY��m%�6p���?7������&r�e�&<kx1�#my��%in��H�du`�#v `������<c�ga�9��G�sAGz�[
��s��������H⺒�����������wt0�Du��ԇyro�Z)�$錴-�4s�u5�����m�7{`+�!w�P
�4���U�-��C�p����HCWK�/�/���w��gGzz��㤷�EC Ig8����2t��߳C#fP1noƀ�w�*�wq{��#�Z?E���tR�NM[.?��E�!a�3z���l�4�yDmwgB�Ӭqx��D�jW�ݡ,�ޑkP�
�t� GP@I�*� IW. I��D>��^~ �4:��=DES[4���0@FJ0���m��A�M1�T�4������<jM�k�a�'Ai�h��ڟ�%��������K[��h �����=vh���
�G��l
��ɝ�*�y�����-{T;�ߨʂr_IQ~����B��!�%߿Ć1��I�g���&�Q�-{��j�	n�[WhF�܁�"��&�/Q�~$�����hf���M^���S�\�I]~���Q-��x�����)��f��Z����X���-�߷�`�UñR�ջ�>�ċ]8��Rj`P_��F�)x4������<��4î�O�
��j��r�* ;ڂ�;�́o[����7����g`��hXc\#��q�[�*1���	B�I��0����1���{#���Ѽ4'x4���#2&�љ�� ��H���UD��@���xt��>�Ʉ)��G�� ����蜙<$�>�O�?_ڰ3��hZ@����hl�,�� c@�� 4��XoݠGQ���1�����WtJ���o��Va���0��Ll�l5��~�Ǣ_>H�LN2�1f`Fx��s�,���MSF�I>�p������������ H?�G�@�ZJn��Vu4F2 \�Y^�U� H�0��3f`ޢB:Գ!�F8@H�P������ C�4�1����_^��M��#a�����J�W����/��ZX���ro-N���O4�y��d�<����yЖoYN���S�
����~�gْ���,���``>S<@�.�Z��󢃹��ٖ9"��L�F�s&�j'�5�]j�R;�g���Y�G�Ħ�� ZKۄw�|1@��_~��b����4��67� ?:�W`{��zA�UXf�Ϸ��kT`�?��,b�ͨ@~����FHs���zW�98��h����ѩ�� 7:ďp�SM���@O�UK�[w�FOz�e�;����=�)���Q������Ÿ��5��W���[���_��ē�Z���nUGݥE��Qk�
��F�MQ��3�6�Tں�d��HE3�v4��0G8���Ny��ļܨM>��T�ࡓ��������K٫ɩ"�~�ڙo�V~�%�+/`�d@�����%�/A:CШ��a�Q���x�#OUj�mI�U���f�
�;��.y@ /m��F��ht�~�4�mV�,�	���]j�'�-B�
��@s��I��#���׊�)!Gݪ�F��8��{�=	�\��|�s�įT�YU����#�|5r��+�+/�����!1�>hDEjE�y㊨�ht�L�H2��č����Σ�G�l�yi�FG؇�ѕś��]�ߤ*_��0�;z���=LA�������0w<c�K�C@[����8@�nݟ��G[v��,��ݍ~��uj@_z�WŜ��t�����҃��z��n}��|��3NGv�#�U�]����`2���j<�d�R�R�ȊR� \��p�M�� 7�|
k�="�ҕe PG�u�1s���3�92�
f�����c_`>w3�w��9:F��4EU/O\��5B�C=�~���~���j"h�R�Ӈ�gj��\��gR-04���/1�-��w�[�ݲr�#�b<�і;������+��1�
nK��KrV�z�ysd>��6styGZ�q%o�v��N���S���%�aRq��hW�:A��U^`2s��c��Kg&���K+�����&�!0��zK@G��#�f}<�����k�h ]���Ayx� �
��$j�V����� =1H_٥q��Vh����P����Tq������<q�D�0�0��X���n�K�E]�2��;�xo�q��������}f8>|�=�mVe�0�O0w��$u�ZyP����a�k�s�6(���tfǜD"3	�!�|'s�o�3�k徢?�Fz�%�����븡+�`�l_}�����~��2�WgK�8��<�M�xܫ���.FK��o���{9G6ו�zTw�a<R�C���>FW��{ЕF�>:nV�`nI�S��~�G�>w�}�;c�J� HO�>���Mj㑾����H>��|�ؑ���6FP��|�l$�Y#w�4��#K���}�4�Q�"��0`��u��%ÎE�:g��2"����4��@H3F09��AW
�Q�7 ��0v@�'�g�X9O�����[���ّ�1���1�D.�Aiϛ��Ho�;���I�~O�}�����DJ_�\���O[?eW�b�X0 �{7����q-��J����uPFtem��tdf=q��y��Y��8i�NPz�	�B"7<� ��I�ʍ�S	(t��C@���@��9|�;�����(�ҙ~#���t���)�F�F'�}���[B����D�0ٴ~S@z�ב�K�~���4��eg�1mi�&p�x�@���e�_�|�Y+��2z<���o�x���1.�&�������QyD�@Ҽ�>qc������B���<���P&8�#�gL_=����k&��|�#�B8�+�e�T�PiN�)=U&,��#�*i8���j�`;��y���H{^��R�2���M�2Zv*�0H؇���tg����\� �^	�7�s��#�b��F�}k`#�Ie\����6�pFD*së��J��FwOog�H02�� )�,���n��\ސ��f`��K�H�A�@ҩ�p̕�A(�[K�`ed�-LCn<ڑ=���*�F>?R�����J�����@�N돩����t"s'�5�!�M&vm���fn�I�6�������E���� h�HO�I{��7�R�I��%pGs0OPƌ0in%�I[��)0�3k
�s4��eA�o���f���ǭ !r�а\� ����M���4��`R��0�Y��#W���ϲ[����Lh����}��J
'��'��3�Q%��H>Rv��e��W#��Ao@�.G�%Ͻ4iO^-�ZT���pW˥�̡��`�upҖ���b;p�epҕ}�+�Z���B�g�BK�/���q�-Z���Is,)=�$)�>�9���hP��ci�U�RyninɌC�rw�?R�����ޯ�/�Ѝ���{% �qF��_2��q07��ˋ<P��g%���=z2�{}��d�L�������y�+���x��#]Xy��$/��o��-ڙL��_=�����(,DW�v����7�NJ�%��>�0 ��\l��    =�D3��+�&����E��jn>o޲:�Mn�T���� @K��ͱ>�7�F/f�TM�,D���{�-푫�>h����e.�����cg�A�i��(ݙҼ��4���Y��p�&����vG �"�/� ��
� Lw$ �Mo��4�9 ��T��M������$cni$�J��v��W�}����3n��>��"�/58��-����Q;>7dXO�啛�Z����H3h=���um�/}_�Q:�ll��>��y��X�N���{l_S`ք�ޓ�O44�w�8 �Ѽ�i�}D�i���4���#/�Rp:�_L�BR�i��=��.P|��BLဘ��~�N��: �?� �G$g �[�� b��!BL_O���G`L���ӓ�$�%fq�1�y�tE6c� ӭ�{ 2mQ��2����tg�w"�0�GBs�e*���Ϳ`�"Q�F��L�(�a��ܦ����}�膔=q�dlH _YBu�(8ӕ�Vqڒ��>1 b���1���3(?�Μ(u���肉0ә�鎊s߸,P޳٣\\t��L�G��=��n���UP�� R,jd\�5�iُ/��&�jj06z����ώ�Vv}9�܄g��h*����(�q������$9U��>	�HE�I��V�p���3He�@�W��7\����t��>Ǯs��=v�� MW�Y��K�� i:����]��tDb�a�(؂5�k}�;3��	A�>< ����F��izK؎��;Or$�Վ\ݩ�7\0�Q�L�a1�Qk�9�K|�=���K�`s�b�s�i~ͷ-���̨ -�L���R4�[s�1)-z=�Ì:�\�I����ĩ�8�e�+nV&��z��N�IN~��~�|����$7�A���T���<�M{.���a�%�в[�J�;���^4�ۨ?t�@NW�l�x�3D����n�Y����tרa!���	4qb���+e�Y��4!�t&�EY�10��Ah����J�r1����M%d��Ϯ�8��|���/hZF�bR���!���$Q�[�E���Q��4���oB_"�W������l�Fl�]���q>$��/ɥK��m8�M���+{���k�i�G�{ uzcK�-��Erj�27!{�-G���7q�_O�O4,���lZ��"���P��X�C�i�H�:�e�F/���:�n���z\�� a${8�S�;ͤZ��q��.'e�Zlk�ޅil�X�U��$�Ԭ;�'⣜ t:��_��� tJl9�0��K��{�5 >z��:]�J�I5��u��
���/�4Z2
�c'�����Ċ47���n�u��e&]@9�W9��
a$�Z���ka$�v��1�\�xd�5�U��l_��pha�h�m�xzJ0irON*#n� ��t��7nil{�G$3��ebx�>�e=1�Z6>���C-���T��%f.��#(��+�S������oy@�De|o�����G��:
�B 2ri�|�O�GiB@~�]�=d@@>Bx	�Aw_w0�tD�N>_jQ��y�C���r�g�����=���j >�9�=���.5�� }����'�ӛ+�ӕc.O�+h=�c=e�
ms���A��7-"����&���Ő��~�"���-�CrzS��(D���6F,s�in�ݰ�#�SW���	@�< �!� j��Ӗ=��(�V�1�ʵЪ��BsLP�O#��?�>i1�0��$"���t�j�?݁���?e�@n*��&�G>��zonoE�N�T�x��4j�#p�=� �� ����b����gg�9�\1�h@}_rڠD�0H�x��-��y)�J��8`�8�D� 5p/��f8'A���3�����j	v��6����=8�-�TBQ �MY���+�/�}�q �3T"�<�Am��l;H�p�������F=�G߹_Ya�H��0�r����Mrz���Wl?��3Y�vP�W��
��㛿_��0ٔ_M�y�C��a56�V�G2>)�d�k����I"����#���\j��Q0���4ŕ&]i��*]QCj��0-�&s�3c��{������ĳ��;�%�˰t��3R q��M��:�b����oL^6���E�3���w��^����F��w-z��g�S ��[�-<���_Z0��N�!z�ވ$s8�[q�.�����=��6Q�8��n�ϧ[�EL23� �Y�G�t��>y?�N�d��?2�n�+��L�?lϟo�-G��=��R58������̝Z7w�q��Ndٛ���W�m���ˢ~�s���@��M�?:8T�Z��|�/���	\��1���^w�_%�,I��μ��J�a� 9��'�QM߽��@�B|�f�D}s� QO�Ȉb+�櫀��b7[��;��Q7B�/�^�H7��� ����!M�<SgUO8P���%g
I�]�iS�M�@R��JHj�2����L �\OM�E�
E�$�bI�!j���L�3��s(u����R��	(����Ih��0y�����R�x@�^�j��R���	*ux���2_٩E����n"�lK�va٫��z����^#o��l3��Nqp�	�U��<n53c �uydd��ww�z��Sq��ML`�:BNQ������:�z��`R���`}Y�$
��#%Űѽ�x��3A����!�����N�^g��Kc F	��4�z�� R�h��X�v`�n�yd(S;fӁ��]��t���T�(r�����p��p�n20c K�@R��p���u:����X�����L���]��&�O���6�3H��:��ͳ�I�ߧ|��nc7#c�}w��L��Gp�I��KN@���`������E؏T�#��h��|CDҳ����q�	$u�lI��L0�[���:uq�`RO���Lei@R����LE)O!���=~e����Sl�!��H����׌7ɡ5��s�$s�-����iΑ��:�
x#,m�����$}��f��(yNÙ�T��Jr��C艃`���#]ԅ��^sQM3��08_�C<�@���M&ڒI�1��w��!L �=��Ԯzs�H]�U��Lu���Rw�F@��g�p��7���e�=�%�Gz�-F�{�I]Z'�T4�2�NP���b
J�ʮ�ݩlE.�3f1����*�ilť����˳��4�?�~�0 ��+�i���U���s��� {�E���,��+���)DX�h�	.u�T�b��).U��	0��L:b�7ӊ!���s��N�ajn^���k\DFs��8��mP�I,��T~,�&�eb��u��T��@�ޖN�c� T[h�B�/�Y,w��Sį��-b�������	 O����)mQPX�47權N�|�_�S+������%��#O�壹]�4�*�|e�o�Ӆ��z��c��9���+��B���+F��9>��>~a��§V�lޚ�]�!-� ����	�l�
���D�M���үwKZy��jG���੾�8��v�wL����à�f^_�3D�\<uj��S���U��}H��P"c�zS�HfQF���eO}$�N��:untJ=z$M@�]8�4�i�X��V�|bx�Y�,��t\��b
�ԝ����_ʂn���i���k����q�_����L���W�,E�L��'���-�>�g���J� So�w��3�~ru�7��"^i���]��l�f0��#� �ingbS����+Sl��r��@e>��)�=[xj���'�'��=�lF���U3s�Bٙ�bkSo[���eNE ��g������*U�> զCל�!;I�0T;u�wP]�' ��z�j�UdN��F�����].�����TD�4�i�U}`�l�bA�-��Nr�76y�vY�*��GA"R=գuk�P���� T�0�)B�ǩ��4�X^��9(_!�A�J� T	_�({ ([,��(��TmN0�3�(Փ�թQ}�Q�bT'ՙ��Iʯ�U� r��.F��6�E�W@T{Hu΄��s��`TwVc���f��L�����ƈ��2O>    IiQ�2z�O0�@��h )�!Xr{���c��\ؿϟ~�AK�z�dkQ�Ǖ����3�*zO�B1���1�)�E����:��(8����R�Uc�M ��f�>�p8}�%���a�&�}��1�� DUQ	��n�?Stٷ>%'5�鷥�)P7�*�[P�e��s:{�;�"~����;��	Du|�[�!Së�Fxz��ѥ�<ל/$M�_,�8��+�f�P͑B�GB5+�~��$���Gr+�&P> B��v�P�`BUX�\�C�0�#���:�P�9#A������u|U�$�>_=u0$��x.�O��T�И2W��&� 0�Z�.�<rf�O=3��i2	�~}�20	���=N �;0 U�= �=�M �/Վ�ĳ��_�߯�.<lZ��X^���	@�|eyJ.�! �9������b���:�z�˄̼jόa��|�5��\*S�I�S#��O�ڽ� Օ�Z�ě����A�Pm�	 TW�F>���;o�ӝ��a,*���J��.�fw��&�0K>`�<�hb4��x��:9;���Q��V���#x�~x��		<�����\"��+�r�n�cT[��
j��S�7�>(gga��EP` ���Z���G��� ����_�
��d�e=Z���E���Dk6���zn6w3mL��[`�4����	:��`�N�"Ʀ�O5c��9��Hn�Z��S����IoJ�]���8sG�H	Ij(n��^�0���-p˪��h��k�Q��Xb�������S������N]W,�$r�y��j�1�,�s�~�;F����xG4'�So��C?����K��4�����L�#R��԰]ЩC���_Cs���ڙ '�<�q<�	�d�^oY�L�E�8>A�Ɣ 8�����S���L��GW�	8u���ПFM����� �F����ͽr'�蓓2s�A��>����6����a_4?��bn �&�"�ɀ��v�o�\��7���pC�*M"��!P�27����,�5:2��wJ�,�}h���87!�Spjd&��cf�>����	t�������QnW!ֲ'%����`yq������w �FC�}�%���%�z��MQ��Wk��O5`%M������>��I��)qO�K����$�g�;W�	$k	�AA�$M�9촄��$�[gR�Nz ��h�`�Z`�Ht|�Ҧt˕�KM���d����*� Gm��GO٥��#��CgP}���ko��i�&��S6x��E���b(������p�5��:}sH��y����O��ueh�qg�2�zV�� ���8�n�@�?��uX��@H���(DǊ���Rcp?>������	"��/4q���t�
I�|j�����#�vG�3����b �h̛:��k��	&��2z�=�0b�&��C���XΉ#}�.��z~Y>�.-E����1����(��,:�G��i��G����9����I7Wv3�"��� ��Ú R{�_ Rs� ��t���Q���	u�[�G}��G=QހH�4&�=�0�2d�=W!��0IH7��ވ�@R�a ����@RG�cB_��B�{��Y���8E�&��/��ڄg��#�3��u��jp��W��Q0�<����*��|=��G.��A�
H��d'�[��y�z�\���Ⱥ�w��9�d�Ƙ�3��<W�~E;!��^]����д�T}�����LhR���X�Q���u�� r��]�v ����0p�ɩ8���b��y��s^C�+ ����Η��*���'���^ư��Y�{=_99�&� #C�����ULw��dJ���(��-Xa2�{�)Ed �FW�RAb�[j�Wӱ��:�n(?~)p���D�f�Q~Dz3��է�Pc�2�X�yO4�&�l�'�g�p��1x�H�yD��HD�@�y������f73r��K�u�� ���Uy� ���� ��P������AڗD�Rf��?xTN��xԘ#�j(��~�$� F�ݤ��������j��뵂��bu<ꋩ<�ѯ{>y��	xԩ���z痋��
���#����B'O��e(O#! G�F��QG��Qu1�����\*E,����./����|F���z-<���@@�n�sͧ�#�0b�6��e�2H�O��4�3R��N#����%���<dgvg"������d�c>�QOTN�Q�N�<j����OoQ�F�|>�ُ{?S$W��-���7�_�����O��='-`Ԡ�^1Yh�d:�M��C��	u�����K�GOr��Bo�~D�uE�*U�	u�Rc4��%��=��h�W4jfHly�Qw�h�V �����:��A��oF� ���F�A0E���:�p ��v���6��R�gG7t��y��c~>E��,P��׳>�j��2}�[s4��]�x�FP4j4 Q�7
����ӄ�[�Q�ű@�^�h�i�u��^�_bי�ya���A1SOU$uab^�Q��@�v7���W���B��ˈ&���$��j�kl
s�"ﮤ�� �aO��Y���h�\ R�a��ԭ:aH�����g��q/�ާ�KY �ޠ��&BxH}�����H��u��g�q>�J2?:�k� d;??�DP�p�fQ��߬Tձ˸�#k�'�x�f8���L3b��<O_s2�ĳ�0��^�Q[���$��-�[?Z�������D�}�
����6�KL�
pK8���ePԖzE�d挧������q�YimgX �I�����'�^:	%Nw|�65�ӝ%� _e'"���PF� �k�Y�Q��Ou�"��<�z5��,��c�-� 7�'�s�c���Xe� !��"�|��b[���h�&�����z�x�]e��/!�f� H��y~�\8'(��}a�B=Z�(Ԯo��*8r5��+�-��#�Ç�̃:~u}����Q��m����F�3!'�i�_$��[�liק2���Tp|¢W���?��T��j�޿��:l5��_�%.i�� z��jSͱ�n����Q��-�M#��zĂ/ �K��uh@[���$���&�8jƀ&S7���	���1}������t��$�@~��-��B�Y���ch(R�p�Ѓ��a�:��4���3m07��K�/z����f(Ӏ*��u5!�'l0>?��6�e��r���tR�N�J}_2�O�c���BrJ6��l;	�F]F	ɢ5������m!ƃ*$�,�8�gyi�i8��&}��}�&5�!DϮ��.�i>��>�C˶ĢAe55�!/x��
�C^��F%M��Rż���	��|���L�Ʉ��2D;} ������ɫ4��^ ؕk�Tu(�k���]��Ar�,;5;�\�����!W�K2�L>�R��E� ����7@��&��FH �:�/ �]!oH�+��������gx'Ɣ�#��=%��iIm�H[�H�.��t����I�z�c�^��V����%5��3S{�h�( �~�I��gnȰ�������= (��$e$�s�R��VK�6�:��.@�sf"��S����j�W��I��rCC�j]�R��-P�ݻ���Ī���lL$��z�[�JUM����`�z,P�[����~�.;oЂA���~,��_����/l��� 6�L�ټ;>�"�|;��aBV`RQ�Q���9SGtj�6�ý�,��6㛝L*��,
/K�0Y`Q���#����D��Շd�n�����o>���~v�c��,!WF���H�ͺ����]����<j;ii�g���3%jD��
[�3.G���4G.�G=�����_ R���"�xc]�xh���i$�d�O� ۫BR5N, �C��e�Tþ.�F���5oI�*'��!�iI��ӝ�����l��YKWL�<&uz�]bR����)����w�I�9x ��ܿ�>�=�=�+�2#.eJ=�jc�jQ\�RG�����Dq���oJ��Q���T�    ���L@6ZC$��*u�_�R{8ɘ����2����RAД�����o[��� ����Noq�3#+(����M.��ְ�-i�[��,u�,��0��ޔ5\���h�'3�y��ju�Q���#G�J�#��D�fB�۲@@��@,Tꍌ*��\Z�K͡,��LΉ�&N;I���B2{'�,���S�M X�c��|�;S�F�R{���ۂ��e�B�_�C:	,�g0�.�d��$';����/o\�l�"Ƨ[� hb+���l�3��=B���L$j���^�y$��rs�H�E2���)��3�4N��������c�U=��IKՖ���fb@�N��Tꈨ ,�5Q��ȩ�"�R#%&r�WE^W3�`�dv߫�3��_~�N�+��T�k��"J�%*u}��랡~��9��D~�h*�n��ρ!(#��%��� ��u�VfLo�|�������E�긳@�n�uk*�H�Rsm�*�b�I}��9�g��J��;����k��qS�{�QzU=���������
�H�FZ	`@��ѕL���5P���[T�_2��&#d����T��zaM�ڞߏIZ�y�Ģ��Ŷ�tX�^T깙oÖe/b���AD���:w�b��g �5?AĲOC���~�[�2	7�)J�T�C��SU�.p�-�>p���(EhL��@|t3_0��u0nYv�>��'`��e��Ϩ1r�Ko��I(EV��J��)�T��\ꉰ�~y�$���>Fgrz6�il$���<FL�$�-�|�I�<�DN�+e�/ܐɸz��z�Xv��73�L�"��p���'-<���j�M(E�51r��Ig��p��Exy��LD��{95'9���]�+So"25���O7�2u~=#�a����n��E��"�M�9���
�Z�N�Q4u,fM]���92�f�d&�P����sɲXǭe�j$~��u$��9y���oElfu2q(�E� �DO���<R�Qʖ,�_+kwWz��_��V��<�Ո)bS�P��M��2Υ]��[,����3�c�T\Z�e@;�1y�����v`�f޳����$��Rz��a�I�>6R��39
�T/Щ�bd;YO|-RNˢZ���L-��F	#<5�)�ԑi�L�K�:/^zO�,�������Գ�tP�D��:Dp-ݧ�_2�jj	�fN�>�v�䴢�ԝ��G"FQ+�w�/s����@�H���̄��0B��@��0@�S#�Buz͹�/XiS��&���[}��GQwA�7��§�>Q����7��^�n�,ɩ�l��a��S3!�j}Z�7�! Փ���� JU�J����Z��0}����^��jҲD�j{����;�7����� �LuF�����z�ZA�r�F]�ğ�q����+5_t��1��T���8�Gt����K�:r��:*o��LD/p�3�m��$��!�m5�T�ǡ�qEK�4qɫ7޵���K���[ Uw�� Ug}zQ��	�u��T��X.��CS����g<;��pE#4gmի� U�{�n��V|�R���uq�-oNQ UG�A�f�Я����Hՙ>rCs򮅉d��Ft9��V2J#�b�&�+e�r���ocȸ%T]�OT��ɗnT�M=^�J����
���!w8�D�LA���ߵ;�1�:��.�+�;�a��̡���	s�z�ad|ـU+� `�)dkV���-��'wVG���
��;n��i�d��I������(�K?�Q��V��,Ъ���u��!3,��`�
yܿ����D�� �]^^uG�r�8�	�"QK�W}N:�@����:�^���V��k�N�����C>N	���BS�����iWy$���_�d��H2����4�z5�����:M����B�j�����Y/gB*�=kI-3���{�X뤆�#�N ^�"�X=�s ���[X=9{X����feG�#�����˄���'b�Ȋ@����&�D[%F��K�c,*�}�'�#\$��XTY;K�a.#�q�E5jW �;�*���D�7�Xw�'�tyD˝%d���O|��]����
����,��%%yE�d��W�;>r�LC%��Ţ�2���w��h|��t���R�#'K�$ռS�==��n'1�"M<r^����W��f�1����Dfu�lf��

���-��U�f-0��h��t]&��:��Z�:�Y�V��U@��h�JԻ_�Պ��U�N�2��3R���ֽ���H�6Ѳ	��!{�Fq�����&9�dH�Q���j��n���c�#o��R�A�����D��F�	@��'sʹ椘�03��ܸ�w�D����R�h-���T��u��lu�v�j�n��Ŗ�\��Y6�j.�J��<oᥴ������h���L�Vwx��-�t[��w
[�^u�ک,�C�#l${ByM������;Xά� ����4�se��f��7��!����ά�	Y��D'Ѯ�Lى⇞I7+�Hn�����
��jN���q�jE�juF/T`3m	������"�,Q�쬐�q��#�����z�L.�ძ�����!Jq��9����
��ie�������d�D�q�/ ق|�'d��rh�!�@~@._��:B���>��p������Uou�VW��zQ�P1�7���`Z}�j_�V�M	L-�ْ��?�*�Q�jg>���z�CU���E/c��.�VubUǻq�*+0��?P����ZY�VgD$@�;�A�� Z=u�0B����^ �b�W���0����^T-�6*U��Lk��U�>��q�A�.���WO$��f�9�<�F�w�]��Z�, �����D ����'WE:S����\�x�!���d+pЙ�m��Аh�� ��d��Ts���"� `ݹH�:Ek. �og]}�$/�Պ�~��Q�_]A��_��w�3 ��d�� �Hݼ[]0 #�����=�,𫭃�~u�YmhZ����� ~���wzG%�����ͥa4$wA�*�������u< t&����:n�𳨻��
j]�Wg��W流O�\�_�*]�ϸ�p�-|��>���>���W�d�.��T�.Ȅ,���Y)Y�d�/>Ʌ���~u)���5�i�`�!"*�����=9�ѝ'�t]���:Ĉl�SP��iH�VrDd��:�Wݿ�۝ʸ���op*�L�
��9R�⍙5�Q4��?M�2L8�Н���tg���(��M�Q���"�,ia�#3=�*�ȑ�>i&��j��ٺT=y�3z�#�'M̘4�0Q2EGl0�K�V[��^Jo@�뗼+�%_75ɡU���e2M�@��/Ƽ^�m`��9uc��6ѪK u�Zl'd�tDý-�u��F��"�I�Qoc]�^���y��$�K�ֱ05��62�D��k�G�8"�e�N��Kr�u�w�pd���՜c�VUU�֭�/]�X���40���"��[������U�e"�<y��w?���h���ָ�i'������Zrd���ffuB�KnU#4���y#Yq�}�d����O��e͂�g�9u)=!��+�n9Vv|���{7d�JRA"����S(�P�@Y_�3(�T�����?��*�n��*to��KI{�OUg����ބ����~���t^rzK-��we@�Y��p����E���h�;¸����J��
B��fm�.�#v$�xSˆqh�����a��-c���@*�6Y1��Yԣ��8;3��b�&���0k8�S�Ǜ'�7cDL����C�N'��&V4wfX�Ad@��p�Z�:Bɓ�sc͐
/��lg�^��G^���%z��Y�����R$�P�������9�$o���5�#����5+�䪙�\�zy������^�[��5�f���o�N��r�vy~�Zu���V�M ��f�;�U+�R- ����x75nc��+Y��W�B<�m	����+9Uԛ5.�$�+ٺ��[�*ڂ��Z@����sU�*4k	j٠Y�s3La�۷���A�Nm��U�����I-���h֭c��u��s�f=�7h�#Zx�^Us�4�s#������
aݯ �'    y۫#R��t���Ewt��9�(�0�Jd<���-vt��0�,HZSO���j����u{#�A�Na�4�r�A�����H�oЬ�N�����n��<k)�o�'�pbmj���%�1o�
��u{��Y�~I�;#��	7��7x����_|3WSB^\����zY�ezP�>�`$:���Y��a<��N|�f5�^@�������u��ؾA��_�MIe@;�-_�[hb�fj{-̀q2��Ȝys�I�>/����2; }89L�z����J�����$��B��d���g�*�$�F
fX��� 3L���_�Vel�(��E���J��q�h�`w��艠)�d�h}W���[��Ŕi����v��f�����:t۳���mh]�p� ZG�  �C��Ǫ�6�֭G��u��oh}�ڣ�%Z�<����L��Vēq��R-6� ���n]G�ɼ��,HܖB["�og=���kd}��l�E$ɷ4n�k���bG��${*p֡g���ղp�%~a�Xݹ���d�C�T��U���:�����v�-�S��;pV�$p�W�=T�drI"�g�Jig��1c�i��\�^�7Y��YǼ5$���!�T�$�S�b�n��{7�~%�# ��x�)���ƀ�>�kĺ����CWe��v����x�7�mG&gF�N�� �x��Y졑^&�d����4 H[7��Me'nq-l̰���xUN�I2{7�&]��H��c�g��oh�c�
\�����_t3/�p����O	t��U�����[@��!{�(ɇ����|��ul��v4 Z��a�v�N'���8|��{vƝPHkN:BZ��oz���O/oޤNY܀�^j�m�+�Y�y�y� �c2��%�u�d�k5Q��$٠ZK���u��7��S ��՝��������|���x!3��K1x��6��92L��jr����VX�t�-��t���y�=�г'�^�]��:�op���s�k�9W�k=:���Z��36�AN���k}����Z��6�V|�S��2gF��K�f�b2�{t`F'�%'�+�ե�u����/�*M�ۺ��~G���Z�qf��gH�W���P�-Z����u$/U��h���;�1f�۪���u�X}O�IV��43Lt��ր�Dâ����f� �:�e�Z9O�n-��6�֩Q��Zo��&\t�XYr����A��'��5��nW3�
���S#]�����p�~'<I$
ѭ���.�C/�9Ǜ|��[ixkg��)Y7u�i���Ƿ�������ü���୭�������{������[�S�a�\��֣�d@�2��� ��5r'��i|��zp�xU���uE� ��dIp]�� ���d ��I���D
�U|�ZWϫ:�놱2u:9�.�eRF6~5�[��&yK�FN�������D.
�u���[�8�Z����-F��W��o}����[G6E�S�6x��M�Er�u�{�m-�D���Dx ��;K �d�O3�$����ԕ�{S�ߢ	���+&���΁z1�q��zF�������� �n���A����O����X7厼Ee�I��{�����ܠ[w�O�[��W��L��M!y���!1��ى�S�+�����v/�u��Gy�����3,(��m�mЭ{f�E�䳃�TfD�E�*�++لگ�b�I�|k���L�'z��������֕���ڨL�D|�|눺n����5�֑�����*�`�o-/����2�"�IW���HcR�>2�'g�#��+
)�+�|�z/���,vT~�5��&�^R9�tz#�iMK�'����HZ�[|�r�o݆|�[��r��������&��6��.��P�K��|�b��h��>z�� \Q�k	��q���lOPP"\jp���jW�uĚ9 �Wo����'���fyp�׍#4]�m�%~x�p���U3�µ�+�p75ES�0iSc�Eq �I�k�&ZcRw����|̙�����k��q(�(@��x�p�N��~3g �"����׺���H'����:c5u�=4u��0�;{P^���:���p����̖�+N&��˛�!@\�|�֍�(�-�kq=y���D� �uE��:R@��}��,Y���Ẵ� \�̌�;�	��ᨂ�5�n��� \�.�7��]��:҇�/g7)��Ӕ}��9ɰԮHnq����ռ�3C�$��&�Y�p}�r�@\�he��}�n ��r��*�I�!ckjy|7o{���]�����JG����ȏ@\�F�k�[�k� �X��_=:����.=�o �'[?�u{f��+y�t���6��7�6�� ���7]�t��6z���Kg�O���)��	J�J*�^9�p|4��Mx�y���&/�$�5י����4��^���k���-y� Jn���2�������t�y��M^|�Dr:��I��<$�gk�^W1
�*�I��!�m=C*у�>��̬�*�9nY�*Y�>VBxF|��bG��Q*�������ȭ��c��Ywm%<�O��Y07"�5�3���hO����H�\�ԯkVMq�.��M׬�A�n���ȕ��Y����Vx�����I�vO��	s�K>^�l�W�̄��09+�4�3�p�@U�����l�0�i��u<7����9��� ��9��ՙ>068ד���#.t�s�Ti��E��,���k(�Ҹ������o��a���X�aJn�d������%џ
t�' �U��

��K�����F����^�M��#&rI���x�v����ߔ/O�}�ORr�5Bn�ཿ�W t���
t=���� @��H
 ]�V����e�X�z����!�5W:hӺK��2�H�'�UI�PA��'�k�y5��qHO��u��7�� �hf�O��u�;"Ꙇ�-�z[���x6
�C��w�:�a�w���:��u=�B]Hꊀl�LI�0=��J�����3b]W�#�5Ff2Rli�K'�>7^�<9�[Y�Ti���$�n�+���:;I]��|�Ɓ���f=c�X���t�$'.}��L����U�Qwm~o�G���1�k�
��]O���]g�n���"��%��k��/�53޵�^ ��:i��]�Z��:��s��:�2�[U�s�:H�s�w]Ay�Zב�L7C,F���Ɉ�KtQ�A�>�&@^���w�+�o��uJ��M��2��!��6�S'�}���7а0W�s��,Z�A}:e� @>�єA��R���̲E}�P�!j�;��ʁGK���{��-f�^����	��P	�UY��_"5��R�U�y l���N�qͫ�2�!�! ~�q���2(�1�(>|��WT�c@`$�vX������>"��!����z�0��F�0s�����o�|�|�p9�oC@|�B�-2g���M���� LN��V�:˼��<�>`L?��A��-'�A���KAp��A ���A��h������Y!�?ry���yApȤ;>�xt;	p�$��b@5(��9��O�G��n	��
�
J[̓��$���]�Dw��6U�~A�g�����������+M-��L�PTjX}tp����t�ϑ��3�^�!`]����H��� ��}]�&ԅ�Z� �W
as*,��O3�����8�W5}�я�����A�eo��3�����."�>��ڧ5nCi����~�<Ak�����|�� ��R݀x�����~��a���o��S���!-G�b�,��-Qc��#���÷f@�0�P�s�7HL��T� �?�����j��}�'���������@`��<�0�A��m��)�#��(�po�#���h˩	�y<��2��#A<��I"�Zk�̐r\Bz{�H�H�tX�6�f_���V��P0�X�7�?������ATN��=�
�    � �\hox:����<z'G�?b)Y�Ʀ�:���q{&>��<�d��?۔��ё��D@j �((�
b�F�G������z���\cn<��U"�|�61�l����l*@#��Ѧ���3��U�����h��Ji�:�?�A	�ݭ]3��^���i�֘����-�V�iŃ4�U���OKp�孪קʊ������C�J4RBQ � �#o�#t�֍�c�,T���w���v�*��j�i�8H>,�_(8�r�֠B īWȏ�M	V�%���Z����!�?�|��[7�e�����>��P��&�m-ƨ}YWq����� ��� b�� ��8r�0�p �e�#��|���«t�[�I�Ќ�q�-�����<aI�?c)B����*5��i�a=��Ge�6'D�5��N����;jf(���5��:����r�����Uꑆ�h�}��x���&�*�Ǩf����R�q�X5i|��t��6��a�җ&����u��u�9�?:�&�i�l��bf�x�Y�.��L5��U��M; �f1Tv#Ap�n.�:��t��Q���T��J	>N2"��>�3���z�Q�B a��ؔ�q2u^�P	���>�'c� ��@�T�Ԋ&�m-�8��fB���#�!�/[@j�QBO���5�+����x�]��RP�h7�؆؂h��I��;�O��5�MaL���� ������� �[*$��g�S�s�3$�$I?t�O����[y4�\R�*�F�o
��;M�k9�uS��_f1�!�z���(O�����}���)������i�2��엾�.��z�Z��	�Uơq�)\b�?�
�=� ��}�93����Q)g�F��8�c�����R�C���D5�PM7N�j���r�,.��(���1#�� r��X�]޼�-��0:R��e{M�s���1h��~|�:��a�����|�<�ڈ't�Y�T�o!��C�{�kM� ��4��c���sÛC��ո�@rG��)Z�$��6� �&���p��2!�i6 v� �up�uL~>��7�|��70ևV��~�A�����b �W�e+��6M@�y ����em3\0���-� йa��`�xj��=g:��fX���i�Jc�'�,�8 �q��(��f�q��h���x\#��ԧ�G`��f*n�J��暚~��7��Ȯ"n����?~@M�g�� B�j9��-a���G��F��X�L����
c�C �4;]���T"��� ��l@3� ��R[$���&����O�|�>A�� ���87��@�����]�CĂ�4\��,H�J���z���~I&���"�>�A?Oqxp]tb����f�Z|�G誑΋dS{@�=m�+� ��s1z�� ��2ʃ�Z��|���L����4�1�dA?D���A�	?�BhL��.ճ�����Wci W+�A�j�0ῤM�4�&�55�z����j��>�M��-���#�Rwj��>m��8+�y�����`�������  0K$��NJ땄���a3��t�w���o����?B�~?�ˢf�hF�8 Ѹޥ�:6"'�-�'(����
=;�c�2M��+n�����l���3��t�u��$ ݺ䄯�I���<��#�}����������������a�M�d	t9���+���4c��B���\�B���y7�a1�^"@�/{/�V�"@$��W�@ *03g9���$�[�

"�dO@^U�~E���#@��@���.Y�g��Zu�����U�豭���c`
+̂���)"K>�=����
����,����=�����aTzV"����G��^jC�	�# �$ �d���TvZ�r���ʈn����[1�%�g�ޗ� T��37��LE�|�3@���7�`���Խ9��'�qQf5���?��LZFܠ��;3}���	��.r*�{ V�W `�w���ט8�d��w&�k�g�F0����ڴŀ�i�G�4�#u	���֜E����|����ײ���u {�:[;[�A�e��#�~�� z�6PLƯa��ߙ�����؁#ql���-�V��&�+o�J�f�:P���`5� ����*x�� ��fƸ��يAt�<ck�ǍXn����K��$-�re����u�,����ר�peQ\^P\o6УViC f������\h�%�@��P�P	C�@�6]C@Ӧ��4�n�� ��r	.h�Yw�����9��Ӷ�
:[�����X�_ӒN�� Zp!�.:�lǺ�8: ���e6 ,m�!F���1ҭKI\V�.pY� ��'�	L{n�2'���E#�ښ�{MM����&���X�
�>@�Ɣx�ɩh�Dڜ����D��2��s�3��sҍ2֋.C'�eJ�KU"N�(��@��N�Yǝ��+�'F����'{'���8	ʢ�,�-=�7#a8 �����	�9٠���Jb��8dJ˰�n�����娪e����.� �Ixr"g#��G�����8�4���@�8��M�i��0�ף���TՋ��j8`������������ﻖ�E�5�%u� �����t��K�]��p��� E���EŊ����HN0[�A ��!��̿~mVT���Ti�p@OMvy�r��E���#rJ��9e$�S�>)�ʵ�V�C�H0I����R�d��4j�:�6�$�{ZV�3e��fj�?b�r.3�$uj������<��i���K{�Zj�6����#Ps&R*��ERjGcR�D�}�LR8���;�tPk�6������[���ڦR��aRO�.���R��a�e�H*�1~5;^[X"�;�T
������|�DU�ZA<ӆ�� ���&
�RDTYSM��]���$��pcU�Z���.ldq�gG��C�:�KS"Z�K� ��;x�cQȘ�Q�G�T�\M�D{\����~VS��Cko���鰬�=q��ɟ�ϧ�}��8!��o�>���A�5��(�)
c�NS۷#�I���]�Qg�;�
���ы|_|	O=�'��X�,�`���[7�.�8���"���)���� �1���b�^gЦ����Ϲo���F�:�}\�D�`I*� nz5�?��^#�N%���q*�;0N�w���%!> �n���c���a�!r�˺ �tr������ �Ф� v�9^w�m�"��8h/��J�ʇ�91S�Z/z�U�I��)�Nw"7��E�_�i����Ůޜ\nRۺqL�(���:�<T#m&���9@�W��(�B"2��xR'��I���p ���W��5,���u�4g|.SU�á�b$a�*gy��t������|���jϲ�=�,(��/�Nj��'�s�������|�]`�� є����p�ߐS챩K��2!S-��j��frF���n?(�)},�S�˵=�=T�>�	�㔂ؚ�X�mx@K+ u@_z��~Z^��7�0�^��A SP�c��í�o�~c.i��xV��J!�럤���7Ʀ��Z�쑌K�{��Q�iN[ ���s%��n������k�[��+b*��PqF���c> ˌ?���GYnv�3��v|���]���� ^��S�k��o��!������B���1�+
r���P���^�E��:��� 7��� �
��Õ�I�r����z'K�/�b��o�E�4nE~4b@����*v�p�76��#�5�d�J�+C��^RQBb�^}����cxlE�P�'������D����5ubK�,±Ȕm�i��%��;�i���K�u��a�7$�����Ŵ�8�F	��: *H�VSN�EZ�$@�׏U7z�]�]G	� v}�!����S��J@K0��7�/d���s�=S�Y���֎�t�����    :ߘ��/}\����oj<z5���i5��&�#N��;T�e�������h��DFK��۩�������D{��VX��ީq&��LGiXB���2a�� �L)mژ!�0-ˈ��<G>� %�u�7l��[̮�%��J�.P-�}2H�o��A�m/}J�y:R���my��*��Tk����<Z���3�~�!p�I����=q��������NZ(N��3zy-r���?Cs��0�hB�ȊC92 $x�(pb-��@��Oy���X�i=}e��V��||��N�#c�D�iɁ��PṮ���#��M ���i�l:�2dpc�9����[���Nh2n�̋H= ���H���-%ͨh�
`�ʰ�*�����f�:�d����^4��R��{���K�7M���w�s�g�ڏ5�&c=�y�ޫ�'�ҋ.]ģ�~<Q	x��S�d�2)��}'�R�4��8���v{��ـk�Q�q8�^�
p�1�|	/�N�����8�3�}�-�M��Kj��[G�T��U�8�����B@h��o�=U�ǈ��tC����x�,�D�5Cb�Hx;�0��#����Ɍ�J�Je������bg�(���Rz��ƻ�DK��:��{&G{�/^j5|b�I�|�u��X��� �Ĥ�s^c�Ȓ���'ȴF��ߝ�:�c�ᙠ�����8`�e��yo�Brddh
l/ �ZttQ�A�XI�%5��iu�6�G;pz@�f����ow0W��Sw\C_��~�t�BNo�-���ݐ�c��	1�'�ڈ4�dw(Hѓfx�;H�C�G�k޶5G,n��GsP\m��o�@ܶ�c%���2X�H��V;�EYx�G*�~�8^KP���m�����a�4����uM�2J�y<�ƙ�rd�푑�]�B�r`��G�1@3Ka�;�tsf����_ `��a�����6G�� .�oG�{}��m &d������s�Z�6u�G�\��v�@����.�����`���o���#CAV�:t�)�423[���-����"q@�a�U��U��Vd�(Ud��@"�0:�����) ?���IAI�{��,2gs$Wl�q_G5	�W|�y (7sx*7;��|ITT����8A �'�����AXCƐu�.aH��1�T�	���;0m���I���Rғ1D�$��yt48�����I!Ptۨ� ��C17��ӜǸ��t�M�� �n麶�Yg�S��Vn���.�u{��<-Jn��i��](p��HLp�7�� �6����YU��.�
��֦���	���')׃(�{˷����w�tEϗ�R@w[dX���Ah4IM��$����s#-O1��x�!��/
�Hlz�̄*��.]J�XX�En� �t�ח�'����m#q�Tf��shS�!�2ҡG�.�'E��$�_m�V7\L��;�(�xK7�k��	1yQj����5ݭhے�B��2b��� _�wCΫ�U��B���-M�{v�=�$CLw;����d���G<��jA���(�i���J�vPZ`f��P�f�2U�*�V5��>ќ4Sr�՛�~�,؈�u��O�b[b��tbW0d�~��N0Q��ǆ�u���źZ��Q_�����f�J���� � �W��|���ʷ��X@����ͷN�)���	��,�ާ6 �-�t
�o_=`>BrSH�N	p��ӆO�<:!��o����U6�e� �?����i�y�G��Eߨ]g�+-�k�^!9x�T@�����ΌW�m�qԍr��+��(�FF��t�
�O������R � �W��J�sQ ���)�F:�+د���0�<BӞ�7��/�~+�\b*���Y�3�`�R�6a�K�)�x��� (�rN�`���:-��nj8e�$j����qN��W��e��T���W(��蛺  ��c�L���yP�����]�1�nC�{��
�=e��c�r� 8�/�n� +��Rx����%�2��~R
<�k��!�[�@��t��f�;���Udo�do����)l�1^]m�9 ��}�]�cA�Ѡr��V�].�yP�G��2zrVH����n���ВCs�E���2����}=�M��|oN.��b�dl�j���qn��dB����*��o�%4�x��<\�|%��L�r���/��>��WT����<�4��&��V��L�� �K��]�m�?�o'��nA[z�U J�ŷhN[4�̬���wˡg�E`��k��\�x%p����1E�oyc@:�5�1x�eQ��$�������p%�Á>�t<\�
?��ؾ��N���EM;�Z/�V8e�����p�w.`��g�2>r�:���d��(V���	la�V(���s)��o���ҿ���%UW�Y�#5
�FFTeZ�Uz�e���*P��F�|��Ch!�D<P� bCYn��F�p�ۤ����6Q�] �};FC�`ʰ"<�3�Ɓ�?_q���y	9 K�фlO|�\TF��p�V�<	�Eg�����׾�N�Xa��:Wij.v$ۃ���r��T'��d�O"�@��%^B��@�#y\Qt\��7�[48��{m����	@�#���"Α���w q�u�Έ3eS��^���G$��aX)Il&�G�Еc�;
�̡rKQ@���ɼp��d�L��d�wW"�w����8��k�M�d���q#��5�p���8A�@�v�(�"��@����8�'�ĻB"Q�X}6Չ�G1�l�_m�jH/0���d�^ѳ�È�t$��K���	�O����KQ��h@L/�w�U\#sCP�H�G����+v6l���F�X\#�rU!$��,����e	�,tV�W���צ������1^eL�JSԩ'���㤃�QX�^LK�}�y}|ܞ�/ꆰ@0V��e@��b��]�RhkB� �1�$��F�@2>�4�2�н�2��������p��=��dy��!�S&�B�B�4�#�
=e�jR� 5.3��tW��q�
P�ʩPc�E���sjŔ(d���q����s��h���\�5��O&�"�i�E�I��W�,Lκ�ċ�kʫڜ��|2.<�e{�8�v�x4>.���ϡ*]�ҽ��T��g���Qn�olÇ���	��7b ����;/��#/�C� 8t��/���؁� sOf��CPGV'����It	w4<yw� <���)aP�#�M �3ZS ��d��J̬N`Qq��85�q�L2��w�:�w��)�ǵ��hE�&'�q����,��;���z���!J���<ؼ��޼�˧^����i\�Y\-V4IC'� 9�� Y��-�Dy�T�#�A��[ �~%+��DB��B>���rxف���-p$0��7�>�Q7d�<W�"Kw*rg�[�3�BL�������[]�g<0��[#w��g�/����HL.
�	�j�������a7��6�,wB���]ӄ)�'�����ȥ	c��\F����VU1����k��Je	�$�
�dP�p�$�#y��6<� Vr��bK���;��W�b�p�eD�0�,( �#�U ����%D��g���K���b[	�Z��8I����q{Ew��d�"�͋�|5 'O���N��*b'�Z�N�v�t��#����/~�9�w�J���y� ��� d*+��_ޭ��� �-�5��RXL�{&(ʜUZo�3��a�^�(w��Q��WO�&�G2�E%�*�8���E�`m�P1C_:Zh���㧳ZB��Q��4�����웄Ni,���� C�����@*[+��	��X�LY~{�3�ѐ����k�j7Y��r鶵n��ނ*o�`T*L�myP9�[�6|5�z���Zz1��>I�7���O�4��M���TM ��r�Tm,C�E\%`�f��Ǣ-�Ho�#;�j�=� �n7MC����>y~V�z    d���e��]��A +�F�ة=��m`c�/m`����3����
���6���S��1�J0�i�j�8��B�̋k�NU޼^p�Kb�fV-K�0fk�Y�";.�I5�q�׎�F1��6�*;�����-á����%DiCaZT�5�)��4�UU�D�q_�OQ����T-o�A�z2�K�&04�}��A\o��%�u�� V�!�Ҽ	-@��=�D% ����e4)���È���+�c0P�PW#�Z�7=�֑����qbٖ?�˗mq#�b�A_~��#�� #N�������f��I��v;�X Œ%�A2ڡ���e��}��*�Y
������V�̷��=1)�T�4@̺����M}�H@'޸(�b��G���@��GЕ��`Ɔ�h��a�H'<��s"��#��mw��i�q�E��؀0���Pƣ%�!#��v��{|�}ì��"|� h���@:���*%��np���Q�HS3� M͸
�XB��B���bZt��:���aǜ�^���G}��>����h�>�8���j���oA�-�v��Zf�%~����4����@2�$�q�$��[ɋц<Xf��f��0�g7��ZY�@3�͋TEy�,�ZO�Ǧ��D������ �q='�s�qG�b%��`�D�G>��%G�����ۙPc|�A��я´a#j�E١ے��߼`����0C�_�b����O��o?�k�Q������U���E�8����4w6mp�G�y��dJ-�F>�	���ND��{�U���1�����qr"Q�W!�4	�hs��~�X�2ʄ.N+o�0��F+O;���ɀ�f����(쯈��Ǻ�`΁k����S�{��92��9��گ6].�{o!��ޑ�o;޺��2;#H{��/��~�t�e��x�.8�,�0�y1GHƺl@���p��Vl����6���N�Am��W]G%�Ճ��P�'�x�]��͊8et���`7A1���D�!��v�ets�E������ �@7K�V�8b��)v��o~�/��dGU��!��Xk�q�,8,���hC�4K��-|�#����"|�x�� 8k�_�0v�Y �l���St���pJ�QR���m?�k�5�=2�7< ��w����� o�ܞ�:K��Z�o!Ѯd�a�����j��͍��:�l �e�����!���BL��>�K���[ѵ =����4Ll-���'���q���F�X�GӸ���b	�7!�k�ԣpGoВzC���B#x�2V�[(h�o�f���'��;�y��t%�6��}��cF�X����Ҙ�����3�С�Y�lCA��Nդ��d��YKv��^�v�lsz3�LΌK	:	��
�S�g�9�v�y�e�@3�ʈ~c�f3�*Z�Ɨ&��2�����YW��6zҜ��w�l�;+2��uW�J��-_��\x����0�8�tj�$�%Bã� �Ȫc�Ѽۭ��o��{0�;n9x|��-��_>��z8 �I�F������=����s���f^ȳ� �+���ػl+3s[���+#��N<r��>6�Nc����)GT��UYs��NI��� X��tZ�2.Yf��`��GЉ�N'�oz�\��Y.�/3x����6H��,�+-�S}j��l�;Q�wj��&D|�����o�h���yT���zlYGÆ�l�[k���-kO�D���]�;hLߙԠ�Lm7I�`�_'�ϭ�Y�����@}�@�ַ��XY��C��<�9͙K��Q�����}v�Q�>KlI��Ć��t"��1Jq�@?�����r%�l�����h��G�c�dߡ^/he� @���Ey��zx�[ Zy�\Ѫ�k��Ne��XB~�aɍ����6u(�W��Vr*�0��3��<`_�CQ\3� ��v��e*o �����.Zz�&�X��e)��=!��4V<�XP��-t���?�U��3�rz���O�y4!3ɜ���<��]I�*�a�'�T�k)oB�[�-g�t0Qa��@��J�Q��+g�EƢ�����Ѐ�cU�P#�dP��|Y�h8ְ��{��Q�H*?��e��6L��Z��jP�[�6Lq�B1���jȌ�ԣr�Jd�����@F0���0uDxCN�3,�$h�	��Ka:�afvR�K������B�:~��`EW1K�����,�3;Ŏ��g𒥼Z�O^x��4�F�*��̛!���>*n�r�O�fП쵵��N���|K
�hB��/�{���ap%�-��ё�L-�J��K�7S˵A��	��?d>-@�%X��Ae~F*��+�i���2 �b g�4F���I�g��i����6$�;�E���IjC���ą�v���pd�tu�̊���DC��=�8R�H��\�Lr��}��^�%�
���Z>�������m��0@��*�T$n"��^A����R��̤��J��N5�ɛOVOty�CN*S����	C��(7�2?q�OfG��B��%W>-5���f#�xG� I;����Pғa{��a�X&d�@��y�~d��o�p2�Mr
Nʙ�Ԡ<����o�-���y����/ȭN�D�8����(���F$TZbCZTiTϢJ�ҠJ;'3�̲A�>�� a�9�
,���-�h�����6�d�6�����wJ!c-���%uz��?��N�,�!li�K�6�t'f�S1㺉3�B��A%ќliB8���k��N��E�Zo2�f64��.`�V4A�/�ȴ���Z��0�Η̴�bo����؀�g7j�%j�]��YYs��l���6���w�xI�]�#�T�-�T��;����љ�#>��LHvp ��m{�I'u����7t���z˷ij{^����S�/TV��0�
T�z�N<�lm�2�Jh:	Cɩ�鹯��!&�tw�����y���B;LmF?W�}:�h	���vT��Z�Ǌۛ��<:�pc�z����PK�[c9����dA.��2�S���r�ae�~�ujUj��l�C��A�'_xCN�L��#F�u�������zr��@�#���w4�?���@Ԋ��v�*���鎆� �$K��y�݆a ��2(��v����� �~/1}��D���1h�L�G����i�yۗH�Ie�1��"��\^ӄ����)�L2 =���K/���G{fTO�Ъgib�@@^�A����=���'����q�[rS������n��m1C{�A;'S����苼�?�S�zr�of�g�o���64���� Pj?YvV*��-�v���3�:%����[� ��ٓ���5�@7�� �ZFmi
�i����I�U���1}ߖ[z�I���ZR���VB���o����^�P"�����4���c�:����~I=��4�4=��H(��������j�4F�t�`T[SFu�T�j��`T�FSF��_���_%��EP����j��`��h�A�v�����M�Of�m�S��Qf(q��N^#R({�R}~����$���l�!|��*���7LocL�eE TO��CP�ޡy�,���6 կKO���Hc8�6~C�O=#�c��D��O%UO\�o�W��U����\yo�K��m�x>0�ؓڮwze@�Wy����5��NgИ���ŐϷ/��\m�%�������cCa�����ɒ��D���8n^�����ZFc����Z���R�x�Gh;��J�5oP���cP�ϣ/��/gN��*�Z����:g]gu��4o+�S�"	Uq~�ꉦ�j�LH�-�.9��@��bG�F����؅�VR��g�bf/N�������-L�HGآ�pR�H�t��GXm�Tmm���� U[w-RU��R����3��V�zB.�NC��jA����P�O�mdÏxb��B�;(�(���0��O��7�����@��J�(�0p�a?�j�P�;�8� U��non��h�����t r���VB��!�x#XUönO5.�{d.�Q\l1$<X��S�    �̰< 3C�F!��N�x��l�T6���3w���nJ�W74���(݀U�B��j�����%��!#�$PѪ��hЪ��"0fɌ�B�#:=X��L=����
����B�T�4�����@����P�<��ӳ���2����?\݌�T<����j�[_���3K��<�U�0�>9@Q��d���μ:s�}��'p��'��ȹ�*@E�H�nӖ
G��}�ՀS=��h�3YL��{��/H�҉S�y��W����O���7��s�Z
����6'�H%��K��y�`����)�<��`���+J���nU�ⱦ���N�_��Gzh��S�@җj��χ��>ɟ�h��Ƀ��P�A?2!��Yԁ��:�cz��5�t�9�qfooL�o��uK�ZK�h��-�%�VB0��V����k+�$0���v�L�`ZRQ)l9�#7��r�;I:�X7��������p�Q/�<�����2�g����=��҂��G �#1?΅k��; �m����K-O��Y�Ns��T)ܚyZy��^s�_���	=�z|�Ǵ�)G�83�Ll�f�a���c�(aJ��z�J~5������t$[�7cҮZ�|7����+�б<�F�yn���ET�>#�
���C�VE���+���?~Z�_�Wp*g	Ǯ���2��ۘ��+7�Rn��]B��o~��}�X2��ܹlKE�{B��� P��0�U���#8��ݤ�����[�*��?�.&�UgY��o�2���y�-��C6�<S(�m=�H����-p��RQ�)�^�����!���{��Iy��B�+=]�6�r�����f���>��^�(� m�;JW�ү�/6�בp�gĭ���5����[9[�bz��?����\�}�J/f�&�l�֪��qi�i��c�շ�ߐ�������%��s��Y|�� �����5�(1�>=�;N8׾]E|z���:�} �-��Bǖ�I�:�L=;�E�W/F$�v��s��(����MO����	�δ� i��N�Ǹp�Nx �0jv���Y�%vhM�Ӌ��IG��N�������^
���"!���6ȿ9�ى�*��JW��wA�ּ_غ�k�b�a�7L6~S�� ���}��_��Rv����m��w"9��lU�R���Y�t��F��?��G�t4Sz�-��k��4��޿��-Ӱ���]y=F�,H@�~����� t�f6P�u�m=?r��Z��t��)\�G薽���Ĵ�o4����j�����-�u� �a|v�c��M������7�+,���ϥ��
"W��u�LD���ݶ-���s����>(U�6��5�\�C)_� ߕ��o׾�C}m蜊���ҷ>s)��#�^�|�I1�c`﹬�� bY~�J��n��8�+�u�NҼ�jeyۄ�������7�bw��W�}'�f?����eZ
L]��6�ט7O\M�����y�y3�v�����y��u�:��(2C����sa���q+"��x�l�9a�ߓ㍾�կ�(�}�P���'�P(�����sfXF}��#�N�k���V��RkE+b�*\�c5�>u�RC�`io	��3l�Um}WA'���w���e�D�ˏR�q{@Fn���(��ү�Ɩ��;�����H��*�ފ�[:Q
J�\sS:��t9Y6�!r'2Pb��d�>� ��8�Ϗ��>F��D��%]�Y�[@`�+��*���fe�,mj7^à^:�{�ys魾,u�p��W�N�Ox<���\�����Dw>!`����и��.�n�#G�0��%"��T� 4��L̷�|N �?�����	�v\�x��>
��*ɿ�ɤ�i�_����*��M�q_&
 ��9H��#�|q+��ִ�-P�o���y��[�iҵ�N�v�Vj��ߥ_��L�Ժ��Њ2[���yHr�����:�;�llWy,��|�z��{ǖw�&{����-|r��[z[��;�z���N�־����Y�QY���.V��=�ȫ#(�_VX��}TD���ݷRb���\�w������݃����; �&������o�J�~{�zA��Z������5.�(�i,Jw�����JO9t2�bGR�\k^������'�g&�e>�̈��l��6۸�ؐ�o�;n�;�s�I�����'�_G�<`�z�������� �s�4<��^JVz�$����}+-�g�Ǚ�����L��0���ۻ;��������N؈�Tt�]
��`��ޥg������& ~�>���}n�Z{�Y	p��l������E��q��[����B�ʻߛ���~�'�y�}�����ƹ��XPC�lH�+�(��n`�J���u���(�Clg@�U�أk�yb*�=7}k��G���\�'�+"T���ql�]������縶�����Y=��q���/g]�m!�-��E�Tw����J����	�93R���+��Y����U�tE�m�8W>��S�+�O!I;z���S���dtsV	j����@:ο�ܙ]��tϨ���+���K^�V��=3꥟��O�O��|$�����~1~��h�,��4�*}����c%��V�����>�������Wh�©�[�ı���٧n��|����}����A�	��X����&���<[E��[�.�Q{'�:�Ҋ4����X�Vz٘C@5���1�u:;YĀ��;��}�.]Y1�ժ3���/+ �5�����Yϛ=D�~
⺮�M���r]f�)�����s���
Kp�X�@�׼'.=�ޭL���.�_��^��|\���=d������f�mߎ�(`�O$�s�w�t-�5��M���*���#��~c�L��r�����|��.� �]���*�׉J�t�q�ǸU����M~Ʃ�)�=���~������@��
+B��p����UW�S�E��}_Ee��Ĳ������]?}�%�jW�ŅT�w�X �:2��!��}��HV!��/�R�b�J^��Xe��������י��n+�����ʃ�9!��[N������-}�ݶt]�huX�jp�}�� rc6�ұnO�Je��i�`[:�:��l��?����'Zޣ,�n%_�~c�hMb�vf-���K�p��S+D�x�L�v�M;y�[U�վ���^���A�,	�=�t�{�����9����^����[xڣm$?�qy��=�e��F#�hoyO~�������wU����~#���?i�w���]kG`i�3���k�?o�G��wkZ��w�i���:��UF� �Q�Wĳ�ozn����y�:�gn��̓�Ӄsn(�_DI����~�P�V}G��6������yt��3��qA�L��9gڭ�3����9�K�*8i'�T�+ˤ������uλ��q��WB{��-&������F�q�L���+�K[l���u[^ϝ�:"��~�u(���؇��ڽ����'S� �s�)��/��+������hQ�9l�ܴ$O���I�n���Si�	9Ҝ�2M`����&�q�&�J G���9��M�y�c+t��l�6���}�p��/X��Wc{dk���7�#V��
!%��_���~�0��6�лX�����d�W!zF�|Ι<���b�Q�hj��iuu��>��V��ǟ*��s�e���*��9�/o�eۑ�c_҇GCۃ�=WS�|����y՝���s@��y�}��|�^����7������'�����A�D0���=t:V���-sp����V�� mM��ަ��5�%9�%��0/p���ݪ�vv_�2:�N�ߝN�ڸ�ޑ��;7�K��V|�}�Ư�\���2"�=ϥu�VV�y�^p�}��Vo.��{�P`+�$��k(��2�N���\;��j#;(���~������n{�׿�)���˘:>QR�v_�#m���m���6��.+�}d���ڻ�W�+=�\驌~���z{lM�������l����h�΢(/���i�� B  SA�+V��~<��+`{��t�}�OE���";�譭q�ۋ�T�~�7_�c��yk��, �wg��v�{���y�*�{�[Ӑ�F)��;�e��zW�J��db]#`R��R�o�	�ש5b+�o�x�{�n4�)���������L���7Y�\?�Kn>�XJ8�}}�_y�	�v�Ғ�ݓa�(��}�o�(L��Ԟ��MD�_M"���	�z��������+�
����μ?�w�Q�]�T]U�Z�^:bCh�VW�-!  �k�寋�{-��Q���9��jW�l����?��-����(ŎT����FX�e�/ϟW���g�9Xk��ǎ���{��u���De��a_�����b��&9d ~���+7"V;[ɡ~:9�EvF��=���J=�z����o7�'��$.�VR�>s����+���K��0�F�^����.������6�����l�ֿ�ɪ��bUA�?���Wd�z �����h���$}B�|�B�׽�k�M�^�f�f|�m�œw����0��w��W�@�x���=F�^^�@۲������R��e~���*4�����h��'�e�F��V<�P_���|2�Kޭډ���<Q�����E����F�]E��>I�ؕ�_��m_��oHw+��_�$t*?�2gm�eG�X�$�[���l�z��}�e"[�k=!Յ�am�s�����]�o����Ha}��s߹R�EZ����J ���w�rΖ� ���Gԣ��N�ǰ�ya� ����%[@칹��zKgk���n�W�cߒ�(��\9BދS�����I�-�f,~>)H��XY�_�K��Z}\.�!��W.�g8J9a$z]j�qr'��b�q����)x��=���#p�6�໧�P �c*�H��b,�Ce�c��~|K����wv�<4�W�Se&uŷ�sh�����\ٗBÿ��3O��iŒws蛋�ϭK��H��ߏ7� ��q���Z��v�)le�-9�?�kaďr�
��E�kdg��#������8��v�;H�2���T��0�Ӥ�&G�wIWr�G�c.tf��"~�:�$:�0c:�5E�"��#�d��(�7{^������M�.?�n�B3���5��%�����	��~�ڛ]
ա�s���8�~�f����]�g{�u�_��]=;÷.����y���=hƚ����ū����Q�9���!Fx�l�441���]����Yw��4�V�fז�"z$�ť���T~�H9���t��d����d\f�Z �%���֯�k��Ż"?����MԎ �2'�.�s�o_�w�8���w%}L�g���ۿ�'a�L�h?��l�V$O�E��V9�:OJjy}������[z"�ɚ�b�Ɍ�囊�+�l��a�#�'����L�#�|ί�����m�1��?�)�>�gݗ�<���}N��4!(.�x��>i�����g��87��\|�R�H��֋���OD�����89;%��'
?�+����}�pD�����.mN����L�[��ˉa@�Px��N�P>�C7�y�H�?R�}�e�sߣ����$���Z���ZWa�+��sJgkF���z���z�s(��}o܀�Fv�'�}��oE���`!�>���v���`�0�T�c�XW�\qc+���J��u�������}[��p���ޚq���N#y��[�R�]x��*]����=Z�~�͏��w�gd7������^�����܆�)�6���X%�]�F<�6���a4��~�G�}0P�e���z9���j6��]|�w��B�~}l�g��/`�%�{o���Β|/�lT�~�)�ģ��8�NT�y��9R�{��a=�\�IDy��椽�1�B�ޛ,��dyWÙ
v����'r޳���wy�z}ˣq;�ı!x���OW�4�N#^$�m$"_x�����0���=����*ߨvZ�B�����U�}/�|ﹳd@� ]�W�)L	�dUbJ����^���{+n�w�\'��a_L}X6�nq׼wV�����r�s�޷�5I�"���=��!�#��"�qM
�[�k��|)�Xd>���i�wv��t���3Ȓ��3/h��]��瘡�g�v"�Q�#z���zf�����l�%�3�o��7:#�n�|2V�W����U�u=�hzCR�Jxc\2
��\!�R�bm�`��K�h,�Kwj��z��V���B����񾶝6>1�'���RQY�?@��,����\@�'1E��9띌��I����^M��X�U��-�<���a1��m�-hOC���я퍐�������WI�\��:����x�	a�]���.�Q�V�9�Gbaa�I�����y���a�q�&.97���y�j��w�~V
��o
�})�{i�T�8�jz��8����n�V].��fL���8Ӛ���L��bŗ�Oجt����u�c�K�H�"�y�H���!fF���%|(,��DѻF�lp���bt0<b�	~JddM|tB-j��Km�Q-�� eϐ՚3_�Bsps "w&N�@�˙�J��a�H��|���u嵯�Oz�=���Y.�@�c?�O�<H!h!�թ����;�m��?�K�XǆDP����ݸa�����v�$��g��{e�u�ȓ֗2���o�3R�[ S'�LoW,,\����0����yM�K�w0pղ�!�[����/�W)!q��,i!�r7N�p�0"<L�G�ѳh7>����oa	-f�!��T��[8~l�9De���a7#2����`v��D��g_f.��7�MoE����K@O���|>�yb      !      x�}}Y��L��3�"6P}��Q��? J�����nzi��6�{]�u�!34���kw4����ix���{v��u��|w��c7t�bw�&>�穻t�Ĺ����j�짩����u�w�}�{��c�����6�_���x���;��	�n�����C�݇W?��>D�
~��������qއO���p?�D�;���c��wއ�/7u���5O_�>������q��n�Olv�����a�'v�����_nx���>f���5��n��4�{�y��}��c����>�;�ܿ�n¯��p?�ɮ�X��0�����}��O������w����fw�q��p�ǖ{�|����3�����k�Kvh���kx��}�d�n��Mv��y��h�N84�����q���r���F�u���q��/�����>�ٶ����3�����4�>z�z?�lw����J�O��W�l��	W��7�����;�i�b�v?v�e�!����\T��n��;8���x�+>��{��}��M�9��{���e_��0\�}v��k�=˸{��s���y��e����k�/����uac��{�K�.�iY�.xϩǭ5.>vWܿ�������}��.+h�*`\ok�ew���=����y�t��:;�bw�8����p��G���.#��[~]��1(��Z5��<���6�|��_���z���Ġ�\�|�`s7�k��4���<��u�Rx�3﹯)4�k�r��X�k��u�߽0`�z�V�;����s�8�?��ƶ��&Ã��0���W�S��o���p��+�
m��;�˝���4t��)w�~��9�E�M�I?�w6�ًx����L�.$R��1�f�� �J�'i���8|b+7!��n=��X�VS~�CZL�~�(�������u>��m�>��4ڔo1�ǯ~�w�q��O ���x��m)6�	҉�2c'?Ɖ��^��'H�,lG!{
݁K(�2I�'X�r�l4l�N��p�L
��q��
Y��9K�����y�E����M�=dW�h�p܎���%��N��ޞ6�6���A)y�t�7x5�Ma�/P�O�C���@������4�~�$�,�g�H	�i����-���=�'���ׅHG�~a�h�M|������C�I�,D�#Z�7(�������7g_c�������+D������D;%�mb�����G�F{������m�ӝ���C�ӌo�t J�G��!/I�v6|���t�^s�`����� ���y�^�\n���������I��7ح��C��p��7��G��_É�)Oq�o)��w��G/$=p�g;���;6I���%�67@��fw��~�z�A�O/�y��  $<iCɁy�����G �:�p �a�U÷n��@�O�#��O�vwh@gN:޷ލ�:�;��~��f�x�j����,��M�#�
܄��q�MH�!l:`��:�����D�il�C�ݏ��b���?80��iU�UJ>�c|6�D'�Ф�]��|:p�Rܽ�Iȸ�D�i�&������'~��!9����
��G	Č~���5\�����G�ݱ�N&6` OC���#�B�1_^G�1s��t�r��H�t��lR��"��k�ݕ�g7��!D��O��6V4h��$y
��M��ނ��>�Ol�� ������B ��N���`4��d/�ќ��d8J�?0y���im�S�Ԍ�����lp����P���i�敹���(ac�A��m�v�э9\#���pGW]yK)�����(���:�#������ϋ�K࠮ �[���Lu&'�` �&&Q�o�	�"6KJ�#,lWN��~ �@��������ޗ>��!��^ŧ���>��-�� 18f����Qq2a.nݫ�i�ԃ
%+*�dN��8��|��K���p^	�1���/�.z��Hb͕טKg���@��LÅ/��R�|M ���Kݣw%)�C�?�8T@?y��~؅FB�&���2�y2������� ����H_O�Z�Ƶ���>�O��?�O��L�~�(؞.�"��"��E� |�v�O<�f~=6�84�Y �n��b��'0F�[<�ko���ґ/��o����E�+�E�]����e�[!���8ǀ2��?�P��l���ш��O
4	T4����p�����?:c�N�'6
f��<(K#���	� �A�<���Z�5-V�4�y�8_G�Q8 	!s�)�.�;	.ÿl�`����ơ�8r8� |r����ũD� 󌀏�֕�e����o�
 ��˚�qb����9��U�|��|����г��_��v�����mI�9�a��ŭR��0=6ԓ�q0�1Q/�����r�νF?*��K�z��"��1���Em�Q�ob��_�\�*3߼�غ�4Z��̹QL9����a�#�gK�U�
%��lBJ�������ίm� �5v4i�פ�� ���3�S`�&f���r��p�0�́+f�枮�̵|J�؂�<&/�H�Bp����+�P �����k�@ϳ��ŁZT�}N�����:BQª�Z��0�~�y*	�G�Cg0�bΛ�ʁ+z��Z�MHl"+����;���q�#8�s ����1Or@ɉr�GH�5B	��j������L��) �a�7��HC�f�c8���6�爛�J�xy%?�S#�``4a����ͽ�I��so��}��YV��j������[��	t�9P��������3�Ȗ�@��z�eL|�9�f�_�R�Sȁ-�'^\IܟL��f�~A-�Пh���^�t�K�I� �=M�Ă^KHB�;r����@��r��^�}˱N���K.R�����Yw�� �Ȼ���@��WC8/��t'ˌ;�h2��0�s9�6���9%�cXچ�K�PÅ�������4�DF�ǋ�8G��o���A��Il;�4E`pBey@��w���qǘ����鿥� �����-�'B����{��23h��󚮟u=���d���W��������#��/+L��P��IL<[��@q.�n�'�e1�>>�ޠq��O���2���C2&��w~���v��k�jP���t�,bO���h�(2|�S
tM�S���}��rz�f��Cb>� � _����x"�69�s�^�8��!��M0�:�L��-rL�捖�.�R^x�=P�1��_/�'ŕ�����^�K����ӱ l��Ѿ�Ȃ�-^��(�i�`�a/7���Ȋ-"u��8\���sTQ����LuA0A�w|>�����x,2��"$��-���T������'^������و�==�x6 ]��a\�����`�g������������Ba�kF�9.���E���G��<o6g��	~[+��0��oEC� j|N�(�"�U&�N���:��㍿�3=BΛM9�ݏ� `�.3��9/ (�f�C`>�i��r�	=�F��gT�t�p�$�έ�"נ�-�К:������X�O
�ƃ�[��@��&�(��r��Ea�x�_�ٝ��5���*gT܀��FC+T/T��[���̄l@�p_�9/�h�,��	�R!�S����W�0���#8�1	��[��'��3i_�k8����	7�H�(��]`�Dc��ۅ�ܗ�v�rTT��{�  P�����Y��`�h�B5�sx6��� h��9� ��#��]QM���@�o$���
  ���� ��KYOs��?�¥gvK�Wńj*���Xv�>=z��9�^ͮ�bRab-����ݔ�r�5����%:Bl�ĝ)w���&wc�|$���gz����*&�Y�L?�I�hҰO �/�մ0��Aq�r��b~1l�Vv��w����m3:S�"]q�f1O�x�	�*6+{g 9�-<4�����s�)Z�c_�n_B�ˋ����(v0    ��t4߀v5�i~��n)��|-!�o�}����\F��������/�%�H�aI�+!����?qu0K�fN<�H���}���?�܂@�c�/m_�u���%�3C"�q8�-FW?9xҚ��~�6�����/!��c��g؁:q?{	_�(e�$�����/3<f���?ZD�=+%�8TD��EI)/������]�sz�%�De�o�~��TB���^�%����PB�S�pޚð��S�n5�����VG�X�����j�e)��%wb!�����UB�o���%=O�*�ea�rCj��~��3�����Ap#�,�%��(�����b�67{�����<�<Z��`d�
; >�Qie/A���v�v��M��,V�Z�Q��RG@����аML��Ex5�% �%rb�e+�Ãa�̬ B	�O%WэgJrzˊ��|�/���G���y�V���(]oÙ�.��]G="�b0O�AEY��Zƾ�ܧ����������K�m=����݈�e-��@�Q	�Xs�l�+��K��`sq�2ͫ) y �;��~>��k_6�����\��,ᒸ �י2��e-(�NûlR�Pq:�i1M���Y,�l�sAnU�`C�5.��d#�)���?��� y�x0A�&%���'ʔm��W� 	��]�k�qH��>ƉC��8�'�C 	�ރ��qXJʶ}s��e�U�魟؂M�3W2{q#-��[D�@��{����f�a կ��UVJt�zީJۑgaD���%�~E徟^2V�������UH>8�0۳���u�VU���*f��T���=�uxښN���r���V��{�H�/|�(���*��EQx�cj*���|������"������r�s6��*��a8VE�]�}���-hC��T�`QO�S���$�ӱ6ǒ�b�+��૜�%�Z1	=���K��A=~�Ty�.sן(&����U���ǚ�ٚ���
hq⬹C^VEآk�
��P���'�T��F~J�L��@�ӈ�@�w���#��8P+W���0XF4��A���Xjt�VX��澩̱t�/K{��>s<#�*������"��A�3}��*�C%������xvH?4�U��;���̩�`avwM��Go
Z�b�:s��nC0���c�:qU1�O�ӽ�4q�����N�,�p���&��~�W��d��M�:u�|9K৪e�����\:5#��=��qb\���?4CS.QU�cڬ�
`r���)ASH��F������F�i������&��^�&ZVc�U�o���K��.��q�K�
�T �s����c�kw�U�(��Wo��n���:�fk�H�G�R��tTH�aN�]�p���a�YK����� ��L�w���>U4&
o�A�~j�a�W��f���F�u��}��'n���,x���H0y��h���:���p�p��=�.Uz��=��x���<���2�u���8]�Dń��=F���c����Ȭ駵��&�ջYZo�=t���Ȧԁ���Yc�o�yx�0��PjQ�9R�� ��4'��,��ZHy�L�I�FQ��C��Oz�&7̾:2
p�Zc'n���l�Z���d�C�8Z0zrf&	F�v��vTk��h�0��ؑ��l���۔����	E���i�B�%�Uf��P_�Bg���58���.�?�J<3�[�iN��#�T�9�O����^`�~џ�a_�,Ă�|�7�EM�;��k��A~���HS\�2d�j`�7�9�宬�S+��)����@��ܻߩ.j_�\�|ĺh�f��/�w�<���=�3�V�R]2M	b�=�R(���^�:�JosH�n�t���|�@S�E�M]ֻ5@P��e)�kfQч�rAn��X� ��`��ڬ���a��9md�'�~k`�g��F�zHϼ��IUL6�����3��R��JQf�a[q�� ����܇��1=�Ԗ�X��N�|�v]o�Uw��L�5����ˋ���	2j�����jQ����P6���� ��kd� �sP�-	Tr�leh�$�^��_��u��zv�� j@�u��,�7W0Iε�)�n�M(�DA[c.=�+�jq˃��'�b�I-"�27fݴr�ږz��t�-�i�A#��>4!��{±���<�5���f0��n�w��jjF��!"��n��X&]�x�ͅ�Ѧ��zn�V�L���nq�5	�܂o�|���8��n�J�?&��_z���]#=��ґ�>�A>\�4���d�`�y� ������0��@�l�&$���M`T&E�z���iЬZ]4M(-_[Ւ��I�h��mh27�	�����!��S�=Cף��g�4�n0���R	�&*���n|E`�����!�>?خv��RE�D����M\�Pء$�V
}���`Qdb	��l<�b�||�捛r��k��{�N�\��F1~�iryX�NR�N���)��0�{�Au�)�">�!c��P}S�W�k8*�EI��)���~��PSTK�e�P��ڌL���X�r@[׀��qh�0���� ����*~�*�̱�"Eͭz���7v�����������x4���>ZO�X:J�j��$<�YVB� ��������������=h�6��[sC����^z����ɹ'�`M:�F�@`NO�`�c�:��vkɣ����%1��M�o�T��������}$//Mjj���ev���g��v3�p�|��l2��������O�o���vL��c�J����]����#�`#y6���f��Q䀹�3]$�	�K�:w��0��rU`�K!l��8a�����,1z���+ `	�ó[��B���$I��*�7K$p(��3�q!��Ү73>^��v�:�L?m�U�V��a�e���=2�~���X"۩��C��5��W+�eD�N!��,�,���L�?���b��o�pSl�����Ne/�"�&�;G��W����v�\l=��)O�- G�Z��Z �@h��	���㟁��V�!Ji�pz�!���U��	m(S�)���hsV#�AEuOڱ� 6O�;�hy3ۘj�����i[mL�
gZ�8d>���"�K_ \T��;��K�ﾶ������,0���,��Po�A���Ӟ�w�`i������4�)"m^,
%v`iA���%� &m[|O"�O�31o�<\m��ָ�3��}3��jWZ���gq�,�d���\�M
�����2&l�"��m�u��z�,�Xj�|`>��om��(�;}b�WKF#��A���5@m�4)�MSU�RU�B�.�g��/3bz:vq�tUx�
��D�i4-�����V^����n˿j�� �v5�"�'Um�V
��C�1_E[�.�TEб[�q�����e�n��ʲ�H�e �Q��UL��]r�-y�eU�����A����7����*�w��"����W���}X�
��Dҏ7Qk�������p��ל8���@l�O��v��L)���''���ps�3FOE�m
Ϣ��Z����4N�+cRmS�elY�D�p �A��Ibɡئ����=�VQ]�/�m�0��LK�Ow�U�rȡb���Z��m�Ҙ4�*&�V�MAX�}�,������L��'~?Y1Ox�� �~N�dV�`�7}%���8X�OTB��O�U��pe
�ߕ�$a�#k��"V8��׸�cȒ��~�gDj#�*��8wz׋:2�oaby(q�p'!�Y�,�ۦ��N_���JB	~ƫb�j�UN�m��i<û����{P�
���h���?K�ůF����-����u�In<䅵rh�^J�:�%ud�u���!�Ѣ�ȵ�3V�ʷL.��G��k�>����*��*��rZ
�;��amu]Y��X~�����=�yX��S���$�)	�?�>�����3�ղB}A���X=�����3˓�.UTe�*Ep�VP��_�q�8]������;���:I֏��i�J,�7�+�l�|{c>�G���    �b�Z�9�����|�=��z����� ���$���d�Q��6yq�:jЋ;��e�T���F��xT���f�8۽�	��e�8Ʃw,���<�|�g�O��l�]1J&�S�V�!;�4�4�3N�K� ��;��dy�^_��4��0�ҽ�����qfu|7�L����C|q1�t���(o�2Sp��ds��8P�GCVE���w��sx׋�Va�L�N yC���Y|I����-.s7�T���~���ˬ{QΗ�)wP�t�2�o6�}l
3�%�cP�7�_����l�Ku%8v��e�DE��&l�d[�E<�6F[����Z"?�W�<޽*<3+Ki�7���R4�
�L	n�*�7uI�U��,��dgL�dT�,�_�u�F
�ç�|�](���4[�d�z|��8��6_I|fU�?4�H�eQ!�W��Q����@��?d)��
�k�W���a���w��ܑ�֋�������R���ީ��b��׊t��GآIG=�I�լs�mZe)�u���Z������K�H�!Ĕ��3��~g�y��.qE��Iy�o�wg������.o{'�Q8����>�q]�"m���X���� ������� ���<�A��=����
���K�"ygK���� �)�!���w{�|��/]�Zd���ו�B��ٹ��֦,̍`���ڿ���KO;��X�Pq�	� ��x���|""�������v��X�O@�1%�K�~:J�%K��;�ҟ+@ʔ�a6�U_nW���m�Ty����#���2Q�o)Sd��Q������Q�¢��Coåf,�*����HN���́��V���R��ܤ��a�9܅|^C� Y�dv�2GU�4��:u"�P��b̦����Q��{^���Q�Ԋ	?F��S��J�����Z�G�so�O���:o���Xs�ݭ�>�U�K6w�������LV:ieWw�	3(���Q+2������I%�Z�_6�8n��H�ū�l���P ����ަ���-�R�o鶵n�5����Z��62H��t�켘�=f�a�ܴ�7�Ѣd^$����??��xT�y k��Y_:��3b.2�z�1����dC ] ��HS�:t;�dJ�&�J�MI��x�(E��1+�1�7`ɥ����X��`��9�6ˏ|��P�zJ��T "yP�b �@RmGO�N�u!:�	w���cXTw��x����&��щ�|��\��b�A��i$/��EF-����[>��}��jͪ�� �>7�5��r	�#H�>��+ӄ��"`���J�@2&m���C����hj���ɻ'_��dZ!���D3�N�&Bb޼����<��;�L���n��%��@�O��8W�Љ�N憂3�w�4���W�K�K%�)�h�T�x���g/�tL��'�Y�6Dٰ�^oYZ�%/��Uw���c�b!}�1f�X������dr�	c�v>��k���Y�o�8���y���to�[�� ��r5�������Y����y�;��`�l��F:9�չ��JV��g�� �i�MHj�dA��Aq�&��hL*d4P�������4�lS������d3��osoE�a��$[]��ߪ3�ր�כV"&�NӦnوUFq̊�� ��Sj���/X��Ry�Q�;iO�/����$���nAf�����^��/�,E׎45�k����%vڰ���9�o$8෾0����N/�t��0��\�bSO���dpI�R�RHP��݁.��532��`c���'3ӀШV#�Y ��+�\tK*�h�^���F��M���u,������ʓs�-	d>��4�����`�����yE2���O���x�Pü�@&��|ud���s��>���"`�AD��5?��������#�o4�o��ZO��F�!s�&�:��q
�B��7v3 '��EӅ
���j]�$sS�t�D
�]>{u���;K���p���	���\&<),`������p *h.|w_��I�\�<�Y�����I�p�P�㎔
�(od��8��Iw�,��H��c��Q+Xtw��\��	�(�Ȱ�h�8"�¦��Oo8H���0��3�.xހq��������U�W��)~9�S+9Mq�/��U'�ݜ:�hM'��'�u&|ȶ���FFʶ�&�=�/f�O]���C��!\�D��.�7-PFeܱb�I�!/���U���o��5�2�#�q K�άZ�_�f�}J
�����k�G��]Չ7�l0���%8	��^��y�4��;Q�ZEH���}��t$�x�M�d�#2�819�1��b*�gS{AכK|q+�����7G�x,##�����$� ���W���dyx*��ۭE%���\i4�w�&���$'U^�J޺yg�1u�S��}2I��p�`D3!FC�zp�*�H ��L����3#�|s���~ru��_r?X�RF��^oÛ��G��`�����f[[lL�[��q1C�B5J��0K^�A��͆�Y�������b���a��]H A�X����	������䂸B0N�("�PB�}\B]�
��1o�� R��j��bՁ
К�� � D��mr�8!��K���&�2]�W�������EJ���W��w��	O�BXzC ī�X�~N,a��x釄Y!���S[*��}��%1T�_���pK�}6	�7ն�y�G[���yE4�y&ihﳈ��I.��/��׫-k��Y�2 ������w3y�Z�x��i�5	�֒�e2M�cJZ�&��y<u����B��gx>C �d�m&���j&���|bM�;0�4��b��)%y���v� %�#Tؘ����J�	�qӑ�2������KA!Js��Y&Y)>{ca���P�'@目�҄���fO��8��d��b-�N���H�}�VF�]�UЌ�.N+�p��H]�^D�!g/T�&�\�% +%ͩ3O�X-�;��U�Ww���rA~[
Ar[��|�4���bg$���ö^���2�4�*j��N������3�\F�	e�����zަ�k����Vjn��`!��#?ƣ4x�Z�,�<P�x9�3Vv����z��R$L���;���F��U�ܼAEO���?����$���`��xhT�q2���xƒȔ�&�7KR�tdRfAo���oqQ���y��04Г� �&�]	�ȟq���������̐�,rj��k/)n�^%G<#���~Y�l9||[��fmF�Fq��rl���4/���j�\!��\dڐ���mص�!��H֍���F�NΒ������,���{���{irp�Wv��6�A���~�Ff^%�J�{<֒���[x�դ�����<�P����cC�,�Br�m���sI�� �I�[J���jT▴�z����N�v���c���m���J�v��;��dX�#�S=�
�^�!�D�q� D���,����F��:��p��
sY;���30��ֳF���٢jn�&�gq��:���e��-9;���e��rʹ�0滞U����[K��k������teL�u��#���9L	j���gJ��M�9�7<J�M��� ���I��Q�)7�G2����h��L��+Eh A��:��tQH��Id	a~�~�����ܻb�o�jrb�����[�[e����x̠,��8���	�+�ei%��e�.����J���]�X���|G��r=��<��P����|o>_�������{Z �"#s���Rtaw���e)D�(��WɘVVo�_��Yṛ�51�){7F�DHO�[��bv*�@
����]�u��K^��DR��f���{U�)��PզB�@�a(�Ȝ��R���D/��e�s7�6�Ts@��t#��fIArR|���9G.dD��KN�RJ<zV;������b�$Y"��m��k��z����P������6�e�K��)2Z+��-���H^������K�"t�xI��1�4�d'y0��6�4%�#��&    �3��L�%,��$���4�@f�F]�8�I8�N�8%� 9�U61[0Q��ʭQ���+���q���k7����8��%8��=�JȆ#�8J0��N�k���0�d�T*���|��/�wI\���tb�@���|��Kw�R���'�	�h��U�Ii��&�IZ���&�����iM���#�E���k�n�IM(9&[�@���	���0&��@KKHk�-
^{3���K,h鍳��O�����N%�<�MR��M�qp'�	�BoÉ�&r�h�Z��n��%Q�4���d�_�6Y��J�w%|"�ɭ��s<٘L��O%��ح's&�0{�2�l*t$,�J5�*sw�.Q0ٌ҇�%�\[�BT�gSCH\bN%��$�[%\)$,9L�S�@�����Dy��<��0����B��[9�7e*E�ܮ6Cr���)��&o<U�hR/3G�6��F��	D���P�1	Mlݫ��;���1,��Y��$'����]�Rk����LN��F*���u�EO�T2���z����^��"y��BZ+��V�Ae6�`����&���ݯ����e�&����`#��D�6l��Ol�6���6yM]��M��#��&�p�<}ҙ�Uz��%�Ϫm�͂��:�e���`j�_�G�h�ϴ[k�B%[�`�����������E���%�D�|��v6eǁ$(���o��\k�R�����$]|,��kI�" [#��(kQ���$�<���(���|��#)���m\��E!+���[_u<X�ߞۿR��'U-�pӶgˣ�U����͎��cu��$%����a�h��Ԡ�d(Vd_�2�3�n���#�.SS�D��F<Y�vGQZ��
zBm$�M���L���R�i�~ǳ�X�R�tV�ʥn�7]��E���`X\�#�R���Q`�{{XL��#3JJ��^�P��~/]���M�}�yR0���$Cʋ�1��� ���@ 	��c�ؐ
t�~�cy�d?aO.ľ�\&�-���L�����[�f�����bm�JQ�!
�q��	@g�� ��}��g��_����u��L�7uQL(�R%ń2N�`�ˠ&=nD��S�C�MU�REʉ�2A%�Bwg|�!���w���6u���Jrf��j�D'\����9�R7�rb7��t-�Z6Km<\�^Db�5��&�ZG��F�y��D6���z��؟����@��k�K�^�Ǖe'��+{)�D`�,�֪�s�Y��4&I���L��m�Z�`uB��
,��d�8�����g�U�Uͮ����&ˮp��Z�@kZӗR��q6�^��#�ɲ����z�
HW��~��m��I�[v?��lAO_�ʨ�6�:{M����-�7J��۴���} �	�{
\�p����oM9�	O?eu��P!q�$z!��A��Sz�;�E~�ު׻�P����h�����=����(Dh4�i���"n�o�|�V��,��M ^�Ɉ�	Q6���XF�Q��Ľ�*n/\6��(F�Ȍb��'wV��%e�QU���v�[��[���(ϯd����1j:��c������N�K��������T�mȕ�\:�@���L�Q{(u��z|h5�V��-uS�痪�iR����^����*)I���{����5�E�H��0�e�4ф��}�/��F=iSD���`&��Q9,x�\n�`~��.y�h�[�%����@���[^+u�
m$Qq���d�*��p�zj������	,kE$)Vd�=m}���I۵AW����m1�y_ �
��Mr�8���:G���I�k�*.��d�)��k�{*[TΗ�M�F�V�x���b܁:^�.ܡ��*��e ��*i�dX����dYᢎ�P��~<����k�W����F�"�
^S�E���zch����y����s%�'�jy\	��5]Vm=�I��D���)����m.���技Ы�5��+��qɂ�^nutޯ�T��d+g;!V0�����~1�#�6w�n�vR�iV��	G)V�p^�"͊����c�j�d^�d������u!��4ƃ���0�r�Ec�I���|h�V� ˠ��/j�s;�t��&X�w ��l)I�,1_V�,�W)R���ӵ�Ȳ�L-jͳ�R�l�@�<5W����t�G��6�[cN��xR�� G3��+��z�_��kF�rH��f��!i��<lqH��8F�:�6�2��� H��Y��)?��n]'*G��]�KO]L����b�@��%��z�ߠ�r���Ҏd,k��j�Z�b1����<\�2�����Qx(����D��¬�մn�Hbɺ�C��#E�}��6��I���Z����.�Z�}P�yZ�m����f��%aKZ�=�њy�\��M��y�� r�@a�Ӈ�-,�J�5������ȅ3�Um��oGQhӲ�&iI�r&mm@R�[�{����U7/����c���V����i���Ho�St_O[���x�|�3a���Zד�Z��,��u��
�$�I�BRH-CYr�����XoM﷊�֊#���Ռ�:��r%���fϹ���z�ѵ~<���6Q(���i����~��kت@�s����>{t����zB�����z	����HCf7�B�:G����
	��0�����a�S^n�� ��)�4��<ZTae�Ww%�c|y���u�j�C6*)�\2��&���A72�uK�&�̐聃�dR�wjΔ��%��ړO��@���O�%�NV��+i ���}�PFJi����y�C�������7��gQ��`��Ɣ%j� ��C�����"z��:�˰Ad0��bÓ{F��)�"	�D���>mc��)�I��7�ϰ3�.����d��f�lB9$���K�:$�e�ֵ�5-���)��X�y�߇7Y�[��;*�k�38fZ�݌�H�v�Y+�fZ �1�Ņ�"��ʬ�d���]�3UÎf�B�E�(���O�Q3��
��%Y��U�D���"ƼB�w	��J$_�v*{���g�|Z�-��f��Ҫ�YH)��R��!��=M�H���J�F2פ�z67J��C�V�H�g�S�I�f��)-��k_�6W�%o�-��n�|����d�q�}�|5	Y�l�HښDs��.	�U��k��fQ?g��\�:3&9����&�Z�.wl.�+�.�zȝu�0������M}P�#��f���B�5� x��L�����;�Y�&�b��1br�2�궸�����<���i�����D���V��HN�W���)l�Y2�,���v73?%fZn�F2���ciY���3���i���Ar!�x��b�����=L5��ҙ��\+5S%�^�2�@_���
s1�
'��
����w{��_���U�ͱ_òR���E�:�$V�~Yz�|��R.��Z�3尬�W1��@����̯����%.�B�dH.�տ������Y��F��O$��ʘ�fYM�ē��^W�ω�Bg�Kn��&��-~�$����\�SZ/g��,�N$͕�mKN<�4[�S����9�V�8n۔[���4�b$C���tZV=3��O��I�)��:I���^�IU��b!�-�������:P��R;�x4�=�������<�[�+-f�F�����f�l�lg�u=�Jh`��,�̳͠&!�sPt򫦌�O�	/3�i`��IHc1+��*���0.�|a�%%�ېT4���Øt4���i����?)�Z�{���F�k(���e�����0{�*�����ꠄP%~R��*Ui�����"�'[>�%U`�r�kUY
[)�~�J�����σ�T��AL�P<�&G��h僥�ϛ���Ғ�x1���e	Blj����IM�F�ʐߟf}$�̯b��I.�f@����51bXVlK%ٔ+C���Y�ݯ�3̰�oE�1C���3��/EI=#���|t�-7�=CK!�yc�Ű,�iy����r�R����1�:�AN�~��+q`����p���3�#���.�E����;�E�/��J�|(û�I��>�NC��k�>w��'�{'�~ƋU=/3��f!ˎ �  d�Yrd����x�����$��f#)ICm0���K��H�E_��UH�#7��8���ێ����^�,6�]�G͟AM���ZٶVFe��J�����S�{��L�Z﫼���_^�%Ǡ��{'��Q,Hh�<T_�'�]�ፄ��%;m;v�F���HZ��aV�Hj�g>���k�u0r�<f�L��h�������K�Vm+{����7�Ir�����cScC�V㤚VÓ�H	��&g�d_մ��Se�<���S�?��fw$�Z��M��6+�,"�m,�� �<%UT�"K$��{��-!.���0����zg_�5�݆K}��U��`���;�PI;��Fy4c���=�17[�Mg6�f�7
�ܮY+z$�M"�ހ\Բ�Z��;ie���$�QF��]�!F��<����{E8cf���q+�\��l7���ݦ�Dz��K�l�i�P�z�D��#M
6&#��6��� 2(��H
���R[G׎�!�H���I�F$��c���][���&�in���d"�ɫ��M�����'dE&���O{l���m����D�Uq��1OT�Z; ����K��+���<{eǒ�f��IzR�cԜ'1�K��1z�� qDR�np�>*��e��$�Q�dc0�L�Ś\�V��YY�Me S^���gf��^�u�\�#9�_�S,���	�o��͙�G�/ij��T�����(���;6�I����u|b��ɏ�� F���������t�kW�T�R�c�E�[`��5�n<X�X�Ù����T��c"i��O,����]�5�^�ƽv��ނ8�i�p�cF���i}�%"�HV�?LjJD+�~��L-.�NE����#�hhVR��؛'�\��l��d�_GN�(.��HG�FL�����w�r�Kq�H>�#�/�q��D}cSǲ�Q/���[�������-�#�7�mf1���;p�
s�ne=���U�ڽ[-&�������~��0��      -   )   x�3���-�I-�2�t)-�I�2��=�+�$Ď���� ű
�      )      x�3�t.J-NN�+I�2�tIM��b���� ��	3      1   +   x�3�*-J��2�-JJ���2��;�8�˄383�+F��� ��	x      #   =  x�mQ�j�0<k��_�F�������$����^���5�l�;��B!�~�~�
i��������J��p�0�(�h���x�%�X��|L�.0���b��҇��r�]x�d��l�o�r�xgё�ë�q5YEFb���gɸ��\$��+E݅~c�1C�.��Z�v �x��r̊=�:��������)��*�l%fd-��)���^���쵚Y���r��f��l|<EģIç�t�8ḽӪD��\7�F��s����4����$�ѳ���g�ӖF�[%[թ�I����RbnX��U������6t�ɺd!/w �[$�      /   �   x��=�0@��>EN���e�PU1�X�A��9In�8 k.F����Yh8.�J:.�����}\�1����*:P'���G���]B�ftp�D����p���p�Ou�;8;�����I��y�E���o���Ű�����e��?y�74         �   x��;�0E����@��^��B�Ĳ)YBD��I;Ҙ�+j��R��R�n���¨��J���ʌ�R�j�k�X��N��zoؠt�FłW*n�~�	���z�[��3�+D|�����3���     