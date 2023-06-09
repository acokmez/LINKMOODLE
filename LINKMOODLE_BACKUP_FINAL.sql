PGDMP     2                    z         
   LINKMOODLE    14.1    14.1 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16399 
   LINKMOODLE    DATABASE     i   CREATE DATABASE "LINKMOODLE" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE "LINKMOODLE";
                postgres    false            �            1259    16506    ADD_CERT    TABLE     p   CREATE TABLE public."ADD_CERT" (
    "CvId" integer NOT NULL,
    "CertName" character varying(100) NOT NULL
);
    DROP TABLE public."ADD_CERT";
       public         heap    postgres    false            �            1259    16491 	   ADD_SKILL    TABLE     q   CREATE TABLE public."ADD_SKILL" (
    "CvId" integer NOT NULL,
    "SkillName" character varying(45) NOT NULL
);
    DROP TABLE public."ADD_SKILL";
       public         heap    postgres    false            �            1259    16722    APPLY    TABLE     �   CREATE TABLE public."APPLY" (
    "UserId" integer NOT NULL,
    "DomainName" character varying(100) NOT NULL,
    "AdvertName" character varying(100) NOT NULL
);
    DROP TABLE public."APPLY";
       public         heap    postgres    false            �            1259    16559 
   ASSIGNMENT    TABLE     4  CREATE TABLE public."ASSIGNMENT" (
    "CourseId" integer NOT NULL,
    "SectionName" character varying(45) NOT NULL,
    "AssıgnmentName" character varying(45) NOT NULL,
    "StartTime" timestamp without time zone NOT NULL,
    "EndTime" timestamp without time zone NOT NULL,
    "Content" xml NOT NULL
);
     DROP TABLE public."ASSIGNMENT";
       public         heap    postgres    false            �            1259    16742    ASSIST    TABLE     a   CREATE TABLE public."ASSIST" (
    "UserId" integer NOT NULL,
    "CourseId" integer NOT NULL
);
    DROP TABLE public."ASSIST";
       public         heap    postgres    false            �            1259    16823    BELONG    TABLE     �   CREATE TABLE public."BELONG" (
    "UserId" integer NOT NULL,
    "OrgId" integer NOT NULL,
    "CourseOpenRight" boolean NOT NULL,
    "AdministerRight" boolean NOT NULL
);
    DROP TABLE public."BELONG";
       public         heap    postgres    false            �            1259    16412    CERTIFICATE    TABLE     V   CREATE TABLE public."CERTIFICATE" (
    "CertName" character varying(100) NOT NULL
);
 !   DROP TABLE public."CERTIFICATE";
       public         heap    postgres    false            �            1259    24988    COMMENT    TABLE     �   CREATE TABLE public."COMMENT" (
    "DomainName" character varying NOT NULL,
    "CommentId" integer NOT NULL,
    "PostId" integer NOT NULL,
    "Content" character varying NOT NULL,
    "Time" timestamp without time zone NOT NULL
);
    DROP TABLE public."COMMENT";
       public         heap    postgres    false            �            1259    24586    COMPANY    TABLE     o   CREATE TABLE public."COMPANY" (
    "OrgId" integer NOT NULL,
    "Industry" character varying(45) NOT NULL
);
    DROP TABLE public."COMPANY";
       public         heap    postgres    false            �            1259    16422    COURSE    TABLE     d  CREATE TABLE public."COURSE" (
    "CourseId" integer NOT NULL,
    "CourseName" character varying(45) NOT NULL,
    "JoinPassword" integer NOT NULL,
    "StartTime" timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "EndTime" timestamp without time zone,
    "UserId" integer NOT NULL,
    "DomainName" character varying(100) NOT NULL
);
    DROP TABLE public."COURSE";
       public         heap    postgres    false            �            1259    16461    CV    TABLE     �   CREATE TABLE public."CV" (
    "CvId" integer NOT NULL,
    "CvBio" character varying(100),
    "UserId" integer NOT NULL,
    "LastUpdate" character varying
);
    DROP TABLE public."CV";
       public         heap    postgres    false            �            1259    16417    DOMAIN    TABLE     S   CREATE TABLE public."DOMAIN" (
    "DomainName" character varying(100) NOT NULL
);
    DROP TABLE public."DOMAIN";
       public         heap    postgres    false            �            1259    16471 	   EDUCATION    TABLE     �   CREATE TABLE public."EDUCATION" (
    "CvId" integer NOT NULL,
    "EduName" character varying(100) NOT NULL,
    "StartTime" character varying(20) NOT NULL,
    "EndTime" character varying(20) NOT NULL
);
    DROP TABLE public."EDUCATION";
       public         heap    postgres    false            �            1259    25799    FOLLOW    TABLE     x   CREATE TABLE public."FOLLOW" (
    "Follower" character varying NOT NULL,
    "Following" character varying NOT NULL
);
    DROP TABLE public."FOLLOW";
       public         heap    postgres    false            �            1259    16708 
   JOB_ADVERT    TABLE     �   CREATE TABLE public."JOB_ADVERT" (
    "DomainName" character varying(100) NOT NULL,
    "AdvertName" character varying(100) NOT NULL,
    "PostedTime" timestamp without time zone NOT NULL,
    "Content" xml NOT NULL
);
     DROP TABLE public."JOB_ADVERT";
       public         heap    postgres    false            �            1259    25011    JOB_HISTORY    TABLE     �   CREATE TABLE public."JOB_HISTORY" (
    "CvId" integer NOT NULL,
    "JobName" character varying(100) NOT NULL,
    "StartTime" date NOT NULL,
    "EndTime" date
);
 !   DROP TABLE public."JOB_HISTORY";
       public         heap    postgres    false            �            1259    16613    LIKE    TABLE     p   CREATE TABLE public."LIKE" (
    "DomainName" character varying(100) NOT NULL,
    "PostId" integer NOT NULL
);
    DROP TABLE public."LIKE";
       public         heap    postgres    false            �            1259    16576    LIVE_SESSION    TABLE       CREATE TABLE public."LIVE_SESSION" (
    "CourseId" integer NOT NULL,
    "SectionName" character varying(45) NOT NULL,
    "SessionName" character varying(45) NOT NULL,
    "StartTime" timestamp without time zone NOT NULL,
    "EndTime" timestamp without time zone NOT NULL
);
 "   DROP TABLE public."LIVE_SESSION";
       public         heap    postgres    false            �            1259    25781    MESSAGE    TABLE     �   CREATE TABLE public."MESSAGE" (
    "Sender" character varying NOT NULL,
    "Receiver" character varying NOT NULL,
    "SendTime" timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "Content" xml NOT NULL
);
    DROP TABLE public."MESSAGE";
       public         heap    postgres    false            �            1259    16591    ORGANIZATION    TABLE     q  CREATE TABLE public."ORGANIZATION" (
    "OrgId" integer NOT NULL,
    "OrgName" character varying(100) NOT NULL,
    "Email" character varying(45),
    "Telephone" character varying(20),
    "Country" character varying(45),
    "City" character varying(45),
    "Street" character varying(45),
    "DomainName" character varying(100),
    "UserId" integer NOT NULL
);
 "   DROP TABLE public."ORGANIZATION";
       public         heap    postgres    false            �            1259    16601    POST    TABLE     �   CREATE TABLE public."POST" (
    "PostId" integer NOT NULL,
    "Content" xml NOT NULL,
    "Time" timestamp without time zone NOT NULL,
    "DomainName" character varying(100) NOT NULL
);
    DROP TABLE public."POST";
       public         heap    postgres    false            �            1259    16443    SECTION    TABLE     �   CREATE TABLE public."SECTION" (
    "CourseId" integer NOT NULL,
    "SectionName" character varying(45) NOT NULL,
    "Content" xml
);
    DROP TABLE public."SECTION";
       public         heap    postgres    false            �            1259    16407    SKILL    TABLE     �   CREATE TABLE public."SKILL" (
    "SkillName" character varying(45) NOT NULL,
    "SkillType" character varying(45) NOT NULL
);
    DROP TABLE public."SKILL";
       public         heap    postgres    false            �            1259    24606    SOCIETY    TABLE     @   CREATE TABLE public."SOCIETY" (
    "OrgId" integer NOT NULL
);
    DROP TABLE public."SOCIETY";
       public         heap    postgres    false            �            1259    16757 
   STUDENT_OF    TABLE     �   CREATE TABLE public."STUDENT_OF" (
    "UserId" integer NOT NULL,
    "CourseId" integer NOT NULL,
    "Grade" integer NOT NULL
);
     DROP TABLE public."STUDENT_OF";
       public         heap    postgres    false            �            1259    24596 
   UNIVERSITY    TABLE     C   CREATE TABLE public."UNIVERSITY" (
    "OrgId" integer NOT NULL
);
     DROP TABLE public."UNIVERSITY";
       public         heap    postgres    false            �            1259    16796    UPLOAD_HOMEWORK    TABLE     �   CREATE TABLE public."UPLOAD_HOMEWORK" (
    "UserId" integer NOT NULL,
    "CourseId" integer NOT NULL,
    "SectionName" character varying(45) NOT NULL,
    "AssignmentName" character varying(45) NOT NULL,
    "Content" xml NOT NULL
);
 %   DROP TABLE public."UPLOAD_HOMEWORK";
       public         heap    postgres    false            �            1259    16433    USER    TABLE     �  CREATE TABLE public."USER" (
    "UserId" integer NOT NULL,
    "Email" character varying(100) NOT NULL,
    "Username" character varying(45) NOT NULL,
    "Password" character varying(20) NOT NULL,
    "Sex" character varying(25),
    "Fname" character varying(45) NOT NULL,
    "Lname" character varying(45) NOT NULL,
    "Country" character varying(45),
    "DomainName" character varying(100) NOT NULL,
    "CreationDate" character varying,
    "Bdate" character varying
);
    DROP TABLE public."USER";
       public         heap    postgres    false            �          0    16506    ADD_CERT 
   TABLE DATA           8   COPY public."ADD_CERT" ("CvId", "CertName") FROM stdin;
    public          postgres    false    218   5�       �          0    16491 	   ADD_SKILL 
   TABLE DATA           :   COPY public."ADD_SKILL" ("CvId", "SkillName") FROM stdin;
    public          postgres    false    217   ��       �          0    16722    APPLY 
   TABLE DATA           G   COPY public."APPLY" ("UserId", "DomainName", "AdvertName") FROM stdin;
    public          postgres    false    225   ^�       �          0    16559 
   ASSIGNMENT 
   TABLE DATA           w   COPY public."ASSIGNMENT" ("CourseId", "SectionName", "AssıgnmentName", "StartTime", "EndTime", "Content") FROM stdin;
    public          postgres    false    219   ²       �          0    16742    ASSIST 
   TABLE DATA           8   COPY public."ASSIST" ("UserId", "CourseId") FROM stdin;
    public          postgres    false    226   Ƴ       �          0    16823    BELONG 
   TABLE DATA           [   COPY public."BELONG" ("UserId", "OrgId", "CourseOpenRight", "AdministerRight") FROM stdin;
    public          postgres    false    229   �       �          0    16412    CERTIFICATE 
   TABLE DATA           3   COPY public."CERTIFICATE" ("CertName") FROM stdin;
    public          postgres    false    210   X�       �          0    24988    COMMENT 
   TABLE DATA           [   COPY public."COMMENT" ("DomainName", "CommentId", "PostId", "Content", "Time") FROM stdin;
    public          postgres    false    233   �       �          0    24586    COMPANY 
   TABLE DATA           8   COPY public."COMPANY" ("OrgId", "Industry") FROM stdin;
    public          postgres    false    230   ��       �          0    16422    COURSE 
   TABLE DATA           |   COPY public."COURSE" ("CourseId", "CourseName", "JoinPassword", "StartTime", "EndTime", "UserId", "DomainName") FROM stdin;
    public          postgres    false    212   ��       �          0    16461    CV 
   TABLE DATA           G   COPY public."CV" ("CvId", "CvBio", "UserId", "LastUpdate") FROM stdin;
    public          postgres    false    215   ��       �          0    16417    DOMAIN 
   TABLE DATA           0   COPY public."DOMAIN" ("DomainName") FROM stdin;
    public          postgres    false    211   ü       �          0    16471 	   EDUCATION 
   TABLE DATA           P   COPY public."EDUCATION" ("CvId", "EduName", "StartTime", "EndTime") FROM stdin;
    public          postgres    false    216   ��       �          0    25799    FOLLOW 
   TABLE DATA           ;   COPY public."FOLLOW" ("Follower", "Following") FROM stdin;
    public          postgres    false    236   �       �          0    16708 
   JOB_ADVERT 
   TABLE DATA           [   COPY public."JOB_ADVERT" ("DomainName", "AdvertName", "PostedTime", "Content") FROM stdin;
    public          postgres    false    224   ��       �          0    25011    JOB_HISTORY 
   TABLE DATA           R   COPY public."JOB_HISTORY" ("CvId", "JobName", "StartTime", "EndTime") FROM stdin;
    public          postgres    false    234   ��       �          0    16613    LIKE 
   TABLE DATA           8   COPY public."LIKE" ("DomainName", "PostId") FROM stdin;
    public          postgres    false    223   ��       �          0    16576    LIVE_SESSION 
   TABLE DATA           j   COPY public."LIVE_SESSION" ("CourseId", "SectionName", "SessionName", "StartTime", "EndTime") FROM stdin;
    public          postgres    false    220   �       �          0    25781    MESSAGE 
   TABLE DATA           P   COPY public."MESSAGE" ("Sender", "Receiver", "SendTime", "Content") FROM stdin;
    public          postgres    false    235   ��       �          0    16591    ORGANIZATION 
   TABLE DATA           �   COPY public."ORGANIZATION" ("OrgId", "OrgName", "Email", "Telephone", "Country", "City", "Street", "DomainName", "UserId") FROM stdin;
    public          postgres    false    221   T�       �          0    16601    POST 
   TABLE DATA           K   COPY public."POST" ("PostId", "Content", "Time", "DomainName") FROM stdin;
    public          postgres    false    222   0�       �          0    16443    SECTION 
   TABLE DATA           I   COPY public."SECTION" ("CourseId", "SectionName", "Content") FROM stdin;
    public          postgres    false    214   ��       �          0    16407    SKILL 
   TABLE DATA           ;   COPY public."SKILL" ("SkillName", "SkillType") FROM stdin;
    public          postgres    false    209   ��       �          0    24606    SOCIETY 
   TABLE DATA           ,   COPY public."SOCIETY" ("OrgId") FROM stdin;
    public          postgres    false    232   ��       �          0    16757 
   STUDENT_OF 
   TABLE DATA           E   COPY public."STUDENT_OF" ("UserId", "CourseId", "Grade") FROM stdin;
    public          postgres    false    227   �       �          0    24596 
   UNIVERSITY 
   TABLE DATA           /   COPY public."UNIVERSITY" ("OrgId") FROM stdin;
    public          postgres    false    231   ��       �          0    16796    UPLOAD_HOMEWORK 
   TABLE DATA           m   COPY public."UPLOAD_HOMEWORK" ("UserId", "CourseId", "SectionName", "AssignmentName", "Content") FROM stdin;
    public          postgres    false    228   ��       �          0    16433    USER 
   TABLE DATA           �   COPY public."USER" ("UserId", "Email", "Username", "Password", "Sex", "Fname", "Lname", "Country", "DomainName", "CreationDate", "Bdate") FROM stdin;
    public          postgres    false    213   c�       �           2606    16510    ADD_CERT ADD_CERT_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."ADD_CERT"
    ADD CONSTRAINT "ADD_CERT_pkey" PRIMARY KEY ("CvId", "CertName");
 D   ALTER TABLE ONLY public."ADD_CERT" DROP CONSTRAINT "ADD_CERT_pkey";
       public            postgres    false    218    218            �           2606    16495    ADD_SKILL ADD_SKILL_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."ADD_SKILL"
    ADD CONSTRAINT "ADD_SKILL_pkey" PRIMARY KEY ("CvId", "SkillName");
 F   ALTER TABLE ONLY public."ADD_SKILL" DROP CONSTRAINT "ADD_SKILL_pkey";
       public            postgres    false    217    217            �           2606    16726    APPLY APPLY_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."APPLY"
    ADD CONSTRAINT "APPLY_pkey" PRIMARY KEY ("AdvertName", "DomainName", "UserId");
 >   ALTER TABLE ONLY public."APPLY" DROP CONSTRAINT "APPLY_pkey";
       public            postgres    false    225    225    225            �           2606    16565    ASSIGNMENT ASSIGNMENT_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."ASSIGNMENT"
    ADD CONSTRAINT "ASSIGNMENT_pkey" PRIMARY KEY ("CourseId", "SectionName", "AssıgnmentName");
 H   ALTER TABLE ONLY public."ASSIGNMENT" DROP CONSTRAINT "ASSIGNMENT_pkey";
       public            postgres    false    219    219    219            �           2606    16746    ASSIST ASSIST_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."ASSIST"
    ADD CONSTRAINT "ASSIST_pkey" PRIMARY KEY ("UserId", "CourseId");
 @   ALTER TABLE ONLY public."ASSIST" DROP CONSTRAINT "ASSIST_pkey";
       public            postgres    false    226    226            �           2606    16721    JOB_ADVERT AdvertName_Unique 
   CONSTRAINT     c   ALTER TABLE ONLY public."JOB_ADVERT"
    ADD CONSTRAINT "AdvertName_Unique" UNIQUE ("AdvertName");
 J   ALTER TABLE ONLY public."JOB_ADVERT" DROP CONSTRAINT "AdvertName_Unique";
       public            postgres    false    224            �           2606    16795 !   ASSIGNMENT AssıgnmentName_Unique 
   CONSTRAINT     m   ALTER TABLE ONLY public."ASSIGNMENT"
    ADD CONSTRAINT "AssıgnmentName_Unique" UNIQUE ("AssıgnmentName");
 O   ALTER TABLE ONLY public."ASSIGNMENT" DROP CONSTRAINT "AssıgnmentName_Unique";
       public            postgres    false    219            �           2606    16827    BELONG BELONG_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."BELONG"
    ADD CONSTRAINT "BELONG_pkey" PRIMARY KEY ("OrgId", "UserId");
 @   ALTER TABLE ONLY public."BELONG" DROP CONSTRAINT "BELONG_pkey";
       public            postgres    false    229    229            �           2606    16416    CERTIFICATE CERTIFICATE_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."CERTIFICATE"
    ADD CONSTRAINT "CERTIFICATE_pkey" PRIMARY KEY ("CertName");
 J   ALTER TABLE ONLY public."CERTIFICATE" DROP CONSTRAINT "CERTIFICATE_pkey";
       public            postgres    false    210                       2606    24994    COMMENT COMMENT_PK 
   CONSTRAINT     ]   ALTER TABLE ONLY public."COMMENT"
    ADD CONSTRAINT "COMMENT_PK" PRIMARY KEY ("CommentId");
 @   ALTER TABLE ONLY public."COMMENT" DROP CONSTRAINT "COMMENT_PK";
       public            postgres    false    233            �           2606    24590    COMPANY COMPANY_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public."COMPANY"
    ADD CONSTRAINT "COMPANY_pkey" PRIMARY KEY ("OrgId");
 B   ALTER TABLE ONLY public."COMPANY" DROP CONSTRAINT "COMPANY_pkey";
       public            postgres    false    230            �           2606    16427    COURSE COURSE_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."COURSE"
    ADD CONSTRAINT "COURSE_pkey" PRIMARY KEY ("CourseId");
 @   ALTER TABLE ONLY public."COURSE" DROP CONSTRAINT "COURSE_pkey";
       public            postgres    false    212            �           2606    16465    CV CvId_Unique 
   CONSTRAINT     T   ALTER TABLE ONLY public."CV"
    ADD CONSTRAINT "CvId_Unique" PRIMARY KEY ("CvId");
 <   ALTER TABLE ONLY public."CV" DROP CONSTRAINT "CvId_Unique";
       public            postgres    false    215            �           2606    16421    DOMAIN DOMAIN_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."DOMAIN"
    ADD CONSTRAINT "DOMAIN_pkey" PRIMARY KEY ("DomainName");
 @   ALTER TABLE ONLY public."DOMAIN" DROP CONSTRAINT "DOMAIN_pkey";
       public            postgres    false    211            �           2606    16475    EDUCATION EDUCATION_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public."EDUCATION"
    ADD CONSTRAINT "EDUCATION_pkey" PRIMARY KEY ("CvId", "EduName");
 F   ALTER TABLE ONLY public."EDUCATION" DROP CONSTRAINT "EDUCATION_pkey";
       public            postgres    false    216    216                       2606    25805    FOLLOW FOLLOW_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public."FOLLOW"
    ADD CONSTRAINT "FOLLOW_pkey" PRIMARY KEY ("Following", "Follower");
 @   ALTER TABLE ONLY public."FOLLOW" DROP CONSTRAINT "FOLLOW_pkey";
       public            postgres    false    236    236            �           2606    16714    JOB_ADVERT JOB_ADVERT_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."JOB_ADVERT"
    ADD CONSTRAINT "JOB_ADVERT_pkey" PRIMARY KEY ("DomainName", "AdvertName");
 H   ALTER TABLE ONLY public."JOB_ADVERT" DROP CONSTRAINT "JOB_ADVERT_pkey";
       public            postgres    false    224    224                       2606    25015    JOB_HISTORY JOB_HISTORY_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public."JOB_HISTORY"
    ADD CONSTRAINT "JOB_HISTORY_pkey" PRIMARY KEY ("CvId", "JobName");
 J   ALTER TABLE ONLY public."JOB_HISTORY" DROP CONSTRAINT "JOB_HISTORY_pkey";
       public            postgres    false    234    234            �           2606    16617    LIKE LIKE_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."LIKE"
    ADD CONSTRAINT "LIKE_pkey" PRIMARY KEY ("DomainName", "PostId");
 <   ALTER TABLE ONLY public."LIKE" DROP CONSTRAINT "LIKE_pkey";
       public            postgres    false    223    223            �           2606    16580    LIVE_SESSION LIVE_SESSION_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."LIVE_SESSION"
    ADD CONSTRAINT "LIVE_SESSION_pkey" PRIMARY KEY ("CourseId", "SectionName", "SessionName");
 L   ALTER TABLE ONLY public."LIVE_SESSION" DROP CONSTRAINT "LIVE_SESSION_pkey";
       public            postgres    false    220    220    220                       2606    25788    MESSAGE MESSAGE_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."MESSAGE"
    ADD CONSTRAINT "MESSAGE_pkey" PRIMARY KEY ("Sender", "Receiver");
 B   ALTER TABLE ONLY public."MESSAGE" DROP CONSTRAINT "MESSAGE_pkey";
       public            postgres    false    235    235            �           2606    16595    ORGANIZATION OrgId_Unique 
   CONSTRAINT     `   ALTER TABLE ONLY public."ORGANIZATION"
    ADD CONSTRAINT "OrgId_Unique" PRIMARY KEY ("OrgId");
 G   ALTER TABLE ONLY public."ORGANIZATION" DROP CONSTRAINT "OrgId_Unique";
       public            postgres    false    221            �           2606    16607    POST PostId_Unique 
   CONSTRAINT     Z   ALTER TABLE ONLY public."POST"
    ADD CONSTRAINT "PostId_Unique" PRIMARY KEY ("PostId");
 @   ALTER TABLE ONLY public."POST" DROP CONSTRAINT "PostId_Unique";
       public            postgres    false    222            �           2606    16449    SECTION SECTION_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public."SECTION"
    ADD CONSTRAINT "SECTION_pkey" PRIMARY KEY ("SectionName", "CourseId");
 B   ALTER TABLE ONLY public."SECTION" DROP CONSTRAINT "SECTION_pkey";
       public            postgres    false    214    214            �           2606    16411    SKILL SKILL_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public."SKILL"
    ADD CONSTRAINT "SKILL_pkey" PRIMARY KEY ("SkillName");
 >   ALTER TABLE ONLY public."SKILL" DROP CONSTRAINT "SKILL_pkey";
       public            postgres    false    209                        2606    24610    SOCIETY SOCIETY_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public."SOCIETY"
    ADD CONSTRAINT "SOCIETY_pkey" PRIMARY KEY ("OrgId");
 B   ALTER TABLE ONLY public."SOCIETY" DROP CONSTRAINT "SOCIETY_pkey";
       public            postgres    false    232            �           2606    16761    STUDENT_OF STUDENT_OF_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."STUDENT_OF"
    ADD CONSTRAINT "STUDENT_OF_pkey" PRIMARY KEY ("UserId", "CourseId");
 H   ALTER TABLE ONLY public."STUDENT_OF" DROP CONSTRAINT "STUDENT_OF_pkey";
       public            postgres    false    227    227            �           2606    16558    SECTION SectionName_Unique 
   CONSTRAINT     b   ALTER TABLE ONLY public."SECTION"
    ADD CONSTRAINT "SectionName_Unique" UNIQUE ("SectionName");
 H   ALTER TABLE ONLY public."SECTION" DROP CONSTRAINT "SectionName_Unique";
       public            postgres    false    214            �           2606    24600    UNIVERSITY UNIVERSITY_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public."UNIVERSITY"
    ADD CONSTRAINT "UNIVERSITY_pkey" PRIMARY KEY ("OrgId");
 H   ALTER TABLE ONLY public."UNIVERSITY" DROP CONSTRAINT "UNIVERSITY_pkey";
       public            postgres    false    231            �           2606    16802 $   UPLOAD_HOMEWORK UPLOAD_HOMEWORK_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."UPLOAD_HOMEWORK"
    ADD CONSTRAINT "UPLOAD_HOMEWORK_pkey" PRIMARY KEY ("AssignmentName", "SectionName", "CourseId", "UserId");
 R   ALTER TABLE ONLY public."UPLOAD_HOMEWORK" DROP CONSTRAINT "UPLOAD_HOMEWORK_pkey";
       public            postgres    false    228    228    228    228            �           2606    24885    USER USER_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."USER"
    ADD CONSTRAINT "USER_pkey" PRIMARY KEY ("UserId");
 <   ALTER TABLE ONLY public."USER" DROP CONSTRAINT "USER_pkey";
       public            postgres    false    213            �           2606    25765    USER Username_Unique 
   CONSTRAINT     Y   ALTER TABLE ONLY public."USER"
    ADD CONSTRAINT "Username_Unique" UNIQUE ("Username");
 B   ALTER TABLE ONLY public."USER" DROP CONSTRAINT "Username_Unique";
       public            postgres    false    213                       2606    24616    ADD_CERT ADD_CERT_FK1    FK CONSTRAINT     �   ALTER TABLE ONLY public."ADD_CERT"
    ADD CONSTRAINT "ADD_CERT_FK1" FOREIGN KEY ("CvId") REFERENCES public."CV"("CvId") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 C   ALTER TABLE ONLY public."ADD_CERT" DROP CONSTRAINT "ADD_CERT_FK1";
       public          postgres    false    3290    218    215                       2606    24621    ADD_CERT ADD_CERT_FK2    FK CONSTRAINT     �   ALTER TABLE ONLY public."ADD_CERT"
    ADD CONSTRAINT "ADD_CERT_FK2" FOREIGN KEY ("CertName") REFERENCES public."CERTIFICATE"("CertName") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 C   ALTER TABLE ONLY public."ADD_CERT" DROP CONSTRAINT "ADD_CERT_FK2";
       public          postgres    false    3276    218    210                       2606    24626    ADD_SKILL ADD_SKILL_FK1    FK CONSTRAINT     �   ALTER TABLE ONLY public."ADD_SKILL"
    ADD CONSTRAINT "ADD_SKILL_FK1" FOREIGN KEY ("CvId") REFERENCES public."CV"("CvId") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 E   ALTER TABLE ONLY public."ADD_SKILL" DROP CONSTRAINT "ADD_SKILL_FK1";
       public          postgres    false    217    3290    215                       2606    24631    ADD_SKILL ADD_SKILL_FK2    FK CONSTRAINT     �   ALTER TABLE ONLY public."ADD_SKILL"
    ADD CONSTRAINT "ADD_SKILL_FK2" FOREIGN KEY ("SkillName") REFERENCES public."SKILL"("SkillName") NOT VALID;
 E   ALTER TABLE ONLY public."ADD_SKILL" DROP CONSTRAINT "ADD_SKILL_FK2";
       public          postgres    false    3274    209    217                       2606    24898    APPLY APPLY_FK1    FK CONSTRAINT     �   ALTER TABLE ONLY public."APPLY"
    ADD CONSTRAINT "APPLY_FK1" FOREIGN KEY ("UserId") REFERENCES public."USER"("UserId") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 =   ALTER TABLE ONLY public."APPLY" DROP CONSTRAINT "APPLY_FK1";
       public          postgres    false    3282    213    225                       2606    24641    APPLY APPLY_FK2    FK CONSTRAINT     �   ALTER TABLE ONLY public."APPLY"
    ADD CONSTRAINT "APPLY_FK2" FOREIGN KEY ("DomainName") REFERENCES public."DOMAIN"("DomainName") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 =   ALTER TABLE ONLY public."APPLY" DROP CONSTRAINT "APPLY_FK2";
       public          postgres    false    211    225    3278                       2606    24646    APPLY APPLY_FK3    FK CONSTRAINT     �   ALTER TABLE ONLY public."APPLY"
    ADD CONSTRAINT "APPLY_FK3" FOREIGN KEY ("AdvertName") REFERENCES public."JOB_ADVERT"("AdvertName") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 =   ALTER TABLE ONLY public."APPLY" DROP CONSTRAINT "APPLY_FK3";
       public          postgres    false    3310    225    224                       2606    24651    ASSIGNMENT ASSIGNMENT_FK1    FK CONSTRAINT     �   ALTER TABLE ONLY public."ASSIGNMENT"
    ADD CONSTRAINT "ASSIGNMENT_FK1" FOREIGN KEY ("CourseId") REFERENCES public."COURSE"("CourseId") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 G   ALTER TABLE ONLY public."ASSIGNMENT" DROP CONSTRAINT "ASSIGNMENT_FK1";
       public          postgres    false    212    3280    219                       2606    24656    ASSIGNMENT ASSIGNMENT_FK2    FK CONSTRAINT     �   ALTER TABLE ONLY public."ASSIGNMENT"
    ADD CONSTRAINT "ASSIGNMENT_FK2" FOREIGN KEY ("SectionName") REFERENCES public."SECTION"("SectionName") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 G   ALTER TABLE ONLY public."ASSIGNMENT" DROP CONSTRAINT "ASSIGNMENT_FK2";
       public          postgres    false    3288    219    214            !           2606    24903    ASSIST ASSIST_FK1    FK CONSTRAINT     �   ALTER TABLE ONLY public."ASSIST"
    ADD CONSTRAINT "ASSIST_FK1" FOREIGN KEY ("UserId") REFERENCES public."USER"("UserId") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 ?   ALTER TABLE ONLY public."ASSIST" DROP CONSTRAINT "ASSIST_FK1";
       public          postgres    false    226    213    3282                        2606    24666    ASSIST ASSIST_FK2    FK CONSTRAINT     �   ALTER TABLE ONLY public."ASSIST"
    ADD CONSTRAINT "ASSIST_FK2" FOREIGN KEY ("CourseId") REFERENCES public."COURSE"("CourseId") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 ?   ALTER TABLE ONLY public."ASSIST" DROP CONSTRAINT "ASSIST_FK2";
       public          postgres    false    212    226    3280            )           2606    24908    BELONG BELONG_FK1    FK CONSTRAINT     �   ALTER TABLE ONLY public."BELONG"
    ADD CONSTRAINT "BELONG_FK1" FOREIGN KEY ("UserId") REFERENCES public."USER"("UserId") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 ?   ALTER TABLE ONLY public."BELONG" DROP CONSTRAINT "BELONG_FK1";
       public          postgres    false    3282    213    229            (           2606    24681    BELONG BELONG_FK2    FK CONSTRAINT     �   ALTER TABLE ONLY public."BELONG"
    ADD CONSTRAINT "BELONG_FK2" FOREIGN KEY ("OrgId") REFERENCES public."ORGANIZATION"("OrgId") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 ?   ALTER TABLE ONLY public."BELONG" DROP CONSTRAINT "BELONG_FK2";
       public          postgres    false    221    3304    229            -           2606    24995    COMMENT COMMENT_FK1    FK CONSTRAINT     �   ALTER TABLE ONLY public."COMMENT"
    ADD CONSTRAINT "COMMENT_FK1" FOREIGN KEY ("DomainName") REFERENCES public."DOMAIN"("DomainName");
 A   ALTER TABLE ONLY public."COMMENT" DROP CONSTRAINT "COMMENT_FK1";
       public          postgres    false    3278    233    211            .           2606    25000    COMMENT COMMENT_FK2    FK CONSTRAINT     ~   ALTER TABLE ONLY public."COMMENT"
    ADD CONSTRAINT "COMMENT_FK2" FOREIGN KEY ("PostId") REFERENCES public."POST"("PostId");
 A   ALTER TABLE ONLY public."COMMENT" DROP CONSTRAINT "COMMENT_FK2";
       public          postgres    false    222    3306    233            *           2606    24591    COMPANY COMPANY_FK    FK CONSTRAINT     �   ALTER TABLE ONLY public."COMPANY"
    ADD CONSTRAINT "COMPANY_FK" FOREIGN KEY ("OrgId") REFERENCES public."ORGANIZATION"("OrgId") ON UPDATE CASCADE ON DELETE CASCADE;
 @   ALTER TABLE ONLY public."COMPANY" DROP CONSTRAINT "COMPANY_FK";
       public          postgres    false    230    221    3304            
           2606    24696    COURSE COURSE_FK1    FK CONSTRAINT     �   ALTER TABLE ONLY public."COURSE"
    ADD CONSTRAINT "COURSE_FK1" FOREIGN KEY ("DomainName") REFERENCES public."DOMAIN"("DomainName") NOT VALID;
 ?   ALTER TABLE ONLY public."COURSE" DROP CONSTRAINT "COURSE_FK1";
       public          postgres    false    3278    211    212            	           2606    25766    COURSE COURSE_FK2    FK CONSTRAINT     �   ALTER TABLE ONLY public."COURSE"
    ADD CONSTRAINT "COURSE_FK2" FOREIGN KEY ("UserId") REFERENCES public."USER"("UserId") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 ?   ALTER TABLE ONLY public."COURSE" DROP CONSTRAINT "COURSE_FK2";
       public          postgres    false    3282    212    213                       2606    24913    CV CV_FK    FK CONSTRAINT     �   ALTER TABLE ONLY public."CV"
    ADD CONSTRAINT "CV_FK" FOREIGN KEY ("UserId") REFERENCES public."USER"("UserId") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 6   ALTER TABLE ONLY public."CV" DROP CONSTRAINT "CV_FK";
       public          postgres    false    213    215    3282                       2606    24706    EDUCATION EDUCATION_FK    FK CONSTRAINT     �   ALTER TABLE ONLY public."EDUCATION"
    ADD CONSTRAINT "EDUCATION_FK" FOREIGN KEY ("CvId") REFERENCES public."CV"("CvId") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 D   ALTER TABLE ONLY public."EDUCATION" DROP CONSTRAINT "EDUCATION_FK";
       public          postgres    false    215    216    3290            2           2606    25806    FOLLOW FOLLOW_FK1    FK CONSTRAINT     �   ALTER TABLE ONLY public."FOLLOW"
    ADD CONSTRAINT "FOLLOW_FK1" FOREIGN KEY ("Follower") REFERENCES public."DOMAIN"("DomainName") ON UPDATE CASCADE ON DELETE CASCADE;
 ?   ALTER TABLE ONLY public."FOLLOW" DROP CONSTRAINT "FOLLOW_FK1";
       public          postgres    false    236    211    3278            3           2606    25811    FOLLOW FOLLOW_FK2    FK CONSTRAINT     �   ALTER TABLE ONLY public."FOLLOW"
    ADD CONSTRAINT "FOLLOW_FK2" FOREIGN KEY ("Following") REFERENCES public."DOMAIN"("DomainName") ON UPDATE CASCADE ON DELETE CASCADE;
 ?   ALTER TABLE ONLY public."FOLLOW" DROP CONSTRAINT "FOLLOW_FK2";
       public          postgres    false    211    236    3278                       2606    24721    JOB_ADVERT JOB_ADVERT_FK    FK CONSTRAINT     �   ALTER TABLE ONLY public."JOB_ADVERT"
    ADD CONSTRAINT "JOB_ADVERT_FK" FOREIGN KEY ("DomainName") REFERENCES public."DOMAIN"("DomainName") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 F   ALTER TABLE ONLY public."JOB_ADVERT" DROP CONSTRAINT "JOB_ADVERT_FK";
       public          postgres    false    3278    211    224            /           2606    25016    JOB_HISTORY JOB_HISTORY_FK    FK CONSTRAINT     �   ALTER TABLE ONLY public."JOB_HISTORY"
    ADD CONSTRAINT "JOB_HISTORY_FK" FOREIGN KEY ("CvId") REFERENCES public."CV"("CvId") ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY public."JOB_HISTORY" DROP CONSTRAINT "JOB_HISTORY_FK";
       public          postgres    false    3290    215    234                       2606    24731    LIKE LIKE_FK1    FK CONSTRAINT     �   ALTER TABLE ONLY public."LIKE"
    ADD CONSTRAINT "LIKE_FK1" FOREIGN KEY ("DomainName") REFERENCES public."DOMAIN"("DomainName") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 ;   ALTER TABLE ONLY public."LIKE" DROP CONSTRAINT "LIKE_FK1";
       public          postgres    false    211    3278    223                       2606    24736    LIKE LIKE_FK2    FK CONSTRAINT     �   ALTER TABLE ONLY public."LIKE"
    ADD CONSTRAINT "LIKE_FK2" FOREIGN KEY ("PostId") REFERENCES public."POST"("PostId") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 ;   ALTER TABLE ONLY public."LIKE" DROP CONSTRAINT "LIKE_FK2";
       public          postgres    false    223    3306    222                       2606    24741    LIVE_SESSION LIVE_SESSION_FK1    FK CONSTRAINT     �   ALTER TABLE ONLY public."LIVE_SESSION"
    ADD CONSTRAINT "LIVE_SESSION_FK1" FOREIGN KEY ("CourseId") REFERENCES public."COURSE"("CourseId") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 K   ALTER TABLE ONLY public."LIVE_SESSION" DROP CONSTRAINT "LIVE_SESSION_FK1";
       public          postgres    false    212    220    3280                       2606    24746    LIVE_SESSION LIVE_SESSION_FK2    FK CONSTRAINT     �   ALTER TABLE ONLY public."LIVE_SESSION"
    ADD CONSTRAINT "LIVE_SESSION_FK2" FOREIGN KEY ("SectionName") REFERENCES public."SECTION"("SectionName") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 K   ALTER TABLE ONLY public."LIVE_SESSION" DROP CONSTRAINT "LIVE_SESSION_FK2";
       public          postgres    false    220    3288    214            0           2606    25789    MESSAGE MESSAGE_FK1    FK CONSTRAINT     �   ALTER TABLE ONLY public."MESSAGE"
    ADD CONSTRAINT "MESSAGE_FK1" FOREIGN KEY ("Sender") REFERENCES public."DOMAIN"("DomainName") ON UPDATE CASCADE ON DELETE CASCADE;
 A   ALTER TABLE ONLY public."MESSAGE" DROP CONSTRAINT "MESSAGE_FK1";
       public          postgres    false    211    3278    235            1           2606    25794    MESSAGE MESSAGE_FK2    FK CONSTRAINT     �   ALTER TABLE ONLY public."MESSAGE"
    ADD CONSTRAINT "MESSAGE_FK2" FOREIGN KEY ("Receiver") REFERENCES public."DOMAIN"("DomainName");
 A   ALTER TABLE ONLY public."MESSAGE" DROP CONSTRAINT "MESSAGE_FK2";
       public          postgres    false    3278    235    211                       2606    25771    ORGANIZATION ORG_FK1    FK CONSTRAINT     �   ALTER TABLE ONLY public."ORGANIZATION"
    ADD CONSTRAINT "ORG_FK1" FOREIGN KEY ("DomainName") REFERENCES public."DOMAIN"("DomainName") NOT VALID;
 B   ALTER TABLE ONLY public."ORGANIZATION" DROP CONSTRAINT "ORG_FK1";
       public          postgres    false    211    3278    221                       2606    25776    ORGANIZATION ORG_FK2    FK CONSTRAINT     �   ALTER TABLE ONLY public."ORGANIZATION"
    ADD CONSTRAINT "ORG_FK2" FOREIGN KEY ("UserId") REFERENCES public."USER"("UserId") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 B   ALTER TABLE ONLY public."ORGANIZATION" DROP CONSTRAINT "ORG_FK2";
       public          postgres    false    213    221    3282                       2606    24766    POST POST_FK    FK CONSTRAINT     �   ALTER TABLE ONLY public."POST"
    ADD CONSTRAINT "POST_FK" FOREIGN KEY ("DomainName") REFERENCES public."DOMAIN"("DomainName") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 :   ALTER TABLE ONLY public."POST" DROP CONSTRAINT "POST_FK";
       public          postgres    false    222    3278    211                       2606    24771    SECTION SECTION_FK    FK CONSTRAINT     �   ALTER TABLE ONLY public."SECTION"
    ADD CONSTRAINT "SECTION_FK" FOREIGN KEY ("CourseId") REFERENCES public."COURSE"("CourseId") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 @   ALTER TABLE ONLY public."SECTION" DROP CONSTRAINT "SECTION_FK";
       public          postgres    false    212    214    3280            ,           2606    24611    SOCIETY SOCIETY_FK    FK CONSTRAINT     �   ALTER TABLE ONLY public."SOCIETY"
    ADD CONSTRAINT "SOCIETY_FK" FOREIGN KEY ("OrgId") REFERENCES public."ORGANIZATION"("OrgId") ON UPDATE CASCADE ON DELETE CASCADE;
 @   ALTER TABLE ONLY public."SOCIETY" DROP CONSTRAINT "SOCIETY_FK";
       public          postgres    false    232    221    3304            #           2606    24933    STUDENT_OF STUDENT_OF_FK1    FK CONSTRAINT     �   ALTER TABLE ONLY public."STUDENT_OF"
    ADD CONSTRAINT "STUDENT_OF_FK1" FOREIGN KEY ("UserId") REFERENCES public."USER"("UserId") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 G   ALTER TABLE ONLY public."STUDENT_OF" DROP CONSTRAINT "STUDENT_OF_FK1";
       public          postgres    false    3282    227    213            "           2606    24786    STUDENT_OF STUDENT_OF_FK2    FK CONSTRAINT     �   ALTER TABLE ONLY public."STUDENT_OF"
    ADD CONSTRAINT "STUDENT_OF_FK2" FOREIGN KEY ("CourseId") REFERENCES public."COURSE"("CourseId") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 G   ALTER TABLE ONLY public."STUDENT_OF" DROP CONSTRAINT "STUDENT_OF_FK2";
       public          postgres    false    3280    212    227            +           2606    24601    UNIVERSITY UNIVERSITY_FK    FK CONSTRAINT     �   ALTER TABLE ONLY public."UNIVERSITY"
    ADD CONSTRAINT "UNIVERSITY_FK" FOREIGN KEY ("OrgId") REFERENCES public."ORGANIZATION"("OrgId") ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public."UNIVERSITY" DROP CONSTRAINT "UNIVERSITY_FK";
       public          postgres    false    3304    221    231            '           2606    24938 #   UPLOAD_HOMEWORK UPLOAD_HOMEWORK_FK1    FK CONSTRAINT     �   ALTER TABLE ONLY public."UPLOAD_HOMEWORK"
    ADD CONSTRAINT "UPLOAD_HOMEWORK_FK1" FOREIGN KEY ("UserId") REFERENCES public."USER"("UserId") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 Q   ALTER TABLE ONLY public."UPLOAD_HOMEWORK" DROP CONSTRAINT "UPLOAD_HOMEWORK_FK1";
       public          postgres    false    3282    228    213            $           2606    24796 #   UPLOAD_HOMEWORK UPLOAD_HOMEWORK_FK2    FK CONSTRAINT     �   ALTER TABLE ONLY public."UPLOAD_HOMEWORK"
    ADD CONSTRAINT "UPLOAD_HOMEWORK_FK2" FOREIGN KEY ("CourseId") REFERENCES public."COURSE"("CourseId") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 Q   ALTER TABLE ONLY public."UPLOAD_HOMEWORK" DROP CONSTRAINT "UPLOAD_HOMEWORK_FK2";
       public          postgres    false    3280    228    212            %           2606    24801 #   UPLOAD_HOMEWORK UPLOAD_HOMEWORK_FK3    FK CONSTRAINT     �   ALTER TABLE ONLY public."UPLOAD_HOMEWORK"
    ADD CONSTRAINT "UPLOAD_HOMEWORK_FK3" FOREIGN KEY ("SectionName") REFERENCES public."SECTION"("SectionName") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 Q   ALTER TABLE ONLY public."UPLOAD_HOMEWORK" DROP CONSTRAINT "UPLOAD_HOMEWORK_FK3";
       public          postgres    false    228    3288    214            &           2606    24806 #   UPLOAD_HOMEWORK UPLOAD_HOMEWORK_FK4    FK CONSTRAINT     �   ALTER TABLE ONLY public."UPLOAD_HOMEWORK"
    ADD CONSTRAINT "UPLOAD_HOMEWORK_FK4" FOREIGN KEY ("AssignmentName") REFERENCES public."ASSIGNMENT"("AssıgnmentName") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 Q   ALTER TABLE ONLY public."UPLOAD_HOMEWORK" DROP CONSTRAINT "UPLOAD_HOMEWORK_FK4";
       public          postgres    false    3300    219    228                       2606    24981    USER USER_FK    FK CONSTRAINT     �   ALTER TABLE ONLY public."USER"
    ADD CONSTRAINT "USER_FK" FOREIGN KEY ("DomainName") REFERENCES public."DOMAIN"("DomainName") NOT VALID;
 :   ALTER TABLE ONLY public."USER" DROP CONSTRAINT "USER_FK";
       public          postgres    false    213    211    3278            �   x   x�U���0Dg�� �
�edq�P���H ѯ����N:��@'����`M�C��fL[m�kd�o�in��Tw��g��8�$Y
����6��e������*	+�j�E�����q^ �Y{,G      �   �   x�]λ
1@�z�+�bk�,�jZ��K0�H�z�����\$Ѷ�����L����󓳫$����XRCݗ�8�t�뉛��N֢�����i���R�-h��-�%������
���Dn���r��m��?:l      �   T  x�M�K��0�5u��`)�t0���@7��X�RJ����,&kk���A����͵f�5�h��ځ�8/V>m���=D��~����@� �D<�=��Rqb��4�M�ϱ�,:��f�#��o���3,�TO�N��\�B!��;Zr�Jk�c~:���E������@�v�,��4�s{���}��e��9B�9��b�:�	|����l�{��p9��1�Ef�sN��h�E��_G�ÿFQ��e��$��c|��N$@Cie�=x&�K�D�8�o�v]��`�׫�1��e'��u�,���ǉJ��n����:����D�����?�u��      �   �   x���Mj�0����$�@�] dՐnB7�L�i�Z�Y�$����7&��҇�Z ���:��'X�Њ-�dAK-S�L�BH��M��T�Q��؈��(�{3��,c.ǀsKO���FTd�ƀ�Il��'��B�8j�A��S�'����O�z�J��XRþ���Uln����{S�M����Wlg�YBC�:��حb�^�WPn\_��3�Sc�2yO�=$����JVæCo���@����$I���      �   1   x���  �wnD�`���>,9�p���,"��o9������`      �   A   x����0��f��@K�.}3A�W���K��[E��x�K�!�=�	bT�ƨ��v��%"e�u      �   �   x�%��n�@D��1�C�j�Ԫͥ��M̮�]&"�|}��2�gl�{6��:�l؈��z�Im�GfP��������ǋGn1c�W;����\�W<y�	�do;�ۇt�S�1/�7o'[Q��ev.=օ)$�x�shO�2,c'�(�oN�p����b�+ �tI      �   d  x�m�ˮ�J�1>E� �(��LA!�&
Jz�P��������1j��_�Z?\C��RE��,H,���dm����jm����1y
2��!��a����<�HP 
Rˉ�(]`b�i͓b�9z���aW'��.��  ͠�m���&	�R`���+A�6h���j=	�٘��d�f�Dl���Y�@x9��"�����g�:��@�}��Z<p��U,�e�~�!�-L����\N���v�ϝg����K�T��I~�a�P��BO��q(�C~iZW�A�]q}n9����H��j���e�7&�H�0c�i�	Ⰵ2�j��x�H�F��zP(�������oi�:�"�
ΥІ�۱�X� ��벆̠�Mr�ò}4�h��E��U�:��mv��_�b�Ւ�i�e@��~�*����ӥ�J1�-K3�jX��/���&�[���=��0#"&+�� �2ͳ�H��4�JQ q?�#�~�7����ܹB)eW�h^W����1,C3¿��gY]=�������]������Zz�����@��y!EH��"$�)��u�b�2��j�q=Nd�a� q�X#wy���������ߋ��?���      �   ,   x�3�tM)MN,����2�IM��2�t,-�����r��qqq �
�      �   �  x��UM��0<ۿ� Ȼ���H8rq�$4q���ʿg����N�C�*u����C��(�I���
��4�� �����p��̜�j[�y-�o��V\k;U��}q
y�~�h�I zLD��b���:�	��%MQ�.��E���Sz\�G�؛-Yk	�*e�}�U����F� ��F "@$e�4S3�	�|������åZ�2���ҍ2)�����Ч#bgΜ]yQc�A��/�b<|�ZV�Ll�� ���z�?� ���I} ���j�\T���M���?Β���\�������v:[lj<_�@:���!|sp]��ha ֒�p�[5��
�����M��P�Z�b�?|H���;����>Q7�d�Aȳ�1����| �UN�C�>N�#��	��ǁ��o�����␽����p�����'sR�x]s�ݠ�5��lb9{*M!�9
f]���3�2쫪dkӠ[���l/S_��lG�ԩY��o,��sρ��:uNҍ���Zg�MX���k�`�~N�son\^�7ڱ=w7X0�{Y^	:�p/S0��E�����y��OYA���DD������	�>�jk���p����yk�G��*z'��i�J<�k����ܫ#��\Ԫ9�����:���ϵ���G��w����V      �   +  x�]S�n�0=��B_ ��꣓m�fA���Xf""G��D��w(�2��f�,�ͣ�b?t�A��3QdJ(���`Z
���,��X=C��Ds))��>��d����p���+93�i�Y�模Yd��U�ޙ��A���ͣM�X�@��Z��GO��iO����c�P��6>����[��S���;9�~�ޟ`JebE� �w�ƴ�Z���;���q��q�JNJ��q/�F�ޛ8�x��
�XK�d5p,��V����di�˩��.������˜Zl�B�ۊ)t�K!6Ų�O�)��qW8�c�ZS��ň����,�5����^���ǖi�̧Md�	�b��MP��Aw����km����U�������f���p�ʭKI8`�ky"G��܍�e�ا�3�h0��&W0tڝ�:���nB۱�g����R)a����(�1^��|�+��5��L��T��hE��B5Z5�l'b�d)n���������<��U,��#U\/�Þ��-Y�Gr�	�F���iND���'K��$��      �   �   x��Iv1D�u��L�p�lhD�dt�l=���[�/(k=w����i��;הR^���>{CeSj�8��.�`7�?DҒ�'&�]��t�Ǌo��"���[�6���,��Z(�ZNM�+�����f��@^7�rO#�`z���C̴]�ݓM,�"�I	����-�P�;��ҐM$�uE���:�^�<�����6дn��!R�.�R~� �L�p�      �   U  x�]RKN�0]ON�D��$�!�*ٴ���xTǖbT�\����p�4ݍ���}<J��le+4y2�.;����ts��UL�1Z@���ڑ�j-9{<S��Kຊ�7R�_m|36�Ә������X`�,�Vgp/�^��8|bK6�y���'�^V�Xm�#���d��Y8���֐��5�����1�g=��EMjIv�x�=͹B-!@/F9��2
w�!���
�NV�����t$��"J�yշ�
"<)�G%�?	f�fB�l�/�QT!�U�c���0��(��C@+[)W�^;��(M����mI��l�����lv����PH�s��o��X��8��?���      �   f   x�U�K� D��0�L�0n*D��B$�^%������'�![*
쓝\1�7�|�y~f�xR��'b~�-��V�}�2�Nknf�h��>D]a� �ot@	      �   !  x�u��j�0���)�.j�m魗.[Z�a�zu�i4�I\��;ڥFpa9|���0�C-�7�J��� ˒,��,N�$�s����������/&�O�����G�cΎ
�"H�	$1a�*���do�F?��8I�6�����I����A���K�i�&RL�JU��u�4�3ö/௾�-ƛ��>P
aM�[Y
j�
̍Q��v�U͜
=Cg�D9�B�8�W�q3�n�֬���h��q��.�z݊��V��@��v��oJ�:�J��}�����/�r/#=����]E��r�      �   �   x�M�]n�0�������O�%z�}��D��b�{��k��䇑g�%��[X´&R+ے��lvi����Ӏ�g�X]>�ҺtS|�c6�0j3�3ѳXV�~E1�t�(��1�.���b���N҆�W�)�x�l�zL�ř��ڵ����!K$E����H��l�\�\�?��������G���x�����D`cw�is3����{:-��P�m�����߹|c� ozVn      �   X   x�U̱@0���=�������Ø������꾿�U�,j\��I_{p`�������T��<F�����(�Z���#�BcKD7��CS      �   �   x�}�A� E�p�^ 3�{o���ՒX0�����Ҙ��/��N.>�'��=�#ည�b�B�,όJRǾzt�&Z�r��+���+b�ٵ}��Oc��Ŕ$C�.�$LdFQ,�0t1�v7�0��.1��`uf�#9�G��-������F��ٳtpe��
�6�Ѿm���^��J��W�      �   l   x�=���  ��c
����Y��൘�R4&n�M���!��8CJ�k�R���zC��GG��]��{��g�6~�z�m��9�oT���d\���7����	�W�UJ]�#&      �   �  x�MRK��6]�N���$�ݵ��q0�N�)I5jF)��t����Enx�Lr��ĥ�0 @��^�zO���'q�2�������C����2p��e�t��y]뼣hޢ[\ߣ��}��a���W�$~BGpn��
�D�-��֏�Z#�_�eǿL �:�2O+���nq6P�Z���D�B���mO8Md-}U&���(��Ƶv�s�y�:4v����W�/�"�i��5|���.������;Ӣx�#����'��$�7��ǈ�����0�Ã�]���E��Y�Ou�"����d��������(d](�z���x�+��(������l�1޳��?.(N,{c�UZT��΋^Xt����+��Kq�}w)],@z���ۚ�ޓe�yS�lbb~p�lF����i]�4/�=\"^7���U��h!�}����ޮד���sP��˝E�2K�R��yoY��&����縙�����Eqd�h���(����k
<��D��0�h�����<s6.��fgu*��&����++n�>�<�T���#�yG�Gx~:߬یI��ۙ\C�����r��>,�8������+�Y�gJ�/��y��y#'3�f	=輪��z��0��-����W=���4q˂q��s}��?.tR�4ˋ�R��%��͈��r�]���]�ղ��5�;P2��%I�<pE�      �   O  x��X�n�F]�_1@	"e�VwA�E�&H��nF䘚��a�!C�s�AR��)�Ĵ�;�qwR�E�,�s�n�G>�V�ދ�i�eV��0l��qvуww����$:�}�gҲA�~���1>
�� �P]zO����"^զ�8���z�I��<��Tl��v[4�����M��v��O![=NO�t��)�Q��Ώ{���;q��o�"�P�U�y3�c���NW�eERqN:mb�_�u�	�Fn-߲wZ��u|�'��©�!��x٧�QɣPΏK���%�//g4Z��u���Ht�~�>��� ?鄑�H����Q䞠!�f�[����"��)�\�(�0='��)=L�a��<�_���g8���[*�
|����$�b�1�U�|i^'?��T ��ů��#F?��o�Wa�l�4NJ�H��^�Z����7\��v(o���7��E����I1��:=`^kU̹u�h�Ĭ[�zFCڲOF#��hz��bJk�ќ6��r����]y_̯'�D�(G��X�b�ɨ
 1'U+;���8��
�Z�Y��T�C�P�d�S Nq���8��l�>L|�>po�	3�Fٟ���i���[?Z����3ƚM�_����}�X�W����I�6�	�:�n����I$<���������BH�~�/�ؑ�A\��c�A��\qs������� 5#7�
P���E��誅"��<�P �B�fE7�B�NF�羬w)M�g�bybs�;j�6���N
7Ka���Z��BW˜C��|����M}\���ͳ���|.뺈s�Ї���"���,�(��I $�k����o:���Sg�(,�P@8A�L�d�Z�h4OMY�g����t�آ�+�V*u��V�B�V_�z����z)n�;�������_� 2S�$5k�O��x�[Ã�Nސ�����&�@ˤ��g@Ȫg�>]yYb��t�FmJZ9����r�AP�<=V� e���%M1�}����(H\Oe}_�샎}�s@�8��?�� l���L����>������*w�#\,vl��5���Ԗ�ClL�*B_�@`�>]y$��n ���b$��æ����<+rF9	.�r��$�(/�5H�n���X��F}kX7Rs,.�,f#i����m�=�5���d����\���t���"��ٺ{E��]GJ<�*-D�T�C.��,�������8�b�!X�q����FK�n����kjR׈�l��e�a�B'	��a��T��&�Jy��H6��\�:#<3?�"����0����c�C^���=; La���Ή3E�㒐	��=�6!�V�p7	�7�m"y
nZ�.U�7�V˽%lbI��mȮW&�U����ۘ%Q)�p�O�:��<Gh�b�k5Ϊ��Td�AP��5��_V�`�,�U��$߬�o�*�>+Z�m7���v�p+ü2ƚ�7�(�.�2Ϋo�<�y*~v�f%�ܞ�Jues�\]P0ӝԁʝ��
K�W˭1�$���9�-M��X�aN7�e�YM~��%�y�7�rw��b����8�i6���Hs��+>l��+w���?�����_!G��xm�bt�o۲,7�      �   0  x�-Tǲ�8]K_1?�S-���]&`��f#0A�H"���gfn8�^�v$? ��47gR�gN�R3^C'����!�)��Ӿ�ϣZ0'8���g���:���L[�C�{`�0���9�;O��ט`�=�^DQHwj��0����>+��h����ܳ8��*}���k�7P�X���M��H� C��V������.��aϔ�L�`��%:��0�)'��	΅���뾋�ω3�#�l~8��
� ��њ� ٝ�^�s��ĘH띹[W{�P��A��
@��IM;GE�g.�[��LI.k{�7վ��yI\�� c�N��U�F��з?�u�/_�]c��Ҕz�~0*C� i�϶����N�p�m��Ҹ�A��nY��5� ����������Vx'�7o���}����Bā����A���/�s�g�'�Ҵ���U��VJ/� �L�:M��﹮�Q�Tc�=f��'�����۔i�["d?�Jc�C�cɓg�g�X�k�󡵄�=3������=D"i�u��7����X���Q�+�=���������2 ���!�xD A�g��������Y���M;_��bNɀ���c��n��kkW��V�ٽ۞�6p秵*���4>v:������8s��"9�=0��as'�z�@~��:$,�����ֈSiKI�sl{'�G��,j��GT���*z��	���w-^�g��a� S�� {C 1�4�5�@�]��c߼9����P�\��s��2���$��>Q�N�#�)LUʳĮ����0� �A���q(t��/O��r:��2����v�*�Ш}�r���6�҆�?ߍ��(�D��̕|��,~]F)���d��X<��ů��ME� ;����K�4��˼�s��ڴ�)/���h�MFz���j�Ǎ�N�,��XY|����KB�U�bh�p�D��^ ]�G���mD�����7ػ߂h��@�+ ��Ē��5YYf��ca%Z����:W��Ʈ✷�A�7H����~�d��`�HY�gq�ߚ�K|�Ϟ�^���Ҿ;[�!� � ̅      �     x�M�AO�0��ͯȉ�,]����؅KhM�H�)I�Ư�)��Q���l����Ȓ㙥��s��;'�>�`0�n���zV*}{s����X���w�Ѡy���#?:��2��J'����{��Ʈ�T+��{rB30�w�3�����������Vk1C��-Gy*�\���
|LuLw�zբ��n�k��%xoR�H��:�î�0[?���=-�B勗$w"g�b�̚���}\I�������d��1���#6~t��)Ĵ�����c�o�&      �      x�������� �.      �   c   x����0��f�^0P�]���yY';��H�B©,x(���舅��Dƅ���	�6~�>w��`~���f�*c�5�_��DkC�VѠky��1�u&      �      x�3�2�2�2�24������ ^      �   �   x�E��
�0�ϛ����Z��5޼��k�o�6"��-�����a�D�7�`����k�2]m��ͳk���p��3C��L��q$(������h�.DmkQ��PE=���[�d{���lA� �x�a�}1A��d�J�ǖ�j|%�J�V�B;      �   y  x�]Vݚ���V�������d�I洙��Lg���c�lb�d���2��I�B�Ғ<8k��LP��S)�X5fayg�I��ח�[�f�e9���V����"�<��-��H���cg9�gcgQ?�&ߤFB�/&R��0��T�wN؞(v%{|� wLHxk�Up���|�"񗪨n,�<p�c�kp'��mGS�:�EAT8��23�h!;����u����Aʔ38�!��	�Y��@+y���No� �ǎk���t̔Nd>�z�*k��
��KB6��;UA�a���3��@N�$b
",{�9���T��|���0���﫽�8o�;�'�C�$�۠��1~ 3�z4�_����E����R�tA(k�z�X���uiB��ְ��9�kC�P�H�9��д�wހ-!̤��Q��d�[n�D���cy��	�{;:*yxv�G�s�8|��!���3!�	���#Lܞ++("�t�S�đH|,��3��}����ҕ��2�d��Fɕ��mؼ�o���:`"kW��:.��$���^������]�8$L��T
����'J�4r�(i�[�;��k���\PR��a1Ƒ��a{�r�eS�#�y)B�n]�����2��-����s=0��T3Ny��X��"�F֤�w���iy�w{��n�> ?�2��)nDc�X��t:�=r'@)��Jc�ϳ��u�[��'���=Z*� ��d�~��2eL2з
�I-�3kI��z�N!���9}�f�:�~����|�=�M��6�m�	�� �4�Tk:�~l�˝�9�����k*�L5x�����y���z1�����1���d8b)��^\v-�s�)3gY��D�[�x��{���tHϜ�8ě!�֖T��:'
�յk)8l��� �o�r6�+���r����O�w��U���pD���;5A�V�oK`�Y�P��Z�;�r:��K`V���e�dՔ��.����f�g�?�#_B��S��V%n�+�I�^��9����"�ߊ�7��m���>J;��ʇ�7�Q�l˹��������J)j<��D���X��ގ[-6��_�:�k��. k�bb�觸-��zS�p�_��`Om�I}Q�3ݰ�7Þ������r�ٯH��M l��O�@�����4w�M���wR�1M3����[�;�ފ����9��&�g���߆�k��e=I�'��:�V�,Yڞy�fL�&��a�t&x{3��^_��m��/��3�AR� [��A~7�vԜU�3BQl��cn�2��jM����Sċ�M:k�?X�P���a�PU�[������co�j&�[�I�ύ(��9::/L���}�b����܇Ɖ�mW?�aq �w���P�9(A�~�>JQCt&��vu]��n�D�y��xh��f�dYU���7��F��{�J\�X�8�C���|xU�f��'q��G2�O�}Q�nd�{�����[Z�2���Sw�tg���͟�[�g����=-���Km՟3m�#oŋ���R�	�̝�p�����M۹MT�1�΍�,HH�D��(ƸP0����k�@�Y}Z�6>���2�������i�X.`��ܥ
O�>6����4�h�rS���������h4�|��     