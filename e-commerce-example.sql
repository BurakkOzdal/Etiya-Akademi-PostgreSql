PGDMP                     
    z            pair4    15.1    15.1 v    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16398    pair4    DATABASE     ?   CREATE DATABASE pair4 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United Kingdom.1252';
    DROP DATABASE pair4;
                postgres    false            ?            1259    16608    address_types    TABLE     d   CREATE TABLE public.address_types (
    id integer NOT NULL,
    name character varying NOT NULL
);
 !   DROP TABLE public.address_types;
       public         heap    postgres    false            ?            1259    16607    address_types_id_seq    SEQUENCE     ?   ALTER TABLE public.address_types ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.address_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            ?            1259    16616 	   addresses    TABLE     ?   CREATE TABLE public.addresses (
    id integer NOT NULL,
    description character varying NOT NULL,
    address_type_id integer NOT NULL,
    street_id integer NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.addresses;
       public         heap    postgres    false            ?            1259    16615    addresses_id_seq    SEQUENCE     ?   ALTER TABLE public.addresses ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.addresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            ?            1259    16624    carts    TABLE     u   CREATE TABLE public.carts (
    id integer NOT NULL,
    total_price money NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.carts;
       public         heap    postgres    false            ?            1259    16623    carts_id_seq    SEQUENCE     ?   ALTER TABLE public.carts ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.carts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            ?            1259    16630 
   categories    TABLE     a   CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.categories;
       public         heap    postgres    false            ?            1259    16629    categories_id_seq    SEQUENCE     ?   ALTER TABLE public.categories ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    221            ?            1259    16638    cities    TABLE     ~   CREATE TABLE public.cities (
    id integer NOT NULL,
    name character varying NOT NULL,
    country_id integer NOT NULL
);
    DROP TABLE public.cities;
       public         heap    postgres    false            ?            1259    16637    cities_id_seq    SEQUENCE     ?   ALTER TABLE public.cities ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    223            ?            1259    16646 	   countries    TABLE     `   CREATE TABLE public.countries (
    id integer NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.countries;
       public         heap    postgres    false            ?            1259    16645    countries_id_seq    SEQUENCE     ?   ALTER TABLE public.countries ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    225            ?            1259    16654 	   customers    TABLE     ?   CREATE TABLE public.customers (
    id integer NOT NULL,
    customer_number character varying NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.customers;
       public         heap    postgres    false            ?            1259    16653    customers_id_seq    SEQUENCE     ?   ALTER TABLE public.customers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    227            ?            1259    16662 	   districts    TABLE     ~   CREATE TABLE public.districts (
    id integer NOT NULL,
    name character varying NOT NULL,
    town_id integer NOT NULL
);
    DROP TABLE public.districts;
       public         heap    postgres    false            ?            1259    16661    districts_id_seq    SEQUENCE     ?   ALTER TABLE public.districts ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.districts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    229            ?            1259    16670    order_details    TABLE     ?   CREATE TABLE public.order_details (
    id integer NOT NULL,
    product_suppliers_id integer NOT NULL,
    quantity integer
);
 !   DROP TABLE public.order_details;
       public         heap    postgres    false            ?            1259    16669    order_details_id_seq    SEQUENCE     ?   ALTER TABLE public.order_details ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.order_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    231            ?            1259    16676    orders    TABLE     ?   CREATE TABLE public.orders (
    id integer NOT NULL,
    user_id integer NOT NULL,
    payment_id integer NOT NULL,
    order_detail_id integer NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            ?            1259    16675    orders_id_seq    SEQUENCE     ?   ALTER TABLE public.orders ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    233            ?            1259    16682    payment_types    TABLE     d   CREATE TABLE public.payment_types (
    id integer NOT NULL,
    name character varying NOT NULL
);
 !   DROP TABLE public.payment_types;
       public         heap    postgres    false            ?            1259    16681    payment_types_id_seq    SEQUENCE     ?   ALTER TABLE public.payment_types ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.payment_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    235            ?            1259    16690    payments    TABLE     ?   CREATE TABLE public.payments (
    id integer NOT NULL,
    payment_type_id integer NOT NULL,
    description character varying NOT NULL
);
    DROP TABLE public.payments;
       public         heap    postgres    false            ?            1259    16689    payments_id_seq    SEQUENCE     ?   ALTER TABLE public.payments ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.payments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    237            ?            1259    16698    product_categories    TABLE     ?   CREATE TABLE public.product_categories (
    id integer NOT NULL,
    product_id integer NOT NULL,
    category_id integer NOT NULL
);
 &   DROP TABLE public.product_categories;
       public         heap    postgres    false            ?            1259    16697    product_categories_id_seq    SEQUENCE     ?   ALTER TABLE public.product_categories ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.product_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    239            ?            1259    16704    product_suppliers    TABLE     ?   CREATE TABLE public.product_suppliers (
    id integer NOT NULL,
    product_id integer NOT NULL,
    supplier_id integer NOT NULL
);
 %   DROP TABLE public.product_suppliers;
       public         heap    postgres    false            ?            1259    16703    product_suppliers_id_seq    SEQUENCE     ?   ALTER TABLE public.product_suppliers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.product_suppliers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    241            ?            1259    16710    products    TABLE     ?   CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying NOT NULL,
    unit_price money NOT NULL,
    stock integer NOT NULL
);
    DROP TABLE public.products;
       public         heap    postgres    false            ?            1259    16709    products_id_seq    SEQUENCE     ?   ALTER TABLE public.products ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    243            ?            1259    16718    streets    TABLE     ?   CREATE TABLE public.streets (
    id integer NOT NULL,
    name character varying NOT NULL,
    district_id integer NOT NULL
);
    DROP TABLE public.streets;
       public         heap    postgres    false            ?            1259    16717    streets_id_seq    SEQUENCE     ?   ALTER TABLE public.streets ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.streets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    245            ?            1259    16726 	   suppliers    TABLE     ?   CREATE TABLE public.suppliers (
    id integer NOT NULL,
    supplier_number character varying NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.suppliers;
       public         heap    postgres    false            ?            1259    16725    suppliers_id_seq    SEQUENCE     ?   ALTER TABLE public.suppliers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.suppliers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    247            ?            1259    16734    towns    TABLE     z   CREATE TABLE public.towns (
    id integer NOT NULL,
    name character varying NOT NULL,
    city_id integer NOT NULL
);
    DROP TABLE public.towns;
       public         heap    postgres    false            ?            1259    16733    towns_id_seq    SEQUENCE     ?   ALTER TABLE public.towns ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.towns_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    249            ?            1259    16742    users    TABLE     ?   CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying NOT NULL,
    phone_number character varying NOT NULL,
    email character varying NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            ?            1259    16741    users_id_seq    SEQUENCE     ?   ALTER TABLE public.users ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    251            ?          0    16608    address_types 
   TABLE DATA           1   COPY public.address_types (id, name) FROM stdin;
    public          postgres    false    215   ʇ       ?          0    16616 	   addresses 
   TABLE DATA           Y   COPY public.addresses (id, description, address_type_id, street_id, user_id) FROM stdin;
    public          postgres    false    217   ??       ?          0    16624    carts 
   TABLE DATA           9   COPY public.carts (id, total_price, user_id) FROM stdin;
    public          postgres    false    219   ?       ?          0    16630 
   categories 
   TABLE DATA           .   COPY public.categories (id, name) FROM stdin;
    public          postgres    false    221   !?       ?          0    16638    cities 
   TABLE DATA           6   COPY public.cities (id, name, country_id) FROM stdin;
    public          postgres    false    223   >?       ?          0    16646 	   countries 
   TABLE DATA           -   COPY public.countries (id, name) FROM stdin;
    public          postgres    false    225   [?       ?          0    16654 	   customers 
   TABLE DATA           A   COPY public.customers (id, customer_number, user_id) FROM stdin;
    public          postgres    false    227   x?       ?          0    16662 	   districts 
   TABLE DATA           6   COPY public.districts (id, name, town_id) FROM stdin;
    public          postgres    false    229   ??       ?          0    16670    order_details 
   TABLE DATA           K   COPY public.order_details (id, product_suppliers_id, quantity) FROM stdin;
    public          postgres    false    231   ??       ?          0    16676    orders 
   TABLE DATA           J   COPY public.orders (id, user_id, payment_id, order_detail_id) FROM stdin;
    public          postgres    false    233   ψ       ?          0    16682    payment_types 
   TABLE DATA           1   COPY public.payment_types (id, name) FROM stdin;
    public          postgres    false    235   ??       ?          0    16690    payments 
   TABLE DATA           D   COPY public.payments (id, payment_type_id, description) FROM stdin;
    public          postgres    false    237   	?       ?          0    16698    product_categories 
   TABLE DATA           I   COPY public.product_categories (id, product_id, category_id) FROM stdin;
    public          postgres    false    239   &?       ?          0    16704    product_suppliers 
   TABLE DATA           H   COPY public.product_suppliers (id, product_id, supplier_id) FROM stdin;
    public          postgres    false    241   C?       ?          0    16710    products 
   TABLE DATA           ?   COPY public.products (id, name, unit_price, stock) FROM stdin;
    public          postgres    false    243   `?       ?          0    16718    streets 
   TABLE DATA           8   COPY public.streets (id, name, district_id) FROM stdin;
    public          postgres    false    245   }?       ?          0    16726 	   suppliers 
   TABLE DATA           A   COPY public.suppliers (id, supplier_number, user_id) FROM stdin;
    public          postgres    false    247   ??       ?          0    16734    towns 
   TABLE DATA           2   COPY public.towns (id, name, city_id) FROM stdin;
    public          postgres    false    249   ??       ?          0    16742    users 
   TABLE DATA           >   COPY public.users (id, name, phone_number, email) FROM stdin;
    public          postgres    false    251   ԉ       ?           0    0    address_types_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.address_types_id_seq', 1, false);
          public          postgres    false    214            ?           0    0    addresses_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.addresses_id_seq', 1, false);
          public          postgres    false    216            ?           0    0    carts_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.carts_id_seq', 1, false);
          public          postgres    false    218            ?           0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 1, false);
          public          postgres    false    220            ?           0    0    cities_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.cities_id_seq', 1, false);
          public          postgres    false    222            ?           0    0    countries_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.countries_id_seq', 1, false);
          public          postgres    false    224            ?           0    0    customers_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.customers_id_seq', 1, false);
          public          postgres    false    226            ?           0    0    districts_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.districts_id_seq', 1, false);
          public          postgres    false    228            ?           0    0    order_details_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.order_details_id_seq', 1, false);
          public          postgres    false    230            ?           0    0    orders_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.orders_id_seq', 1, false);
          public          postgres    false    232            ?           0    0    payment_types_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.payment_types_id_seq', 1, false);
          public          postgres    false    234            ?           0    0    payments_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.payments_id_seq', 1, false);
          public          postgres    false    236            ?           0    0    product_categories_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.product_categories_id_seq', 1, false);
          public          postgres    false    238            ?           0    0    product_suppliers_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.product_suppliers_id_seq', 1, false);
          public          postgres    false    240            ?           0    0    products_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.products_id_seq', 1, false);
          public          postgres    false    242            ?           0    0    streets_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.streets_id_seq', 1, false);
          public          postgres    false    244            ?           0    0    suppliers_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.suppliers_id_seq', 1, false);
          public          postgres    false    246            ?           0    0    towns_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.towns_id_seq', 1, false);
          public          postgres    false    248            ?           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    250            ?           2606    16614     address_types address_types_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.address_types
    ADD CONSTRAINT address_types_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.address_types DROP CONSTRAINT address_types_pkey;
       public            postgres    false    215            ?           2606    16622    addresses addresses_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.addresses DROP CONSTRAINT addresses_pkey;
       public            postgres    false    217            ?           2606    16628    carts carts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.carts
    ADD CONSTRAINT carts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.carts DROP CONSTRAINT carts_pkey;
       public            postgres    false    219            ?           2606    16636    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    221            ?           2606    16644    cities cities_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_pkey;
       public            postgres    false    223            ?           2606    16652    countries countries_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
       public            postgres    false    225            ?           2606    16660    customers customers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public            postgres    false    227            ?           2606    16668    districts districts_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.districts
    ADD CONSTRAINT districts_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.districts DROP CONSTRAINT districts_pkey;
       public            postgres    false    229            ?           2606    16674     order_details order_details_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_details_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.order_details DROP CONSTRAINT order_details_pkey;
       public            postgres    false    231            ?           2606    16680    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    233            ?           2606    16688     payment_types payment_types_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.payment_types
    ADD CONSTRAINT payment_types_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.payment_types DROP CONSTRAINT payment_types_pkey;
       public            postgres    false    235            ?           2606    16696    payments payments_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.payments DROP CONSTRAINT payments_pkey;
       public            postgres    false    237            ?           2606    16702 *   product_categories product_categories_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.product_categories
    ADD CONSTRAINT product_categories_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.product_categories DROP CONSTRAINT product_categories_pkey;
       public            postgres    false    239            ?           2606    16708 (   product_suppliers product_suppliers_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.product_suppliers
    ADD CONSTRAINT product_suppliers_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.product_suppliers DROP CONSTRAINT product_suppliers_pkey;
       public            postgres    false    241            ?           2606    16716    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    243            ?           2606    16724    streets streets_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.streets
    ADD CONSTRAINT streets_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.streets DROP CONSTRAINT streets_pkey;
       public            postgres    false    245            ?           2606    16732    suppliers suppliers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.suppliers DROP CONSTRAINT suppliers_pkey;
       public            postgres    false    247            ?           2606    16740    towns towns_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.towns
    ADD CONSTRAINT towns_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.towns DROP CONSTRAINT towns_pkey;
       public            postgres    false    249            ?           2606    16748    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    251            ?           2606    16749 &   addresses addresses_address_type_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_address_type_id_fk FOREIGN KEY (address_type_id) REFERENCES public.address_types(id);
 P   ALTER TABLE ONLY public.addresses DROP CONSTRAINT addresses_address_type_id_fk;
       public          postgres    false    3264    217    215            ?           2606    16754     addresses addresses_street_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_street_id_fk FOREIGN KEY (street_id) REFERENCES public.streets(id);
 J   ALTER TABLE ONLY public.addresses DROP CONSTRAINT addresses_street_id_fk;
       public          postgres    false    3294    217    245            ?           2606    16759    addresses addresses_user_id_fk    FK CONSTRAINT     }   ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id);
 H   ALTER TABLE ONLY public.addresses DROP CONSTRAINT addresses_user_id_fk;
       public          postgres    false    217    251    3300            ?           2606    16764    carts carts_users_id_fk    FK CONSTRAINT     v   ALTER TABLE ONLY public.carts
    ADD CONSTRAINT carts_users_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id);
 A   ALTER TABLE ONLY public.carts DROP CONSTRAINT carts_users_id_fk;
       public          postgres    false    3300    219    251            ?           2606    16769    cities cities_countries_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_countries_id_fk FOREIGN KEY (country_id) REFERENCES public.countries(id);
 G   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_countries_id_fk;
       public          postgres    false    223    3274    225            ?           2606    16774 $   customers customers_users_user_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_users_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id);
 N   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_users_user_id_fk;
       public          postgres    false    251    227    3300            ?           2606    16779    districts districts_towns_id_fk    FK CONSTRAINT     ~   ALTER TABLE ONLY public.districts
    ADD CONSTRAINT districts_towns_id_fk FOREIGN KEY (town_id) REFERENCES public.towns(id);
 I   ALTER TABLE ONLY public.districts DROP CONSTRAINT districts_towns_id_fk;
       public          postgres    false    229    249    3298            ?           2606    16784 3   order_details order_details_product_suppliers_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_details_product_suppliers_id_fk FOREIGN KEY (product_suppliers_id) REFERENCES public.product_suppliers(id);
 ]   ALTER TABLE ONLY public.order_details DROP CONSTRAINT order_details_product_suppliers_id_fk;
       public          postgres    false    231    3290    241            ?           2606    16789 !   orders orders_order_details_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_order_details_id_fk FOREIGN KEY (order_detail_id) REFERENCES public.order_details(id);
 K   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_order_details_id_fk;
       public          postgres    false    231    3280    233            ?           2606    16794    orders orders_payments_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_payments_id_fk FOREIGN KEY (payment_id) REFERENCES public.payments(id);
 F   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_payments_id_fk;
       public          postgres    false    237    3286    233            ?           2606    16799    orders orders_users_id_fk    FK CONSTRAINT     x   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_users_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id);
 C   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_users_id_fk;
       public          postgres    false    251    233    3300            ?           2606    16804 $   payments payments_payment_type_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_payment_type_id_fk FOREIGN KEY (payment_type_id) REFERENCES public.payment_types(id);
 N   ALTER TABLE ONLY public.payments DROP CONSTRAINT payments_payment_type_id_fk;
       public          postgres    false    237    235    3284            ?           2606    16809 4   product_categories product_categories_category_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.product_categories
    ADD CONSTRAINT product_categories_category_id_fk FOREIGN KEY (category_id) REFERENCES public.categories(id);
 ^   ALTER TABLE ONLY public.product_categories DROP CONSTRAINT product_categories_category_id_fk;
       public          postgres    false    221    239    3270            ?           2606    16814 3   product_categories product_categories_product_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.product_categories
    ADD CONSTRAINT product_categories_product_id_fk FOREIGN KEY (product_id) REFERENCES public.products(id);
 ]   ALTER TABLE ONLY public.product_categories DROP CONSTRAINT product_categories_product_id_fk;
       public          postgres    false    3292    243    239            ?           2606    16819 2   product_suppliers product_suppliers_products_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.product_suppliers
    ADD CONSTRAINT product_suppliers_products_id_fk FOREIGN KEY (product_id) REFERENCES public.products(id);
 \   ALTER TABLE ONLY public.product_suppliers DROP CONSTRAINT product_suppliers_products_id_fk;
       public          postgres    false    3292    241    243            ?           2606    16824 3   product_suppliers product_suppliers_suppliers_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.product_suppliers
    ADD CONSTRAINT product_suppliers_suppliers_id_fk FOREIGN KEY (supplier_id) REFERENCES public.suppliers(id);
 ]   ALTER TABLE ONLY public.product_suppliers DROP CONSTRAINT product_suppliers_suppliers_id_fk;
       public          postgres    false    241    247    3296            ?           2606    16829    streets streets_districts_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.streets
    ADD CONSTRAINT streets_districts_id_fk FOREIGN KEY (district_id) REFERENCES public.districts(id);
 I   ALTER TABLE ONLY public.streets DROP CONSTRAINT streets_districts_id_fk;
       public          postgres    false    3278    229    245            ?           2606    16834 &   suppliers suppliers_users_user_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_users_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 P   ALTER TABLE ONLY public.suppliers DROP CONSTRAINT suppliers_users_user_id_fkey;
       public          postgres    false    3300    251    247            ?           2606    16839    towns towns_cities_id_fk    FK CONSTRAINT     x   ALTER TABLE ONLY public.towns
    ADD CONSTRAINT towns_cities_id_fk FOREIGN KEY (city_id) REFERENCES public.cities(id);
 B   ALTER TABLE ONLY public.towns DROP CONSTRAINT towns_cities_id_fk;
       public          postgres    false    3272    249    223            ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?     