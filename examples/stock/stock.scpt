FasdUAS 1.101.10   ��   ��    k             l     ��  ��      stock-quotes     � 	 	    s t o c k - q u o t e s   
  
 l     ��������  ��  ��        l     ��  ��    4 . Initialize the stock repository, if necessary     �   \   I n i t i a l i z e   t h e   s t o c k   r e p o s i t o r y ,   i f   n e c e s s a r y      l     ��  ��    + % repo: simply a folder on the Desktop     �   J   r e p o :   s i m p l y   a   f o l d e r   o n   t h e   D e s k t o p      i         I      �������� 0 setup_stock_repository  ��  ��    k     5       r     	    I    ��   
�� .earsffdralis        afdr  m     ��
�� afdmdesk   �� !��
�� 
rtyp ! m    ��
�� 
TEXT��    o      ���� 0 desktop_path     "�� " O   
 5 # $ # k    4 % %  & ' & r     ( ) ( b     * + * o    ���� 0 desktop_path   + m     , , � - -   S t o c k   R e p o s i t o r y ) l      .���� . o      ���� 0 repository_folder  ��  ��   '  /�� / Z    4 0 1���� 0 H     2 2 l    3���� 3 I   �� 4��
�� .coredoexbool        obj  4 4    �� 5
�� 
cfol 5 o    ���� 0 repository_folder  ��  ��  ��   1 I    0���� 6
�� .corecrel****      � null��   6 �� 7 8
�� 
kocl 7 m   " #��
�� 
cfol 8 �� 9 :
�� 
insh 9 1   $ '��
�� 
desk : �� ;��
�� 
prdt ; K   ( , < < �� =��
�� 
pnam = m   ) * > > � ? ?   S t o c k   R e p o s i t o r y��  ��  ��  ��  ��   $ m   
  @ @�                                                                                  MACS  alis    t  Macintosh HD               �>��H+   ��
Finder.app                                                      �����        ����  	                CoreServices    �>��      �͒     �� �� ��  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��     A B A l     ��������  ��  ��   B  C D C l     �� E F��   E 7 1 Uses HTTP GET to download a delayed stock quote     F � G G b   U s e s   H T T P   G E T   t o   d o w n l o a d   a   d e l a y e d   s t o c k   q u o t e   D  H I H i     J K J I      �� L���� 0 download_quote   L  M�� M o      ���� 0 stock_symbol  ��  ��   K Q     z N O P N k    d Q Q  R S R r     T U T l 	   V���� V l    W���� W b     X Y X m     Z Z � [ [ v h t t p : / / w w w . w e b s e r v i c e x . n e t / s t o c k q u o t e . a s m x / G e t Q u o t e ? s y m b o l = Y o    ���� 0 stock_symbol  ��  ��  ��  ��   U o      ���� 0 download_url   S  \ ] \ l  	 	��������  ��  ��   ]  ^ _ ^ l  	 	�� ` a��   ` ( " Download XML with embedded quote     a � b b D   D o w n l o a d   X M L   w i t h   e m b e d d e d   q u o t e   _  c d c l   	 	�� e f��   e N H
		"URL Access Scripting" app removed by Apple		replaced with "curl"
		    f � g g � 
 	 	 " U R L   A c c e s s   S c r i p t i n g "   a p p   r e m o v e d   b y   A p p l e  	 	 r e p l a c e d   w i t h   " c u r l " 
 	 	 d  h i h l  	 	�� j k��   j - 'tell application "URL Access Scripting"    k � l l N t e l l   a p p l i c a t i o n   " U R L   A c c e s s   S c r i p t i n g " i  m n m l  	 	�� o p��   o 3 -set temp_file to "/var/tmp/stockdownload.xml"    p � q q Z s e t   t e m p _ f i l e   t o   " / v a r / t m p / s t o c k d o w n l o a d . x m l " n  r s r l  	 	�� t u��   t 7 1download download_url to temp_file replacing yes     u � v v b d o w n l o a d   d o w n l o a d _ u r l   t o   t e m p _ f i l e   r e p l a c i n g   y e s   s  w x w l  	 	�� y z��   y  end tell    z � { {  e n d   t e l l x  | } | l  	 	��������  ��  ��   }  ~  ~ r   	  � � � m   	 
 � � � � � 4 / v a r / t m p / s t o c k d o w n l o a d . x m l � o      ���� 0 	temp_file     � � � I   �� ���
�� .sysoexecTEXT���     TEXT � b     � � � b     � � � b     � � � m     � � � � �  c u r l   - L   � o    ���� 0 download_url   � m     � � � � �    - o   � o    ���� 0 	temp_file  ��   �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   �   Read in downloaded XML    � � � � .   R e a d   i n   d o w n l o a d e d   X M L �  � � � I   �� ���
�� .rdwropenshor       file � o    ���� 0 	temp_file  ��   �  � � � r    & � � � l   $ ����� � I   $�� ���
�� .rdwrread****        **** � o     ���� 0 	temp_file  ��  ��  ��   � o      ���� 0 download_string   �  � � � I  ' ,�� ���
�� .rdwrclosnull���     **** � o   ' (���� 0 	temp_file  ��   �  � � � l  - -��������  ��  ��   �  � � � l  - -�� � ���   � J D Search for last quote, which is between "Last&gt;" and "&lt;/Last"     � � � � �   S e a r c h   f o r   l a s t   q u o t e ,   w h i c h   i s   b e t w e e n   " L a s t & g t ; "   a n d   " & l t ; / L a s t "   �  � � � r   - 8 � � � l  - 6 ����� � I  - 6���� �
�� .sysooffslong    ��� null��   � �� � �
�� 
psof � m   / 0 � � � � �  L a s t & g t ; � �� ���
�� 
psin � o   1 2���� 0 download_string  ��  ��  ��   � o      ���� 0 open_tag_offset   �  � � � r   9 > � � � [   9 < � � � o   9 :���� 0 open_tag_offset   � m   : ;����  � o      ���� 0 quote_offset   �  � � � r   ? J � � � l  ? H ����� � I  ? H���� �
�� .sysooffslong    ��� null��   � �� � �
�� 
psof � m   A B � � � � �  & l t ; / L a s t � �� ���
�� 
psin � o   C D���� 0 download_string  ��  ��  ��   � o      ���� 0 close_tag_offset   �  � � � r   K \ � � � l  K X ����� � n   K X � � � 7  L X�� � �
�� 
ctxt � o   P R���� 0 quote_offset   � l  S W ����� � \   S W � � � o   T U���� 0 close_tag_offset   � m   U V���� ��  ��   � l 	 K L ����� � o   K L���� 0 download_string  ��  ��  ��  ��   � 1      ��
�� 
quot �  � � � l  ] ]��������  ��  ��   �  � � � L   ] b � � 1   ] a��
�� 
quot �  �� � l  c c�~�}�|�~  �}  �|  �   O R      �{ ��z
�{ .ascrerr ****      � **** � o      �y�y 0 msg  �z   P k   l z � �  � � � I  l u�x ��w
�x .sysodlogaskr        TEXT � b   l q � � � m   l o � � � � � " D o w n l o a d   f a i l e d :   � o   o p�v�v 0 msg  �w   �  ��u � L   v z � � m   v y � � � � �  �u   I  � � � l     �t�s�r�t  �s  �r   �  � � � l     �q � ��q   � @ : Save a price in the repository for the stock symbol given    � � � � t   S a v e   a   p r i c e   i n   t h e   r e p o s i t o r y   f o r   t h e   s t o c k   s y m b o l   g i v e n �  � � � i     � � � I      �p�o ��p 0 save_latest_price  �o   � �n � ��n 	0 stock   � o      �m�m 0 stock_symbol   � �l ��k�l 	0 price   � o      �j�j 	0 price  �k   � k     ] � �  � � � r     	 � � � I    �i � �
�i .earsffdralis        afdr � m     �h
�h afdmdesk � �g ��f
�g 
rtyp � m    �e
�e 
TEXT�f   � o      �d�d 0 desktop_path   �  � � � r   
    b   
  o   
 �c�c 0 desktop_path   m     �   S t o c k   R e p o s i t o r y l     �b�a o      �`�` 0 repository_folder  �b  �a   �  r    	
	 b     b     o    �_�_ 0 repository_folder   m     �  : o    �^�^ 0 stock_symbol  
 o      �]�] 0 stock_file_path    Q    : r    ' I   %�\
�\ .rdwropenshor       file 4    �[
�[ 
file o    �Z�Z 0 stock_file_path   �Y�X
�Y 
perm m     !�W
�W boovtrue�X   o      �V�V 0 file_number   R      �U�T�S
�U .ascrerr ****      � ****�T  �S   k   / :  I  / 7�R�Q
�R .rdwrclosnull���     **** 4   / 3�P 
�P 
file  o   1 2�O�O 0 stock_file_path  �Q   !�N! L   8 :�M�M  �N   "#" r   ; B$%$ I  ; @�L&�K
�L .rdwrgeofcomp       ****& o   ; <�J�J 0 file_number  �K  % o      �I�I 0 end_of_file  # '(' I  C T�H)*
�H .rdwrwritnull���     ****) b   C H+,+ l  C F-�G�F- c   C F./. o   C D�E�E 	0 price  / m   D E�D
�D 
TEXT�G  �F  , o   F G�C
�C 
ret * �B01
�B 
refn0 o   I J�A�A 0 file_number  1 �@2�?
�@ 
wrat2 [   K N343 o   K L�>�> 0 end_of_file  4 m   L M�=�= �?  ( 5�<5 I  U ]�;6�:
�; .rdwrclosnull���     ****6 4   U Y�97
�9 
file7 o   W X�8�8 0 stock_file_path  �:  �<   � 898 l     �7�6�5�7  �6  �5  9 :;: l     �4<=�4  < "  Download and save the price   = �>> 8   D o w n l o a d   a n d   s a v e   t h e   p r i c e; ?@? i    ABA I      �3C�2�3 0 archive_stock_price  C D�1D o      �0�0 0 stock_symbol  �1  �2  B k     EE FGF r     HIH I     �/J�.�/ 0 download_quote  J K�-K o    �,�, 0 stock_symbol  �-  �.  I o      �+�+ 	0 price  G L�*L I  	 �)�(M�) 0 save_latest_price  �(  M �'NO�' 	0 stock  N o    �&�& 0 stock_symbol  O �%P�$�% 	0 price  P o    �#�# 	0 price  �$  �*  @ QRQ l     �"�!� �"  �!  �   R STS l     �UV�  U   Main script    V �WW    M a i n   s c r i p t  T XYX l    Z��Z I     ���� 0 setup_stock_repository  �  �  �  �  Y [\[ l   ]��] I    �^�� 0 archive_stock_price  ^ _�_ m    `` �aa  A A P L�  �  �  �  \ bcb l   d��d I    �e�� 0 archive_stock_price  e f�f m    gg �hh  I B M�  �  �  �  c iji l   k��k I    �l�� 0 archive_stock_price  l m�m m    nn �oo  M S F T�  �  �  �  j p�
p l     �	���	  �  �  �
       �qrstuv�  q ������ 0 setup_stock_repository  � 0 download_quote  � 0 save_latest_price  � 0 archive_stock_price  
� .aevtoappnull  �   � ****r �  ����wx���  0 setup_stock_repository  ��  ��  w ������ 0 desktop_path  �� 0 repository_folder  x �������� @ ,�������������� >����
�� afdmdesk
�� 
rtyp
�� 
TEXT
�� .earsffdralis        afdr
�� 
cfol
�� .coredoexbool        obj 
�� 
kocl
�� 
insh
�� 
desk
�� 
prdt
�� 
pnam�� 
�� .corecrel****      � null�� 6���l E�O� (��%E�O*�/j  *���*�,���l� Y hUs �� K����yz���� 0 download_quote  �� ��{�� {  ���� 0 stock_symbol  ��  y ������������������ 0 stock_symbol  �� 0 download_url  �� 0 	temp_file  �� 0 download_string  �� 0 open_tag_offset  �� 0 quote_offset  �� 0 close_tag_offset  �� 0 msg  z  Z � � ����������� ��������� ��������� ��� �
�� .sysoexecTEXT���     TEXT
�� .rdwropenshor       file
�� .rdwrread****        ****
�� .rdwrclosnull���     ****
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null�� 
�� 
ctxt
�� 
quot�� 0 msg  ��  
�� .sysodlogaskr        TEXT�� { f�%E�O�E�O�%�%�%j O�j O�j E�O�j O*���� E�O��E�O*���� E�O�[�\[Z�\Z�k2E` O_ EOPW X  a �%j Oa t �� �����|}���� 0 save_latest_price  ��  �� ����~�� 	0 stock  �� 0 stock_symbol  ~ �������� 	0 price  �� 	0 price  ��  | ���������������� 0 stock_symbol  �� 	0 price  �� 0 desktop_path  �� 0 repository_folder  �� 0 stock_file_path  �� 0 file_number  �� 0 end_of_file  } ��������������������������������
�� afdmdesk
�� 
rtyp
�� 
TEXT
�� .earsffdralis        afdr
�� 
file
�� 
perm
�� .rdwropenshor       file��  ��  
�� .rdwrclosnull���     ****
�� .rdwrgeofcomp       ****
�� 
ret 
�� 
refn
�� 
wrat�� 
�� .rdwrwritnull���     ****�� ^���l E�O��%E�O��%�%E�O *�/�el E�W X 	 
*�/j OhO�j E�O��&�%��ka  O*�/j u ��B��������� 0 archive_stock_price  �� ����� �  ���� 0 stock_symbol  ��   ������ 0 stock_symbol  �� 	0 price  � ������������ 0 download_quote  �� 	0 stock  �� 	0 price  �� �� 0 save_latest_price  �� *�k+  E�O*��� v �����������
�� .aevtoappnull  �   � ****� k     �� X�� [�� b�� i����  ��  ��  �  � ��`��gn�� 0 setup_stock_repository  �� 0 archive_stock_price  �� *j+  O*�k+ O*�k+ O*�k+  ascr  ��ޭ