FasdUAS 1.101.10   ��   ��    k             l       	  I     �������� 0 doscript doScript��  ��    T N verhindert globale Variablen, um dauernde Sciherheitsanfragen zu unterbinden.    	 � 
 
 �   v e r h i n d e r t   g l o b a l e   V a r i a b l e n ,   u m   d a u e r n d e   S c i h e r h e i t s a n f r a g e n   z u   u n t e r b i n d e n .      l     ��  ��    i c vgl. https://www.macscripter.net/t/script-app-cant-access-reminders-app-without-permission/71057/4     �   �   v g l .   h t t p s : / / w w w . m a c s c r i p t e r . n e t / t / s c r i p t - a p p - c a n t - a c c e s s - r e m i n d e r s - a p p - w i t h o u t - p e r m i s s i o n / 7 1 0 5 7 / 4      l     ��������  ��  ��     ��  i         I      �������� 0 doscript doScript��  ��    k    �       l     ��  ��     
 Variablen     �      V a r i a b l e n      r         J     ����    o      ���� 0 entries_list ENTRIES_LIST       l   ��������  ��  ��      ! " ! l   �� # $��   # D > Startdialog zeigen (Script kann hier ggf. abgebrochen werden)    $ � % % |   S t a r t d i a l o g   z e i g e n   ( S c r i p t   k a n n   h i e r   g g f .   a b g e b r o c h e n   w e r d e n ) "  & ' & I   �� ( )
�� .sysodlogaskr        TEXT ( m     * * � + + D a s   S c r i p t   l e g t   K a l e n d e r e i n t r � g e   u n d   E r i n n e r u n g e n   f � r   e i n e n   S t u n d e n p l a n   a n .   D a z u   m � s s e n   z u n � c h s t   a u c h   a l l e   g e � f f n e t e n   N u m b e r s   D o k u m e n t e   g e s c h l o s s e n   w e r d e n .   W � h r e n d   d a s   S k r i p t   l � u f t ,   s o l l t e n   S i e   d e n   C o m p u t e r   n i c h t   b e n u t z e n . 
 
 E i n e   d e t a l l i e r t e   A n l e i t u n g   f i n d e t   s i c h   i n   d e r   S t u n d e n p l a n g e n e r a t o r - T a b e l l e   ( N u m b e r s - D a t e i ) . 
 D i e   V e r w e n d u n g   e r f o l g t   a u f   e i g e n e   G e f a h r ! 
 
  O K    k l i c k e n   u m   d a s   S k r i p t   z u   s t a r t e n . ) �� ,��
�� 
appr , m     - - � . . * V o r b e r e i t e r   s t a r t e n   &��   '  / 0 / l   ��������  ��  ��   0  1 2 1 l   �� 3 4��   3 %  Speicherort des Scripts finden    4 � 5 5 >   S p e i c h e r o r t   d e s   S c r i p t s   f i n d e n 2  6 7 6 O    8 9 8 r     : ; : c     < = < l    >���� > n     ? @ ? m    ��
�� 
ctnr @ l    A���� A I   �� B��
�� .earsffdralis        afdr B  f    ��  ��  ��  ��  ��   = m    ��
�� 
alis ; o      ���� 0 script_path SCRIPT_PATH 9 m     C C�                                                                                  MACS  alis    :  	Tobis SSD                  �y��BD ����
Finder.app                                                     �����y��        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p   	 T o b i s   S S D  &System/Library/CoreServices/Finder.app  / ��   7  D E D l   ��������  ��  ��   E  F G F l   �� H I��   H !  Numbers-Tabellen schlie�en    I � J J 6   N u m b e r s - T a b e l l e n   s c h l i e � e n G  K L K O    * M N M I  " )�� O��
�� .coreclosnull���     obj  O 2   " %��
�� 
docu��   N m     P P~                                                                                  NMBR  alis       	Tobis SSD                  �y��BD ����Numbers.app                                                    �����x��        ����  
 cu             Applications  /:Applications:Numbers.app/     N u m b e r s . a p p   	 T o b i s   S S D  Applications/Numbers.app  / ��   L  Q R Q l  + +��������  ��  ��   R  S T S O  + 5 U V U I  / 4������
�� .miscactvnull��� ��� null��  ��   V  f   + , T  W X W l  6 6��������  ��  ��   X  Y Z Y l  6 6�� [ \��   [ !  Generator-Tabelle abfragen    \ � ] ] 6   G e n e r a t o r - T a b e l l e   a b f r a g e n Z  ^ _ ^ r   6 G ` a ` I  6 E���� b
�� .sysostdfalis    ��� null��   b �� c d
�� 
ftyp c m   8 9 e e � f f  n u m b e r s d �� g h
�� 
prmp g m   : ; i i � j j H S t u n d e n p l a n g e n e r a t o r - T a b e l l e   w � h l e n . h �� k��
�� 
dflc k o   > ?���� 0 script_path SCRIPT_PATH��   a o      ���� ,0 generator_table_file GENERATOR_TABLE_FILE _  l m l l  H H��������  ��  ��   m  n o n l  H H�� p q��   p 8 2 Generator-tabelle einlesen und Parameter abfragen    q � r r d   G e n e r a t o r - t a b e l l e   e i n l e s e n   u n d   P a r a m e t e r   a b f r a g e n o  s t s O   Hi u v u Q   Lh w x y w k   OS z z  { | { I  O T�� }��
�� .aevtodocnull  �    alis } o   O P���� ,0 generator_table_file GENERATOR_TABLE_FILE��   |  ~�� ~ O   US  �  k   \R � �  � � � l  \ \�� � ���   � 9 3 Globale Variablen aus der Generator-Tabelle ziehen    � � � � f   G l o b a l e   V a r i a b l e n   a u s   d e r   G e n e r a t o r - T a b e l l e   z i e h e n �  � � � O   \ � � � � k   n � � �  � � � r   n � � � � c   n ~ � � � n   n z � � � 1   v z��
�� 
NMCv � 4   n v�� �
�� 
NmCl � m   r u � � � � � " W e r t   R a u m   i n   N a m e � m   z }��
�� 
bool � o      ���� (0 param_room_in_name PARAM_ROOM_IN_NAME �  � � � r   � � � � � c   � � � � � n   � � � � � 1   � ���
�� 
NMCv � 4   � ��� �
�� 
NmCl � m   � � � � � � � < W e r t   K a l e n d e r e i n t r � g e   e r z e u g e n � m   � ���
�� 
bool � o      ���� *0 param_make_calendar PARAM_MAKE_CALENDAR �  � � � r   � � � � � c   � � � � � n   � � � � � 1   � ���
�� 
NMCv � 4   � ��� �
�� 
NmCl � m   � � � � � � � 4 W e r t   E r i n n e r u n g e n   e r z e u g e n � m   � ���
�� 
bool � o      ���� *0 param_make_reminder PARAM_MAKE_REMINDER �  ��� � r   � � � � � c   � � � � � n   � � � � � 1   � ���
�� 
NMCv � 4   � ��� �
�� 
NmCl � m   � � � � � � � @ W e r t   l e t z t e r   S c h u l t a g   f � r   S k r i p t � m   � ���
�� 
TEXT � o      ���� .0 param_last_school_day PARAM_LAST_SCHOOL_DAY��   � n   \ k � � � 4   d k�� �
�� 
NmTb � m   g j � � � � �  P a r a m e t e r � 4   \ d�� �
�� 
NmSh � m   ` c � � � � �  P l a n g e n e r a t o r �  � � � l  � ��� � ���   �    Stundenplanliste einlesen    � � � � 4   S t u n d e n p l a n l i s t e   e i n l e s e n �  � � � O   �L � � � Y   �K ��� � ��� � k   �F � �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
NMCv � n   � � � � � 4   � ��� �
�� 
NmCl � o   � ����� 0 i   � 4   � ��� �
�� 
NMCo � m   � � � � � � �  F � o      ���� 0 value_class VALUE_CLASS �  � � � r   � � � � n   � � � � 1   ���
�� 
NMCv � n   � � � � � 4   � ��� �
�� 
NmCl � o   � ����� 0 i   � 4   � ��� �
�� 
NMCo � m   � � � � � � �  G � o      ���� 0 
value_room 
VALUE_ROOM �  � � � r   � � � n   � � � 1  ��
�� 
NMCv � n   � � � 4  �� �
�� 
NmCl � o  ���� 0 i   � 4  �� �
�� 
NMCo � m   � � � � �  H � o      ���� $0 value_date_start VALUE_DATE_START �  � � � r  + � � � n  ) � � � 1  %)��
�� 
NMCv � n  % � � � 4   %�� �
�� 
NmCl � o  #$���� 0 i   � 4   �� �
�� 
NMCo � m   � � � � �  I � o      ����  0 value_date_end VALUE_DATE_END �  ��� � r  ,F � � � b  ,D �  � o  ,-���� 0 entries_list ENTRIES_LIST  J  -C �� K  -A ���� 0 p_date_start   o  01���� $0 value_date_start VALUE_DATE_START ���� 0 
p_date_end   o  45����  0 value_date_end VALUE_DATE_END ��	�� 0 p_class   o  89���� 0 value_class VALUE_CLASS	 ��
���� 
0 p_room  
 o  <=���� 0 
value_room 
VALUE_ROOM��  ��   � o      ���� 0 entries_list ENTRIES_LIST��  �� 0 i   � m   � �����  � 1   � ���
�� 
NmTr��   � n   � � 4   � ���
�� 
NmTb m   � � � ( S t u n d e n p l a n g e n e r a t o r 4   � ���
�� 
NmSh m   � � �  P l a n g e n e r a t o r � � I MR�~�}�|
�~ .coreclosnull���     obj �}  �|  �   � 4   U Y�{
�{ 
docu m   W X�z�z ��   x R      �y�x
�y .ascrerr ****      � **** o      �w�w 0 errormessage errorMessage�x   y O [h R  _g�v�u
�v .ascrerr ****      � **** b  af m  ad � Z B e i   d e r   G e n e r a t o r - T a b e l l e   g i n g   e t w a s   s c h i e f :   o  de�t�t 0 errormessage errorMessage�u    f  [\ v m   H I~                                                                                  NMBR  alis       	Tobis SSD                  �y��BD ����Numbers.app                                                    �����x��        ����  
 cu             Applications  /:Applications:Numbers.app/     N u m b e r s . a p p   	 T o b i s   S S D  Applications/Numbers.app  / ��   t  l jj�s�r�q�s  �r  �q    !  l jj�p"#�p  " %  Kalender f�r Eintr�ge abfragen   # �$$ >   K a l e n d e r   f � r   E i n t r � g e   a b f r a g e n! %&% Z  j�'(�o�n' o  jk�m�m *0 param_make_calendar PARAM_MAKE_CALENDAR( O  n�)*) k  t�++ ,-, I ty�l�k�j
�l .miscactvnull��� ��� null�k  �j  - ./. r  z�010 n  z�232 1  ��i
�i 
pnam3 2  z�h
�h 
wres1 o      �g�g 0 all_calendars ALL_CALENDARS/ 454 r  ��676 l ��8�f�e8 I ���d9:
�d .gtqpchltns    @   @ ns  9 o  ���c�c 0 all_calendars ALL_CALENDARS: �b;<
�b 
prmp; m  ��== �>> 2 B i t t e   K a l e n d e r   a u s w � h l e n .< �a?�`
�a 
empL? m  ���_
�_ boovfals�`  �f  �e  7 o      �^�^ "0 chosen_calendar CHOSEN_CALENDAR5 @A@ l ���]BC�]  B 0 * abbrechen, wenn keine Liste gew�hlt wurde   C �DD T   a b b r e c h e n ,   w e n n   k e i n e   L i s t e   g e w � h l t   w u r d eA EFE Z ��GH�\�[G = ��IJI o  ���Z�Z "0 chosen_calendar CHOSEN_CALENDARJ m  ���Y
�Y boovfalsH L  ���X�X  �\  �[  F K�WK r  ��LML c  ��NON o  ���V�V "0 chosen_calendar CHOSEN_CALENDARO m  ���U
�U 
TEXTM o      �T�T "0 chosen_calendar CHOSEN_CALENDAR�W  * m  nqPP�                                                                                  wrbt  alis    2  	Tobis SSD                  �y��BD ����Calendar.app                                                   �����y��        ����  
 cu             Applications  #/:System:Applications:Calendar.app/     C a l e n d a r . a p p   	 T o b i s   S S D   System/Applications/Calendar.app  / ��  �o  �n  & QRQ l ���S�R�Q�S  �R  �Q  R STS l ���PUV�P  U &   Liste f�r Erinnerungen abfragen   V �WW @   L i s t e   f � r   E r i n n e r u n g e n   a b f r a g e nT XYX Z  �Z[�O�NZ o  ���M�M *0 param_make_reminder PARAM_MAKE_REMINDER[ k  ��\\ ]^] I ���L�K�J
�L .miscactvnull��� ��� null�K  �J  ^ _�I_ O  ��`a` k  ��bb cdc r  ��efe n  ��ghg 1  ���H
�H 
pnamh 2  ���G
�G 
listf o      �F�F (0 all_reminder_lists ALL_REMINDER_LISTSd iji r  ��klk l ��m�E�Dm I ���Cno
�C .gtqpchltns    @   @ ns  n o  ���B�B (0 all_reminder_lists ALL_REMINDER_LISTSo �Apq
�A 
prmpp m  ��rr �ss � B i t t e   E r i n n e r u n g s l i s t e   a u s w � h l e n . 
 ( E s   w e r d e n   n u r   L i s t e n   g e z e i g t ,   d i e   n i c h t   i n   e i n e m   O r d n e r   s i n d . )q �@t�?
�@ 
empLt m  ���>
�> boovfals�?  �E  �D  l o      �=�= ,0 chosen_reminder_list CHOSEN_REMINDER_LISTj uvu l ���<wx�<  w 0 * abbrechen, wenn keine Liste gew�hlt wurde   x �yy T   a b b r e c h e n ,   w e n n   k e i n e   L i s t e   g e w � h l t   w u r d ev z{z Z ��|}�;�:| = ��~~ o  ���9�9 ,0 chosen_reminder_list CHOSEN_REMINDER_LIST m  ���8
�8 boovfals} L  ���7�7  �;  �:  { ��6� r  ����� c  ����� o  ���5�5 ,0 chosen_reminder_list CHOSEN_REMINDER_LIST� m  ���4
�4 
TEXT� o      �3�3 ,0 chosen_reminder_list CHOSEN_REMINDER_LIST�6  a m  �����                                                                                      @ alis    6  	Tobis SSD                  �y��BD ����Reminders.app                                                  �����y��        ����  
 cu             Applications  $/:System:Applications:Reminders.app/    R e m i n d e r s . a p p   	 T o b i s   S S D  !System/Applications/Reminders.app   / ��  �I  �O  �N  Y ��� l �2�1�0�2  �1  �0  � ��� l �/���/  �   Eintr�ge anlegen   � ��� "   E i n t r � g e   a n l e g e n� ��� l �.���.  � ) # -- Fortschrittsanzeige vorbereiten   � ��� F   - -   F o r t s c h r i t t s a n z e i g e   v o r b e r e i t e n� ��� r  ��� n  ��� 1  �-
�- 
leng� o  �,�, 0 entries_list ENTRIES_LIST� o      �+�+ 0 entries_total ENTRIES_TOTAL� ��� r  ��� o  �*�* 0 entries_total ENTRIES_TOTAL� 1  �)
�) 
ppgt� ��� r  ��� m  �(�(  � 1  �'
�' 
ppgc� ��� r  '��� m  !�� ��� " T e r m i n e   a n l e g e n   &� 1  !&�&
�& 
ppgd� ��� r  (1��� m  (+�� ��� & &   w i r d   v o r b e r e i t e t .� 1  +0�%
�% 
ppga� ��� r  27��� m  23�$�$  � o      �#�#  0 progress_count PROGRESS_COUNT� ��� l 88�"���"  � !  -- �ber Eintr�ge iterieren   � ��� 6   - -   � b e r   E i n t r � g e   i t e r i e r e n� ��� X  8���!�� k  L��� ��� l LL� ���   � - ' Z�hler f�r Fortschrittsanzeige erh�hen   � ��� N   Z � h l e r   f � r   F o r t s c h r i t t s a n z e i g e   e r h � h e n� ��� r  LU��� [  LQ��� o  LO��  0 progress_count PROGRESS_COUNT� m  OP�� � o      ��  0 progress_count PROGRESS_COUNT� ��� l VV����  � * $ Info f�r Fortschrittsbalken setzen	   � ��� H   I n f o   f � r   F o r t s c h r i t t s b a l k e n   s e t z e n 	� ��� r  Vk��� b  Ve��� b  Va��� m  VY�� ���  E i n t r a g   f � r  � l Y`���� n  Y`��� o  \`�� 0 p_class  � o  Y\�� 0 current_entry CURRENT_ENTRY�  �  � m  ad�� ��� $   w i r d   v e r a r b e i t e t .� 1  ej�
� 
ppga� ��� Z  l������ > lw��� l ls���� n  ls��� o  os�� 0 p_class  � o  lo�� 0 current_entry CURRENT_ENTRY�  �  � m  sv�
� 
msng� k  z��� ��� l zz����  � %  ggf. Kalendereintrag erstellen   � ��� >   g g f .   K a l e n d e r e i n t r a g   e r s t e l l e n� ��� Z  z<����� o  z{�� *0 param_make_calendar PARAM_MAKE_CALENDAR� k  ~8�� ��� Z  ~������ F  ~���� o  ~�
�
 (0 param_room_in_name PARAM_ROOM_IN_NAME� > ����� l ����	�� n  ����� o  ���� 
0 p_room  � o  ���� 0 current_entry CURRENT_ENTRY�	  �  � m  ���
� 
msng� r  ����� b  ����� b  ����� b  ��� � l ���� n  �� o  ���� 0 p_class   o  ���� 0 current_entry CURRENT_ENTRY�  �    m  �� �    [� l ��� �� n  �� o  ������ 
0 p_room   o  ������ 0 current_entry CURRENT_ENTRY�   ��  � m  ��		 �

  ]� o      ���� 0 
event_name 
EVENT_NAME�  � r  �� l ������ n  �� o  ������ 0 p_class   o  ������ 0 current_entry CURRENT_ENTRY��  ��   o      ���� 0 
event_name 
EVENT_NAME�  Z  ���� F  �� > �� l ������ n  �� o  ������ 
0 p_room   o  ������ 0 current_entry CURRENT_ENTRY��  ��   m  ����
�� 
msng H  �� o  ������ (0 param_room_in_name PARAM_ROOM_IN_NAME r  �� l ������ n  �� !  o  ������ 
0 p_room  ! o  ������ 0 current_entry CURRENT_ENTRY��  ��   o      ����  0 event_location EVENT_LOCATION��   r  ��"#" m  ��$$ �%%  # o      ����  0 event_location EVENT_LOCATION &��& O  �8'(' k  �7)) *+* l ����,-��  ,   Eintrag hinzuf�gen   - �.. &   E i n t r a g   h i n z u f � g e n+ /��/ O  �7010 I �6����2
�� .corecrel****      � null��  2 ��34
�� 
kocl3 m  ���
�� 
wrev4 ��5��
�� 
prdt5 K  066 ��78
�� 
wr117 o  
���� 0 
event_name 
EVENT_NAME8 ��9:
�� 
wr1s9 l ;����; n  <=< o  ���� 0 p_date_start  = o  ���� 0 current_entry CURRENT_ENTRY��  ��  : ��>?
�� 
wr5s> l @����@ n  ABA o  ���� 0 
p_date_end  B o  ���� 0 current_entry CURRENT_ENTRY��  ��  ? ��CD
�� 
wr14C o  !$����  0 event_location EVENT_LOCATIOND ��E��
�� 
wr15E b  ',FGF m  '*HH �II $ F R E Q = W E E K L Y ; U N T I L =G o  *+���� .0 param_last_school_day PARAM_LAST_SCHOOL_DAY��  ��  1 4  ����J
�� 
wresJ o  ������ "0 chosen_calendar CHOSEN_CALENDAR��  ( m  ��KK�                                                                                  wrbt  alis    2  	Tobis SSD                  �y��BD ����Calendar.app                                                   �����y��        ����  
 cu             Applications  #/:System:Applications:Calendar.app/     C a l e n d a r . a p p   	 T o b i s   S S D   System/Applications/Calendar.app  / ��  ��  �  �  � LML l ==��NO��  N    ggf. Erinnerung erstellen   O �PP 4   g g f .   E r i n n e r u n g   e r s t e l l e nM Q��Q Z  =�RS����R o  =>���� *0 param_make_reminder PARAM_MAKE_REMINDERS O  A�TUT k  G�VV WXW l GG��YZ��  Y   Erinnerung hinzuf�gen   Z �[[ ,   E r i n n e r u n g   h i n z u f � g e nX \��\ O  G�]^] I R����_
�� .corecrel****      � null��  _ ��`a
�� 
kocl` m  VY��
�� 
remia ��bc
�� 
inshb  ;  \^c ��d��
�� 
prdtd K  ayee ��fg
�� 
pnamf l dkh����h n  dkiji o  gk���� 0 p_class  j o  dg���� 0 current_entry CURRENT_ENTRY��  ��  g ��k��
�� 
duedk l nul����l n  numnm o  qu���� 0 p_date_start  n o  nq���� 0 current_entry CURRENT_ENTRY��  ��  ��  ��  ^ 4  GO��o
�� 
listo o  KN���� ,0 chosen_reminder_list CHOSEN_REMINDER_LIST��  U m  ADpp�                                                                                      @ alis    6  	Tobis SSD                  �y��BD ����Reminders.app                                                  �����y��        ����  
 cu             Applications  $/:System:Applications:Reminders.app/    R e m i n d e r s . a p p   	 T o b i s   S S D  !System/Applications/Reminders.app   / ��  ��  ��  ��  �  �  � qrq l ����st��  s ' ! Fortschrittsbalken aktualisieren   t �uu B   F o r t s c h r i t t s b a l k e n   a k t u a l i s i e r e nr v��v r  ��wxw o  ������  0 progress_count PROGRESS_COUNTx 1  ����
�� 
ppgc��  �! 0 current_entry CURRENT_ENTRY� o  ;<���� 0 entries_list ENTRIES_LIST� y��y l ����������  ��  ��  ��  ��       ��z{|��  z ������ 0 doscript doScript
�� .aevtoappnull  �   � ****{ �� ����}~���� 0 doscript doScript��  ��  } ���������������������������������������������� 0 entries_list ENTRIES_LIST�� 0 script_path SCRIPT_PATH�� ,0 generator_table_file GENERATOR_TABLE_FILE�� (0 param_room_in_name PARAM_ROOM_IN_NAME�� *0 param_make_calendar PARAM_MAKE_CALENDAR�� *0 param_make_reminder PARAM_MAKE_REMINDER�� .0 param_last_school_day PARAM_LAST_SCHOOL_DAY�� 0 i  �� 0 value_class VALUE_CLASS�� 0 
value_room 
VALUE_ROOM�� $0 value_date_start VALUE_DATE_START��  0 value_date_end VALUE_DATE_END�� 0 errormessage errorMessage�� 0 all_calendars ALL_CALENDARS�� "0 chosen_calendar CHOSEN_CALENDAR�� (0 all_reminder_lists ALL_REMINDER_LISTS�� ,0 chosen_reminder_list CHOSEN_REMINDER_LIST�� 0 entries_total ENTRIES_TOTAL��  0 progress_count PROGRESS_COUNT�� 0 current_entry CURRENT_ENTRY�� 0 
event_name 
EVENT_NAME��  0 event_location EVENT_LOCATION~ W *�� -�� C������ P�������� e�� i��������~ ��} ��| ��{�z � � ��y�x�w � � � ��v�u�t�s�r�q�pP�o�n=�m�l�k��jr�i�h�g��f��e�d�c�b���a	$�`�_�^�]�\�[�ZH�Y�X�W�V�U
�� 
appr
�� .sysodlogaskr        TEXT
�� .earsffdralis        afdr
�� 
ctnr
�� 
alis
�� 
docu
�� .coreclosnull���     obj 
�� .miscactvnull��� ��� null
�� 
ftyp
�� 
prmp
�� 
dflc�� 
�� .sysostdfalis    ��� null
� .aevtodocnull  �    alis
�~ 
NmSh
�} 
NmTb
�| 
NmCl
�{ 
NMCv
�z 
bool
�y 
TEXT
�x 
NmTr
�w 
NMCo�v 0 p_date_start  �u 0 
p_date_end  �t 0 p_class  �s 
0 p_room  �r �q 0 errormessage errorMessage�p  
�o 
wres
�n 
pnam
�m 
empL�l 
�k .gtqpchltns    @   @ ns  
�j 
list
�i 
leng
�h 
ppgt
�g 
ppgc
�f 
ppgd
�e 
ppga
�d 
kocl
�c 
cobj
�b .corecnte****       ****
�a 
msng
�` 
wrev
�_ 
prdt
�^ 
wr11
�] 
wr1s
�\ 
wr5s
�[ 
wr14
�Z 
wr15�Y 

�X .corecrel****      � null
�W 
remi
�V 
insh
�U 
dued���jvE�O���l O� )j �,�&E�UO� 	*�-j 
UO) *j UO*����a �a  E�O�	�j O*�k/ �*a a /a a / M*a a /a ,a &E�O*a a /a ,a &E�O*a a /a ,a &E�O*a a /a ,a &E�UO*a a  /a a !/ � }l*a ",Ekh *a #a $/a �/a ,E�O*a #a %/a �/a ,E�O*a #a &/a �/a ,E�O*a #a '/a �/a ,E�O�a (�a )�a *�a +�a ,kv%E�[OY��UO*j 
UW X - .) 
)ja /�%UUO� Da 0 :*j O*a 1-a 2,E�O��a 3a 4fa 5 6E�O�f  hY hO�a &E�UY hO� L*j Oa 7 <*a 8-a 2,E�O��a 9a 4fa 5 6E^ O] f  hY hO] a &E^ UY hO�a :,E^ O] *a ;,FOj*a <,FOa =*a >,FOa ?*a @,FOjE^ O_�[a Aa Bl Ckh ] kE^ Oa D] a *,%a E%*a @,FO] a *,a F� ��	 ] a +,a Fa &  ] a *,a G%] a +,%a H%E^ Y ] a *,E^ O] a +,a F	 �a & ] a +,E^ Y 	a IE^ Oa 0 H*a 1�/ >*a Aa Ja Ka L] a M] a (,a N] a ),a O] a Pa Q�%a Ra 5 SUUY hO� Ea 7 ;*a 8] / /*a Aa Ta U*6a Ka 2] a *,a V] a (,a 5a  SUUY hY hO] *a <,F[OY��OP| �T�S�R���Q
�T .aevtoappnull  �   � **** k     ��  �P�P  �S  �R  �  � �O�O 0 doscript doScript�Q *j+   ascr  ��ޭ