PGDMP  !    7                }            nachkommen_des_sturms    17.2    17.2 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    24685    nachkommen_des_sturms    DATABASE     �   CREATE DATABASE nachkommen_des_sturms WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
 %   DROP DATABASE nachkommen_des_sturms;
                     postgres    false            �            1259    24723    armas    TABLE     �   CREATE TABLE public.armas (
    id_arma integer NOT NULL,
    nombre character varying(50) NOT NULL,
    tipo character varying(50),
    dano integer,
    id_rol integer
);
    DROP TABLE public.armas;
       public         heap r       postgres    false            �            1259    24722    armas_id_arma_seq    SEQUENCE     �   CREATE SEQUENCE public.armas_id_arma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.armas_id_arma_seq;
       public               postgres    false    222            �           0    0    armas_id_arma_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.armas_id_arma_seq OWNED BY public.armas.id_arma;
          public               postgres    false    221            �            1259    24895    bases    TABLE     �   CREATE TABLE public.bases (
    id_base integer NOT NULL,
    id_jugador integer NOT NULL,
    ubicacion text,
    coordenada_x integer DEFAULT 0 NOT NULL,
    coordenada_y integer DEFAULT 0 NOT NULL
);
    DROP TABLE public.bases;
       public         heap r       postgres    false            �            1259    24894    bases_id_base_seq    SEQUENCE     �   CREATE SEQUENCE public.bases_id_base_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.bases_id_base_seq;
       public               postgres    false    240            �           0    0    bases_id_base_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.bases_id_base_seq OWNED BY public.bases.id_base;
          public               postgres    false    239            �            1259    24950    cofres    TABLE     �   CREATE TABLE public.cofres (
    id_cofre integer NOT NULL,
    id_base integer NOT NULL,
    id_objeto integer NOT NULL,
    cantidad integer DEFAULT 1
);
    DROP TABLE public.cofres;
       public         heap r       postgres    false            �            1259    24949    cofres_id_cofre_seq    SEQUENCE     �   CREATE SEQUENCE public.cofres_id_cofre_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.cofres_id_cofre_seq;
       public               postgres    false    246            �           0    0    cofres_id_cofre_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.cofres_id_cofre_seq OWNED BY public.cofres.id_cofre;
          public               postgres    false    245            �            1259    24792    debilidades    TABLE     �   CREATE TABLE public.debilidades (
    id_debilidad integer NOT NULL,
    id_enemigo integer NOT NULL,
    id_rol integer NOT NULL
);
    DROP TABLE public.debilidades;
       public         heap r       postgres    false            �            1259    24791    debilidades_id_debilidad_seq    SEQUENCE     �   CREATE SEQUENCE public.debilidades_id_debilidad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.debilidades_id_debilidad_seq;
       public               postgres    false    232            �           0    0    debilidades_id_debilidad_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.debilidades_id_debilidad_seq OWNED BY public.debilidades.id_debilidad;
          public               postgres    false    231            �            1259    24761    enemigos    TABLE     �   CREATE TABLE public.enemigos (
    id_enemigo integer NOT NULL,
    nombre character varying(50) NOT NULL,
    tipo character varying(50),
    nivel integer,
    vida integer,
    id_mapa integer
);
    DROP TABLE public.enemigos;
       public         heap r       postgres    false            �            1259    24760    enemigos_id_enemigo_seq    SEQUENCE     �   CREATE SEQUENCE public.enemigos_id_enemigo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.enemigos_id_enemigo_seq;
       public               postgres    false    228            �           0    0    enemigos_id_enemigo_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.enemigos_id_enemigo_seq OWNED BY public.enemigos.id_enemigo;
          public               postgres    false    227            �            1259    24977    estado_misiones    TABLE     j   CREATE TABLE public.estado_misiones (
    id_guardado integer NOT NULL,
    id_mision integer NOT NULL
);
 #   DROP TABLE public.estado_misiones;
       public         heap r       postgres    false            �            1259    24911    estado_mundo    TABLE     �  CREATE TABLE public.estado_mundo (
    id_guardado integer NOT NULL,
    id_jugador integer NOT NULL,
    id_hoguera integer NOT NULL,
    fecha_guardado timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    nivel integer NOT NULL,
    vida integer NOT NULL,
    ataque integer NOT NULL,
    defensa integer NOT NULL,
    coordenada_x integer DEFAULT 0 NOT NULL,
    coordenada_y integer DEFAULT 0 NOT NULL
);
     DROP TABLE public.estado_mundo;
       public         heap r       postgres    false            �            1259    24910    estado_mundo_id_guardado_seq    SEQUENCE     �   CREATE SEQUENCE public.estado_mundo_id_guardado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.estado_mundo_id_guardado_seq;
       public               postgres    false    242            �           0    0    estado_mundo_id_guardado_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.estado_mundo_id_guardado_seq OWNED BY public.estado_mundo.id_guardado;
          public               postgres    false    241            �            1259    24992    estado_npcs    TABLE     c   CREATE TABLE public.estado_npcs (
    id_guardado integer NOT NULL,
    id_npc integer NOT NULL
);
    DROP TABLE public.estado_npcs;
       public         heap r       postgres    false            �            1259    24707    habilidades    TABLE     �   CREATE TABLE public.habilidades (
    id_habilidad integer NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion text,
    id_rol integer
);
    DROP TABLE public.habilidades;
       public         heap r       postgres    false            �            1259    24706    habilidades_id_habilidad_seq    SEQUENCE     �   CREATE SEQUENCE public.habilidades_id_habilidad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.habilidades_id_habilidad_seq;
       public               postgres    false    220            �           0    0    habilidades_id_habilidad_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.habilidades_id_habilidad_seq OWNED BY public.habilidades.id_habilidad;
          public               postgres    false    219            �            1259    24809    hogueras    TABLE     �   CREATE TABLE public.hogueras (
    id_hoguera integer NOT NULL,
    id_mapa integer NOT NULL,
    nombre character varying(50) NOT NULL,
    coordenada_x integer DEFAULT 0 NOT NULL,
    coordenada_y integer DEFAULT 0 NOT NULL
);
    DROP TABLE public.hogueras;
       public         heap r       postgres    false            �            1259    24808    hogueras_id_hoguera_seq    SEQUENCE     �   CREATE SEQUENCE public.hogueras_id_hoguera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.hogueras_id_hoguera_seq;
       public               postgres    false    234            �           0    0    hogueras_id_hoguera_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.hogueras_id_hoguera_seq OWNED BY public.hogueras.id_hoguera;
          public               postgres    false    233            �            1259    24932 
   inventario    TABLE     �   CREATE TABLE public.inventario (
    id_inventario integer NOT NULL,
    id_jugador integer NOT NULL,
    id_objeto integer NOT NULL,
    cantidad integer DEFAULT 1
);
    DROP TABLE public.inventario;
       public         heap r       postgres    false            �            1259    24931    inventario_id_inventario_seq    SEQUENCE     �   CREATE SEQUENCE public.inventario_id_inventario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.inventario_id_inventario_seq;
       public               postgres    false    244            �           0    0    inventario_id_inventario_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.inventario_id_inventario_seq OWNED BY public.inventario.id_inventario;
          public               postgres    false    243            �            1259    24876 	   jugadores    TABLE     �   CREATE TABLE public.jugadores (
    id_jugador integer NOT NULL,
    nombre character varying(50) NOT NULL,
    nivel integer DEFAULT 1,
    experiencia integer DEFAULT 0,
    id_rol integer NOT NULL,
    id_hoguera integer,
    id_base integer
);
    DROP TABLE public.jugadores;
       public         heap r       postgres    false            �            1259    24875    jugadores_id_jugador_seq    SEQUENCE     �   CREATE SEQUENCE public.jugadores_id_jugador_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.jugadores_id_jugador_seq;
       public               postgres    false    238            �           0    0    jugadores_id_jugador_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.jugadores_id_jugador_seq OWNED BY public.jugadores.id_jugador;
          public               postgres    false    237            �            1259    24775    loot    TABLE     �   CREATE TABLE public.loot (
    id_loot integer NOT NULL,
    id_enemigo integer NOT NULL,
    id_objeto integer NOT NULL,
    probabilidad numeric(5,2) NOT NULL
);
    DROP TABLE public.loot;
       public         heap r       postgres    false            �            1259    24774    loot_id_loot_seq    SEQUENCE     �   CREATE SEQUENCE public.loot_id_loot_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.loot_id_loot_seq;
       public               postgres    false    230                        0    0    loot_id_loot_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.loot_id_loot_seq OWNED BY public.loot.id_loot;
          public               postgres    false    229            �            1259    24748    mapas    TABLE     �   CREATE TABLE public.mapas (
    id_mapa integer NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion text,
    ancho integer DEFAULT 100 NOT NULL,
    alto integer DEFAULT 100 NOT NULL
);
    DROP TABLE public.mapas;
       public         heap r       postgres    false            �            1259    24747    mapas_id_mapa_seq    SEQUENCE     �   CREATE SEQUENCE public.mapas_id_mapa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.mapas_id_mapa_seq;
       public               postgres    false    226                       0    0    mapas_id_mapa_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.mapas_id_mapa_seq OWNED BY public.mapas.id_mapa;
          public               postgres    false    225            �            1259    24968    misiones    TABLE     d  CREATE TABLE public.misiones (
    id_mision integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text,
    estado character varying(20) NOT NULL,
    CONSTRAINT misiones_estado_check CHECK (((estado)::text = ANY ((ARRAY['Pendiente'::character varying, 'Completada'::character varying, 'Fallida'::character varying])::text[])))
);
    DROP TABLE public.misiones;
       public         heap r       postgres    false            �            1259    24967    misiones_id_mision_seq    SEQUENCE     �   CREATE SEQUENCE public.misiones_id_mision_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.misiones_id_mision_seq;
       public               postgres    false    248                       0    0    misiones_id_mision_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.misiones_id_mision_seq OWNED BY public.misiones.id_mision;
          public               postgres    false    247            �            1259    24837    npcs    TABLE     {   CREATE TABLE public.npcs (
    id_npc integer NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion text
);
    DROP TABLE public.npcs;
       public         heap r       postgres    false            �            1259    24836    npcs_id_npc_seq    SEQUENCE     �   CREATE SEQUENCE public.npcs_id_npc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.npcs_id_npc_seq;
       public               postgres    false    236                       0    0    npcs_id_npc_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.npcs_id_npc_seq OWNED BY public.npcs.id_npc;
          public               postgres    false    235            �            1259    24737    objetos    TABLE     �   CREATE TABLE public.objetos (
    id_objeto integer NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion text,
    tipo character varying(50)
);
    DROP TABLE public.objetos;
       public         heap r       postgres    false            �            1259    24736    objetos_id_objeto_seq    SEQUENCE     �   CREATE SEQUENCE public.objetos_id_objeto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.objetos_id_objeto_seq;
       public               postgres    false    224                       0    0    objetos_id_objeto_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.objetos_id_objeto_seq OWNED BY public.objetos.id_objeto;
          public               postgres    false    223            �            1259    24696    roles    TABLE     |   CREATE TABLE public.roles (
    id_rol integer NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion text
);
    DROP TABLE public.roles;
       public         heap r       postgres    false            �            1259    24695    roles_id_rol_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_rol_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.roles_id_rol_seq;
       public               postgres    false    218                       0    0    roles_id_rol_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.roles_id_rol_seq OWNED BY public.roles.id_rol;
          public               postgres    false    217            �           2604    24726    armas id_arma    DEFAULT     n   ALTER TABLE ONLY public.armas ALTER COLUMN id_arma SET DEFAULT nextval('public.armas_id_arma_seq'::regclass);
 <   ALTER TABLE public.armas ALTER COLUMN id_arma DROP DEFAULT;
       public               postgres    false    221    222    222            �           2604    24898    bases id_base    DEFAULT     n   ALTER TABLE ONLY public.bases ALTER COLUMN id_base SET DEFAULT nextval('public.bases_id_base_seq'::regclass);
 <   ALTER TABLE public.bases ALTER COLUMN id_base DROP DEFAULT;
       public               postgres    false    239    240    240            �           2604    24953    cofres id_cofre    DEFAULT     r   ALTER TABLE ONLY public.cofres ALTER COLUMN id_cofre SET DEFAULT nextval('public.cofres_id_cofre_seq'::regclass);
 >   ALTER TABLE public.cofres ALTER COLUMN id_cofre DROP DEFAULT;
       public               postgres    false    246    245    246            �           2604    24795    debilidades id_debilidad    DEFAULT     �   ALTER TABLE ONLY public.debilidades ALTER COLUMN id_debilidad SET DEFAULT nextval('public.debilidades_id_debilidad_seq'::regclass);
 G   ALTER TABLE public.debilidades ALTER COLUMN id_debilidad DROP DEFAULT;
       public               postgres    false    232    231    232            �           2604    24764    enemigos id_enemigo    DEFAULT     z   ALTER TABLE ONLY public.enemigos ALTER COLUMN id_enemigo SET DEFAULT nextval('public.enemigos_id_enemigo_seq'::regclass);
 B   ALTER TABLE public.enemigos ALTER COLUMN id_enemigo DROP DEFAULT;
       public               postgres    false    228    227    228            �           2604    24914    estado_mundo id_guardado    DEFAULT     �   ALTER TABLE ONLY public.estado_mundo ALTER COLUMN id_guardado SET DEFAULT nextval('public.estado_mundo_id_guardado_seq'::regclass);
 G   ALTER TABLE public.estado_mundo ALTER COLUMN id_guardado DROP DEFAULT;
       public               postgres    false    242    241    242            �           2604    24710    habilidades id_habilidad    DEFAULT     �   ALTER TABLE ONLY public.habilidades ALTER COLUMN id_habilidad SET DEFAULT nextval('public.habilidades_id_habilidad_seq'::regclass);
 G   ALTER TABLE public.habilidades ALTER COLUMN id_habilidad DROP DEFAULT;
       public               postgres    false    220    219    220            �           2604    24812    hogueras id_hoguera    DEFAULT     z   ALTER TABLE ONLY public.hogueras ALTER COLUMN id_hoguera SET DEFAULT nextval('public.hogueras_id_hoguera_seq'::regclass);
 B   ALTER TABLE public.hogueras ALTER COLUMN id_hoguera DROP DEFAULT;
       public               postgres    false    233    234    234            �           2604    24935    inventario id_inventario    DEFAULT     �   ALTER TABLE ONLY public.inventario ALTER COLUMN id_inventario SET DEFAULT nextval('public.inventario_id_inventario_seq'::regclass);
 G   ALTER TABLE public.inventario ALTER COLUMN id_inventario DROP DEFAULT;
       public               postgres    false    243    244    244            �           2604    24879    jugadores id_jugador    DEFAULT     |   ALTER TABLE ONLY public.jugadores ALTER COLUMN id_jugador SET DEFAULT nextval('public.jugadores_id_jugador_seq'::regclass);
 C   ALTER TABLE public.jugadores ALTER COLUMN id_jugador DROP DEFAULT;
       public               postgres    false    237    238    238            �           2604    24778    loot id_loot    DEFAULT     l   ALTER TABLE ONLY public.loot ALTER COLUMN id_loot SET DEFAULT nextval('public.loot_id_loot_seq'::regclass);
 ;   ALTER TABLE public.loot ALTER COLUMN id_loot DROP DEFAULT;
       public               postgres    false    229    230    230            �           2604    24751    mapas id_mapa    DEFAULT     n   ALTER TABLE ONLY public.mapas ALTER COLUMN id_mapa SET DEFAULT nextval('public.mapas_id_mapa_seq'::regclass);
 <   ALTER TABLE public.mapas ALTER COLUMN id_mapa DROP DEFAULT;
       public               postgres    false    226    225    226            �           2604    24971    misiones id_mision    DEFAULT     x   ALTER TABLE ONLY public.misiones ALTER COLUMN id_mision SET DEFAULT nextval('public.misiones_id_mision_seq'::regclass);
 A   ALTER TABLE public.misiones ALTER COLUMN id_mision DROP DEFAULT;
       public               postgres    false    248    247    248            �           2604    24840    npcs id_npc    DEFAULT     j   ALTER TABLE ONLY public.npcs ALTER COLUMN id_npc SET DEFAULT nextval('public.npcs_id_npc_seq'::regclass);
 :   ALTER TABLE public.npcs ALTER COLUMN id_npc DROP DEFAULT;
       public               postgres    false    235    236    236            �           2604    24740    objetos id_objeto    DEFAULT     v   ALTER TABLE ONLY public.objetos ALTER COLUMN id_objeto SET DEFAULT nextval('public.objetos_id_objeto_seq'::regclass);
 @   ALTER TABLE public.objetos ALTER COLUMN id_objeto DROP DEFAULT;
       public               postgres    false    223    224    224            �           2604    24699    roles id_rol    DEFAULT     l   ALTER TABLE ONLY public.roles ALTER COLUMN id_rol SET DEFAULT nextval('public.roles_id_rol_seq'::regclass);
 ;   ALTER TABLE public.roles ALTER COLUMN id_rol DROP DEFAULT;
       public               postgres    false    218    217    218            �          0    24723    armas 
   TABLE DATA           D   COPY public.armas (id_arma, nombre, tipo, dano, id_rol) FROM stdin;
    public               postgres    false    222   ��       �          0    24895    bases 
   TABLE DATA           [   COPY public.bases (id_base, id_jugador, ubicacion, coordenada_x, coordenada_y) FROM stdin;
    public               postgres    false    240   Q�       �          0    24950    cofres 
   TABLE DATA           H   COPY public.cofres (id_cofre, id_base, id_objeto, cantidad) FROM stdin;
    public               postgres    false    246   ��       �          0    24792    debilidades 
   TABLE DATA           G   COPY public.debilidades (id_debilidad, id_enemigo, id_rol) FROM stdin;
    public               postgres    false    232   ո       �          0    24761    enemigos 
   TABLE DATA           R   COPY public.enemigos (id_enemigo, nombre, tipo, nivel, vida, id_mapa) FROM stdin;
    public               postgres    false    228   �       �          0    24977    estado_misiones 
   TABLE DATA           A   COPY public.estado_misiones (id_guardado, id_mision) FROM stdin;
    public               postgres    false    249   v�       �          0    24911    estado_mundo 
   TABLE DATA           �   COPY public.estado_mundo (id_guardado, id_jugador, id_hoguera, fecha_guardado, nivel, vida, ataque, defensa, coordenada_x, coordenada_y) FROM stdin;
    public               postgres    false    242   ��       �          0    24992    estado_npcs 
   TABLE DATA           :   COPY public.estado_npcs (id_guardado, id_npc) FROM stdin;
    public               postgres    false    250   �       �          0    24707    habilidades 
   TABLE DATA           P   COPY public.habilidades (id_habilidad, nombre, descripcion, id_rol) FROM stdin;
    public               postgres    false    220   �       �          0    24809    hogueras 
   TABLE DATA           [   COPY public.hogueras (id_hoguera, id_mapa, nombre, coordenada_x, coordenada_y) FROM stdin;
    public               postgres    false    234   �       �          0    24932 
   inventario 
   TABLE DATA           T   COPY public.inventario (id_inventario, id_jugador, id_objeto, cantidad) FROM stdin;
    public               postgres    false    244   3�       �          0    24876 	   jugadores 
   TABLE DATA           h   COPY public.jugadores (id_jugador, nombre, nivel, experiencia, id_rol, id_hoguera, id_base) FROM stdin;
    public               postgres    false    238   P�       �          0    24775    loot 
   TABLE DATA           L   COPY public.loot (id_loot, id_enemigo, id_objeto, probabilidad) FROM stdin;
    public               postgres    false    230   Ļ       �          0    24748    mapas 
   TABLE DATA           J   COPY public.mapas (id_mapa, nombre, descripcion, ancho, alto) FROM stdin;
    public               postgres    false    226   ��       �          0    24968    misiones 
   TABLE DATA           J   COPY public.misiones (id_mision, nombre, descripcion, estado) FROM stdin;
    public               postgres    false    248   ��       �          0    24837    npcs 
   TABLE DATA           ;   COPY public.npcs (id_npc, nombre, descripcion) FROM stdin;
    public               postgres    false    236   7�       �          0    24737    objetos 
   TABLE DATA           G   COPY public.objetos (id_objeto, nombre, descripcion, tipo) FROM stdin;
    public               postgres    false    224   ��       �          0    24696    roles 
   TABLE DATA           <   COPY public.roles (id_rol, nombre, descripcion) FROM stdin;
    public               postgres    false    218   ��                  0    0    armas_id_arma_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.armas_id_arma_seq', 5, true);
          public               postgres    false    221                       0    0    bases_id_base_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.bases_id_base_seq', 2, true);
          public               postgres    false    239                       0    0    cofres_id_cofre_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.cofres_id_cofre_seq', 2, true);
          public               postgres    false    245            	           0    0    debilidades_id_debilidad_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.debilidades_id_debilidad_seq', 3, true);
          public               postgres    false    231            
           0    0    enemigos_id_enemigo_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.enemigos_id_enemigo_seq', 3, true);
          public               postgres    false    227                       0    0    estado_mundo_id_guardado_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.estado_mundo_id_guardado_seq', 2, true);
          public               postgres    false    241                       0    0    habilidades_id_habilidad_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.habilidades_id_habilidad_seq', 5, true);
          public               postgres    false    219                       0    0    hogueras_id_hoguera_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.hogueras_id_hoguera_seq', 2, true);
          public               postgres    false    233                       0    0    inventario_id_inventario_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.inventario_id_inventario_seq', 1, false);
          public               postgres    false    243                       0    0    jugadores_id_jugador_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.jugadores_id_jugador_seq', 5, true);
          public               postgres    false    237                       0    0    loot_id_loot_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.loot_id_loot_seq', 3, true);
          public               postgres    false    229                       0    0    mapas_id_mapa_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.mapas_id_mapa_seq', 3, true);
          public               postgres    false    225                       0    0    misiones_id_mision_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.misiones_id_mision_seq', 2, true);
          public               postgres    false    247                       0    0    npcs_id_npc_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.npcs_id_npc_seq', 2, true);
          public               postgres    false    235                       0    0    objetos_id_objeto_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.objetos_id_objeto_seq', 5, true);
          public               postgres    false    223                       0    0    roles_id_rol_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.roles_id_rol_seq', 5, true);
          public               postgres    false    217                        2606    24730    armas armas_nombre_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.armas
    ADD CONSTRAINT armas_nombre_key UNIQUE (nombre);
 @   ALTER TABLE ONLY public.armas DROP CONSTRAINT armas_nombre_key;
       public                 postgres    false    222                       2606    24728    armas armas_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.armas
    ADD CONSTRAINT armas_pkey PRIMARY KEY (id_arma);
 :   ALTER TABLE ONLY public.armas DROP CONSTRAINT armas_pkey;
       public                 postgres    false    222                       2606    24904    bases bases_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.bases
    ADD CONSTRAINT bases_pkey PRIMARY KEY (id_base);
 :   ALTER TABLE ONLY public.bases DROP CONSTRAINT bases_pkey;
       public                 postgres    false    240                        2606    24956    cofres cofres_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.cofres
    ADD CONSTRAINT cofres_pkey PRIMARY KEY (id_cofre);
 <   ALTER TABLE ONLY public.cofres DROP CONSTRAINT cofres_pkey;
       public                 postgres    false    246                       2606    24797    debilidades debilidades_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.debilidades
    ADD CONSTRAINT debilidades_pkey PRIMARY KEY (id_debilidad);
 F   ALTER TABLE ONLY public.debilidades DROP CONSTRAINT debilidades_pkey;
       public                 postgres    false    232                       2606    24768    enemigos enemigos_nombre_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.enemigos
    ADD CONSTRAINT enemigos_nombre_key UNIQUE (nombre);
 F   ALTER TABLE ONLY public.enemigos DROP CONSTRAINT enemigos_nombre_key;
       public                 postgres    false    228                       2606    24766    enemigos enemigos_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.enemigos
    ADD CONSTRAINT enemigos_pkey PRIMARY KEY (id_enemigo);
 @   ALTER TABLE ONLY public.enemigos DROP CONSTRAINT enemigos_pkey;
       public                 postgres    false    228            $           2606    24981 $   estado_misiones estado_misiones_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.estado_misiones
    ADD CONSTRAINT estado_misiones_pkey PRIMARY KEY (id_guardado, id_mision);
 N   ALTER TABLE ONLY public.estado_misiones DROP CONSTRAINT estado_misiones_pkey;
       public                 postgres    false    249    249                       2606    24919    estado_mundo estado_mundo_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.estado_mundo
    ADD CONSTRAINT estado_mundo_pkey PRIMARY KEY (id_guardado);
 H   ALTER TABLE ONLY public.estado_mundo DROP CONSTRAINT estado_mundo_pkey;
       public                 postgres    false    242            &           2606    24996    estado_npcs estado_npcs_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.estado_npcs
    ADD CONSTRAINT estado_npcs_pkey PRIMARY KEY (id_guardado, id_npc);
 F   ALTER TABLE ONLY public.estado_npcs DROP CONSTRAINT estado_npcs_pkey;
       public                 postgres    false    250    250            �           2606    24716 "   habilidades habilidades_nombre_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.habilidades
    ADD CONSTRAINT habilidades_nombre_key UNIQUE (nombre);
 L   ALTER TABLE ONLY public.habilidades DROP CONSTRAINT habilidades_nombre_key;
       public                 postgres    false    220            �           2606    24714    habilidades habilidades_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.habilidades
    ADD CONSTRAINT habilidades_pkey PRIMARY KEY (id_habilidad);
 F   ALTER TABLE ONLY public.habilidades DROP CONSTRAINT habilidades_pkey;
       public                 postgres    false    220                       2606    24816    hogueras hogueras_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.hogueras
    ADD CONSTRAINT hogueras_pkey PRIMARY KEY (id_hoguera);
 @   ALTER TABLE ONLY public.hogueras DROP CONSTRAINT hogueras_pkey;
       public                 postgres    false    234                       2606    24938    inventario inventario_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT inventario_pkey PRIMARY KEY (id_inventario);
 D   ALTER TABLE ONLY public.inventario DROP CONSTRAINT inventario_pkey;
       public                 postgres    false    244                       2606    24883    jugadores jugadores_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.jugadores
    ADD CONSTRAINT jugadores_pkey PRIMARY KEY (id_jugador);
 B   ALTER TABLE ONLY public.jugadores DROP CONSTRAINT jugadores_pkey;
       public                 postgres    false    238                       2606    24780    loot loot_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.loot
    ADD CONSTRAINT loot_pkey PRIMARY KEY (id_loot);
 8   ALTER TABLE ONLY public.loot DROP CONSTRAINT loot_pkey;
       public                 postgres    false    230                       2606    24759    mapas mapas_nombre_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.mapas
    ADD CONSTRAINT mapas_nombre_key UNIQUE (nombre);
 @   ALTER TABLE ONLY public.mapas DROP CONSTRAINT mapas_nombre_key;
       public                 postgres    false    226            
           2606    24757    mapas mapas_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.mapas
    ADD CONSTRAINT mapas_pkey PRIMARY KEY (id_mapa);
 :   ALTER TABLE ONLY public.mapas DROP CONSTRAINT mapas_pkey;
       public                 postgres    false    226            "           2606    24976    misiones misiones_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.misiones
    ADD CONSTRAINT misiones_pkey PRIMARY KEY (id_mision);
 @   ALTER TABLE ONLY public.misiones DROP CONSTRAINT misiones_pkey;
       public                 postgres    false    248                       2606    24844    npcs npcs_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.npcs
    ADD CONSTRAINT npcs_pkey PRIMARY KEY (id_npc);
 8   ALTER TABLE ONLY public.npcs DROP CONSTRAINT npcs_pkey;
       public                 postgres    false    236                       2606    24746    objetos objetos_nombre_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.objetos
    ADD CONSTRAINT objetos_nombre_key UNIQUE (nombre);
 D   ALTER TABLE ONLY public.objetos DROP CONSTRAINT objetos_nombre_key;
       public                 postgres    false    224                       2606    24744    objetos objetos_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.objetos
    ADD CONSTRAINT objetos_pkey PRIMARY KEY (id_objeto);
 >   ALTER TABLE ONLY public.objetos DROP CONSTRAINT objetos_pkey;
       public                 postgres    false    224            �           2606    24705    roles roles_nombre_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_nombre_key UNIQUE (nombre);
 @   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_nombre_key;
       public                 postgres    false    218            �           2606    24703    roles roles_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id_rol);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public                 postgres    false    218            (           2606    24731    armas armas_id_rol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.armas
    ADD CONSTRAINT armas_id_rol_fkey FOREIGN KEY (id_rol) REFERENCES public.roles(id_rol) ON DELETE SET NULL;
 A   ALTER TABLE ONLY public.armas DROP CONSTRAINT armas_id_rol_fkey;
       public               postgres    false    218    222    4858            2           2606    24905    bases bases_id_jugador_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bases
    ADD CONSTRAINT bases_id_jugador_fkey FOREIGN KEY (id_jugador) REFERENCES public.jugadores(id_jugador) ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.bases DROP CONSTRAINT bases_id_jugador_fkey;
       public               postgres    false    238    240    4888            7           2606    24957    cofres cofres_id_base_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cofres
    ADD CONSTRAINT cofres_id_base_fkey FOREIGN KEY (id_base) REFERENCES public.bases(id_base) ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.cofres DROP CONSTRAINT cofres_id_base_fkey;
       public               postgres    false    246    240    4890            8           2606    24962    cofres cofres_id_objeto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cofres
    ADD CONSTRAINT cofres_id_objeto_fkey FOREIGN KEY (id_objeto) REFERENCES public.objetos(id_objeto) ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.cofres DROP CONSTRAINT cofres_id_objeto_fkey;
       public               postgres    false    224    4870    246            ,           2606    24798 '   debilidades debilidades_id_enemigo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.debilidades
    ADD CONSTRAINT debilidades_id_enemigo_fkey FOREIGN KEY (id_enemigo) REFERENCES public.enemigos(id_enemigo) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.debilidades DROP CONSTRAINT debilidades_id_enemigo_fkey;
       public               postgres    false    4878    228    232            -           2606    24803 #   debilidades debilidades_id_rol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.debilidades
    ADD CONSTRAINT debilidades_id_rol_fkey FOREIGN KEY (id_rol) REFERENCES public.roles(id_rol) ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.debilidades DROP CONSTRAINT debilidades_id_rol_fkey;
       public               postgres    false    232    4858    218            )           2606    24769    enemigos enemigos_id_mapa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.enemigos
    ADD CONSTRAINT enemigos_id_mapa_fkey FOREIGN KEY (id_mapa) REFERENCES public.mapas(id_mapa) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.enemigos DROP CONSTRAINT enemigos_id_mapa_fkey;
       public               postgres    false    228    226    4874            9           2606    24982 0   estado_misiones estado_misiones_id_guardado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.estado_misiones
    ADD CONSTRAINT estado_misiones_id_guardado_fkey FOREIGN KEY (id_guardado) REFERENCES public.estado_mundo(id_guardado) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.estado_misiones DROP CONSTRAINT estado_misiones_id_guardado_fkey;
       public               postgres    false    4892    249    242            :           2606    24987 .   estado_misiones estado_misiones_id_mision_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.estado_misiones
    ADD CONSTRAINT estado_misiones_id_mision_fkey FOREIGN KEY (id_mision) REFERENCES public.misiones(id_mision) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.estado_misiones DROP CONSTRAINT estado_misiones_id_mision_fkey;
       public               postgres    false    249    248    4898            3           2606    24925 )   estado_mundo estado_mundo_id_hoguera_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.estado_mundo
    ADD CONSTRAINT estado_mundo_id_hoguera_fkey FOREIGN KEY (id_hoguera) REFERENCES public.hogueras(id_hoguera) ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.estado_mundo DROP CONSTRAINT estado_mundo_id_hoguera_fkey;
       public               postgres    false    242    4884    234            4           2606    24920 )   estado_mundo estado_mundo_id_jugador_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.estado_mundo
    ADD CONSTRAINT estado_mundo_id_jugador_fkey FOREIGN KEY (id_jugador) REFERENCES public.jugadores(id_jugador) ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.estado_mundo DROP CONSTRAINT estado_mundo_id_jugador_fkey;
       public               postgres    false    242    238    4888            ;           2606    24997 (   estado_npcs estado_npcs_id_guardado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.estado_npcs
    ADD CONSTRAINT estado_npcs_id_guardado_fkey FOREIGN KEY (id_guardado) REFERENCES public.estado_mundo(id_guardado) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.estado_npcs DROP CONSTRAINT estado_npcs_id_guardado_fkey;
       public               postgres    false    242    4892    250            <           2606    25002 #   estado_npcs estado_npcs_id_npc_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.estado_npcs
    ADD CONSTRAINT estado_npcs_id_npc_fkey FOREIGN KEY (id_npc) REFERENCES public.npcs(id_npc) ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.estado_npcs DROP CONSTRAINT estado_npcs_id_npc_fkey;
       public               postgres    false    250    236    4886            '           2606    24717 #   habilidades habilidades_id_rol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.habilidades
    ADD CONSTRAINT habilidades_id_rol_fkey FOREIGN KEY (id_rol) REFERENCES public.roles(id_rol) ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.habilidades DROP CONSTRAINT habilidades_id_rol_fkey;
       public               postgres    false    218    220    4858            .           2606    24817    hogueras hogueras_id_mapa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.hogueras
    ADD CONSTRAINT hogueras_id_mapa_fkey FOREIGN KEY (id_mapa) REFERENCES public.mapas(id_mapa) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.hogueras DROP CONSTRAINT hogueras_id_mapa_fkey;
       public               postgres    false    4874    234    226            5           2606    24939 %   inventario inventario_id_jugador_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT inventario_id_jugador_fkey FOREIGN KEY (id_jugador) REFERENCES public.jugadores(id_jugador) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.inventario DROP CONSTRAINT inventario_id_jugador_fkey;
       public               postgres    false    244    238    4888            6           2606    24944 $   inventario inventario_id_objeto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT inventario_id_objeto_fkey FOREIGN KEY (id_objeto) REFERENCES public.objetos(id_objeto) ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.inventario DROP CONSTRAINT inventario_id_objeto_fkey;
       public               postgres    false    4870    244    224            /           2606    25007     jugadores jugadores_id_base_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.jugadores
    ADD CONSTRAINT jugadores_id_base_fkey FOREIGN KEY (id_base) REFERENCES public.bases(id_base) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.jugadores DROP CONSTRAINT jugadores_id_base_fkey;
       public               postgres    false    238    240    4890            0           2606    24889 #   jugadores jugadores_id_hoguera_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.jugadores
    ADD CONSTRAINT jugadores_id_hoguera_fkey FOREIGN KEY (id_hoguera) REFERENCES public.hogueras(id_hoguera) ON DELETE SET NULL;
 M   ALTER TABLE ONLY public.jugadores DROP CONSTRAINT jugadores_id_hoguera_fkey;
       public               postgres    false    238    4884    234            1           2606    24884    jugadores jugadores_id_rol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.jugadores
    ADD CONSTRAINT jugadores_id_rol_fkey FOREIGN KEY (id_rol) REFERENCES public.roles(id_rol) ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.jugadores DROP CONSTRAINT jugadores_id_rol_fkey;
       public               postgres    false    4858    218    238            *           2606    24781    loot loot_id_enemigo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.loot
    ADD CONSTRAINT loot_id_enemigo_fkey FOREIGN KEY (id_enemigo) REFERENCES public.enemigos(id_enemigo) ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.loot DROP CONSTRAINT loot_id_enemigo_fkey;
       public               postgres    false    228    4878    230            +           2606    24786    loot loot_id_objeto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.loot
    ADD CONSTRAINT loot_id_objeto_fkey FOREIGN KEY (id_objeto) REFERENCES public.objetos(id_objeto) ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.loot DROP CONSTRAINT loot_id_objeto_fkey;
       public               postgres    false    4870    224    230            �   �   x�m�;�0뷧���L��Hih�i{Y���I(8g�dQB��7�)1��8a�<zM)�kZ"L��*���u��Y�r��M���ڠ���i�9r%D�e�߱@Mz���pנ!�~M��Lv�?���끈ޕ�5�      �   J   x�3�4�JM+M��WHIU�IT���+I<�$��Ԁ�ܔˈӘ381��4��$G�)���4��؀�̀+F��� օ�      �      x�3�4�4�4�2���\1z\\\ Z�      �      x�3�4�4�2�4�4�2�4�4����� !��      �   b   x�3���O�WN�)K�J�tJ-.�L�4�445�4�2�t-.,M�I-������-M-��9�8���9�3��JRRR<2Ss�a��9M�*��b���� ���      �      x�3�4�2�4����� ��      �   E   x�}ʻ� �x�
 �}�����IέI&x
팖�>]���Q�\3����������?KD^S�F      �      x�3�4�2�4����� ��      �   �   x�5�Mn�@�מS�H�� �n@B]�yI\:�0Ng2Yp����d8v~�����O�p-Io�1���Y�ʭF�ܣUnI{osR>%i}V���?�N���b?�GZ�m5<wu����.ܼ���������J+��S��f䣦��SV��Ȝ��$dZ��JB;{y�GA_���ۡYk�Ni�����iS�      �   <   x�3�4���O/M-JTHI�Qp�I,��43�0�2�4��y��$�$rZpp��qqq ��      �      x������ � �      �   d   x�-�;
�0�zr�|�Oi���	�I���)ތƚÛ
�A�_e��P�-fa��b�cn�M���p����I�g��jz
Fh�;w��R��.�      �   )   x�3�4B=.#N#NN#0ۘӘӔ�̎���� x��      �   �   x�%�M
�0���)��V�
]���͘�e�Nj~
z+��'3��7��=�W���DЈE��9u����2��ցu�3��1��ճŠ��)�Z��%��D�S6M�>��#�<��O����;�r�6���������G����z^�W���[0�)p��>@�&��U�5}^i��z�Is      �   m   x�3�tN�JTHI�Q��O��tI-*�/ITH�Q���s��R9R�R2S�JR���ոg�'��<2Ss�9]s2s3��r�P��<���b������CK��̊���� z�,�      �   y   x�̱1�:�� $؀A�4��v��A�I2��Io�v�����7eqPࢠ�,4�M��@ڮ���w�U-��i_�+��/:^��PE��Z�� V��w�YТ��[��:��8P/>      �   �   x�%�KNAD��S��� Q@�D	Vl�'��cG��4G��ၥ����,����1~HG���hp��^mVgk���iz9Nw���ॄ���ՙ*Z�AWxfwꅵQ���B#��+j�h}p�r� i���fΤ%<qO���'��M�|��Q�9���VaK�]��<����{���;:g���Z	��,�T��O����"��\�Z�      �   �   x�=�1nAE�S��� �QQ�ҘYkeiv��^	:�AE��Qr���Y~���3m&R%��>��.@��%�(��!/R���)�H���9���Bm��,/�;I?��(��Q���:.hy�#�AB's��*w\�P��Ӌ���X�J���rU�����0�8VU������#�� �R�     