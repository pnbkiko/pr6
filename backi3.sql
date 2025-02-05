PGDMP      7                |         
   PRAKTIKA_6    17.0    17.0 C    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false                       1262    25103 
   PRAKTIKA_6    DATABASE     �   CREATE DATABASE "PRAKTIKA_6" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "PRAKTIKA_6";
                     postgres    false                        2615    25453    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                     postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                        postgres    false    5                       0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                        postgres    false    5            �            1259    25454    category    TABLE     k   CREATE TABLE public.category (
    categoryid integer NOT NULL,
    categoryname character varying(200)
);
    DROP TABLE public.category;
       public         heap r       postgres    false    5            �            1259    25457    category_categoryid_seq    SEQUENCE     �   CREATE SEQUENCE public.category_categoryid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 .   DROP SEQUENCE public.category_categoryid_seq;
       public               postgres    false    5            �            1259    25458    category_categoryid_seq1    SEQUENCE     �   CREATE SEQUENCE public.category_categoryid_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.category_categoryid_seq1;
       public               postgres    false    217    5                       0    0    category_categoryid_seq1    SEQUENCE OWNED BY     T   ALTER SEQUENCE public.category_categoryid_seq1 OWNED BY public.category.categoryid;
          public               postgres    false    219            �            1259    25459    customer    TABLE     �   CREATE TABLE public.customer (
    customerid integer NOT NULL,
    firstname character varying(150),
    lastname character varying(150),
    email character varying(200),
    phonenumber character varying(12),
    registrationdate date
);
    DROP TABLE public.customer;
       public         heap r       postgres    false    5            �            1259    25464    customer_customerid_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_customerid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 .   DROP SEQUENCE public.customer_customerid_seq;
       public               postgres    false    5            �            1259    25465    customer_customerid_seq1    SEQUENCE     �   CREATE SEQUENCE public.customer_customerid_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.customer_customerid_seq1;
       public               postgres    false    5    220                       0    0    customer_customerid_seq1    SEQUENCE OWNED BY     T   ALTER SEQUENCE public.customer_customerid_seq1 OWNED BY public.customer.customerid;
          public               postgres    false    222            �            1259    25466    employee    TABLE     �   CREATE TABLE public.employee (
    employeeid integer NOT NULL,
    firstname character varying(200),
    lastname character varying(200),
    hiredate date,
    role_ character varying(100)
);
    DROP TABLE public.employee;
       public         heap r       postgres    false    5            �            1259    25471    employee_employeeid_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_employeeid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 .   DROP SEQUENCE public.employee_employeeid_seq;
       public               postgres    false    5            �            1259    25472    employee_employeeid_seq1    SEQUENCE     �   CREATE SEQUENCE public.employee_employeeid_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.employee_employeeid_seq1;
       public               postgres    false    223    5                       0    0    employee_employeeid_seq1    SEQUENCE OWNED BY     T   ALTER SEQUENCE public.employee_employeeid_seq1 OWNED BY public.employee.employeeid;
          public               postgres    false    225            �            1259    25473    order_    TABLE     �   CREATE TABLE public.order_ (
    orderid integer NOT NULL,
    orderdate date,
    orderstatus character varying(100),
    paymentmethod character varying(100),
    customerid integer,
    employeeid integer
);
    DROP TABLE public.order_;
       public         heap r       postgres    false    5            �            1259    25476    order__orderid_seq    SEQUENCE     �   CREATE SEQUENCE public.order__orderid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 )   DROP SEQUENCE public.order__orderid_seq;
       public               postgres    false    5            �            1259    25477    order__orderid_seq1    SEQUENCE     �   CREATE SEQUENCE public.order__orderid_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.order__orderid_seq1;
       public               postgres    false    226    5                       0    0    order__orderid_seq1    SEQUENCE OWNED BY     J   ALTER SEQUENCE public.order__orderid_seq1 OWNED BY public.order_.orderid;
          public               postgres    false    228            �            1259    25478 	   orderitem    TABLE     �   CREATE TABLE public.orderitem (
    orderitemid integer NOT NULL,
    orderid integer,
    productid integer,
    subtotal smallint
);
    DROP TABLE public.orderitem;
       public         heap r       postgres    false    5            �            1259    25481    orderitem_orderitemid_seq    SEQUENCE     �   CREATE SEQUENCE public.orderitem_orderitemid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 0   DROP SEQUENCE public.orderitem_orderitemid_seq;
       public               postgres    false    5            �            1259    25482    orderitem_orderitemid_seq1    SEQUENCE     �   CREATE SEQUENCE public.orderitem_orderitemid_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.orderitem_orderitemid_seq1;
       public               postgres    false    229    5                       0    0    orderitem_orderitemid_seq1    SEQUENCE OWNED BY     X   ALTER SEQUENCE public.orderitem_orderitemid_seq1 OWNED BY public.orderitem.orderitemid;
          public               postgres    false    231            �            1259    25483    product    TABLE     �   CREATE TABLE public.product (
    productid integer NOT NULL,
    productname character varying(200),
    productdescription text,
    price money,
    categoryid integer
);
    DROP TABLE public.product;
       public         heap r       postgres    false    5            �            1259    25488    product_productid_seq    SEQUENCE     �   CREATE SEQUENCE public.product_productid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 ,   DROP SEQUENCE public.product_productid_seq;
       public               postgres    false    5            �            1259    25489    product_productid_seq1    SEQUENCE     �   CREATE SEQUENCE public.product_productid_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.product_productid_seq1;
       public               postgres    false    5    232            	           0    0    product_productid_seq1    SEQUENCE OWNED BY     P   ALTER SEQUENCE public.product_productid_seq1 OWNED BY public.product.productid;
          public               postgres    false    234            @           2604    25490    category categoryid    DEFAULT     {   ALTER TABLE ONLY public.category ALTER COLUMN categoryid SET DEFAULT nextval('public.category_categoryid_seq1'::regclass);
 B   ALTER TABLE public.category ALTER COLUMN categoryid DROP DEFAULT;
       public               postgres    false    219    217            A           2604    25491    customer customerid    DEFAULT     {   ALTER TABLE ONLY public.customer ALTER COLUMN customerid SET DEFAULT nextval('public.customer_customerid_seq1'::regclass);
 B   ALTER TABLE public.customer ALTER COLUMN customerid DROP DEFAULT;
       public               postgres    false    222    220            B           2604    25492    employee employeeid    DEFAULT     {   ALTER TABLE ONLY public.employee ALTER COLUMN employeeid SET DEFAULT nextval('public.employee_employeeid_seq1'::regclass);
 B   ALTER TABLE public.employee ALTER COLUMN employeeid DROP DEFAULT;
       public               postgres    false    225    223            C           2604    25493    order_ orderid    DEFAULT     q   ALTER TABLE ONLY public.order_ ALTER COLUMN orderid SET DEFAULT nextval('public.order__orderid_seq1'::regclass);
 =   ALTER TABLE public.order_ ALTER COLUMN orderid DROP DEFAULT;
       public               postgres    false    228    226            D           2604    25494    orderitem orderitemid    DEFAULT        ALTER TABLE ONLY public.orderitem ALTER COLUMN orderitemid SET DEFAULT nextval('public.orderitem_orderitemid_seq1'::regclass);
 D   ALTER TABLE public.orderitem ALTER COLUMN orderitemid DROP DEFAULT;
       public               postgres    false    231    229            E           2604    25495    product productid    DEFAULT     w   ALTER TABLE ONLY public.product ALTER COLUMN productid SET DEFAULT nextval('public.product_productid_seq1'::regclass);
 @   ALTER TABLE public.product ALTER COLUMN productid DROP DEFAULT;
       public               postgres    false    234    232            �          0    25454    category 
   TABLE DATA                 public               postgres    false    217   �J       �          0    25459    customer 
   TABLE DATA                 public               postgres    false    220   "K       �          0    25466    employee 
   TABLE DATA                 public               postgres    false    223   :L       �          0    25473    order_ 
   TABLE DATA                 public               postgres    false    226   1M       �          0    25478 	   orderitem 
   TABLE DATA                 public               postgres    false    229   �M       �          0    25483    product 
   TABLE DATA                 public               postgres    false    232   [N       
           0    0    category_categoryid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.category_categoryid_seq', 1, false);
          public               postgres    false    218                       0    0    category_categoryid_seq1    SEQUENCE SET     G   SELECT pg_catalog.setval('public.category_categoryid_seq1', 1, false);
          public               postgres    false    219                       0    0    customer_customerid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.customer_customerid_seq', 1, false);
          public               postgres    false    221                       0    0    customer_customerid_seq1    SEQUENCE SET     G   SELECT pg_catalog.setval('public.customer_customerid_seq1', 1, false);
          public               postgres    false    222                       0    0    employee_employeeid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.employee_employeeid_seq', 1, false);
          public               postgres    false    224                       0    0    employee_employeeid_seq1    SEQUENCE SET     G   SELECT pg_catalog.setval('public.employee_employeeid_seq1', 1, false);
          public               postgres    false    225                       0    0    order__orderid_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.order__orderid_seq', 1, false);
          public               postgres    false    227                       0    0    order__orderid_seq1    SEQUENCE SET     B   SELECT pg_catalog.setval('public.order__orderid_seq1', 1, false);
          public               postgres    false    228                       0    0    orderitem_orderitemid_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.orderitem_orderitemid_seq', 1, false);
          public               postgres    false    230                       0    0    orderitem_orderitemid_seq1    SEQUENCE SET     H   SELECT pg_catalog.setval('public.orderitem_orderitemid_seq1', 5, true);
          public               postgres    false    231                       0    0    product_productid_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.product_productid_seq', 1, false);
          public               postgres    false    233                       0    0    product_productid_seq1    SEQUENCE SET     D   SELECT pg_catalog.setval('public.product_productid_seq1', 5, true);
          public               postgres    false    234            G           2606    25497    category category_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (categoryid);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public                 postgres    false    217            I           2606    25499    customer customer_email_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_email_key UNIQUE (email);
 E   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_email_key;
       public                 postgres    false    220            K           2606    25501    customer customer_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customerid);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public                 postgres    false    220            M           2606    25503    employee employee_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (employeeid);
 @   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_pkey;
       public                 postgres    false    223            O           2606    25505    order_ order__pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.order_
    ADD CONSTRAINT order__pkey PRIMARY KEY (orderid);
 <   ALTER TABLE ONLY public.order_ DROP CONSTRAINT order__pkey;
       public                 postgres    false    226            Q           2606    25507    orderitem orderitem_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.orderitem
    ADD CONSTRAINT orderitem_pkey PRIMARY KEY (orderitemid);
 B   ALTER TABLE ONLY public.orderitem DROP CONSTRAINT orderitem_pkey;
       public                 postgres    false    229            S           2606    25509    product product_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (productid);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public                 postgres    false    232            T           2606    25510    order_ order__customerid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_
    ADD CONSTRAINT order__customerid_fkey FOREIGN KEY (customerid) REFERENCES public.customer(customerid);
 G   ALTER TABLE ONLY public.order_ DROP CONSTRAINT order__customerid_fkey;
       public               postgres    false    226    220    4683            U           2606    25515    order_ order__employeeid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_
    ADD CONSTRAINT order__employeeid_fkey FOREIGN KEY (employeeid) REFERENCES public.employee(employeeid);
 G   ALTER TABLE ONLY public.order_ DROP CONSTRAINT order__employeeid_fkey;
       public               postgres    false    223    4685    226            V           2606    25520     orderitem orderitem_orderid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orderitem
    ADD CONSTRAINT orderitem_orderid_fkey FOREIGN KEY (orderid) REFERENCES public.order_(orderid);
 J   ALTER TABLE ONLY public.orderitem DROP CONSTRAINT orderitem_orderid_fkey;
       public               postgres    false    4687    226    229            W           2606    25525 "   orderitem orderitem_productid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orderitem
    ADD CONSTRAINT orderitem_productid_fkey FOREIGN KEY (productid) REFERENCES public.product(productid);
 L   ALTER TABLE ONLY public.orderitem DROP CONSTRAINT orderitem_productid_fkey;
       public               postgres    false    232    229    4691            X           2606    25530    product product_categoryid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_categoryid_fkey FOREIGN KEY (categoryid) REFERENCES public.category(categoryid);
 I   ALTER TABLE ONLY public.product DROP CONSTRAINT product_categoryid_fkey;
       public               postgres    false    232    4679    217            �   �   x���v
Q���W((M��L�KN,IM�/�Ts�	uV�0�QP�0��/��taׅ��\�D�4�ra��F n��D�>c��Y�]�sa�}��2�x��bÅ�`����i
ҹ���[a��� 3Hk�      �     x���v
Q���W((M��L�K.-.��M-Rs�	uV�0�QP�0��.6^�qa�:�?��֋M.컰	�ϭHMt�M���+*�-,��ML��-,A\##c]CC]uMk.O",5Y2hݮ;.6]� �t2��;��{!�������K�!>Y�p.���/l@�g��Ɔ�V��`�	Ț��/�Z��t!�ҍ@G �!������khF�������P�N: ��/�\�zaD4�wM�M6� ��� �'�A      �   �   x���v
Q���W((M��L�K�-�ɯLMUs�	uV�0�QP�0�¦.�UGb_�wa�od`d�k`�kh
��ua��Ƌ�v\lP״��$�#��	v_�zaP��;�&-���b�=��`�� q�]D�b�5���˚����2�b�-@�V��^�=&�F����⟽��n�����]C#�������@�&�&SԐ���n�����q�9ΰ�% '�      �   �   x���v
Q���W((M��L��/JI-�Ws�	uV�0�QP7202�54�54T�.l���bӅ}6�y{/l�����v]� j0ִ��$h����XL�w���
TlD�����5&½@�D�l�l����(�e�)��樦]�t��b��~�.:�h �y�D      �   `   x���v
Q���W((M��L��/JI-�,I�Us�	uV�0�Q�"#Mk.Ob��( �1�44&V�1X�	�����5���F�S�#��.. 0hHb      �   1  x���=K�P�����E�"I��8�C��T��`]�"v�U�� 8���z[��H��{��ｱ���:'��9o���æ$�恴;'�g�����i�u%�{�G��l�J|<��Zx*0��m�	#sc�1�6�J�G�������|-���ps�K�'V���P��C��f9(��	4=r�v�x����ךл�(��3�����I�ݙ˘.��]��\Y�eGg�ʈV����_u=��O�ۚ6c>w��m�D�f��X�)~	����5s|X_׏N��N\��W����L�l���^pcr=��j/�     