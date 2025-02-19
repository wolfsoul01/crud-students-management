PGDMP         $            
    {            proyecto    14.1    14.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    19918    proyecto    DATABASE     d   CREATE DATABASE proyecto WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE proyecto;
                postgres    false            �            1259    19999    Role    TABLE     �   CREATE TABLE public."Role" (
    id integer NOT NULL,
    name text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);
    DROP TABLE public."Role";
       public         heap    postgres    false            �            1259    19998    Role_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."Role_id_seq";
       public          postgres    false    212                       0    0    Role_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."Role_id_seq" OWNED BY public."Role".id;
          public          postgres    false    211            �            1259    20432    Session    TABLE     �   CREATE TABLE public."Session" (
    id text NOT NULL,
    sid text NOT NULL,
    data text NOT NULL,
    "expiresAt" timestamp(3) without time zone NOT NULL
);
    DROP TABLE public."Session";
       public         heap    postgres    false            �            1259    19938    User    TABLE     -  CREATE TABLE public."User" (
    id character(11) NOT NULL,
    email text NOT NULL,
    name text,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "roleId" integer NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    password text NOT NULL
);
    DROP TABLE public."User";
       public         heap    postgres    false            �            1259    19926    _prisma_migrations    TABLE     �  CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);
 &   DROP TABLE public._prisma_migrations;
       public         heap    postgres    false            k           2604    20002    Role id    DEFAULT     f   ALTER TABLE ONLY public."Role" ALTER COLUMN id SET DEFAULT nextval('public."Role_id_seq"'::regclass);
 8   ALTER TABLE public."Role" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212                      0    19999    Role 
   TABLE DATA           D   COPY public."Role" (id, name, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    212                    0    20432    Session 
   TABLE DATA           ?   COPY public."Session" (id, sid, data, "expiresAt") FROM stdin;
    public          postgres    false    213   R                 0    19938    User 
   TABLE DATA           _   COPY public."User" (id, email, name, "createdAt", "roleId", "updatedAt", password) FROM stdin;
    public          postgres    false    210   4                 0    19926    _prisma_migrations 
   TABLE DATA           �   COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
    public          postgres    false    209   �                  0    0    Role_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."Role_id_seq"', 2, true);
          public          postgres    false    211            t           2606    20007    Role Role_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."Role"
    ADD CONSTRAINT "Role_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."Role" DROP CONSTRAINT "Role_pkey";
       public            postgres    false    212            v           2606    20438    Session Session_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Session"
    ADD CONSTRAINT "Session_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Session" DROP CONSTRAINT "Session_pkey";
       public            postgres    false    213            q           2606    20287    User User_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_pkey";
       public            postgres    false    210            n           2606    19934 *   _prisma_migrations _prisma_migrations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public._prisma_migrations DROP CONSTRAINT _prisma_migrations_pkey;
       public            postgres    false    209            r           1259    20008    Role_name_key    INDEX     I   CREATE UNIQUE INDEX "Role_name_key" ON public."Role" USING btree (name);
 #   DROP INDEX public."Role_name_key";
       public            postgres    false    212            w           1259    20439    Session_sid_key    INDEX     M   CREATE UNIQUE INDEX "Session_sid_key" ON public."Session" USING btree (sid);
 %   DROP INDEX public."Session_sid_key";
       public            postgres    false    213            o           1259    19946    User_email_key    INDEX     K   CREATE UNIQUE INDEX "User_email_key" ON public."User" USING btree (email);
 $   DROP INDEX public."User_email_key";
       public            postgres    false    210            x           2606    20009    User User_roleId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_roleId_fkey" FOREIGN KEY ("roleId") REFERENCES public."Role"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 C   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_roleId_fkey";
       public          postgres    false    3188    210    212               7   x�3�tL����,.)J,�/�4202�54�54W00�20�21�370�%����� g'N         �   x�ŏ=o�0���WT�C>H���V*���*U�5��$��ȩP�{a�:2���G��.0��lW��������R��4�B�/�{�|�m���VI�p��=�W�tZ�@�FY�~��{���o��vb��#P�p�Ι���X焽��O0Q�d9NS�N��9�H\�
��/f�Pc�#�ͫj�����&����8Dw�x$�9��*��S�#�~ |�         |   x�30��Ĕ��<�����\��T� �����������������������!�!N�DC�b��r�� Â\��tK����ҢR=À�b/פ
����To�*� ��в�l��o�=... p�(         �  x�}�]j0��7����ϖ���	�m�H����ǯ�h�������<#�Sc��+�4��	V!����*L�K�"� U@�BJ�}���h��(�.qL�S�ف�� l��'��#0T���)"�����/����ȧ�×��T�ت^�x�h��ɢZ�U�[]g���m���+@�P���2�L�HS��8���=�g�@�Q��.DNh�������)�q�W�����kj�o	���:w0��c�qȡâ����n��ku��m
Ƣ��l����U34���\T?����:��{�\~>��y=�S|�����c�`�ˊ�+�(VK3��0!m�|MC��C�a�i�aԌ��6	g�K��Q�Q���_zx";!���>����ڧ�+ů�o�������+�.��|���=�@  [��5�Ix�;�K5���.��s�6^�w0���@ŷ.�O|��#)��
`�~�������z��N7������o"��     