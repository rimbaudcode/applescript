FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l     �� 	 
��   	 $  Repair Disk Permissions 0.1.3    
 �   <   R e p a i r   D i s k   P e r m i s s i o n s   0 . 1 . 3      l     ��  ��    5 / By Mikkel Paulson (mikkel@aliencollective.com)     �   ^   B y   M i k k e l   P a u l s o n   ( m i k k e l @ a l i e n c o l l e c t i v e . c o m )      l     ��������  ��  ��        l     ��  ��    Z T THIS SOFTWARE IS PROVIDED AS-IS WITHOUT WARRANTY OF ANY KIND. USE AT YOUR OWN RISK.     �   �   T H I S   S O F T W A R E   I S   P R O V I D E D   A S - I S   W I T H O U T   W A R R A N T Y   O F   A N Y   K I N D .   U S E   A T   Y O U R   O W N   R I S K .      l     ��������  ��  ��        l     ��  ��    h b You should always have an up-to-date backup of all of your important files before scratching your     �   �   Y o u   s h o u l d   a l w a y s   h a v e   a n   u p - t o - d a t e   b a c k u p   o f   a l l   o f   y o u r   i m p o r t a n t   f i l e s   b e f o r e   s c r a t c h i n g   y o u r       l     �� ! "��   ! E ? nose, let alone mucking around with disk permissions and such.    " � # # ~   n o s e ,   l e t   a l o n e   m u c k i n g   a r o u n d   w i t h   d i s k   p e r m i s s i o n s   a n d   s u c h .    $ % $ l     ��������  ��  ��   %  & ' & l     �� ( )��   ( a [ This script implements most of the suggestions from the ongoing thread "How do I unlock my    ) � * * �   T h i s   s c r i p t   i m p l e m e n t s   m o s t   o f   t h e   s u g g e s t i o n s   f r o m   t h e   o n g o i n g   t h r e a d   " H o w   d o   I   u n l o c k   m y '  + , + l     �� - .��   - b \ external hard drive?" http://forums.macrumors.com/showthread.php?t=417647 Specifically, it:    . � / / �   e x t e r n a l   h a r d   d r i v e ? "   h t t p : / / f o r u m s . m a c r u m o r s . c o m / s h o w t h r e a d . p h p ? t = 4 1 7 6 4 7   S p e c i f i c a l l y ,   i t : ,  0 1 0 l     ��������  ��  ��   1  2 3 2 l     �� 4 5��   4 m g � Tests all volumes for writability by saving a 0-byte invisible file ".permissions_test_file" to each    5 � 6 6 �   "   T e s t s   a l l   v o l u m e s   f o r   w r i t a b i l i t y   b y   s a v i n g   a   0 - b y t e   i n v i s i b l e   f i l e   " . p e r m i s s i o n s _ t e s t _ f i l e "   t o   e a c h 3  7 8 7 l     �� 9 :��   9 : 4    volume's root directory, then deleting it again.    : � ; ; h         v o l u m e ' s   r o o t   d i r e c t o r y ,   t h e n   d e l e t i n g   i t   a g a i n . 8  < = < l     �� > ?��   > > 8 ��Reports which volumes are writable and which are not.    ? � @ @ p   " � R e p o r t s   w h i c h   v o l u m e s   a r e   w r i t a b l e   a n d   w h i c h   a r e   n o t . =  A B A l     �� C D��   C G A ��Asks the user for permission to attempt to fix writing issues.    D � E E �   " � A s k s   t h e   u s e r   f o r   p e r m i s s i o n   t o   a t t e m p t   t o   f i x   w r i t i n g   i s s u e s . B  F G F l     �� H I��   H ^ X ��Prompts to correct permissions (to drwxrwxr-x root:admin) for HFS+ and JHFS+ volumes.    I � J J �   " � P r o m p t s   t o   c o r r e c t   p e r m i s s i o n s   ( t o   d r w x r w x r - x   r o o t : a d m i n )   f o r   H F S +   a n d   J H F S +   v o l u m e s . G  K L K l     �� M N��   M J D ��Gives the option to install MacFUSE and NTFS-3G for NTFS volumes.    N � O O �   " � G i v e s   t h e   o p t i o n   t o   i n s t a l l   M a c F U S E   a n d   N T F S - 3 G   f o r   N T F S   v o l u m e s . L  P Q P l     �� R S��   R _ Y � Gives the option to format NTFS volumes to JHFS+, FAT32, or a manually-entered format.    S � T T �   "   G i v e s   t h e   o p t i o n   t o   f o r m a t   N T F S   v o l u m e s   t o   J H F S + ,   F A T 3 2 ,   o r   a   m a n u a l l y - e n t e r e d   f o r m a t . Q  U V U l     �� W X��   W M G ��Produces a log, including before & after ls -l listings of /Volumes.    X � Y Y �   " � P r o d u c e s   a   l o g ,   i n c l u d i n g   b e f o r e   &   a f t e r   l s   - l   l i s t i n g s   o f   / V o l u m e s . V  Z [ Z l     ��������  ��  ��   [  \ ] \ l     �� ^ _��   ^ U O This script has been tested on Mac OS X 10.4 PowerPC and 10.5 Intel computers.    _ � ` ` �   T h i s   s c r i p t   h a s   b e e n   t e s t e d   o n   M a c   O S   X   1 0 . 4   P o w e r P C   a n d   1 0 . 5   I n t e l   c o m p u t e r s . ]  a b a l     ��������  ��  ��   b  c d c l     �� e f��   e 3 - Please post any questions or bug reports to:    f � g g Z   P l e a s e   p o s t   a n y   q u e s t i o n s   o r   b u g   r e p o r t s   t o : d  h i h l     �� j k��   j : 4 http://forums.macrumors.com/showthread.php?t=871557    k � l l h   h t t p : / / f o r u m s . m a c r u m o r s . c o m / s h o w t h r e a d . p h p ? t = 8 7 1 5 5 7 i  m n m l     �� o p��   o j d If the script is unable to solve your problem, the best place to go is back in the original thread:    p � q q �   I f   t h e   s c r i p t   i s   u n a b l e   t o   s o l v e   y o u r   p r o b l e m ,   t h e   b e s t   p l a c e   t o   g o   i s   b a c k   i n   t h e   o r i g i n a l   t h r e a d : n  r s r l     �� t u��   t : 4 http://forums.macrumors.com/showthread.php?t=417647    u � v v h   h t t p : / / f o r u m s . m a c r u m o r s . c o m / s h o w t h r e a d . p h p ? t = 4 1 7 6 4 7 s  w x w l     ��������  ��  ��   x  y z y l     �� { |��   { n h This script is hereby released into the public domain. Feel free to use it or its code for any purpose,    | � } } �   T h i s   s c r i p t   i s   h e r e b y   r e l e a s e d   i n t o   t h e   p u b l i c   d o m a i n .   F e e l   f r e e   t o   u s e   i t   o r   i t s   c o d e   f o r   a n y   p u r p o s e , z  ~  ~ l     �� � ���   � #  with or without attribution.    � � � � :   w i t h   o r   w i t h o u t   a t t r i b u t i o n .   � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Changelog:    � � � �    C h a n g e l o g : �  � � � l     �� � ���   �   0.1.0 - original release    � � � � 2   0 . 1 . 0   -   o r i g i n a l   r e l e a s e �  � � � l     �� � ���   � C = 0.1.1 - fixed bug preventing the format process from working    � � � � z   0 . 1 . 1   -   f i x e d   b u g   p r e v e n t i n g   t h e   f o r m a t   p r o c e s s   f r o m   w o r k i n g �  � � � l     �� � ���   � @ : 0.1.2 - now works with volumes with spaces in their names    � � � � t   0 . 1 . 2   -   n o w   w o r k s   w i t h   v o l u m e s   w i t h   s p a c e s   i n   t h e i r   n a m e s �  � � � l     �� � ���   � %  0.1.3 - now a universal binary    � � � � >   0 . 1 . 3   -   n o w   a   u n i v e r s a l   b i n a r y �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ����� � r      � � � I    �� � �
�� .sysodisAaleR        TEXT � m      � � � � �� T H I S   S O F T W A R E   I S   P R O V I D E D   A S - I S   W I T H O U T   W A R R A N T Y   O F   A N Y   K I N D .   U S E   A T   Y O U R   O W N   R I S K .   Y o u   s h o u l d   a l w a y s   h a v e   a n   u p - t o - d a t e   b a c k u p   o f   a l l   o f   y o u r   i m p o r t a n t   f i l e s   b e f o r e   s c r a t c h i n g   y o u r   n o s e ,   l e t   a l o n e   m u c k i n g   a r o u n d   w i t h   d i s k   p e r m i s s i o n s   a n d   s u c h . 
 
 S c r i p t   w r i t t e n   b y   M i k k e l   P a u l s o n 
 ( B l u e R e v o l u t i o n   f r o m   M a c R u m o r s . c o m ) 
 E m a i l   m i k k e l @ a l i e n c o l l e c t i v e . c o m � �� � �
�� 
as A � m    ��
�� EAlTwarN � �� � �
�� 
btns � J    	 � �  � � � m     � � � � �  C a n c e l �  � � � m     � � � � �  S h o w   s o u r c e �  ��� � m     � � � � �  P r o c e e d��   � �� ���
�� 
cbtn � m   
  � � � � �  C a n c e l��   � o      ���� 0 response  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l   5 ����� � Z    5 � ����� � =    � � � n     � � � 1    ��
�� 
bhit � o    ���� 0 response   � m     � � � � �  S h o w   s o u r c e � k    1 � �  � � � O    . � � � k    - � �  � � � I   '�� ���
�� .aevtodocnull  �    alis � l   # ����� � I   #�� ���
�� .earsffdralis        afdr �  f    ��  ��  ��  ��   �  ��� � I  ( -������
�� .miscactvnull��� ��� null��  ��  ��   � m     � ��                                                                                  ToyS  alis    �  Machintosh HD              �5�H+     lAppleScript Editor.app                                          ��ˍB�        ����  	                	Utilities     �5Б      ˍ4�       l   k  =Machintosh HD:Applications: Utilities: AppleScript Editor.app   .  A p p l e S c r i p t   E d i t o r . a p p    M a c h i n t o s h   H D  -Applications/Utilities/AppleScript Editor.app   / ��   �  � � � l  / /��������  ��  ��   �  ��� � L   / 1����  ��  ��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  6 A ����� � r   6 A � � � I  6 =�� ���
�� .sysoexecTEXT���     TEXT � m   6 9 � � � � �  l s   - l   / V o l u m e s��   � o      ���� 0 volumes  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  B Q ����� � r   B Q � � � J   B M � �  � � � m   B E � � � � � * O r i g i n a l   p e r m i s s i o n s : �  � � � o   E H���� 0 volumes   �  ��� � m   H K � � � � �  ��   � o      ���� 0 	actionlog  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  R ] ����� � r   R ] � � � I  R Y�� ���
�� .sysoexecTEXT���     TEXT � m   R U � � � � �  l s   / V o l u m e s��   � o      ���� 0 volumes  ��  ��   �    l  ^ i���� r   ^ i l  ^ e���� n   ^ e 2  a e��
�� 
cpar o   ^ a���� 0 volumes  ��  ��   o      ���� 0 volumes  ��  ��   	 l     �������  ��  �  	 

 l  j p�~�} r   j p J   j l�|�|   o      �{�{  0 workingvolumes workingVolumes�~  �}    l  q w�z�y r   q w J   q s�x�x   o      �w�w 0 borkedvolumes borkedVolumes�z  �y    l     �v�u�t�v  �u  �t    l  x ��s�r X   x ��q Q   � � k   � �   I  � ��p!�o
�p .sysoexecTEXT���     TEXT! b   � �"#" m   � �$$ �%%  t o u c h  # n   � �&'& 1   � ��n
�n 
strq' l  � �(�m�l( b   � �)*) b   � �+,+ m   � �-- �..  / V o l u m e s /, o   � ��k�k 
0 volume  * m   � �// �00 . / . p e r m i s s i o n s _ t e s t _ f i l e�m  �l  �o    121 I  � ��j3�i
�j .sysoexecTEXT���     TEXT3 b   � �454 m   � �66 �77  r m  5 n   � �898 1   � ��h
�h 
strq9 l  � �:�g�f: b   � �;<; b   � �=>= m   � �?? �@@  / V o l u m e s /> o   � ��e�e 
0 volume  < m   � �AA �BB . / . p e r m i s s i o n s _ t e s t _ f i l e�g  �f  �i  2 CDC r   � �EFE b   � �GHG o   � ��d�d  0 workingvolumes workingVolumesH o   � ��c�c 
0 volume  F o      �b�b  0 workingvolumes workingVolumesD I�aI r   � �JKJ b   � �LML o   � ��`�` 0 	actionlog  M l  � �N�_�^N b   � �OPO o   � ��]�] 
0 volume  P m   � �QQ �RR  :   w r i t a b l e�_  �^  K o      �\�\ 0 	actionlog  �a   R      �[�Z�Y
�[ .ascrerr ****      � ****�Z  �Y   k   � �SS TUT r   � �VWV b   � �XYX o   � ��X�X 0 borkedvolumes borkedVolumesY o   � ��W�W 
0 volume  W o      �V�V 0 borkedvolumes borkedVolumesU Z�UZ r   � �[\[ b   � �]^] o   � ��T�T 0 	actionlog  ^ l  � �_�S�R_ b   � �`a` o   � ��Q�Q 
0 volume  a m   � �bb �cc & :   p e r m i s s i o n   d e n i e d�S  �R  \ o      �P�P 0 	actionlog  �U  �q 
0 volume   o   { ~�O�O 0 volumes  �s  �r   ded l     �N�M�L�N  �M  �L  e fgf l  �h�K�Jh Z   �ij�I�Hi =  �klk l  � m�G�Fm n   � non 1   � �E
�E 
lengo o   � ��D�D 0 borkedvolumes borkedVolumes�G  �F  l m   �C�C  j k  pp qrq I �Bst
�B .sysodisAaleR        TEXTs m  uu �vv ( A l l   v o l u m e s   l o o k   O K !t �Aw�@
�A 
btnsw J  	xx y�?y m  	zz �{{  A w e s o m e s a u c e !�?  �@  r |�>| L  �=�=  �>  �I  �H  �K  �J  g }~} l     �<�;�:�<  �;  �:  ~ � l '��9�8� r  '��� J  �� ��7� m  �� ���  
 " ��7  � n     ��� 1  "&�6
�6 
txdl� 1  "�5
�5 
ascr�9  �8  � ��� l     �4�3�2�4  �3  �2  � ��� l (Z��1�0� I (Z�/��
�/ .sysodisAaleR        TEXT� b  (C��� b  (?��� b  (7��� b  (3��� m  (+�� ��� B T h e   f o l l o w i n g   v o l u m e s   l o o k   O K : 
 " �� l +2��.�-� c  +2��� o  +.�,�,  0 workingvolumes workingVolumes� m  .1�+
�+ 
ctxt�.  �-  � m  36�� ��� f 
 
 B u t   I   c o u l d n ' t   w r i t e   t o   t h e   f o l l o w i n g   v o l u m e s : 
 " �� l 7>��*�)� c  7>��� o  7:�(�( 0 borkedvolumes borkedVolumes� m  :=�'
�' 
ctxt�*  �)  � m  ?B�� ��� Z 
 
 D o   y o u   w a n t   t o   t r y   t o   f i x   t h e s e   e r r o r s   n o w ?� �&��
�& 
btns� J  DL�� ��� m  DG�� ���  N o� ��%� m  GJ�� ���  Y e s�%  � �$��
�$ 
dflt� m  OR�� ���  Y e s� �#��"
�# 
cbtn� m  SV�� ���  N o�"  �1  �0  � ��� l     �!� ��!  �   �  � ��� l [h���� r  [h��� J  [`�� ��� m  [^�� ���   �  � n     ��� 1  cg�
� 
txdl� 1  `c�
� 
ascr�  �  � ��� l     ����  �  �  � ��� l io���� r  io��� J  ik��  � o      �� (0 stillborkedvolumes stillBorkedVolumes�  �  � ��� l pv���� r  pv��� J  pr��  � o      �� 0 fixedvolumes fixedVolumes�  �  � ��� l     ����  �  �  � ��� l w����
� X  w���	�� Q  ������ k  ���� ��� r  ����� n  ����� 1  ���
� 
strq� l ������ b  ����� m  ���� ���  / V o l u m e s /� o  ���� 
0 volume  �  �  � o      �� 0 
volumepath 
volumePath� ��� r  ����� I �����
� .sysoexecTEXT���     TEXT� b  ����� b  ����� m  ���� ���  d i s k u t i l   i n f o  � o  ���� 0 
volumepath 
volumePath� m  ���� ��� ,   |   g r e p   " F i l e   S y s t e m : "�  � o      � �  
0 format  � ��� r  ����� c  ����� l �������� n  ����� 7 ������
�� 
cwor� m  ������ �  ;  ��� o  ������ 
0 format  ��  ��  � m  ����
�� 
ctxt� o      ���� 
0 format  � ��� l ����������  ��  ��  � � � r  �� b  �� o  ������ 0 	actionlog   l ������ b  �� b  ��	 o  ������ 
0 volume  	 m  ��

 � 2 :   c u r r e n t l y   f o r m a t t e d   a s   o  ������ 
0 format  ��  ��   o      ���� 0 	actionlog     l ����������  ��  ��    Z  �q�� G  �� = �� o  ������ 
0 format   m  �� �  J o u r n a l e d   H F S   + = �� o  ������ 
0 format   m  �� � 
 H F S   + k  �]  l ���� !��    F @ http://forums.macrumors.com/showpost.php?p=7576229&postcount=37   ! �"" �   h t t p : / / f o r u m s . m a c r u m o r s . c o m / s h o w p o s t . p h p ? p = 7 5 7 6 2 2 9 & p o s t c o u n t = 3 7 #$# I ���%&
�� .sysodisAaleR        TEXT% b  �'(' b  � )*) b  ��+,+ b  ��-.- m  ��// �00 V S h o u l d   I   a t t e m p t   t o   f i x   p e r m i s s i o n s   o n   t h e  . o  ������ 
0 format  , m  ��11 �22    v o l u m e  * o  ������ 
0 volume  ( m   33 �44 l ?   N o   f i l e s   w i l l   b e   m o d i f i e d   o r   d e l e t e d   i n   t h e   p r o c e s s .& ��56
�� 
btns5 J  77 898 m  :: �;;  N o9 <��< m  == �>>  Y e s��  6 ��?@
�� 
dflt? m  AA �BB  Y e s@ ��C��
�� 
cbtnC m  DD �EE  N o��  $ FGF Q  OHI��H I F��JK
�� .sysoexecTEXT���     TEXTJ b  >LML b  :NON b  6PQP b  2RSR b  .TUT b  *VWV b  &XYX m  "ZZ �[[  c h f l a g s   0  Y o  "%���� 0 
volumepath 
volumePathW m  &)\\ �]] & ;   c h o w n   r o o t : a d m i n  U o  *-���� 0 
volumepath 
volumePathS m  .1^^ �__  ;   c h m o d   7 7 5  Q o  25���� 0 
volumepath 
volumePathO m  69`` �aa  ;   c h m o d   - N  M o  :=���� 0 
volumepath 
volumePathK ��b��
�� 
badmb m  AB��
�� boovtrue��  I R      ������
�� .ascrerr ****      � ****��  ��  ��  G c��c r  P]ded b  PYfgf o  PS���� 0 	actionlog  g l SXh����h b  SXiji o  ST���� 
0 volume  j m  TWkk �ll : :   p e r m i s s i o n   r e p a i r   a t t e m p t e d��  ��  e o      ���� 0 	actionlog  ��   mnm = `gopo o  `c���� 
0 format  p m  cfqq �rr  N T F Sn s��s k  jmtt uvu l jj��wx��  w F @ http://forums.macrumors.com/showpost.php?p=7531433&postcount=33   x �yy �   h t t p : / / f o r u m s . m a c r u m o r s . c o m / s h o w p o s t . p h p ? p = 7 5 3 1 4 3 3 & p o s t c o u n t = 3 3v z{z l jj��|}��  | [ U if the user already has NTFS-3G installed, the format will show as "NTFS-3G" instead   } �~~ �   i f   t h e   u s e r   a l r e a d y   h a s   N T F S - 3 G   i n s t a l l e d ,   t h e   f o r m a t   w i l l   s h o w   a s   " N T F S - 3 G "   i n s t e a d{ � r  j���� I j�����
�� .sysodisAaleR        TEXT� b  js��� b  jo��� m  jm�� ���  T h e   p a r t i t i o n  � o  mn���� 
0 volume  � m  or�� ����   i s   f o r m a t t e d   t o   N T F S ,   w h i c h   y o u   c a n ' t   w r i t e   t o   w i t h o u t   a d d i t i o n a l   t h i r d - p a r t y   d r i v e r s .   Y o u   c a n   e i t h e r   i n s t a l l   t h e s e   d r i v e r s ,   o r   f o r m a t   ( e r a s e )   t h e   p a r t i t i o n   a n d   c h o o s e   a   d i f f e r e n t   f i l e s y s t e m .   W h a t   d o   y o u   w a n t   t o   d o ?� ����
�� 
btns� J  t�� ��� m  tw�� ���  S k i p� ��� m  wz�� ���   F o r m a t   p a r t i t i o n� ���� m  z}�� ���  I n s t a l l   d r i v e r s��  � ����
�� 
dflt� m  ���� ���  I n s t a l l   d r i v e r s� �����
�� 
cbtn� m  ���� ���  S k i p��  � o      ���� 0 response  � ��� l ����������  ��  ��  � ���� Z  �m������ = ����� n  ����� 1  ����
�� 
bhit� o  ������ 0 response  � m  ���� ���  I n s t a l l   d r i v e r s� k  ���� ��� I ������
�� .sysodisAaleR        TEXT� b  ����� b  ����� m  ���� ��� � Y o u   w i l l   n e e d   t w o   f r e e   o p e n - s o u r c e   a p p l i c a t i o n s ,   M a c F U S E   a n d   N T F S - 3 G ,   t o   g e t   r e a d / w r i t e   a c c e s s   t o  � o  ������ 
0 volume  � m  ���� ��� .   W h e n   y o u   c l i c k   P r o c e e d ,   t w o   n e w   b r o w s e r   w i n d o w s   o r   t a b s   w i l l   o p e n   w i t h   t h e s e   a p p l i c a t i o n s '   h o m e p a g e s .   O n c e   y o u   h a v e   d o w n l o a d e d   a n d   i n s t a l l e d   b o t h ,   y o u   s h o u l d   b e   a b l e   t o   w r i t e   t o   t h i s   v o l u m e .   I f   n o t ,   r u n   t h i s   a p p l i c a t i o n   a g a i n . 
 
 P l e a s e   n o t e   t h a t   T u x e r a   N T F S   i s   a   p a i d   p r o d u c t   a d v e r t i s e d   o n   t h e   s a m e   p a g e   a s   t h e   f r e e   N T F S - 3 G .   B o t h   p r o d u c t s   w o r k   j u s t   f i n e ,   s o   w h y   p a y   f o r   w h a t   y o u   d o n ' t   h a v e   t o ?� ����
�� 
btns� J  ���� ��� m  ���� ���  S k i p� ���� m  ���� ���  P r o c e e d��  � ����
�� 
dflt� m  ���� ���  P r o c e e d� �����
�� 
cbtn� m  ���� ���  S k i p��  � ��� l ����������  ��  ��  � ��� I �������
�� .sysoexecTEXT���     TEXT� m  ���� ��� � o p e n   h t t p : / / c o d e . g o o g l e . c o m / p / m a c f u s e /   h t t p : / / m a c n t f s - 3 g . b l o g s p o t . c o m /��  � ��� l ����������  ��  ��  � ��� r  ����� b  ����� o  ������ 0 fixedvolumes fixedVolumes� o  ������ 
0 volume  � o      ���� 0 fixedvolumes fixedVolumes� ���� r  ����� b  ����� o  ������ 0 	actionlog  � l �������� b  ����� o  ������ 
0 volume  � m  ���� ��� \ :   u s e r   p r o m p t e d   t o   i n s t a l l   M a c F U S E   a n d   N T F S - 3 G��  ��  � o      ���� 0 	actionlog  ��  ��  � k  �m�� ��� I ������
�� .sysodisAaleR        TEXT� b  ����� b  ����� m  ���� ��� � T h i s   w i l l   P E R M A N E N T L Y   E R A S E   a l l   f i l e s   c u r r e n t l y   o n   t h e   p a r t i t i o n  � o  ������ 
0 volume  � m  ���� ��� T ,   e v e n   i f   t h i s   c o m p u t e r   c a n n o t   r e a d   t h e m .  � ����
�� 
btns� J  ���� ��� m  ���� ���  S k i p� ���� m  ���� ��� , P r o c e e d   t o   e r a s e   f i l e s��  � ����
�� 
cbtn� m  ���� ���  S k i p� �� ��
�� 
as A  m  ����
�� EAlTwarN��  �  l ����������  ��  ��    r  � I ���
�� .sysodisAaleR        TEXT m  ��		 �

 d D o   y o u   w a n t   h e l p   c h o o s i n g   w h i c h   f i l e s y s t e m   t o   u s e ? ��
�� 
btns J  �	  m  � �  C a n c e l  m   �  N o �� m   �  Y e s��   ��
�� 
dflt m   �  Y e s ����
�� 
cbtn m   �  C a n c e l��   o      ���� 0 response    !  Z  �"#��$" = !%&% n  '(' 1  ��
�� 
bhit( o  ���� 0 response  & m   )) �**  Y e s# k  $�++ ,-, r  $?./. I $=��01
�� .sysodisAaleR        TEXT0 m  $'22 �33 h D o   y o u   i n t e n d   t o   i n s t a l l   M a c   O S   X   o n   t h i s   p a r t i t i o n ?1 ��45
�� 
btns4 J  (366 787 m  (+99 �::  C a n c e l8 ;<; m  +.== �>>  N o< ?��? m  .1@@ �AA  Y e s��  5 ��B��
�� 
cbtnB m  47CC �DD  C a n c e l��  / o      ���� 0 response  - EFE l @@��������  ��  ��  F G��G Z  @�HI��JH = @GKLK n  @CMNM 1  AC��
�� 
bhitN o  @A���� 0 response  L m  CFOO �PP  Y e sI r  JQQRQ m  JMSS �TT 
 J H F S +R o      ���� 
0 format  ��  J k  T�UU VWV r  ToXYX I Tm��Z[
�� .sysodisAaleR        TEXTZ m  TW\\ �]] � D o   y o u   i n t e n d   t o   p l u g   t h i s   h a r d   d r i v e   i n t o   a   W i n d o w s   P C ,   o r   u s e   i t   t o   s t o r e   d a t a   f o r   a   B o o t   C a m p   p a r t i t i o n ?[ �^_
� 
btns^ J  Xc`` aba m  X[cc �dd  C a n c e lb efe m  [^gg �hh  N of i�~i m  ^ajj �kk  Y e s�~  _ �}l�|
�} 
cbtnl m  dgmm �nn  C a n c e l�|  Y o      �{�{ 0 response  W opo l pp�z�y�x�z  �y  �x  p q�wq Z  p�rs�vtr = pwuvu n  pswxw 1  qs�u
�u 
bhitx o  pq�t�t 0 response  v m  svyy �zz  N os r  z�{|{ m  z}}} �~~ 
 J H F S +| o      �s�s 
0 format  �v  t k  �� ��� r  ����� I ���r��
�r .sysodisAaleR        TEXT� m  ���� ��� j D o   y o u   i n t e n d   t o   u s e   t h i s   h a r d   d r i v e   w i t h   o t h e r   M a c s ?� �q��
�q 
btns� J  ���� ��� m  ���� ���  C a n c e l� ��� m  ���� ���  N o� ��p� m  ���� ���  Y e s�p  � �o��n
�o 
cbtn� m  ���� ���  C a n c e l�n  � o      �m�m 0 response  � ��� l ���l�k�j�l  �k  �j  � ��i� Z  �����h�� = ����� n  ����� 1  ���g
�g 
bhit� o  ���f�f 0 response  � m  ���� ���  Y e s� r  ����� m  ���� ���  M S - D O S� o      �e�e 
0 format  �h  � k  ���� ��� I ���d��
�d .sysodisAaleR        TEXT� m  ���� ��� T Y o u   s h o u l d ' v e   i n s t a l l e d   t h e   d r i v e r s ,   t h e n .� �c��
�c 
btns� J  ���� ��b� m  ���� ���  B u g g e r�b  � �a��`
�a 
dflt� m  ���� ���  B u g g e r�`  � ��_� R  ���^��]
�^ .ascrerr ****      � ****� m  ���� ��� F S h o u l d ' v e   i n s t a l l e d   M a c F U S E / N T F S - 3 G�]  �_  �i  �w  ��  ��  $ r  ����� m  ���� ��� 
 J H F S +� o      �\�\ 
0 format  ! ��� l ���[�Z�Y�[  �Z  �Y  � ��� r  ���� I ��X��
�X .sysodlogaskr        TEXT� m  ���� ���z W h a t   f o r m a t   d o   y o u   w a n t   t o   u s e ?   C o m m o n   f o r m a t s : 
 
 " � " J H F S + "   =   M a c   O S   E x t e n d e d   ( J o u r n a l e d ) 
 " � " H F S + "   =   M a c   O S   E x t e n d e d 
 "   " M S - D O S "   =   F A T 3 2 
 
 D e p e n d i n g   o n   t h e   s p e e d   o f   y o u r   c o m p u t e r ,   t h e   s i z e   o f   y o u r   d r i v e ,   a n d   t h e   f i l e s y s t e m   y o u   h a v e   c h o s e n ,   t h i s   p r o c e s s   m a y   t a k e   a   f e w   m i n u t e s ,   d u r i n g   w h i c h   t i m e   y o u   w i l l   s e e   n o   f e e d b a c k .� �W��
�W 
dtxt� o  ���V�V 
0 format  � �U��
�U 
btns� J  ���� ��� m  ���� ��� " K e e p   d r i v e   i n t a c t� ��T� b  ����� m  ���� ��� $ P e r m a n e n t l y   e r a s e  � o  ���S�S 
0 volume  �T  � �R��
�R 
dflt� m  ���� ��� " K e e p   d r i v e   i n t a c t� �Q��
�Q 
cbtn� m  ���� ��� " K e e p   d r i v e   i n t a c t� �P��O
�P 
disp� m  ���N
�N stic   �O  � o      �M�M 0 response  � ��� l �L�K�J�L  �K  �J  � ��I� Z  m���H�G� = ��� n  ��� 1  	�F
�F 
bhit� o  	�E�E 0 response  � b  ��� m  �� ��� $ P e r m a n e n t l y   e r a s e  � o  �D�D 
0 volume  � Q  i���C� k  `�� ��� I 8�B��
�B .sysoexecTEXT���     TEXT� b  0��� b  ,��� b  (��� b  "��� b  ��� m     � * d i s k u t i l   e r a s e V o l u m e  � o  �A�A 
0 format  � m  ! �   � l "'�@�? n  "' 1  #'�>
�> 
strq o  "#�=�= 
0 volume  �@  �?  � m  (+ �   � o  ,/�<�< 0 
volumepath 
volumePath� �;	�:
�; 
badm	 m  34�9
�9 boovtrue�:  � 

 r  9J b  9F o  9<�8�8 0 	actionlog   l <E�7�6 b  <E b  <A o  <=�5�5 
0 volume   m  =@ � " :   r e f o r m a t t e d   t o   o  AD�4�4 
0 format  �7  �6   o      �3�3 0 	actionlog   �2 I K`�1�0
�1 .sysodisAaleR        TEXT b  K\ b  KX b  KT b  KP  m  KN!! �""  T h e   v o l u m e    o  NO�/�/ 
0 volume   m  PS## �$$ B   w a s   s u c c e s s f u l l y   r e f o r m a t t e d   t o   o  TW�.�. 
0 format   m  X[%% �&&  !�0  �2  � R      �-�,�+
�- .ascrerr ****      � ****�,  �+  �C  �H  �G  �I  ��  ��  ��   '(' l rr�*�)�(�*  �)  �(  ( )�') Z  r�*+�&�%* H  rx,, E  rw-.- o  ru�$�$ 0 fixedvolumes fixedVolumes. o  uv�#�# 
0 volume  + k  {�// 010 I {��"2�!
�" .sysoexecTEXT���     TEXT2 b  {�343 m  {~55 �66  t o u c h  4 l ~�7� �7 b  ~�898 b  ~�:;: n  ~�<=< 1  ���
� 
strq= m  ~�>> �??  / V o l u m e s /; o  ���� 
0 volume  9 m  ��@@ �AA . / . p e r m i s s i o n s _ t e s t _ f i l e�   �  �!  1 BCB I ���D�
� .sysoexecTEXT���     TEXTD b  ��EFE m  ��GG �HH  r m  F l ��I��I b  ��JKJ b  ��LML n  ��NON 1  ���
� 
strqO m  ��PP �QQ  / V o l u m e s /M o  ���� 
0 volume  K m  ��RR �SS . / . p e r m i s s i o n s _ t e s t _ f i l e�  �  �  C TUT r  ��VWV b  ��XYX o  ���� 0 fixedvolumes fixedVolumesY o  ���� 
0 volume  W o      �� 0 fixedvolumes fixedVolumesU Z�Z r  ��[\[ b  ��]^] o  ���� 0 	actionlog  ^ l ��_��_ b  ��`a` o  ���� 
0 volume  a m  ��bb �cc  :   w o r k s   n o w !�  �  \ o      �� 0 	actionlog  �  �&  �%  �'  � R      �d�
� .ascrerr ****      � ****d o      �� 0 errormessage  �  � k  ��ee fgf r  ��hih b  ��jkj o  ���
�
 (0 stillborkedvolumes stillBorkedVolumesk o  ���	�	 
0 volume  i o      �� (0 stillborkedvolumes stillBorkedVolumesg l�l r  ��mnm b  ��opo o  ���� 0 	actionlog  p l ��q��q b  ��rsr b  ��tut o  ���� 
0 volume  u m  ��vv �ww . :   s t i l l   b o r k e d   ' c o s   o f  s o  ���� 0 errormessage  �  �  n o      �� 0 	actionlog  �  �	 
0 volume  � o  z}� �  0 borkedvolumes borkedVolumes�  �
  � xyx l     ��������  ��  ��  y z{z l ��|����| r  ��}~} J  �� ���� m  ���� ���  
 " ���  ~ n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr��  ��  { ��� l     ��������  ��  ��  � ��� l �N������ Z  �N������ ?  � ��� l �������� l �������� I �������
�� .corecnte****       ****� o  ������ 0 fixedvolumes fixedVolumes��  ��  ��  ��  ��  � m  ������  � Z  <������ ?  ��� l 
������ l 
������ I 
�����
�� .corecnte****       ****� o  ���� (0 stillborkedvolumes stillBorkedVolumes��  ��  ��  ��  ��  � m  
����  � I *�����
�� .sysodisAaleR        TEXT� b  &��� b  ��� b  ��� m  �� ��� H T h e   f o l l o w i n g   v o l u m e s   w e r e   f i x e d : 
 " �� l ������ c  ��� o  ���� 0 fixedvolumes fixedVolumes� m  ��
�� 
ctxt��  ��  � m  �� ��� \ 
 
 B u t   I   c o u l d n ' t   f i x   t h e   f o l l o w i n g   v o l u m e s : 
 " �� l %������ c  %��� o  !���� (0 stillborkedvolumes stillBorkedVolumes� m  !$��
�� 
ctxt��  ��  ��  ��  � I -<�����
�� .sysodisAaleR        TEXT� b  -8��� m  -0�� ��� H T h e   f o l l o w i n g   v o l u m e s   w e r e   f i x e d : 
 " �� l 07������ c  07��� o  03���� 0 fixedvolumes fixedVolumes� m  36��
�� 
ctxt��  ��  ��  ��  � I ?N�����
�� .sysodisAaleR        TEXT� b  ?J��� m  ?B�� ��� ^ I   c o u l d n ' t   f i x   a n y   o f   t h e   f o l l o w i n g   v o l u m e s : 
 "  � l BI������ c  BI��� o  BE���� (0 stillborkedvolumes stillBorkedVolumes� m  EH��
�� 
ctxt��  ��  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l Oi������ I Oi����
�� .sysodlogaskr        TEXT� m  OR�� ��� � D o   y o u   w a n t   m e   t o   o u t p u t   a   l o g ?   T h i s   m i g h t   b e   h e l p f u l   i f   y o u ' r e   p o s t i n g   t o   f o r u m s   o r   s o m e t h i n g .� ����
�� 
btns� J  S[�� ��� m  SV�� ���  N o� ���� m  VY�� ���  Y e s��  � ����
�� 
dflt� m  ^a�� ���  Y e s� �����
�� 
cbtn� m  be�� ���  N o��  ��  ��  � ��� l     ��������  ��  ��  � ��� l jw������ r  jw��� J  jo�� ���� m  jm�� ���  
��  � n     ��� 1  rv��
�� 
txdl� 1  or��
�� 
ascr��  ��  � ��� l     ��������  ��  ��  � ��� l x������� r  x���� c  x��� o  x{���� 0 	actionlog  � m  {~��
�� 
ctxt� o      ���� 0 	actionlog  ��  ��  � ��� l �������� r  ����� I �������
�� .sysoexecTEXT���     TEXT� m  ���� ���  l s   - l   / V o l u m e s��  � o      ���� 0 volumes  ��  ��  � ��� l     ��������  ��  ��  � ���� l �������� O  ����� k  ���� ��� I �������
�� .corecrel****      � null��  � �����
�� 
kocl� m  ����
�� 
docu��  � ��� I ������ 
�� .corecrel****      � null��    ��
�� 
kocl m  ����
�� 
cpar ��
�� 
insh l ������ n  ��  ;  �� 4  ����
�� 
docu m  ������ ��  ��   ��	��
�� 
data	 b  ��

 b  �� o  ������ 0 	actionlog   m  �� � & 
 
 N e w   p e r m i s s i o n s : 
 o  ������ 0 volumes  ��  � �� I ��������
�� .miscactvnull��� ��� null��  ��  ��  � m  ���                                                                                  ttxt  alis    X  Machintosh HD              �5�H+     kTextEdit.app                                                    <
�
��        ����  	                Applications    �5Б      �
��       k  (Machintosh HD:Applications: TextEdit.app    T e x t E d i t . a p p    M a c h i n t o s h   H D  Applications/TextEdit.app   / ��  ��  ��  ��       ������������������   ����������������~�}�|�{�z�y�x�w
�� .aevtoappnull  �   � ****�� 0 response  �� 0 volumes  �� 0 	actionlog  ��  0 workingvolumes workingVolumes�� 0 borkedvolumes borkedVolumes�� (0 stillborkedvolumes stillBorkedVolumes� 0 fixedvolumes fixedVolumes�~ 0 
volumepath 
volumePath�}  �|  �{  �z  �y  �x  �w   �v�u�t�s
�v .aevtoappnull  �   � **** k    �  �    �!!  �""  �##  �$$  %% 
&& '' (( f)) ** �++ �,, �-- �.. �// z00 �11 �22 �33 �44 �55 ��r�r  �u  �t   �q�p�q 
0 volume  �p 0 errormessage   � ��o�n�m � � ��l ��k�j�i�h � ��g�f�e ��d�c � ��b ��a�`�_�^�]�\$-/�[6?AQ�Z�Yb�Xuz��W�V��U�����T����S�R��Q���P�O
�N/13:=ADZ\^`�Mkq���������������������	)29=@C�LOS\cgjmy}��������������K�����J�I�H�G� !#%5>@GPRb�Fv�������������E�D�C�B
�o 
as A
�n EAlTwarN
�m 
btns
�l 
cbtn�k 
�j .sysodisAaleR        TEXT�i 0 response  
�h 
bhit
�g .earsffdralis        afdr
�f .aevtodocnull  �    alis
�e .miscactvnull��� ��� null
�d .sysoexecTEXT���     TEXT�c 0 volumes  �b 0 	actionlog  
�a 
cpar�`  0 workingvolumes workingVolumes�_ 0 borkedvolumes borkedVolumes
�^ 
kocl
�] 
cobj
�\ .corecnte****       ****
�[ 
strq�Z  �Y  
�X 
leng
�W 
ascr
�V 
txdl
�U 
ctxt
�T 
dflt�S (0 stillborkedvolumes stillBorkedVolumes�R 0 fixedvolumes fixedVolumes�Q 0 
volumepath 
volumePath�P 
0 format  
�O 
cwor
�N 
bool
�M 
badm�L 
�K 
dtxt
�J 
disp
�I stic   �H 

�G .sysodlogaskr        TEXT�F 0 errormessage  
�E 
docu
�D .corecrel****      � null
�C 
insh
�B 
data�s��������mv��� 
E�O��,�  � )j j O*j UOhY hOa j E` Oa _ a mvE` Oa j E` O_ a -E` OjvE` OjvE` O _ [a a l kh   Ha a  �%a !%a ",%j Oa #a $�%a %%a ",%j O_ �%E` O_ �a &%%E` W X ' (_ �%E` O_ �a )%%E` [OY��O_ a *,j  a +�a ,kvl 
OhY hOa -kv_ .a /,FOa 0_ a 1&%a 2%_ a 1&%a 3%�a 4a 5lva 6a 7�a 8� 
Oa 9kv_ .a /,FOjvE` :OjvE` ;Op_ [a a l kh  7a <�%a ",E` =Oa >_ =%a ?%j E` @O_ @[a A\[Zm\62a 1&E` @O_ �a B%_ @%%E` O_ @a C 
 _ @a D a E& oa F_ @%a G%�%a H%�a Ia Jlva 6a K�a L� 
O ,a M_ =%a N%_ =%a O%_ =%a P%_ =%a Qel W X ' (hO_ �a R%%E` Y_ @a S a T�%a U%�a Va Wa Xmva 6a Y�a Z� 
E�O��,a [  Ea \�%a ]%�a ^a _lva 6a `�a a� 
Oa bj O_ ;�%E` ;O_ �a c%%E` Y�a d�%a e%�a fa glv�a h��� 
Oa i�a ja ka lmva 6a m�a n� 
E�O��,a o  �a p�a qa ra smv�a ta u 
E�O��,a v  a wE` @Y ~a x�a ya za {mv�a |a u 
E�O��,a }  a ~E` @Y Na �a �a �a �mv�a �a u 
E�O��,a �  a �E` @Y a ��a �kva 6a �a u 
O)ja �Y 	a �E` @Oa �a �_ @�a �a ��%lva 6a ��a �a �a �a � �E�O��,a ��%  Z Na �_ @%a �%�a ",%a �%_ =%a Qel O_ �a �%_ @%%E` Oa ��%a �%_ @%a �%j 
W X ' (hY hY hO_ ;� Ha �a �a ",�%a �%%j Oa �a �a ",�%a �%%j O_ ;�%E` ;O_ �a �%%E` Y hW  X � (_ :�%E` :O_ �a �%�%%E` [OY��Oa �kv_ .a /,FO_ ;j j >_ :j j  a �_ ;a 1&%a �%_ :a 1&%j 
Y a �_ ;a 1&%j 
Y a �_ :a 1&%j 
Oa ��a �a �lva 6a ��a �� �Oa �kv_ .a /,FO_ a 1&E` Oa �j E` Oa � 7*a a �l �O*a a a �*a �k/6a �_ a �%_ %� �O*j U �A6�@
�A 
bhit6 �77  P r o c e e d�@   �88� t o t a l   8  d r w x r w x r - x     1 5   _ u n k n o w n     _ u n k n o w n       5 7 8   M a y   3 0   1 6 : 5 8   M a c B a c k u p  d r w x r w x r - x @   2 8   a r t               s t a f f           1 0 2 0   M a y   3 0   1 6 : 5 8   M a c D o c u m e n t s  d r w x r w x r - x     8 3   _ u n k n o w n     _ u n k n o w n     2 8 9 0   M a y   3 0   1 6 : 4 1   M a c M o v i e s  l r w x r - x r - x       1   r o o t             a d m i n                 1   M a y   1 9   2 3 : 2 3   M a c h i n t o s h   H D   - >   /  d r w x r w x r - t     3 3   r o o t             a d m i n           1 1 9 0   M a y   3 0   1 6 : 5 8   S n o w L e o p a r d �99P O r i g i n a l   p e r m i s s i o n s : 
 t o t a l   8  d r w x r w x r - x     1 5   _ u n k n o w n     _ u n k n o w n       5 7 8   M a y   3 0   1 6 : 5 6   M a c B a c k u p  d r w x r w x r - x @   2 8   a r t               s t a f f           1 0 2 0   M a y   3 0   1 6 : 5 6   M a c D o c u m e n t s  d r w x r w x r - x     8 3   _ u n k n o w n     _ u n k n o w n     2 8 9 0   M a y   3 0   1 6 : 4 1   M a c M o v i e s  l r w x r - x r - x       1   r o o t             a d m i n                 1   M a y   1 9   2 3 : 2 3   M a c h i n t o s h   H D   - >   /  d r w x r w x r - t     3 3   r o o t             a d m i n           1 1 9 0   M a y   3 0   1 6 : 5 6   S n o w L e o p a r d 
 
 M a c B a c k u p :   w r i t a b l e 
 M a c D o c u m e n t s :   w r i t a b l e 
 M a c M o v i e s :   p e r m i s s i o n   d e n i e d 
 M a c h i n t o s h   H D :   w r i t a b l e 
 S n o w L e o p a r d :   w r i t a b l e 
 M a c M o v i e s :   s t i l l   b o r k e d   ' c o s   o f   T h e   c o m m a n d   e x i t e d   w i t h   a   n o n - z e r o   s t a t u s . �?:�? :  ;<=>; �??  M a c B a c k u p< �@@  M a c D o c u m e n t s= �AA  M a c h i n t o s h   H D> �BB  S n o w L e o p a r d �>C�> C  DD �EE  M a c M o v i e s �=F�= F  D �<�;�<  �;   �GG ( ' / V o l u m e s / M a c M o v i e s '��  ��  ��  ��  ��  ��  ��   ascr  ��ޭ