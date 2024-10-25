CDF  �   
      time          *   Conventions       ACDD-1.3, Spase v2.2.3     title         /DSCOVR Magnetometer Level 2 One Minute Averages    id        Doe_m1m_dscovr_s20170907000000_e20170907235959_p20170908023314_pub.nc   naming_authority      gov.noaa.swpc      program       DSCOVR     summary       }Interplanetary magnetic field observations collected from magnetometer on DSCOVR satellite - 1-minute average of Level 1 data      keywords      _NumericalData.ObservedRegion.Heliosphere.NearEarth, NumericalData.MeasurementType.MagneticField    keywords_vocabulary       Spase v2.2.2   
references        �; DSCOVR TIME SERIES DATA AVERAGES ALGORITHM THEORETICAL BASIS DOCUMENT, v2.4; GSE TO GSM COORDINATE TRANSFORMATION ALGORITHM THEORETICAL BASIS DOCUMENT v2.1      metadata_link         �http://www.ngdc.noaa.gov/docucomp/page?xml=NOAA/NESDIS/NGDC/STP/Space_Weather/iso/xml/satellite-systems_dscovr.xml&view=getDataView&header=none    license       Spase.Access Rights.Open   institution       NOAA   source        DSCOVR Magnetometer Level 1    platform      'Deep Space Climate Observatory (DSCOVR)    
instrument        +boom-mounted triaxial fluxgate magnetometer    history       ,DSCOVR real-time telemetry processing system   	algorithm         FDSCOVR MAGNETOMETER LEVEL 1B DATA ALGORITHM THEORETICAL BASIS DOCUMENT     algorithmVersion      B      algorithmDate         
2015-10-15     processing_level      Level 2    processing_level_description      11-minute average using Hodges-Lehmann M-estimator      date_created      2017-09-08T02:33:14.127Z   date_calibration_data_updated         2017-08-18T00:00:00.000Z   time_coverage_duration        P01D   time_coverage_start       2017-09-07T00:00:00.000Z   time_coverage_end         2017-09-07T23:59:59.000Z   time_coverage_resolution      PT1M   creator_name      Doug Biesecker     creator_type      person     creator_institution       DOC/NOAA/NWS/NCEP/SWPC     creator_email         doug.biesecker@noaa.gov    creator_url       http://www.swpc.noaa.gov/      publisher_name         National Geophysical Data Center   publisher_type        institution    publisher_institution         DOC/NOAA/NESDIS/NGDC   publisher_email       william.rowland@noaa.gov   publisher_url          http://www.ngdc.noaa.gov/dscovr/   records_maximum         �   records_present         �   records_data        �   records_fill             records_missing                    time                description       "date and time for each observation     
short_name        time   C_format      %.13g      units         'milliseconds since 1970-01-01T00:00:00Z    lin_log       TSpase.NumericalData.Parameter.Structure.Element.RenderingHints.ScaleType.LinearScale   standard_name         time   calendar      	gregorian           7   sample_count                description       /number of full resolution measurements averaged    
short_name        sample_count   C_format      %d     units         samples    lin_log       TSpase.NumericalData.Parameter.Structure.Element.RenderingHints.ScaleType.LinearScale   	valid_min                	valid_max           �        7   measurement_mode                description       7measurement range selection mode (0 = auto, 1 = manual)    
short_name        mode   C_format      %1d    lin_log       TSpase.NumericalData.Parameter.Structure.Element.RenderingHints.ScaleType.LinearScale   	valid_min                	valid_max                    7   measurement_range                   description       5measurement range (~4x sensitivity increase per step)      
short_name        range      C_format      %d     lin_log       TSpase.NumericalData.Parameter.Structure.Element.RenderingHints.ScaleType.LinearScale   	valid_min                	valid_max                    7   bt               	   description       )Interplanetary Magnetic Field strength Bt      
short_name        bt     C_format      %.4f   units         nT     lin_log       TSpase.NumericalData.Parameter.Structure.Element.RenderingHints.ScaleType.LinearScale   missing_value         ��i�       	long_name         )bt_interplanetary_magnetic_field_strength      	valid_min                	valid_max                    7    bx_gse               
   description       \Interplanetary Magnetic Field strength Bx component in Geocentric Solar Ecliptic coordinates   
short_name        bx_gse     C_format      %.4f   units         nT     lin_log       TSpase.NumericalData.Parameter.Structure.Element.RenderingHints.ScaleType.LinearScale   missing_value         ��i�       	long_name         -bx_interplanetary_magnetic_field_strength_gse      	valid_min         ��     	valid_max               _CoordinateSystems        GSpase.NumericalData.Parameter.CoordinateSystem.CoordinateSystemName.GSE         7$   by_gse               
   description       \Interplanetary Magnetic Field strength By component in Geocentric Solar Ecliptic coordinates   
short_name        by_gse     C_format      %.4f   units         nT     lin_log       TSpase.NumericalData.Parameter.Structure.Element.RenderingHints.ScaleType.LinearScale   missing_value         ��i�       	long_name         -by_interplanetary_magnetic_field_strength_gse      	valid_min         ��     	valid_max               _CoordinateSystems        GSpase.NumericalData.Parameter.CoordinateSystem.CoordinateSystemName.GSE         7(   bz_gse               
   description       \Interplanetary Magnetic Field strength Bz component in Geocentric Solar Ecliptic coordinates   
short_name        bz_gse     C_format      %.4f   units         nT     lin_log       TSpase.NumericalData.Parameter.Structure.Element.RenderingHints.ScaleType.LinearScale   missing_value         ��i�       	long_name         -bz_interplanetary_magnetic_field_strength_gse      	valid_min         ��     	valid_max               _CoordinateSystems        GSpase.NumericalData.Parameter.CoordinateSystem.CoordinateSystemName.GSE         7,   	theta_gse                	   description       RInterplanetary Magnetic Field clock angle in Geocentric Solar Ecliptic coordinates     
short_name        	theta_gse      C_format      %.4f   units         degrees    lin_log       TSpase.NumericalData.Parameter.Structure.Element.RenderingHints.ScaleType.LinearScale   missing_value         ��i�       	valid_min         ����   	valid_max            Z   _CoordinateSystems        GSpase.NumericalData.Parameter.CoordinateSystem.CoordinateSystemName.GSE         70   phi_gse              	   description       RInterplanetary Magnetic Field polar angle in Geocentric Solar Ecliptic coordinates     
short_name        phi_gse    C_format      %.4f   units         degrees    lin_log       TSpase.NumericalData.Parameter.Structure.Element.RenderingHints.ScaleType.LinearScale   missing_value         ��i�       	valid_min                	valid_max           h   _CoordinateSystems        GSpase.NumericalData.Parameter.CoordinateSystem.CoordinateSystemName.GSE         74   bx_gsm               
   description       bInterplanetary Magnetic Field strength Bx component in Geocentric Solar Magnetospheric coordinates     
short_name        bx_gsm     C_format      %.4f   units         nT     lin_log       TSpase.NumericalData.Parameter.Structure.Element.RenderingHints.ScaleType.LinearScale   missing_value         ��i�       	long_name         -bx_interplanetary_magnetic_field_strength_gsm      	valid_min         ��     	valid_max               _CoordinateSystems        GSpase.NumericalData.Parameter.CoordinateSystem.CoordinateSystemName.GSM         78   by_gsm               
   description       bInterplanetary Magnetic Field strength By component in Geocentric Solar Magnetospheric coordinates     
short_name        by_gsm     C_format      %.4f   units         nT     lin_log       TSpase.NumericalData.Parameter.Structure.Element.RenderingHints.ScaleType.LinearScale   missing_value         ��i�       	long_name         -by_interplanetary_magnetic_field_strength_gsm      	valid_min         ��     	valid_max               _CoordinateSystems        GSpase.NumericalData.Parameter.CoordinateSystem.CoordinateSystemName.GSM         7<   bz_gsm               
   description       bInterplanetary Magnetic Field strength Bz component in Geocentric Solar Magnetospheric coordinates     
short_name        bz_gsm     C_format      %.4f   units         nT     lin_log       TSpase.NumericalData.Parameter.Structure.Element.RenderingHints.ScaleType.LinearScale   missing_value         ��i�       	long_name         -bz_interplanetary_magnetic_field_strength_gsm      	valid_min         ��     	valid_max               _CoordinateSystems        GSpase.NumericalData.Parameter.CoordinateSystem.CoordinateSystemName.GSM         7@   	theta_gsm                	   description       XInterplanetary Magnetic Field clock angle in Geocentric Solar Magnetospheric coordinates   
short_name        	theta_gsm      C_format      %.4f   units         degrees    lin_log       TSpase.NumericalData.Parameter.Structure.Element.RenderingHints.ScaleType.LinearScale   missing_value         ��i�       	valid_min         ����   	valid_max            Z   _CoordinateSystems        GSpase.NumericalData.Parameter.CoordinateSystem.CoordinateSystemName.GSM         7D   phi_gsm              	   description       XInterplanetary Magnetic Field polar angle in Geocentric Solar Magnetospheric coordinates   
short_name        phi_gsm    C_format      %.4f   units         degrees    lin_log       TSpase.NumericalData.Parameter.Structure.Element.RenderingHints.ScaleType.LinearScale   missing_value         ��i�       	valid_min                	valid_max           h   _CoordinateSystems        GSpase.NumericalData.Parameter.CoordinateSystem.CoordinateSystemName.GSM         7H   backfill_flag                   description       �One or more measurements were backfilled from the spacecraft recorder and therefore were not available to forecasters in real-time     
short_name        backfill_flag      C_format      %d     lin_log       TSpase.NumericalData.Parameter.Structure.Element.RenderingHints.ScaleType.LinearScale   	long_name         backfilled_data_flag   	valid_min                	valid_max                    7L   future_packet_time_flag                 description       rOne or more measurements were extracted from a packet whose timestamp was in the future at the point of processing     
short_name        future_packet_time_flag    C_format      %d     lin_log       TSpase.NumericalData.Parameter.Structure.Element.RenderingHints.ScaleType.LinearScale   	long_name         packet_time_in_future_flag     	valid_min                	valid_max                    7P   old_packet_time_flag                description       }One or more measurements were extracted from a packet whose timestamp was older than the threshold at the point of processing      
short_name        old_packet_time_flag   C_format      %d     lin_log       TSpase.NumericalData.Parameter.Structure.Element.RenderingHints.ScaleType.LinearScale   	long_name         %packet_time_older_than_threshold_flag      	valid_min                	valid_max                    7T   	fill_flag                   description       Fill   
short_name        	fill_flag      C_format      %d     lin_log       TSpase.NumericalData.Parameter.Structure.Element.RenderingHints.ScaleType.LinearScale   	long_name         	fill_flag      	valid_min                	valid_max                    7X   possible_saturation_flag                description       �Possible magnetometer saturation based on a measurement range smaller than the next packet's range or by the mag being in manual range mode.   
short_name        possible_saturation_flag   C_format      %d     lin_log       TSpase.NumericalData.Parameter.Structure.Element.RenderingHints.ScaleType.LinearScale   	long_name         %possible_magnetometer_saturation_flag      	valid_min                	valid_max                    7\   calibration_mode_flag                   description       Instrument in calibration mode     
short_name        calibration_mode_flag      C_format      %d     lin_log       TSpase.NumericalData.Parameter.Structure.Element.RenderingHints.ScaleType.LinearScale   	long_name         calibration_mode_flag      	valid_min                	valid_max                    7`   maneuver_flag                   description       4AOCS non-science mode (spacecraft maneuver/safehold)   
short_name        maneuver_flag      C_format      %d     lin_log       TSpase.NumericalData.Parameter.Structure.Element.RenderingHints.ScaleType.LinearScale   	long_name         /AOCS_non_science_mode_maneuver_or_safehold_flag    	valid_min                	valid_max                    7d   low_sample_count_flag                   description       $Average sample count below threshold   
short_name        low_sample_count_flag      C_format      %d     lin_log       TSpase.NumericalData.Parameter.Structure.Element.RenderingHints.ScaleType.LinearScale   	long_name         )average_sample_count_below_threshold_flag      	valid_min                	valid_max                    7h   overall_quality                 description       ;Overall sample quality (0 = normal, 1 = suspect, 2 = error)    
short_name        overall_quality    C_format      %d     units         n/a    lin_log       TSpase.NumericalData.Parameter.Structure.Element.RenderingHints.ScaleType.LinearScale        7lBu�.   �          A^�\?��þW
=A[�
B���C���?���@A�AVffB�z�Bk�H                                    Bu�<�  �          Ab=q@#33�+�AYB��=C��=@#33?
=A]B��{AQ�                                    Bu�KL  �          AQ@Q��EAHz�B�p�C��f@Q�L��ANffB�#�C�Y�                                    Bu�Y�  �          AUp�@G�����AG\)B�L�C���@G��xQ�AP��B��{C�aH                                    Bu�h�  |          As\)@
=�UG�@�A���C��@
=�4��A�B"
=C��H                                    Bu�w>  �          A`Q�@   � ��A=qBE\)C��q@   ����A4(�By�RC��                                    Bu嚅�  �          Af{?+�@�p�AS�B�#�B��f?+�A=qA9�BW�
B��H                                    Bu嚔�  �          Ai?���?�  AdQ�B�33B'��?���@��\AW33B���B���                                    Bu嚣0  �          Afff@�\?��\Ac�B���Aә�@�\@��AYG�B�  B���                                    Bu嚱�  �          AmG�?�@�Af�\B�W
BI�?�@�p�AW
=B��B��                                    Bu��|  �          Ar�H?�ff@uAiB�  B��R?�ff@�ffATz�Bt��B���                                    Bu��"  �          Au��>��H@�  Ak�B���B���>��H@��
ATz�Bpp�B��R                                    Bu���  �          An�H?��\@EAh��B��
B��{?��\@θRAVffB�  B�#�                                    Bu��n  �          Ao\)?^�R@(�Ak�B���B��f?^�R@�(�A\Q�B�
=B��=                                    Bu��  �          Az�\?�@S�
AtQ�B�=qB�#�?�@ۅA`��B��B�Q�                                    Bu�	�  �          A�{��@
=A��B�k�B�{��@���Ar�\B���B�Q�                                    Bu�`  h          Ah��?�=q@J�HA^�HB�z�B~Q�?�=q@��ALQ�Bz�RB�aH                                    Bu�'  �          AY�?��?�Q�AQ�B���B�R?��@���AFffB���B�
=                                    Bu�5�  �          AR�R<��
��{A8��B
=C��<��
�0��AIG�B�=qC�4{                                    Bu�DR  �          A?33@Q��$z�A5p�B��C�ff@Q�>k�A:{B�@���                                    Bu�R�  �          A3�?�����G�A�HB_C�j=?����J�HA\)B�ǮC�aH                                    Bu�a�  h          A0  ������\@��\A��HC��׿����
=q@��HBG�C��q                                    Bu�pD  |          AK��\(��I�?�(�@���C���\(��<��@�ffA�p�C��=                                    Bu�~�  �          A<z�>�=q�;����Ϳ�
=C��f>�=q�7�@(�A@  C���                                    Bu囍�  �          A<��?�{�8�Ϳ�Q���C��R?�{�9�?�33@�33C���                                    Bu囜6  �          AG�
?�\)�@���
=q�!�C�=q?�\)�C�?Q�@s�
C�33                                    Bu囪�  �          Aa?c�
�_�
�^�R�c33C��\?c�
�\��@"�\A&�\C���                                    Bu囹�  �          An=q?Y���l  ?�p�@��C���?Y���^ff@�  A��C��q                                    Bu��(  �          An�R?u�j�R@"�\A��C�� ?u�Y@���A�ffC��                                    Bu���  �          An=q>���k�
?��H@�=qC��=>���]�@�\)A��HC���                                    Bu��t  �          Av�H?z�H�s�@�RA�C��R?z�H�c�@��A���C��R                                    Bu��  �          Aw�@\)�o�
@9��A-�C�@ @\)�]G�@�ffA��
C���                                    Bu��  �          Ayp�@N{�pQ�@*�HA��C��@N{�^�\@ǮA��HC��H                                    Bu�f  �          AuG�@g
=�j{@"�\A��C��@g
=�Y�@���A��
C�s3                                    Bu�   �          Ai�?�Q��eG�?�{@��HC��R?�Q��X  @���A��RC�{                                    Bu�.�  �          Aj�R?aG��i�?z�@G�C��R?aG��`z�@�z�A�33C�˅                                    Bu�=X  �          Al��?�=q�k�>��?z�C��?�=q�c�@p  Ak�C�+�                                    Bu�K�  �          An�H����n�H���   C�������h  @a�A[
=C�~�                                    Bu�Z�  �          Ao�>#�
�o��(���C�N>#�
�j�\@E�A>{C�P�                                    Bu�iJ  �          At(�@(��n=q?�33@���C���@(��ap�@�Q�A��\C���                                    Bu�w�  �          AlQ�@)���bff@Dz�A@Q�C�N@)���O\)@�ffA�{C�Ǯ                                    Bu圆�  �          AdQ�@�\�T  @�
=A�
=C�` @�\�:�H@��HB�
C��{                                    Bu圕<  �          AaG�?�
=�\  @/\)A3\)C���?�
=�Jff@���A�\)C�7
                                    Bu圣�  �          Am��    �mp���Q쿯\)��O�    �g\)@Tz�AO
=��O�                                    Bu圲�  �          Ak
=?5�jff>�
=?��C�aH?5�ap�@���A33C�o\                                    Bu��.  �          Al�׽�G��j=q?���@�=qC�����G��[33@�Q�A�\)C��                                    Bu���  �          Af�\�(��a��@%A&�RC��(��P(�@�Q�A�(�C���                                    Bu��z  �          AU��  �Z�HA1p�B�aHC}Ǯ��  �\)A9p�B�CQE                                    Bu��   �          AY����?��AUG�B�L�C��@��
AIG�B���B�Q�                                    Bu���  �          AYp��9��<#�
AS
=B�33C3�f�9��@R�\ALQ�B�{C^�                                    Bu�
l  �          AO��O\)��p�AA�B�ffC�~��O\)��G�ALQ�B�k�Cg@                                     Bu�  �          AK33��p���(�A+�
Bm{C�\)��p��_\)A?�
B�ffC��                                    Bu�'�  �          A4Q�?���Q�@��B��C��
?������A�HBB��C�%                                    Bu�6^  �          Aa���
=��Q�AO�B��HCx+��
=��=qA^{B�B�C]�                                    Bu�E  �          Ah  �333�!G�AaB�
=C~s3�333?�{Ad��B��B�                                   Bu�S�  �          Aj�\���
��\)Ai��B��RC]����
@Y��Ac33B��B��{                                   Bu�bP  �          A�ff�(�@=qAxz�B�Q�CB��(�@ǮAf�RB��RBڨ�                                    Bu�p�  �          A��H�Q�@*=qA{�
B��B�B��Q�@�G�Ah��B�B�B�G�                                    Bu��  �          AW33����?s33AP  B�#�B�Q쾨��@�ffAEG�B�G�B���                                    Bu坎B  �          A-�?��R@�p�AQ�BZ=qB��f?��R@�{@�\)B!�B��                                    Bu坜�  �          A0  @QG�@��A�HBf�\B_(�@QG�@�\)@��B3Q�B�Ǯ                                    Bu坫�  �          A
=@�33@�\)@�\)A�(�BN{@�33@�z�@'�A{\)B\{                                    Bu坺4  �          A�@�\)@�33@���A�z�BV�
@�\)@�\@<(�A���Bf                                    Bu���  �          A�@`  @ȣ�@�ffB�Bs\)@`  @�=q@��A�{B�u�                                    Bu�׀  �          A
ff@�@U�@��BsQ�BZQ�@�@��\@�
=B@  B�\                                    Bu��&  �          @��þ��
?+�@�B�G�B�\���
@{@���B���B�aH                                    Bu���  �          @�Q��g��g�@333A�33Ca
=�g��2�\@hQ�B�CY�)                                    Bu�r  �          @����P���^{@p��B�Cb�{�P�����@���B@CXQ�                                    Bu�  �          @�33��  ��@3�
A�z�CGE��  ��ff@L(�A�{C?W
                                    Bu� �  �          @�������!G�@[�BQ�CQ�����Ϳ�ff@}p�B!Q�CGu�                                   Bu�/d  �          A�\�~{���H@h��Aԣ�Cl�H�~{��ff@��\BCg=q                                   Bu�>
  �          @����x�����H@y��B ffCg5��x���j�H@�Q�B,z�C_\)                                    Bu�L�  �          @�G����\��\)@c�
A�Cb����\�J�H@���B%�CY�)                                    Bu�[V  �          A��������(�@�ffA�Cn� ������
=@ƸRB�\Ch��                                    Bu�i�  �          A�R�~�R����@���AӅCsG��~�R�Ϯ@�G�BQ�Cn��                                    Bu�x�  �          A���vff�ȣ�@��RA���Cnz��vff����@�B.\)Cg�H                                    Bu垇H  �          @���C33���H@z�HA�G�Cs\)�C33���@��
B,=qCm�)                                    Bu垕�  �          @ȣ׿ٙ����@3�
A�  C|@ �ٙ�����@��HB#�Cx�)                                    Bu垤�  �          @��R��=q��
=@%A�  C}n��=q�h��@j=qB-ffCy�                                    Bu垳:  �          @�R���H�θR@:�HA�C��
���H��
=@�  B=qC���                                    Bu���  �          @��R�1녿��@�ffBWz�CL�\�1녾\)@�z�Bf\)C6��                                    Bu�І  �          A	����@�{@��
B+ffC������@�=q@�  A���B���                                    Bu��,  �          A ����@8Q�@�{BA�HC���@�
=@�p�B!{Cn                                    Bu���  �          A ����Q�\AffB[�
CC^���Q�?.{A(�B`ffC,�R                                    Bu��x  �          Aff��ff�hQ�@�
=BF��CV�H��ff���
A�\Ba�\CDk�                                    Bu�  �          A
=��33�c33@ۅB?Q�CV�
��33��\)@�BZCE�{                                    Bu��  �          A-���ƸR��(�A
�RBTQ�CE�\�ƸR>ǮA{B[�C0^�                                    Bu�(j  �          A&=q��G��˅@��
BE�HCA����G�?��A (�BJ�C/(�                                    Bu�7  �          A	�������R@���B533CG���������@ʏ\BA�\C7Q�                                    Bu�E�  �          A33��\)����@Q�AEp�CdT{��\)��ff@~�RA�z�C`�H                                    Bu�T\  �          @�
=�����33>W
=?���Cj+������=q?���A`z�Ch�f                                    Bu�c  �          @�������aG�>�(�@���C|�f�����Q�?���A���C{s3                                    Bu�q�  �          @��?�\�aG�@|��B4\)C�P�?�\�@�  Bi=qC��                                    Bu埀N  �          @����33��\@/\)BGffC����33��(�@P  B�(�C�L�                                    Bu城�  �          @�\)�
�H��Q�@��B���C=k��
�H?��
@�=qB�=qC��                                   Bu埝�  �          A ��@p  ��@z�A�
=C��
@p  ��p�@`��A�RC���                                    Bu埬@  �          A�@�ff�ָR    =#�
C��@�ff�θR?�AO�C�E                                    Bu基�  �          @�{@�(��љ�?���AffC�)@�(���{@C�
A��C�c�                                    Bu�Ɍ  �          A\)@�
=��Q��l����\C�8R@�
=�����R��\)C���                                    Bu��2  �          A	�@����
=��(����C�
=@������S�
����C��f                                    Bu���  �          A�@�
=��G��:�H���C�H�@�
=��\�����
=C�.                                    Bu��~  �          A\)@��H� ����p��BG�C���@��H����������HC�e                                    Bu�$  �          @�\)@7
=��33�����33C�!H@7
=����?333@�{C��                                    Bu��  �          @��@�\)���\���
��z�C�@�\)�����6ff��\)C��                                    Bu�!p  �          @�  @�p��P���b�\���
C�~�@�p����H� �����\C�s3                                    Bu�0  �          @�@��H�:�H�u��p�C�o\@��H�vff�8Q���  C���                                    Bu�>�  �          @�
=@����P��������C��
@�������O\)��{C�Ǯ                                    Bu�Mb  �          @�(�@)���0���8���(�C���@)���\(��G���p�C�                                    Bu�\  �          @�p�@  ����Q���C�o\@  �5�����Q�C�B�                                    Bu�j�  �          @�Q�?��$z��.�R�!z�C�j=?��N{���أ�C�n                                    Bu�yT  �          @�@G
=��녿�
=���RC���@G
=��(����
�1�C��\                                    Bu堇�  �          @�p�?(�ÿn{����p�C��)?(���G��hQ��n�C��                                    Bu堖�  �          @�����?�(����G�B��{��녿����z� B�CO�\                                    Bu堥F  �          @��H���@  ��z�Q�B˙����>B�\��\)¬G�C}q                                    Bu堳�  �          @�33@$z�� ����\)�g�HC��
@$z���  ����5z�C�Y�                                    Bu�  �          @�(�?�p��@����\)�L�RC���?�p���(��]p��G�C���                                    Bu��8  �          @�G�?�=q=L�������?��R?�=q�������C��)                                    Bu���  �          @�
=@'����\��Q��~ffC��@'����H�\)���
C���                                    Bu��  �          @�@;�����{���C�W
@;���  �Y���{C�+�                                    Bu��*  �          @�z�@G
=���
�%���C�s3@G
=��33�G����HC��R                                    Bu��  �          @�{@�\��zῥ��,Q�C��q@�\�Ϯ?��@��HC��
                                    Bu�v  �          @ٙ�@ �����
���B�\C�!H@ ���ȣ�>�33@>�RC��                                    Bu�)  �          @�p�?�=q��������&�RC�Ff?�=q���
?
=@��C�5�                                    Bu�7�  �          @��H�u��{�u���C��׾u���R?�Q�A|��C��R                                    Bu�Fh  �          @�p����H���;\)���HC~k����H��{?�{AiG�C}��                                    Bu�U  �          @���G����׾#�
�\C����G���=q?�p�Aj�RC��q                                    Bu�c�  �          @�녿�\)���H?   @��
C~녿�\)���?�A��C}޸                                    Bu�rZ  �          @�ff�z�H�Ӆ?�@�  C�Ǯ�z�H��@Q�A�z�C�~�                                    Bu塁   �          @��
�L����33���
���C�  �L�����
?���A�(�C���                                    Bu塏�  �          @��H>aG���׿+�����C���>aG�����?�G�A8(�C��{                                    Bu塞L  �          @��
?
=q��Q�Y����z�C�.?
=q�޸R?�Q�A�\C�33                                    Bu塬�  �          @���>��H���
��  �*�\C�R>��H��ff?333@�p�C��                                    Bu塻�  �          @��H>�\)��33����z=qC�XR>�\)��=q=�G�?�  C�K�                                    Bu��>  �          @�ff?E���G��5��{C�%?E���{?���A.�\C�/\                                    Bu���  �          @Ϯ?�����33�u�Q�C�o\?������
?W
=@�  C�j=                                    Bu��  �          @أ�?Q���{���
�+�C�y�?Q��Ϯ?У�A_\)C��{                                    Bu��0  �          @���?\��\)��=q�Q�C�� ?\��(�>��R@EC��                                    Bu��  �          @�ff@dz῜(���Q��sffC��@dz��G��Å�P�
C�c�                                    Bu�|  �          @�  @2�\�k����HG�C�� @2�\�.{�����`p�C�޸                                    Bu�""  �          @Ϯ@p����
��
=�C�H�@p���\����q�C�#�                                    Bu�0�  �          @��?ٙ�������=q#�C���?ٙ�����  �}�
C�\)                                    Bu�?n  �          @\)?G�� ���O\)�a\)C��=?G��7�� ��� ��C���                                    Bu�N  �          @�>�=q���ÿ��
�  C���>�=q�Ǯ�����ffC��=                                    Bu�\�  �          @N{?�\�#�
�Ǯ��G�C��?�\�9���=p��b�RC��)                                    Bu�k`  �          @���?W
=�,(��(��#\)C���?W
=�R�\�����G�C�!H                                    Bu�z  �          @�\)�#�
?��\���\�HB���#�
��p���ª�C�:�                                    Bu墈�  �          @xQ�?
=q�)���*�H�2�\C��{?
=q�Tz��\��Q�C��{                                    Bu増R  �          @��H?��
������ff�(�\C�k�?��
����*�H�ʣ�C�@                                     Bu墥�  �          @�\)?B�\��{��\)�'\)C�XR?B�\��G��3�
��z�C��\                                    Bu墴�  �          @��H�����{���\\)C�������Vff��G��U��C���                                    Bu��D  T          @�(��8Q�#�
�У�§\C@���8Q����p��{C{                                      Bu���  �          @���Ǯ?�Q��s33  B���Ǯ>���z�¢�C ��                                    Bu���  �          @����@~{�
�H��z�B��@H���P  �#
=B�=q                                    Bu��6  �          @����L(�@�ff�N{��B�.�L(�@R�\�����/�C�                                    Bu���  �          @��H�<��@�  >�\)@�RB�=q�<��@�=q�����O�B�R                                   Bu��  �          @��H��ff@�z�?�  A��B��H��ff@���>B�\@33B�ff                                    Bu�(  �          @��?��
��������q�\C���?��
�G����[=qC�XR                                    Bu�)�  �          @��@E��b�\�`���G�C�}q@E��������C�aH                                    Bu�8t  �          @���@C33�{��I���(�C��@C33��ff������C��f                                    Bu�G  �          @�p�@J=q�Mp����
�B��C�K�@J=q��33�z=q�
=C�>�                                    Bu�U�  �          @��@������H�Y����{C�)@������
�ٙ��R{C��                                    Bu�df  �          A
{@�
=��ff�u��C�.@�
=�˅�   �_
=C��                                    Bu�s  �          AQ�@����Ǯ�^�R����C�l�@�����  ���{C��                                    Bu壁�  �          Ap�@�z���33������Q�C���@�z������H�33C���                                    Bu壐X  �          A33@�ff��{�z=q�֏\C��@�ff��33��z��L(�C��                                    Bu壞�  �          A��@�Q���(��S33����C���@�Q��񙚿����33C���                                    Bu壭�  �          A  @�����\������ffC�Ф@�����!G�����C�z�                                    Bu壼J  �          @�Q�@U��G���Q��,
=C�&f@U���g
=�߅C���                                    Bu���  �          @���?�z������
�wffC���?�z��i����ff�9ffC�4{                                    Bu�ٖ  �          @��
=L��<��
��G�²�
Aԏ\=L�Ϳ�
=������C�ٚ                                    Bu��<  �          @��Ϳ�  @����dz�� Q�B�G���  @���33�E�B�.                                    Bu���  �          @�p���G�@.�R����b�B�z῁G�?�p���G�  CG�                                    Bu��  �          @�  @(Q�8Q��K��E�\C�XR@(Q���333�'�
C���                                    Bu�.  �          @xQ�@0  ���(���C�y�@0  ��\)������\)C���                                    Bu�"�  �          @�33?У׿����N{�k
=C�\)?У��G��.{�9��C�y�                                    Bu�1z  �          @��׿0�׿B�\���\Cc�0�׿��R�h���o�Cz�f                                    Bu�@   �          @�z��(���=q��z���C~Ǯ��(��P������_�RC�=q                                    Bu�N�  �          @�33��\)�Fff��G��z�HC�w
��\)���\��Q��233C�^�                                    Bu�]l  �          @�{�8Q��=q����3C��{�8Q��X����Q��d�\C��f                                    Bu�l  �          @��
��Q��ff�����Cc)��Q��aG����R�a\)Cw                                    Bu�z�  �          @�G��녿����Q�k�CSk����W�����Z�
Ck�                                    Bu変^  �          @�녿����8����G�ǮCp�q�������R�����?C|)                                    Bu夘  �          @�  ��\��Q���33�]�\Cv(���\������Q��\)C}
=                                    Bu夦�  �          @��;��R���H�ƸR�b�C��þ��R���H���H��C�z�                                    Bu夵P  �          Ap�?xQ���ff����f��C�xR?xQ���z����
�  C�w
                                    Bu���  �          A33?����ff��Q��T  C�=q?���У����(�C��                                    Bu�Ҝ  �          @��?�z���=q����8Q�C�%?�z���33�j�H���HC��                                    Bu��B  �          A=q?��H��=q��
=���C��3?��H���H�1G���ffC�z�                                    Bu���  �          @��@p�������ff��G�C���@p���G���(��f=qC�Q�                                    Bu���  �          @��@#33���������3�HC�
=@#33��  �e��(�C��                                    Bu�4  �          @�=q@(����R��33�*�HC�)@(��ʏ\�O\)��ffC��=                                    Bu��  �          @�ff@������X�����C���@���녿��\�!G�C���                                    Bu�*�  �          @�p�@#33������\)���C�w
@#33�ᙚ��
�v=qC��                                    Bu�9&  �          @��
?������	������C�33?����Q�<�>�  C�˅                                    Bu�G�  �          @�\)?�Q���=q�333��p�C�O\?�Q��ƸR?���AEC�g�                                    Bu�Vr  �          @�?�\)��녽u��(�C�W
?�\)��@�
A��C���                                    Bu�e  �          @�=q?}p����>\@@��C��q?}p����@(��A�  C�K�                                    Bu�s�  �          @�=q?c�
�Å?�(�A2{C��?c�
��(�@HQ�A�
=C���                                    Bu奂d  �          @�{?�G���  ?333@��
C��?�G���z�@<(�A�ffC��3                                    Bu契
  �          @�
=?�(���ff>�ff@���C���?�(����R@��A��HC�Z�                                    Bu奟�  �          @�@ff���>���@9��C���@ff��(�@�\A���C�<)                                    Bu奮V  �          @���?����33?c�
A��C���?����\)@0  A��C��3                                    Bu奼�  �          @�(�@p�����?�  AUG�C���@p����@|��A��C��                                    Bu�ˢ  �          @�z�?��R��(�@#33A�33C��?��R����@�p�B��C���                                    Bu��H  �          A?��
��@J�HA�(�C��?��
����@�(�B&\)C���                                    Bu���  �          A�?��H��@(Q�A�\)C��\?��H��z�@�B
=C��\                                    Bu���  �          Ap�?�33��\)?�Q�A^�\C�"�?�33����@�z�B�C���                                    Bu�:  �          @��?�z����?�{AY�C�H�?�z���Q�@�  B33C��                                    Bu��  �          Ap�?�Q���p�@�\A�\)C�e?�Q���
=@�ffB(�C�0�                                    Bu�#�  �          A��?У���{?�A[33C��R?У��Ӆ@��B��C��                                    Bu�2,  �          A��?�z�� ��?��AN�RC��{?�z��޸R@��RA��C���                                    Bu�@�  �          @�\@��߮?=p�@���C�{@����H@A�AÙ�C�ٚ                                    Bu�Ox  �          @�=q?�Q���z�?
=@�
=C�  ?�Q����@1�A�Q�C���                                    Bu�^  �          @�ff?��H��(�?�ffA�
C��H?��H�У�@l��A�(�C�T{                                    Bu�l�  �          @��?�Q���?�  A.�HC�AH?�Q����@{�A��HC�=q                                    Bu�{j  �          A33@��Q�?�(�AAG�C���@��\)@�\)A��C��H                                    Bu妊  �          A��@����
=?��A,(�C��
@����  @���A��C��)                                    Bu妘�  �          @�\)?�(�����?Q�@�(�C��?�(���33@C�
A�=qC��                                    Bu妧\  �          A&=q@��H�p��Y������C���@��H�(����*�HC���                                    Bu妶  �          A4z�@��R�������=qC�  @��R�zῺ�H��  C�xR                                    Bu�Ĩ  �          AA@��R�*=q� ���?�
C��@��R�-?�  @�p�C���                                    Bu��N  �          A<(�@�z��-��(��>{C�
=@�z��&{@G
=Aw33C�w
                                    Bu���  ,          AMG�@��
�?����z�C���@��
�6�R@eA�  C�                                      Bu��  �          A^�\@�G��K����H��C�J=@�G��J{@   A%��C�]q                                    Bu��@  {          AFff@����4Q����  C�}q@����2�\@�\A+33C��R                                    Bu��  U          AF=q@Tz��;\)@\)A&�\C��=@Tz��#�@��
A���C��q                                    Bu��  �          AA@���4Q�@qG�A�\)C�]q@�����@��Bp�C�xR                                    Bu�+2  �          A/\)?�G���@��
A�{C���?�G���ff@陚B(�
C�|)                                    Bu�9�  �          A\)?��33@�G�Ạ�C��?���p�@�B6�HC�+�                                    Bu�H~  �          A&�H�L����\@ÅB�C�H��L������A
=qB_�HC�\                                    Bu�W$  �          A5G��s33�z�@�\)BG�C�׿s33��z�A33Bb�C��                                     Bu�e�  �          A6�\��\)��
=@�z�B/��C�j=��\)���A"�RB}��Cx��                                    Bu�tp  �          A'��hQ����\A��BZ�HCi��hQ�ǮA
=B���CKB�                                    Bu姃  �          Aff�HQ���@�{BZ��Cl33�HQ��\)A�B��COY�                                    Bu姑�  �          A
=�3�
��{@�(�BE�Cq�=�3�
�p�A  B�L�C]33                                    Bu姠b  �          A��G���=q@�33B�\C�Uÿ�G���G�@�Q�BTz�C��)                                    Bu姯  �          @�  �L�����?�Q�A%�C�&f�L����\)@Z�HA�z�C�f                                    Bu姽�  �          @�\)?�z���
=�C33���HC��{?�z����H��
=�Dz�C�*=                                    Bu��T  �          Aff@<����������
=C��\@<����
�N�R��Q�C��\                                    Bu���  �          A��@&ff���H��
=�(��C�!H@&ff���e���\C���                                    Bu��  �          A ��@-p����������J�C���@-p���\��
=��{C�*=                                    Bu��F  �          A)p�@����G����s{C�,�@����Q�����&�C�
=                                    Bu��  �          A7\)@�Q���� ���vG�C���@�Q���G��
ff�D�C�                                    Bu��  �          A7�@�ff�����#33�}�C�4{@�ff�����T=qC��                                    Bu�$8  �          A2�R@��H�5�   ��C��3@��H��
=�p��[{C�w
                                    Bu�2�  �          A(��@mp�?���\G�A���@mp�����{��C�{                                    Bu�A�  �          A,z�@��@����
�p�A��@�녿�Q��
=�yG�C�
=                                    Bu�P*  �          A"=q@�
=?������|ffA��@�
=�Ǯ�G��~�\C��q                                    Bu�^�  �          A��?�Q�����ffC��?�Q��h����~�HC�                                    Bu�mv  �          Aff@mp�>��H�33u�@�ff@mp��*�H����t�\C�!H                                    Bu�|  �          A��@�G�>u�   �]33@�R@�G��)�����K��C�33                                    Bu娊�  �          A
=@�\)>����R�hQ�@��@�\)�)���   �W�C��\                                    Bu娙h  �          A"{@�{>�G��
�R�l  @�33@�{�.{��
�ZffC�,�                                    Bu娨  �          A%�@�ff?}p��33�f{A$��@�ff�{�\)�\�
C��                                    Bu娶�  �          A ��@��\@1���
=�L=qA��
@��\�L���33�^��C��{                                    Bu��Z  �          A{@`  @   ��R�
A�p�@`  ��Q��	�L�C��3                                    Bu��   �          A��@7
=?�=q��ff�RA�@7
=�������C���                                    Bu��  �          A  @&ff>.{�   �@o\)@&ff�0����Q��|��C���                                    Bu��L  �          Ap�@^{>������@	��@^{�5����H�m�
C�Z�                                    Bu���  �          A��@`���\(��p��n{C��\@`����  ��Q��)
=C��=                                    Bu��  �          AG�@]p��
=q�Q��&�\C��@]p��0���������HC��\                                    Bu�>  |          AN�R@\�������
�ffC��q@\���=p��r�\���RC�                                      Bu�+�  �          AJ{@L(��"�H������RC���@L(��?33�#�
�;33C�u�                                    Bu�:�  �          A6�\@O\)�G���p��؏\C�XR@O\)�,�Ϳ��
��ffC�XR                                    Bu�I0  �          A9@\������{�ծC�@\���/33���R���C��)                                    Bu�W�  |          A8��@<���(Q��k����HC��{@<���2=q>��@�C�k�                                    Bu�f|  �          A>=q@1G��3��-p��R�RC��@1G��6�H?��@��RC���                                    Bu�u"  �          A6=q@�H�,���*�H�Y�C�Q�@�H�0Q�?\@�ffC�1�                                    Bu婃�  �          A(��@Z=q���H�����HC��@Z=q�\)?��@P  C�p�                                    Bu婒n  �          AQ�?У��녿������C��?У���\@G�Aa��C�/\                                    Bu婡  �          AQ�?����ff�!G��xQ�C�U�?�����@5�A��HC�~�                                    Bu婯�  �          A�@!G��33���H�>{C��q@!G��z�?��
A(�C���                                    Bu婾`  �          A0(�@QG��$(����?33C��
@QG��%�?�p�AQ�C��H                                    Bu��  |          A7\)@AG��+\)�-p��[
=C�� @AG��/
=?�  @�G�C��
                                    Bu�۬  
�          A2�H?ٙ��,Q�����F=qC�|)?ٙ��.{?���A�\C�p�                                    Bu��R  �          A@Q�?���:=q�#33�D  C��H?���;�
@G�A�RC���                                    Bu���  �          A8��@   �1p��=q�@��C�q@   �2�R?���A  C�3                                    Bu��  �          A6ff@
=q�-G��*�H�Y�C�� @
=q�0z�?�\)A\)C��f                                    Bu�D  �          Aff?��������G��{�C��{?�����R?c�
@\C��                                    Bu�$�  �          A=q@Q���  �5�����C���@Q�� (�>aG�?��C�l�                                    Bu�3�  �          A�
@�����AG�����C��{@��=q=��
?�\C�q                                    Bu�B6  �          Aff@0�����
�Q��rffC�@ @0����(�?Tz�@��C��                                    Bu�P�  �          A�@5���\����G
=C�8R@5���{?��RA	p�C�
                                    Bu�_�  �          Aff@2�\��Q�^�R���C�,�@2�\���@z�AmC�z�                                    Bu�n(  �          A
=@W����H�z���Q�C�Q�@W����?(��@�Q�C�ٚ                                    Bu�|�  �          AQ�@;���33��\)���RC���@;���녿�{�/33C�E                                    Bu媋t  �          A��@:�H������\�4��C���@:�H���
�N�R���C��q                                    Bu媚  �          A��@W
=�p����
��{C�h�@W
=���@��An�HC���                                    Bu媨�  �          AG�@U��\�z�H��33C�Ff@U�	��@!�Aup�C��q                                    Bu媷f  �          A=q@dz���������C��@dz��
�\@Q�AL��C�/\                                   Bu��  �          A�\@a��p��˅�\)C�� @a��(�?���A:�RC���                                   Bu�Բ  �          AG�@`  ����\)� Q�C���@`  �=q@  AS�C��q                                    Bu��X  �          A��@n{�  ��=q����C�7
@n{���@��AT��C�n                                    Bu���  �          A�@�z��33���H�<��C��@�z����?�(�A��C��                                    Bu� �  �          A�@%�����G����C�
@%���G�@A�
=C�q�                                    Bu�J  �          A�R@u�񙚿���/\)C�|)@u���H?�
=A��C�k�                                    Bu��  �          A�H@����\)�%��C��@����p�>�G�@7�C��3                                    Bu�,�  �          A�@����\�Ǯ���C��@����?�  A,��C��
                                    Bu�;<  �          Aff@��
��\)�˅� ��C���@��
���R?�z�A(  C��                                    Bu�I�  �          A�@��H�33�
=�dz�C��@��H�   @1�A�\)C���                                    Bu�X�  �          A33@/\)�  �\(���ffC�xR@/\)�	@0  A�p�C��{                                    Bu�g.  �          A�
@*=q��׾�p��{C�0�@*=q�33@N{A��C��R                                    Bu�u�  �          Aff@�z��G�����{C��@�z���(�@ffAO\)C�=q                                    Bu嫄z  �          A  @�����H�#�
�w�C�n@����   @/\)A���C��                                    Bu嫓   �          A�\@�(���R�\�ffC�h�@�(�����@8��A���C�.                                    Bu嫡�  �          A33@�ff��G���\�}��C��)@�ff���>��H@W�C��                                    Bu嫰l  �          A�@�Q����ÿ��R�S�C��@�Q���?u@�=qC���                                    Bu嫿  �          Ap�@�{��zῦff�33C�1�@�{��G�?޸RA6{C�\)                                    Bu�͸  �          A��@r�\��33��  ��G�C��@r�\��33@p�Aip�C�AH                                    Bu��^  �          Az�@qG��녿����ffC�u�@qG���(�@\)Af{C��=                                    Bu��  �          AQ�@z�H���ÿu��G�C�]q@z�H��Q�@�RAk�C���                                    Bu���  �          A�
@G�����W�C�<)@G����
@7�A���C��\                                    Bu�P  �          A33@=p��33�����\)C�e@=p��{@G�A��RC�                                      Bu��  �          Aff@*=q���
=q�j=qC�E@*=q��\)@,(�A�{C��=                                    Bu�%�  �          A
�R@#33�(��8Q쿘Q�C��R@#33��(�@J=qA�\)C�@                                     Bu�4B  �          A
=@U�����8Q쿔z�C�N@U���z�@C�
A���C�!H                                    Bu�B�  �          A
ff@n{�������,��C���@n{��  @0  A�p�C��3                                    Bu�Q�  �          A�
@K��=q�@  ��  C�aH@K���\)@-p�A�(�C�޸                                    Bu�`4  �          A{@5��ff��ff�<(�C�O\@5����@?\)A�33C��                                    Bu�n�  �          @�(�@(���\)�J=q��p�C��
@(���ff@
=A�33C�                                    Bu�}�  �          @�{@C33�陚�����
C�XR@C33����@(�A���C���                                    Bu嬌&  �          A@`����녾��R�\C�q�@`����@(��A�\)C�%                                    Bu嬚�  �          A
=@j=q��녾u��33C�J=@j=q����@1G�A�{C�0�                                    Bu嬩r  �          A=q@5��Q�\(���ffC�
=@5��@Q�A�G�C�p�                                    Bu嬸  �          A�?����(���{�{C��R?�����?�p�Ab�HC��                                    Bu�ƾ  �          A Q�?���{��ff�2ffC�&f?�����?�p�AG�C�.                                    Bu��d  �          @�\)?�Q���G���p��f�\C�W
?�Q���{?��
A�
C�8R                                    Bu��
  �          @�
=?��
��=q�%���C�Ф?��
���?&ff@�C�u�                                    Bu��  �          @�p�@ff����Q��y�C�  @ff����?���@�G�C��                                    Bu�V  �          Az�@   ���������33C�P�@   ��ff?u@�ffC�
=                                   Bu��  �          A
ff@ ����(��6ff��z�C�'�@ �����?(��@��
C���                                    Bu��  �          A?����
�4z���
=C��?����
>�@XQ�C��{                                    Bu�-H  �          @��?�Q�����(���z�C�+�?�Q���(�?8Q�@��
C���                                    Bu�;�  �          @�
=?�Q�����O\)���C�  ?�Q����?���Ak\)C�U�                                    Bu�J�  �          @ҏ\?�Q����k��p�C���?�Q���  ?�p�Aup�C��                                    Bu�Y:  �          @�z�@�
�ʏ\��ff�.=qC��@�
��G�?���AC�
C�{                                    Bu�g�  �          @��
?�G��z=q�G��
=C��?�G���33�����Q�C��                                    Bu�v�  �          AG�?�����(���G���C�n?�����{�L����C��R                                    Bu孅,  �          @���?��R��R��  
=C��{?��R�_\)��33�hz�C���                                    Bu孓�  �          A!?�=q�G���G�aHC��?�=q�����z��1�RC�b�                                    Bu孢x  �          A.ff?�������G���ffC�?����+�
�#�
�k�C��f                                    Bu孱  |          A,z�>���Q�������C�aH>���,  <�>#�
C�@                                     Bu孿�  h          A>=q@���{��������C�Ff@���8(���=q��\)C�h�                                    Bu��j  �          AA@���p���33��
C�U�@���0Q��	���#�C�@                                     Bu��  �          A?�
@��R��=q��=q���C�}q@��R�\)�\(�����C��                                    Bu��  �          A<��@��H���
���R�C�j=@��H��p��ָR�\)C��f                                    Bu��\  �          A;33@�?�=q���\G�A]�@��%��  �T��C�3                                    Bu�	  |          ADz�@�\)@,(����M(�A��\@�\)��33����Y
=C��                                     Bu��  �          AP(�@��R��\)��.��C���@��R� ��������  C�Y�                                    Bu�&N  �          AP��A
=��Q���\�F(�C�ǮA
=��G�����*p�C��                                     Bu�4�  �          AS\)@�\)@��#�
�K\)A�33@�\)�
=q�$���L��C�j=                                    Bu�C�  �          ARffA
�\@&ff�z��:{A�A
�\���H���?33C�h�                                    Bu�R@  �          AO�@�33@�����3
=A�{@�33>�
=�$Q��R=q@E�                                    Bu�`�  �          AP��@�ff@�G��z��)\)B�@�ff?�p��&�\�T  A-�                                    Bu�o�  �          AO
=@�{@ۅ��G��\)B&��@�{@7
=���J=qA�p�                                    Bu�~2  �          AF=q@���Aff��G���ffBD�H@���@����
=�9��B�R                                    Bu完�  �          AG�@ə�A{��
=��BT33@ə�@���R�K�RBff                                    Bu宛~  �          AD��@��H@����ff���BJQ�@��H@XQ��"{�^  A�Q�                                    Bu宪$  �          AB�\@�33@�33�G��-{BK
=@�33@&ff�'\)�m�A�33                                    Bu宸�  �          AAG�@�z�@�
=�   �&ffBU
=@�z�@C�
�%G��l�A���                                    Bu��p  �          A@��@�G�@����:�HBY�\@�G�@���,  �=qA�                                      Bu��  �          A@Q�@�33@����ff� p�BH�H@�33@@  ���b�A�p�                                    Bu��  �          A<��@���@�p����R�%�Bs�@���@e��$Q��v(�B�                                    Bu��b  �          A>ff@b�\Aff�����RB��@b�\@�33���d�Bb
=                                    Bu�  �          A=�@j�HA�H��G���
=B�� @j�H@�Q��(��\(�Bf{                                    Bu��  |          A9AG���ff��(��z�C��AG������(���G�C���                                    Bu�T  �          A;�A�\?���=q���A*ffA�\��
=��=q�C��f                                    Bu�-�  �          A8  A ��@c33�����G�A���A ��=��
��\)�3  ?z�                                    Bu�<�  �          A3�@�\)@���������BQ=q@�\)@�z��
=�H33B�                                    Bu�KF  �          A2�H@���@�ff��Q��
33B4��@���@C�
�
=�G�HA�ff                                    Bu�Y�  �          A.{@�@�  �����(�BJ��@�@�p�����?(�B��                                    Bu�h�  �          A,��@���@�ff��Q����BJ��@���@<(��
�H�\��A��H                                    Bu�w8  �          A1@��A�
��z�� �B��)@��@�G��(��YQ�BL�                                    Bu寅�  �          A2�H@�z�A��G����Bs��@�z�@��R���R=qB;��                                    Bu寔�  �          A1p�@�Ap��������
Bx
=@�@�{��T�RB@ff                                    Bu寣*  �          A.�\@�  @�{�Ϯ��BSz�@�  @W
=�{�[B�                                    Bu寱�  �          A%@��
@����\)�\)B��@��
?��\�陚�8��A'\)                                    Bu��v  �          A=q@��H���{�u�C�B�@��H��녾�  ���C���                                    Bu��  �          A�\@��H���H��
=�<��C�(�@��H��{>�
=@!�C�>�                                    Bu���  �          A�
@�������33�HQ�C�}q@����p�>Ǯ@��C��H                                    Bu��h  �          Ap�@�����\)���p��C�C�@�������=#�
>k�C���                                    Bu��  �          A  @��R��z���
�(z�C��@��R���H?k�@�p�C�l�                                    Bu�	�  |          A.�HA����R�*�H�b�\C�B�A���33��\)��p�C���                                    Bu�Z  �          A.�\A����Q��33C��A���H?��\@�z�C���                                   Bu�'   �          A�
�����{@%A���C��ͽ������H@��B.�HC���                                   Bu�5�  �          A��@Q��Q�?�G�A8z�C��@Q��Ӆ@���Bp�C��                                   Bu�DL  �          A  �8Q���?�\)A=qC�h��8Q���{@�(�B�C�H�                                    Bu�R�  �          AQ�����?��@Tz�C�Uÿ���\)@�\)A�33C��                                    Bu�a�  �          AQ�?�G��G�>�p�@(�C���?�G��=q@�(�A���C�@                                     Bu�p>  �          AG�?���\@z�AC
=C�n?���\)@\BG�C���                                    Bu�~�  �          A=q@Y����?�  A#\)C�Ff@Y�����@�z�B�
C�w
                                    Bu對�  �          Ap�@
=�Q�>�ff@4z�C���@
=��(�@�33A�Q�C���                                    Bu尜0  �          Ap�?h���Q�?�{A>�\C���?h���߮@��
B=qC���                                    Bu尪�  �          A33=�\)�(�?�(�A<(�C�9�=�\)���H@���Bz�C�G�                                    Bu尹|  �          A����
��?�=qA0(�C��켣�
����@��\B��C��\                                    Bu��"  �          A   @=q��Q�=u>�ffC�0�@=q��{@UA�33C�AH                                    Bu���  �          @���@�����=q����`��C�L�@����Ϯ?�Q�A�C��R                                    Bu��n  �          @�G�@\����ff�����?�
C���@\����ff?�\)AA�C��q                                    Bu��  �          @���@i����  ����@(�C�#�@i���ȣ�?�(�A7\)C�)                                    Bu��  �          @�p�@a��޸R��������C�p�@a���@{A���C��=                                    Bu�`  �          @�\)@e�����=q�
=C���@e��Q�?�(�Af�\C��q                                    Bu�   �          @��>B�\��ff@
=A}�C���>B�\���@���B+�
C��\                                    Bu�.�  �          @��?�p���G�@�\Amp�C��3?�p�����@�  B%�\C�7
                                    Bu�=R  �          @��R>�  ��Q�@%�A�ffC��
>�  ����@��
B;
=C�T{                                    Bu�K�  �          @�\)=L������@"�\A���C�4{=L�����H@�
=B<\)C�G�                                    Bu�Z�  �          @�p�>�{��=q@{A��\C�T{>�{���@��\B0Q�C��                                    Bu�iD  �          @�ff?aG���(�?�=qAk�
C�� ?aG�����@���B'=qC���                                    Bu�w�  �          @ۅ?���ҏ\?���AX(�C�xR?�����@�ffB!�HC���                                    Bu屆�  �          @��?�{���?�
=A��C�w
?�{��@���B��C��                                    Bu展6  �          @أ�?�33��33?�G�A
�RC�U�?�33��p�@tz�B{C��                                    Bu屣�  �          @�33@B�\�Ӆ����\)C�T{@B�\��(�@"�\A�G�C�,�                                    Bu屲�  �          @�=q@;���33���H�T��C��3@;���z�?��A?\)C��                                    Bu��(  �          @�?�����H>k�?�ffC��?����@^�RA�C�3                                    Bu���  �          A
�\@�����{�O\)��=qC��@������O\)��ffC��                                    Bu��t  �          A��@�p��p�����У�C��@�p����׿��H�>{C��)                                    Bu��  |          A(z�AG��vff��p���\)C�7
AG���33��z��'�C�e                                    Bu���  �          A9p�A�H�:�H������p�C�g�A�H�����q���(�C�b�                                    Bu�
f  �          AF�HA\)?����ff�	��A+�
A\)�Ǯ������C���                                    Bu�  �          AG�
A\)@
=��p��\)AZ=qA\)��\)����  C���                                    Bu�'�  �          AEp�A{?��������A�\A{��
���H�(�C�B�                                    Bu�6X  �          A?
=A(�?����H�(�A8(�A(�����=q���C���                                    Bu�D�  �          A*{@���@J�H�޸R�#z�A�\)@��;���(��7ffC�<)                                    Bu�S�  �          A�
@�z�@&ff�ҏ\�*�HA�33@�z�G������9�HC���                                    Bu�bJ  �          A=q@���@AG������-G�AƸR@��ÿ�\�����B�C��                                    Bu�p�  �          A�R@�{@!G���G��&33A�@�{�W
=�޸R�3�C���                                    Bu��  �          A@�Q�@$z���\)�%�
A��R@�Q�
=q��\)�7�C���                                    Bu岎<  �          A�H@θR@;����
�,�AÙ�@θR����
=�@z�C��\                                    Bu岜�  �          A�H@�p�@1G������.(�A��R@�p��.{��p��?�C���                                    Bu岫�  �          A��@�p�?�ff�����*Ay�@�p�����ȣ��.��C�5�                                    Bu岺.  �          A�R@�G�?s33��  �#ffA��@�G���G���G���C�.                                    Bu���  �          A
{@׮>�\)�����@Q�@׮��
�����
{C���                                    Bu��z  �          A{@��H?����ff� p�@�@��H�����  ��C��                                    Bu��   �          A�R@��?.{���H�#��@��@���=q�������C���                                    Bu���  �          A�@���>Ǯ�θR�&{@A�@����.{���
�33C�                                    Bu�l  �          A+\)@��R?xQ���33�&{@�p�@��R�!G���ff��C�9�                                    Bu�  |          A.�\A
=�#�
�أ���
C��
A
=�N{��ff�p�C��                                    Bu� �  �          A733A��?�\��\)�$p�@XQ�A���G
=��=q�\)C��                                    Bu�/^  �          A+�
A  ��=q���R�33C��fA  ��
=�����Q�C�"�                                    Bu�>  �          A'�A{���������Q�C�S3A{���\��z��ӅC��                                    Bu�L�  �          A&ffA�H��Q������33C���A�H�<����  ��C�Y�                                    Bu�[P  �          A Q�A
=?�(������=qA�A
=��=q��ff�C��                                    Bu�i�  �          A#�AQ�>Ǯ����Q�@#33AQ��Q�����݅C�*=                                    Bu�x�  �          A#�A
=?z���G���  @r�\A
=�G���p�����C�q�                                    Bu峇B  �          A#
=A�?.{������ff@��A���ff��\)�ݮC�7
                                    Bu峕�  �          A!p�A�?���z�� �H@��
A��Ǯ��G���z�C�˅                                    Bu峤�  �          A(��A33?�{��ff�  @��A33��G�������\)C�H�                                    Bu峳4  �          A)�A Q�>L�����
�"Q�?��A Q��HQ����
���C�W
                                    Bu���  �          A*�R@�z�#�
���
�7�C���@�z��j�H��p���HC���                                    Bu�Ѐ  �          A&�\@�Q�?k���(��4��@�
=@�Q��0  ����&�RC���                                    Bu��&  �          A!@�R?��
���H�"�RAV{@�R��\)��(��#�HC�޸                                   Bu���  �          A"�R@�ff?���{�$=qA]p�@�ff��\)�׮�%�C��                                     Bu��r  �          A)�@�z�?�ff��
=�$=qA�@�z���R��
=�p�C�)                                    Bu�  �          A&�HA=q����������C�T{A=q��33���\���HC��R                                    Bu��  �          A)�A�H�E���z��G�C�g�A�H�p����
=��{C��R                                    Bu�(d  �          A4  A=q����33�33C�W
A=q�qG�������
C��                                    Bu�7
  �          A0��A�����z��'��C��A��g
=��{�C�&f                                    Bu�E�  �          A4Q�A�������H�*�C�RA��z=q��Q��(�C�J=                                    Bu�TV  �          A2ffAp�>�ff���
�%�\@EAp��K�����C��                                    Bu�b�  �          A+�@�=q?\(��陚�+\)@���@�=q�333��G���C�*=                                    Bu�q�  �          A/�A��>.{����#(�?��A���U���H�=qC��                                    Bu崀H  �          A2ffAQ�L����{� �RC�ٚAQ��b�\��Q����C��{                                    Bu崎�  �          A3�A=q>�p���{�&(�@\)A=q�S�
��p��  C�<)                                    Bu崝�  �          A2�HA\)>Ǯ��G��"��@'
=A\)�N{�љ����C���                                    Bu崬:  �          A-�Ap�=��
��p��&�?�Ap��[��ə��ffC���                                    Bu崺�  �          A/�
A33>�z��陚�&�R@�A33�Tz���Q��p�C���                                    Bu�Ɇ  �          A0��Ap�>.{��  �$
=?���Ap��Y��������C���                                    Bu��,  �          A0��Ap�>�����\)�#�@G�Ap��P  �θR�ffC�U�                                    Bu���  �          A/
=AG��Tz��ᙚ� ffC�+�AG���p������
=C��\                                    Bu��x  �          A.�\AQ�c�
��=q�!��C���AQ������\)��G�C�h�                                    Bu�  �          A/�A�Ϳh����33�!�C�޸A�����������z�C�\)                                    Bu��  �          A5��A
==u����'ff>��A
=�j�H�Ӆ���C�C�                                    Bu�!j  �          A8  A��>���z��'33?W
=A���i���ָR�\)C�n                                    Bu�0  �          A6�HA33�k����&=qC�8RA33�x�������
=qC���                                    Bu�>�  �          A0Q�AG���������C���AG������ff��RC�]q                                    Bu�M\  �          A2=qA�\�����������C�t{A�\��ff�����C�h�                                   Bu�\  �          A:�RA�H���H������\C�!HA�H���R���H��(�C�
                                    Bu�j�  �          A;�A�\���H��G���C�&fA�\�������R��(�C��                                    Bu�yN  �          A9A�׿�G���(���
C�W
A������G���{C��q                                    Bu嵇�  �          A1G�@������H��RC�h�@���\)�Tz���p�C�N                                    Bu嵖�  �          A0z�A��p  ��{�  C���A���ff�n�R��z�C��                                    Bu嵥@  �          A,��A�\�R�\��{�p�C�A�\��p��o\)���RC��                                    Bu嵳�  �          A1A�R�a��˅�p�C���A�R��
=�qG���ffC��f                                    Bu�  �          A2ffA�H�XQ���{�=qC�RA�H��(��z=q��Q�C�H                                    Bu��2  �          A.=q@��H�U���\)�Q�C�|)@��H�Ǯ����\)C��q                                    Bu���  �          A�R@��+���\)���C��R@�����=q��C��3                                    Bu��~  �          A%G�@���   ��\)�(�C�.@�������������C�{                                    Bu��$  �          A(��A�\��Q������\)C�K�A�\���
��=q�ͮC���                                    Bu��  �          A4Q�A  ���H������C�/\A  ���
��p���z�C��                                    Bu�p  �          AB�\A
=��
=�陚���C��A
=��(�����ڸRC��                                     Bu�)  �          AG�
A
=��33��33�\)C�L�A
=��33��G���
=C�n                                    Bu�7�  �          AF�RA�
��Q����
�=qC�aHA�
�������ϙ�C��
                                    Bu�Fb  �          AH  @�z���H�~{��\)C�Ff@�z���?��
@���C��                                    Bu�U  �          A@��@��H���L(��v{C��@��H�\)?�
=A  C���                                    Bu�c�  �          A?�@Å��\�0���U�C�Ф@Å�\)@%AG�
C�                                    Bu�rT  �          A>�H@�����,���QG�C��@�����R@\)A@��C�                                    Bu嶀�  �          A<  @ָR�  �.�R�V�RC���@ָR�@�\A3�C��                                    Bu嶏�  �          A=G�@������?\)�i�C���@�����?��HA��C��H                                    Bu嶞F  �          A=��@�  ����.{�T  C��@�  �33@
=A7�C���                                    Bu嶬�  �          A>�R@�(�����'
=�J{C�c�@�(����@#33AF{C�`                                     Bu嶻�  �          A@z�@����mp���p�C�,�@���?���@�=qC�8R                                    Bu��8  �          A?�@�z��33�`  ���
C�L�@�z���
?��R@��C�|)                                    Bu���  �          A?33@�ff����K��w
=C�
=@�ff�p�@z�A\)C��                                     Bu��  �          A@Q�@θR�33�l(���
=C�,�@θR� Q�?�=q@�=qC�ff                                    Bu��*  �          A?�
@�\)�
=�l����  C�q@�\)���?���@�ffC�>�                                    Bu��  �          A=�@��H�(���(���33C��q@��H�=q?\(�@�C��=                                    Bu�v  �          A?33@�\)����33���HC�#�@�\)���>��?�p�C�j=                                    Bu�"  �          A>�H@��\��G�������HC��3@��\��=��
>�Q�C���                                    Bu�0�  �          AHz�@���  ��(���  C�
=@���G����
����C���                                    Bu�?h  �          AD(�A33�������У�C�8RA33���n{����C�0�                                    Bu�N  �          AAp�Ap�������ff��
=C��Ap�����(��ᙚC�h�                                    Bu�\�  �          AE��Aff����G�����C��HAff������HC���                                    Bu�kZ  �          AD��AQ���ff��  ��z�C�c�AQ��zῙ����33C��                                    Bu�z   �          A@  A\)�ۅ��������C�z�A\)���Y�����\C�z�                                    Bu巈�  �          A>�\A���\)��\)����C�.A�����(��z�C��q                                    Bu巗L  �          AE��A
�H���H�\���C��A
�H����   �G�C���                                    Bu工�  �          AFffA���(����R�ۅC��A���H���
�z�C��                                    Bu巴�  �          AF�\A�R��{�Ӆ�(�C��
A�R�
=�!G��<z�C��                                    Bu��>  �          AF�RA   �ƸR���ffC�{A   �  �@  �`(�C���                                    Bu���  �          AF{A  ������Q���  C���A  �
=����(z�C�Y�                                    Bu���  �          AEp�A�R�����߮�
(�C���A�R�(��;��[�C���                                    Bu��0  �          AE�A	��G���Q����C�� A	���z��*�HC�%                                    Bu���  �          AHQ�A33��ff������=qC�1�A33�{�Y���x��C�33                                    Bu�|  �          AI�A\)��
=���
��z�C���A\)�z�z��'�C��R                                    Bu�"  �          AIG�A  ��\)�������
C���A  �
=?�\@z�C��q                                    Bu�)�  �          AHQ�Az���\�]p���ffC�7
Az���?J=q@g
=C��                                     Bu�8n  �          AH��A��{��{��=qC�:�A��=���>�G�C�.                                    Bu�G  �          AF{A�R��
=������ffC��fA�R�(�>�  ?��C���                                    Bu�U�  �          AG\)A�
��ff��G���C�p�A�
�Q�>��?��C��H                                    Bu�d`  �          ADQ�AG����
��
=��{C��qAG���R���
���C��f                                    Bu�s  �          AB{A�
��������{C���A�
�{�B�\�h��C�j=                                    Bu币�  �          AE�A	���z���33���C���A	��zῠ  ��=qC�:�                                    Bu帐R  �          AF�HA
{�ҏ\��G����HC�Y�A
{�  ������C�O\                                    Bu帞�  �          AH��@����������33C���@������K��l  C��                                    Bu席�  �          AK
=A�H��\)����Q�C��A�H��
�W
=�w33C�"�                                    Bu帼D  �          AF�HA33���
��G���C�fA33�{�������C���                                    Bu���  �          AG�A(�����������C��A(���R��z���(�C�ff                                    Bu�ِ  �          AJ�RA  ����������G�C���A  �ff�
=��C�AH                                    Bu��6  �          AF{A����=q�����33C�!HA���
{��{��(�C��=                                    Bu���  �          AH(�A���  ���
���
C��RA��������C�u�                                    Bu��  �          AF�\A(��=q�����C��RA(��  >�
=?���C��H                                    Bu�(  �          AK
=A{�p���\)��
=C��A{��
��\)���
C��R                                    Bu�"�  �          AJ{A������=q��ffC�j=A����޸R��C�j=                                    Bu�1t  �          AH(�Az���p���ff��HC��fAz�����:�H�X��C��                                    Bu�@  �          AHz�A�������߮��C�+�A��� z��S�
�t��C�4{                                    Bu�N�  �          AC�A����{��G����C��
A������e����RC�w
                                    Bu�]f  �          AA�A�R�E��ff��C�q�A�R��Q���Q����RC��                                    Bu�l  �          AAA���R��z��#{C���A���  ���\��(�C���                                    Bu�z�  �          AAAz��p���{�$33C�,�Az���\)��Q��ظRC�S3                                    Bu幉X  �          A@z�A
{�Tz�������\C�}qA
{�����=q��G�C�ٚ                                    Bu幗�  �          AN=qA��z���{��\C�"�A��(���  ���
C���                                    Bu幦�  �          AL��AG��j=q��p��\)C�L�AG����������C�{                                    Bu幵J  �          AH  AQ��\��������HC��AQ���p������{C���                                    Bu���  �          AIG�A�����H��Q��
=C��{A������k���  C�p�                                    Bu�Җ  �          AH��A
=q�����{� �HC�@ A
=q��
�\)�7�C�S3                                    Bu��<  �          A=�A��  �����C��HA�p�����'
=C��                                    Bu���  �          AEG�@�{��  ������\)C�O\@�{��ÿ���RC�<)                                    Bu���  �          AEA33��p���=q�
=C���A33��\�  �(��C�O\                                    Bu�.  �          AEp�A
�\��=q��\)�	�HC�5�A
�\��H�J�H�nffC�O\                                    Bu��  �          AB�RAQ���G���p��
=C�Q�AQ����\�g
=���\C��{                                    Bu�*z  �          A@Q�A�
�0��� ���({C���A�
��������(�C�&f                                    Bu�9   �          AB�RA�R���H��G��z�C��)A�R������  ���
C�u�                                    Bu�G�  �          AH��Aff��\)��\)��C��{Aff��(���
=��33C�H                                    Bu�Vl  �          AB�HAz��p���33�Q�C�eAz���=q��{��  C��                                    Bu�e  �          AB�HAff��Q���{�"�C�K�Aff��p���z���z�C�AH                                    Bu�s�  �          A>�\A  �XQ������{C�*=A  ��{����(�C��                                    Bu庂^  �          A>�H@�����
=��p��  C��@����\)�1G��V�RC��f                                    Bu庑  �          A:�HA	��333��33��HC��A	��Å��=q���C�AH                                    Bu废�  �          A=p�AG����
��
=���C���AG���  ��{��Q�C�8R                                    Bu庮P  �          A;\)@�G��������C��q@�G��\)�G��
=C��                                    Bu庼�  �          A=p�@�=q�Ϯ����Q�C��)@�=q���&ff�IC��)                                   Bu�˜  �          AEp�@��������Ӆ��HC�G�@�������{��  C���                                   Bu��B  �          A;�
@���ff��33�	=qC���@���Ϳٙ��C��                                    Bu���  �          A?\)@��������z�C���@���p���Q��C��)                                    Bu���  �          A5G�@������=q�Q�C�  @�����8Q��l  C�E                                    Bu�4  �          A7�
@��H���\����\)C���@��H����XQ����C�'�                                    Bu��  �          A<Q�@�z������G�� G�C�l�@�z��	��c�
����C��                                    Bu�#�  �          A<  @���:�H���1C��3@�������ff��p�C��                                    Bu�2&  �          AB�\A=q��z��9
=C�ФA=q�����˅����C��                                    Bu�@�  �          A@  @�\)��z��(��JG�C��\@�\)��=q��(����C�xR                                    Bu�Or  �          A@  @陚�fff��
�P�HC��H@陚��Q����H��C���                                    Bu�^  �          A?33@�z�u�  �Z�HC�f@�z����H��\�,ffC�q                                    Bu�l�  �          A?\)@�
=�G����\�
C��\@�
=������33�&�C���                                    Bu�{d  �          A=p�A����33����z�C�3A��� Q���\�3
=C��                                    Bu廊
  �          A=G�Az�������ff��33C�&fAz���  ��z����C��                                     Bu廘�  �          A7�A ����\)��ff����C��A ���녿G��z=qC�Z�                                    Bu廧V  �          A4��A\)���\�����\)C��A\)��G��У���C��)                                    Bu廵�  �          A3�A
=��
=��
=���HC�w
A
=�ҏ\����Q�C���                                    Bu�Ģ  �          A:ffA���������H��
=C��=A���ҏ\��R�D��C�\)                                    Bu��H  �          A=�AQ��\������33C�AQ���{�Z�H��=qC�z�                                    Bu���  �          AD(�A����  �������
C��A�����%��C
=C��3                                    Bu��  �          AAA  ��33���H��C��3A  ����7
=�[
=C��)                                    Bu��:  �          AD  A�R�����Q���  C�Z�A�R���H�G
=�k\)C�Y�                                    Bu��  �          AG�A  ���љ����C�g�A  ��Q��U�x��C�#�                                    Bu��  �          AD(�A�������ff��33C�C�A���G��޸R��
C�
=                                    Bu�+,  �          A:{A���z��\(����
C�(�A�����>�{?�
=C�U�                                    Bu�9�  �          A1�A	p���33�G���(�C���A	p�����?8Q�@n{C�W
                                    Bu�Hx  �          A1Aff��  �XQ���
=C�"�Aff�陚?z�@@  C��H                                    Bu�W  �          AH��@���z���33�	��C��@��=q�\)�7�C�
                                    Bu�e�  �          AJ�HA(���\)�����z�C���A(���R������Q�C�=q                                    Bu�tj  �          AH��A�����H�>�R�[�C��qA��� (�?�  @�z�C���                                    Bu弃  �          AF=qA
=���\�0  �L��C���A
=�p�?�=qA�
C�P�                                    Bu弑�  �          AD��A  ��ff�*�H�H��C�FfA  �ff?���AffC���                                    Bu张\  �          AC\)A��  ���\C�K�A����@&ffAEp�C���                                    Bu弯  �          ABffA���
=��Q���\)C��3A��� ��@C33Ai�C�b�                                    Bu弽�  �          AB�RA�\�ff�'��F�\C���A�\�  @\)A*{C�U�                                    Bu��N  �          A?�A���ff�b�\���HC�� A���\)?Tz�@|(�C�+�                                    Bu���  �          A@  A������S33��  C�&fA����z�>�
=@   C�u�                                    Bu��  �          A@��A	G���33�?\)�fffC��=A	G���?��@��C��                                    Bu��@  �          A>�HAp���{�E��o\)C�7
Ap��?�{@�G�C�y�                                    Bu��  �          A@  A��33�.�R�QC��A��p�?���@���C���                                    Bu��  �          AB�\A  ���
���3�C�h�A  ��\?�33@��C��                                    Bu�$2  �          A?�A�H���
�8Q��^�HC�XRA�H��p�?s33@�=qC�:�                                    Bu�2�  �          A>�HA{��ff�&ff�IC��qA{��\)?У�@��
C�T{                                    Bu�A~  �          A>�HA�������4  C��A���33@�A(z�C�f                                    Bu�P$  �          A>�RA
=�   ��(����HC��\A
=��@@��Aj�RC��                                     Bu�^�  �          A<��AG���H��Q��Q�C�AG���=q@:�HAeG�C�c�                                    Bu�mp  �          A>�HA����p���C��qA� (�@,(�AQC��                                    Bu�|  �          AA�A���  ��   C�+�A�����@0  AS33C�}q                                    Bu彊�  �          A@(�A  ����z���ffC��A  ��p�@A�Ai��C��                                     Bu彙b  �          A?�A33� �ÿУ����C��RA33��@:�HAaC�E                                    Bu彨  �          A@(�A	G���
������z�C��A	G���=q@B�\Ak
=C�Ф                                    Bu彶�  �          A@z�A�R�
�H�У���G�C�� A�R�\)@P  Az�\C�j=                                    Bu��T  �          A>=qA  ��R��G��陚C�7
A  ��@Mp�Az�RC�{                                    Bu���  �          A=p�A�R������\C�(�A�R�G�@7�A`  C���                                    Bu��  �          A>=qAQ��녿���C�1�AQ���Q�@:�HAc33C��R                                    Bu��F  �          A=A	G�� Q�����
=C�t{A	G���@>�RAh��C�7
                                    Bu���  �          A=��A	����
=��(����C��
A	�����@333AZffC�'�                                    Bu��  �          A>ffA�
��(��У���(�C��
A�
��=q@,(�AP��C�k�                                    Bu�8  �          A=�A����
=��p���\)C�b�A����=q@7
=A`z�C�"�                                    Bu�+�  �          A<  A(������=q��  C�g�A(���
=@H��Ax  C�^�                                    Bu�:�  �          A=�AQ��{������\)C�Q�AQ���{@`��A�Q�C���                                    Bu�I*  �          A>ffA\)��Ϳ�G����
C��A\)����@mp�A�\)C�J=                                    Bu�W�  �          A>ff@���ff��ff��G�C���@�����@�  A�G�C�R                                    Bu�fv  �          A:=qA�����׿���\)C�޸A����\@<��Ak
=C��{                                    Bu�u  �          A;\)A	���ff��Q��G�C���A	����@|(�A���C���                                    Bu徃�  �          A<Q�@�\)�(��p����=qC�ٚ@�\)��@���A�{C�T{                                    Bu徒h  �          A;�
@�\�녿p�����HC�g�@�\�\)@�=qA�z�C��H                                    Bu御  �          A;�@���  �c�
���C�� @�����@q�A�
=C�)                                    Bu徯�  �          A;\)A33���ÿ}p���33C��A33��@Tz�A��C�aH                                    Bu徾Z  �          A9�Aff��(��aG���33C�g�Aff��(�@^{A��C��{                                    Bu��   �          A6ffA
ff���
�xQ����C���A
ff�׮@G�A~{C�f                                    Bu�ۦ  �          A9G�A�
��zΎ���(�C�ǮA�
�׮@+�AV�HC��\                                    Bu��L  �          A8��A���ff��
=���HC��HA��ƸR@\)A3
=C�^�                                    Bu���  �          A7
=A\)���ÿ�����C�4{A\)����@(�A0��C��3                                    Bu��  �          A5�A
=�ȣ׿z�H��{C�4{A
=��=q@!G�AL��C�*=                                    Bu�>  �          A6{A����Ϳ����  C��HA���@
=A+\)C��{                                    Bu�$�  �          A6�HAQ����׿�(���RC���AQ���z�?�ff@�G�C��R                                    Bu�3�  �          A6�HA����Q��p�� (�C�U�A����
=?��\@��
C��                                     Bu�B0  �          A3\)A����z����*�HC�Z�A�����?�\)@�Q�C��q                                    Bu�P�  �          A6ffA
=��(����#�
C��\A
=���H?��@���C�xR                                    Bu�_|  �          A3�A���녿���
=C�]qA�����?�{@�{C�ٚ                                    Bu�n"  
�          A5�A  �����>{�tQ�C�~�A  ����>��R?���C�Ǯ                                    Bu�|�  �          A5�A����ff�   �LQ�C��3A���˅?��@���C��                                    Bu忋n  �          A4  A����=q�R�\����C���A�����\�L�Ϳ�ffC�H�                                    Bu忚  �          A/\)A(����
�5�p��C���A(���33>���?�p�C��q                                    Bu忨�  �          A0��A=q��z��-p��c\)C��=A=q��G�>�ff@
=C�,�                                    Bu忷`  �          A/�A�
�����*�H�ap�C�*=A�
��(�?\)@:=qC��                                    Bu��  �          A.�\A  ���R����O�C�NA  ���R?8Q�@q�C�'�                                    Bu�Ԭ  �          A0z�@�\)�G���\�)��C�g�@�\)��33@x��A��C�@                                     Bu��R  �          A2{@��H�  �.{�aG�C��@��H��\)@���A���C�7
                                    Bu���  �          A/33@���
=��33��ffC��)@������@�33A�G�C���                                    Bu�� �  �          A0z�@��H��R�333�i��C���@��H����@qG�A�ffC��                                     Bu��D  �          A.�H@θR�\)���H��z�C�G�@θR� (�@hQ�A�G�C�p�                                    Bu���  �          A.=q@����(���=q���C��q@�������@Z�HA��RC�f                                    Bu��,�  �          A-G�@أ���Ϳ�=q�=qC��
@أ����@FffA��C�\)                                    Bu��;6  �          A,��@����Ϳ�z���C�^�@������@O\)A���C�L�                                    Bu��I�  �          A.ff@�p���
�n{����C�%@�p���(�@xQ�A�33C��3                                    Bu��X�  �          A.ff@��������  C�` @���z�@|��A�  C���                                    Bu��g(  �          A0��@�
=�33��\�(��C�|)@�
=� ��@�\)A�
=C�G�                                    Bu��u�  �          A*=q@��
�Q�@j=qA���C���@��
���R@���BBC��H                                    Bu���t  �          A$z�@�33�33@:�HA�C�Ff@�33��G�@�B1��C�p�                                    Bu���  �          A Q�@��H� z�?��A�RC�h�@��H��
=@��HB	ffC���                                    Bu����  �          Aff@�  ���R���Ϳz�C��@�  ����@�p�A���C�%                                    Bu���f  �          A#\)@ۅ��  �z��;33C���@ۅ��\)@�A@z�C��q                                    Bu���  �          A'�@��
�����ff�P  C�*=@��
��ff?�\A�C��3                                    Bu��Ͳ  �          A*�H@��H���Ϳ�G���Q�C��@��H��(�@AG�A��C��                                    Bu���X  �          A'�@������
���!G�C���@�������@s�
A��RC�~�                                    Bu����  �          A)G�@��H�G��8Q�s33C�  @��H��p�@��A�G�C�Q�                                    Bu����  �          A\)@У���׼��.{C�s3@У���(�@\)A�
=C��\                                    Bu��J  �          A'33@��
��>�G�@��C��H@��
��
=@�Q�A�p�C���                                    Bu���  �          A'\)@�p��	��?�R@Y��C�E@�p���{@��A�(�C�9�                                    Bu��%�  �          A*=q@�  ��?�\)A�C�1�@�  ���@�z�B33C�\)                                    Bu��4<  �          A*ff@ƸR�33?�A33C�'�@ƸR��p�@��B
�HC���                                    Bu��B�  �          A+33@�z����?�(�A)�C���@�z���p�@�
=B33C�k�                                    Bu��Q�  �          A�@�  ��R@G�AG\)C��3@�  ��\)@�B�
C���                                    Bu��`.  �          A)G�@�=q�(�@�
AJ=qC�.@�=q���R@ϮB�C�#�                                    Bu��n�  �          A(  @�{���?�33Az�C�Z�@�{��z�@��B��C���                                    Bu��}z  �          A)G�@����?���@���C��
@�����  @�33A�\)C�C�                                   Bu���   �          A�?z�H�qG�@�  BzG�C�H�?z�H?O\)AB��RB(�                                    Bu����  �          AG����@�=q@�Q�B7��C	�\���@���@G�A�=qB�\                                    Bu���l  �          A�R��@��\@�p�BC{��@Ϯ?�p�AF=qB���                                    Bu���  �          Aff���@���@�\)B
ffC� ���@��?�33A�RB���                                    Bu��Ƹ  �          A�����H@��@�  Bz�C�)���H@�\?��@��B�\)                                    Bu���^  �          A(���=q@�{@��RA�Q�Cٚ��=q@���?Q�@��\B�u�                                    Bu���  �          A����\@�{@���A��
C:����\@�\?fff@��RB��q                                    Bu���  �          A���p�@���@�Q�A��Ch���p�@�33?��@W
=B���                                    Bu��P  �          A{���
@�\)@���A�
=C\)���
@�=q?:�H@�{B�aH                                    Bu���  �          A
=��z�@�@�ffA���C� ��z�@��?fff@�
=B�W
                                    Bu���  �          A�R��@�
=@�{A�ffC����@�
=?�@I��B�u�                                    Bu��-B  �          A����@ٙ�@r�\A��C�q����@��׾����B�\                                    Bu��;�  �          A������@�(�@�  B�HC������@У�?�(�A
=qB��                                    Bu��J�  �          @���?@  @�{B�Q�C"�q��@�{@�Q�B=p�B�33                                    Bu��Y4  �          @�p��Fff?�\)@���B{  C�f�Fff@�=q@��RBz�B�u�                                    Bu��g�  �          A=q�k�@��@�
=Bs��C!H�k�@��R@��
B�HB�W
                                    Bu��v�  �          A ����(�@A  BqC����(�@��
@�p�Bp�B��f                                   Bu�&  �          Aff�>{?��H@��B��)C���>{@�p�@�  B*��B�q                                    Bu��  �          A�R�S33?��A(�B��C"���S33@��@�\B<��B��\                                    Bu�¢r  �          A��P  ?���A	�B�z�C!�)�P  @�ff@�ffB:33B�                                    Bu�±  �          A
�R�QG�?�  @�z�B��=C\)�QG�@�=q@�B)
=B�#�                                    Bu�¿�  �          @�>L�����
@љ�Bg=qC�c�>L�ͼ��
@�\)B�C���                                   Bu���d  �          A
=��\�$z�@�p�B��RCdL���\?��@��B���Ch�                                    Bu���
  �          AG��O\)��p�@�RB
=CP+��O\)@�R@�BrffC�\                                    Bu���  
�          @��U�aG�@���B}�C7ٚ�U@U�@�Q�BJ�C\                                    Bu���V  �          A{�u�?��
@���Br
=CB��u�@���@��
B��B�33                                    Bu���  �          A����?�  @�{Blz�C'n���@�p�@��B'�C\)                                    Bu���  �          A	�����@z�@���BX{C����@���@�G�B33C�                                    Bu��&H  �          A�\?����N�R@��Bj�RC�Z�?���>���@ҏ\B�=qAK\)                                    Bu��4�  �          A
=@\������@�(�BG�C�H�@\���Q�@���Blp�C�                                      Bu��C�  �          A  �z=q�X��@�33BO��C]  �z=q?(�@���Bw�C+�                                    Bu��R:  �          A�����
�#33@��
B-�CM\)���
?O\)@ÅBA�C+n                                    Bu��`�  �          A�׾�ff����@�
=B)z�C��H��ff���@�
=B��C�C�                                    Bu��o�  �          A�@�\�HQ�@�z�Bn�C���@�\?8Q�@�=qB�A��H                                    Bu��~,  �          Aff���>.{@��B��RC*�R���@�G�@ҏ\B`z�B�=q                                    Bu�Ì�  �          A�H��������@��B�ffC@�����@h��@θRBk=qB�W
                                    Bu�Ûx  �          Aff����?\)@�\)B2�\C.u�����@`  @�=qB\)CǮ                                    Bu�ê  �          Aff���
?�@�Q�BJG�C!����
@�
=@�{B�RC�H                                    Bu�ø�  �          A  �w
=?Q�@�(�BtG�C'�q�w
=@��R@��
B.��Cٚ                                    Bu���j  �          AG��
=?+�@��\B�k�C"aH�
=@�ff@ə�BJ�B�aH                                    Bu���  �          A ��?��ͿY��@��B��3C��f?���@W
=@���B{  B�33                                    Bu���  �          Ap�@%��I��@�ffBj�
C��H@%�?Y��@�33B�� A�=q                                    Bu���\  	.          AQ�@ff�ǮA��B�k�C�5�@ff@B�\@��
B�HBQ33                                    Bu��  �          A=q?�Q�>��A  B�33AAp�?�Q�@��@�(�B^Q�B��q                                    Bu���  �          A{?fff?��A�HB�BF�?fff@�ff@���BI�B�aH                                    Bu��N  �          A ��?\)?�R@�
=B�{B@�?\)@�
=@�ffBVz�B��{                                    Bu��-�  �          @�\�8Q�>.{@�\)B�C&�H�8Q�@��\@ȣ�BbG�B��f                                    Bu��<�  �          @�R��=�Q�@�33B�W
C1�q��@s�
@��BU�
B��
                                    Bu��K@  �          @�  �(�<#�
@��B�\C3޸�(�@qG�@��HBY�RB�=q                                    Bu��Y�  �          @�׿\=���@�B���C0=q�\@tz�@��B^G�B�k�                                    Bu��h�  �          @�zῡG�?:�H@�\)B�Q�C�q��G�@��@���BN{B�                                    Bu��w2  �          @�Q�>�  ?Y��@�p�B�p�B�
=>�  @��@��
BO33B���                                    Bu�ą�  �          @�\)���
?�  @�RB�{B��;��
@��@�33B:\)B�#�                                    Bu�Ĕ~  �          @�=q�Ǯ>�@�ffB��C��Ǯ@�@�=qB[ffB��                                    Bu�ģ$  �          A�R�c�
<#�
A{B��\C3��c�
@�Q�@�p�Bg=qB�u�                                    Bu�ı�  �          A���aG�A
�HB��)CH� �@s33@�33Bq�B�B�                                    Bu���p  �          A
=�J�H����@�=qB�\)CR=q�J�H@��@�p�BwffC�                                    Bu���  �          A�
�8Q��RA
�HB��{C@+��8Q�@���@�
=Be��B�.                                    Bu��ݼ  �          @�
=�*=q�=p�@���B�ǮCC���*=q@G
=@�\)Bf�C�=                                    Bu���b  �          @�z��)���   @�(�B��\C>��)��@S33@��HBa
=C �                                     Bu���  �          @���2�\��{@�33B�k�C:���2�\@R�\@�Q�BY�CE                                    Bu��	�  �          @�ff��
>L��@��HB��C/���
@�  @���BTQ�B���                                    Bu��T  �          A ���"�\>.{@�(�B�.C0G��"�\@��
@�p�BS�B�#�                                    Bu��&�  �          Aff�
=>\)AG�B�{C0���
=@�\)@�RBZ��B���                                    Bu��5�  �          A	�p��L��A�B��RC5��p�@�  @�G�B\ffB�\                                    Bu��DF  �          A	p��!녾W
=A\)B���C8�H�!�@��@�B_p�B�G�                                    Bu��R�  �          @�G��\)�u@�ffB�W
C9�q�\)@k�@�\)Baz�B��                                    Bu��a�  �          AQ�� �׿!G�A�B���CA��� ��@u�@�
=Bi��B���                                    Bu��p8  �          A
{�#33����A�B�#�C<�\�#33@|(�@�
=Bc�B���                                    Bu��~�  �          A��L�Ϳ\)AQ�B�k�C=��L��@�33A\)BbB���                                    Bu�ō�  �          A���H�ÿQ�A��B��\CB���H��@�  A=qBh
=C �                                    Bu�Ŝ*  �          A
{�<�ͿfffA ��B�CD�R�<��@Z=q@��HBi�C�)                                    Bu�Ū�  �          A=q�9���z�H@��B�33CF���9��@N{@�Bk��C�                                    Bu�Źv  �          Ap��5��=q@�RB�u�CM!H�5@/\)@�=qBsffC�                                    Bu���  �          A33�N{��  @��B��HCL��N{@$z�@�Bo��C\)                                    Bu����  �          @���C33��p�@�
=B|�RCMٚ�C33@{@�Q�Bo�\C�                                    Bu���h  �          A�H�A녿�@���B�
=CRǮ�A�@�\@�Q�By�\C��                                    Bu���  �          @���[���=q@�(�Bf��CP��[�?�{@�{Bj=qC�\                                    Bu���  �          @�33�(�ÿ���@��HBy(�CR���(��?�
=@���Bv�RCp�                                    Bu��Z  �          @�(��\)��@��\Bm(�CQ�3�\)?��
@��Bp=qC                                    Bu��    �          @�  �5���@��HBz33CN���5�?�Q�@�{Bp
=C�
                                    Bu��.�  �          @�
=�J�H���H@��HBx\)CL�f�J�H@
=q@�z�Bl�C�                                     Bu��=L  �          @�Q��XQ���@��Bgz�CLk��XQ�?޸R@�33Bd  CǮ                                    Bu��K�  �          @���|�ͿǮ@�=qBMCI���|��?�@��BO�HC E                                    Bu��Z�  �          @�ff��z��@�Q�B7z�CMh���z�?L��@��
BI
=C)�                                    Bu��i>  �          @ҏ\��{��@��HB1ffCN�
��{?��@���BGC,��                                    Bu��w�  �          @θR�s�
���H@�
=B8�CO(��s�
?!G�@��HBM��C*��                                    Bu�Ɔ�  �          @�33�333���@�
=B��CJ&f�333@'
=@��Bn�C��                                    Bu�ƕ0  �          @�33�)���h��@�Q�B��CF���)��@5�@�\)BlffC
=                                    Bu�ƣ�  �          A������Q�@��HBf{CGO\���@�@ӅBZ=qC�                                    Bu�Ʋ|  �          A��u�����@�Bu�CG�u�@+�@ᙚBa�RC�R                                    Bu���"  �          A\)�dzῐ��@�33B���CE�\�dz�@C�
@��Be  Cc�                                    Bu����  �          AQ��k�����A�RB���CD���k�@P  @�\Bd33C
�=                                    Bu���n  �          @�33�dz��=q@�\)Bk�RCK޸�dz�?�(�@��
Be�\C�                                    Bu���  �          @����p  ��@ٙ�Bm�CH��p  @G�@��Ba33C�{                                    Bu����  �          A
�\��G��˅@�Bf  CH\)��G�@�
@�\)B\\)C��                                    Bu��
`  �          A
=���H����@�{BB�RCE�q���H?�{@�p�BB33C!��                                    Bu��  �          A\)���\��=q@���BNCD�����\@\)@�33BGffC.                                    Bu��'�  �          A\)���Ϳ��H@�BTz�CE������@��@�BM
=C)                                    Bu��6R  �          Ap������ff@�
=BJ�RCH�����?��@��BL��C!&f                                    Bu��D�  �          A\)������H@���BKC?^����@3�
@��HB;�C޸                                    Bu��S�  �          A
=�\��  @�=qBA�HCA�)�\@z�@�33B9��C!H                                    Bu��bD  �          A\)���H��\)@�z�BFG�CGQ����H?��
@��BGQ�C!�
                                    Bu��p�  �          A	�����  @��B*�CA�����?�@���B(ffC$��                                    Bu���  �          A����p���p�@�ffB-33C?�=��p�?�@���B'
=C"�q                                    Bu�ǎ6  �          A	G���G���Q�@ҏ\BH�
CC0���G�@
=@�z�BA=qC8R                                    Bu�ǜ�  �          Aff����p�@�
=B\33CGY���@�
@��BUffC޸                                    Bu�ǫ�  �          A���(���@ٙ�BI�CEB���(�@G�@ָRBE�RCk�                                    Bu�Ǻ(  �          A�\��녿�  @�{B;�
CA�f���@ff@У�B5�HC �)                                    Bu����  �          A��p���G�@���B:=qCC���p�?�@�\)B8�C"�3                                    Bu���t  �          A���ҏ\� ��@�(�B/CD���ҏ\?У�@�\)B333C&\                                    Bu���  �          A���ۅ���@�=qB/�CCff�ۅ?�=q@��HB/�C%
                                    Bu����  �          A$z���p���@�z�B/�HCBff��p�@�@�\B.G�C$5�                                    Bu��f  �          A�R��Q쿼(�@ӅB'
=C?s3��Q�@�@�ffB"  C$�                                    Bu��  �          A z���z��   @i��A��
CD(���z�=�@��A���C2�R                                    Bu�� �  �          @������R?��
A��RCF������\@z�A��C:�
                                    Bu��/X  �          @�z���녿�=q?\(�A5�CF���녿5?�z�A�
=C=�f                                    Bu��=�  �          @�p����R��(�@Y��B
ffCEL����R>�ff@j�HBp�C.��                                    Bu��L�  �          A
�\���R�\(�?���A(��CL����R��@EA���CC                                    Bu��[J  �          @����p���z�>��?�33C\���p���z�@%A�  CX0�                                    Bu��i�  �          @��
�g
=��33���R�t  Cpff�g
=��\)?�(�A3�Cp�                                    Bu��x�  �          @�(��\)�Z�H�������Ci�f�\)�p��>���@��Clu�                                   Bu�ȇ<  �          @�����z�?�?\A���C'8R��z�?�\?:�H@�z�C �R                                   Bu�ȕ�  �          @�=q���R�+�?\A�33C;T{���R>8Q�?�33A��RC1��                                   Bu�Ȥ�  �          @�����z�u?��A;�C>\��zᾅ�?��HAr�\C6��                                   Bu�ȳ.  �          @��H����u>��
@XQ�C>aH����+�?@  A�C;Q�                                    Bu����  �          @��
��33��G�>\)?���C5���33���
>.{?�p�C4=q                                    Bu���z  �          @����Q�?G�>��@ ��C,G���Q�?L�;.{��C,\                                    Bu���   �          @��R��p�?   >�p�@c�
C/8R��p�?(�=�\)?333C.{                                    Bu����  �          @Å���
?�녾.{����C$c����
?���xQ���C'.                                    Bu���l  �          @�\)���H@L(��(���׮C5����H@��
=q����C�                                    Bu��  �          @�z���{@W
=�aG��	�CaH��{@�R����G�C+�                                    Bu���  �          @�33�u@33?O\)A(��C���u@����
���Cs3                                    Bu��(^  �          @�\)���R�c�
�y��Q�CW����R�-p��<(��2�Cuh�                                    Bu��7  �          @��
��\)������k�CCff��\)�(���c�
�?{Cj�f                                    Bu��E�  �          @tz�У׿W
=�J�H�oCO��У��33���p�Cj�f                                    Bu��TP  �          @�녿�(��:�H��=q�CN@ ��(��)���J�H�9=qCp�q                                    Bu��b�  �          @��H�C33�8Q��P  �8ffCA5��C33��R�{���CXB�                                    Bu��q�  �          @�����R��(���ff�R=qC9�����R�c�
�0���
=C?Q�                                    Bu�ɀB  �          @��H��{>���ff�ɮC-�3��{�!G���
��G�C<)                                    Bu�Ɏ�  �          @�z�@���?Ǯ�s33��RA�=q@��׿���=q�-��C�u�                                    Bu�ɝ�  �          @�z�@��\?���k��  @�{@��\����^{�C��)                                    Bu�ɬ4  �          @�33@�
=����Q��"\)C�O\@�
=�p��h���Q�C�                                    Bu�ɺ�  �          @��@��H?@  �i���z�A   @��H��33�b�\�  C��                                    Bu��ɀ  �          @��@��H����=q�!
=C�` @��H�P  �5��=qC�]q                                    Bu���&  �          @ʏ\@��׿�=q�xQ��'��C�N@����Q��&ff�ԣ�C�e                                    Bu����  �          @��>\)�&ff��G�¤L�C�  >\)�:�H�vff�S=qC�`                                     Bu���r  �          @�G��33�u�\)�z�
C:�\�33�
�H�W
=�A�RCb�f                                    Bu��  �          @���e?�  �.�R��
C$h��e����7
=��\C;n                                    Bu���  �          @��H@p��ff���
�U��C���@p��~{�1G�����C��)                                    Bu��!d  �          @��H@*=q�h���\(���\C��@*=q��33��(��F=qC�U�                                    Bu��0
  �          @��@\)�[��-p��z�C��@\)��녿.{���\C�                                      Bu��>�  �          @���?�{�333��{�_ffC��\?�{����   ��Q�C�                                    Bu��MV  �          @��H@���=p��%����C��{@���u�O\)� z�C�E                                    Bu��[�  �          @J=q�J=q��������G��Cn� �J=q�녿s33���Cx�H                                    Bu��j�  �          @K��+�?�Q�=L��?O\)C�+�?�  �J=q�e��C�\                                    Bu��yH  �          @7
=�%�?���=��
?��
C  �%�?}p������C��                                    Bu�ʇ�  �          @"�\�
=q?��<��
>�{C!H�
=q?�
=�#�
�i��CY�                                    Bu�ʖ�  �          @Fff�{?�ff>���@�Q�C�q�{?�p��z��.ffC�R                                    Bu�ʥ:  �          @hQ��G��\)?�
=B�� Ch!H��G�>�?���B���B���                                    Bu�ʳ�  �          @�z�@U��j=q@z�A���C�&f@U��z�@s�
B0�C��                                    Bu��  �          @�ff@�z�����@���BQ�C��f@�z�Ǯ@�
=BFG�C�:�                                    Bu���,  �          @�G�@�Q��p  @���B$
=C�u�@�Q�xQ�@��B]�HC�9�                                    Bu����  �          @���@mp��j=q@�Q�B#z�C���@mp����\@�
=B`G�C�Q�                                    Bu���x  �          @޸R@h���xQ�@���B"Q�C���@h�ÿ�Q�@��BcffC��                                    Bu���  �          @�=q@j�H�s�
@��
B$��C��)@j�H����@�(�Bc�RC��=                                    Bu���  �          @��@U�U�@��RBD��C���@U��\)@�z�By�C���                                    Bu��j  �          @��@L���/\)@�{BU�
C��
@L��>�{@ə�B{��@\                                    Bu��)  �          @�  @E�Q�@���B_��C�4{@E?333@�ffB{�HAL                                      Bu��7�  �          Aff@aG��Z=q@���BTp�C���@aG�>��@�B���@ ��                                    Bu��F\  �          A�H@P  �Z=q@�ffB[��C��=@P  >k�@�Q�B�.@��                                    Bu��U  �          A�@K��XQ�@�{B]{C�� @K�>�  @�\)B��f@��                                    Bu��c�  �          @�@HQ��AG�@ƸRB\(�C��@HQ�>���@���B�  @\                                    Bu��rN  �          @�ff@8Q��?\)@�ffB`C��@8Q�>�{@��
B�L�@�=q                                    Bu�ˀ�  �          A ��@"�\�<(�@�  Bs��C�o\@"�\?E�@�B�B�A�p�                                    Bu�ˏ�  �          @�  @�C�
@ָRBp��C��H@?�@�33B���AI                                    Bu�˞@  �          @���@ ���1�@��
BnG�C��@ ��?��@�p�B�33AW\)                                    Bu�ˬ�  �          @��H@A��L��@��BT33C���@A논��
@�p�B�8RC���                                    Bu�˻�  �          @�\)@Dz��U�@���BR
=C�U�@Dz��G�@���B�=qC��                                    Bu���2  �          @��\@\)�#33@���B�� C��q@\)?���@���B�A�=q                                    Bu����  �          @�?��R�\@��
B�ǮC�7
?��R@�\@�B���Bc��                                    Bu���~  �          A ��?�\)��p�@�ffB�8RC��\?�\)@\��@�p�B|�\B�8R                                    Bu���$  �          A   ?�?Tz�@�B�Bh�?�@��@��HB^=qB��f                                    Bu���  �          @��>�ff?�
=@�33B�p�B��>�ff@�
=@ǮBM=qB���                                    Bu��p  �          A�
?�\?У�A ��B���B��?�\@�  @��BH�B�                                      Bu��"  �          A z���?\)@�{B�=qC�q���@�  @�\)Bf  B��                                    Bu��0�  �          A   ����?��
@��B�
=C
�{����@���@�
=BM  Bգ�                                    Bu��?b  �          A�H�W
=@"�\@��B�Bؙ��W
=@��@�
=B+�B�u�                                    Bu��N  �          A�=�@��@���B-=qB��q=�@���@
=As33B�L�                                    Bu��\�  �          A�R>���@�  @ʏ\BI=qB�u�>���@�@G�A�{B�z�                                    Bu��kT  �          A�����?��A33B�B�B�������@��R@�Q�BJffB���                                    Bu��y�  �          A�(���Q�A��B��
CR� �(�@s�
@�B��B�
=                                    Bu�̈�  �          A����
�333AQ�B��HC�녽��
@`  A�B��B�u�                                    Bu�̗F  �          A
�\=�����A	�B�C��=�@q�@�  B�B�\)                                    Bu�̥�  �          A(��.{���A�
B���Cl��.{@o\)@��
BQ�B�33                                    Bu�̴�  �          A논��
����A��B���C����
@l��@�RB{=qB���                                    Bu���8  �          A�?���=q@��RB���C��?�@0��@�G�B�#�B�=q                                    Bu����  �          @���>k���
=@��HB�
=C�
>k�@Q�@�(�B�p�B�(�                                    Bu����  �          A �;���>\A z�B��HCY�����@�=q@�Bm��B�G�                                    Bu���*  �          A   �L��>��R@�\)B���B�.�L��@~�R@�p�Bp=qB���                                    Bu����  �          A�>�׿�\@�{B��C�Q�>��@O\)@�Q�B�z�B���                                    Bu��v  �          Az�?��\)A  B��qC�w
?�@tz�@��HB|\)B��                                     Bu��  �          A{?�>��RAG�B�ǮA��?�@�(�@�BpffB�Ǯ                                    Bu��)�  �          AQ�?!G�@h��A�B���B�\)?!G�@���@�33B�RB�                                    Bu��8h  �          A��?@  @
=A  B�� B��)?@  @���@�=qBA(�B�G�                                    Bu��G  �          AQ�?:�H?h��A
�\B��BM�
?:�H@���@�Q�B`��B��
                                    Bu��U�  �          AQ�?�=q?��RA��B��BC�
?�=q@��@�  BW�B�u�                                    Bu��dZ  �          A��?(��@1G�A��B�33B�ff?(��@���@�=qB1�B�Q�                                    Bu��s   �          A��?+�?Y��A�
B��BO�
?+�@���@�Bc33B�#�                                    Bu�́�  �          A  ?aG�?��RAQ�B�\BnQ�?aG�@��@�(�BQ\)B�                                    Bu�͐L  �          A\)?J=q?�z�A	�B�u�B^�?J=q@��R@�\BZ�B��f                                    Bu�͞�  �          A
ff�aG�?�A	G�B�aHB�ff�aG�@���@�z�BlB��)                                   Bu�ͭ�  �          A녿@  @Q�A��B�p�Bڏ\�@  @��@�(�BB(�B�                                   Bu�ͼ>  �          A(�>�Q쿘Q�A	p�B���C�s3>�Q�@7�A
=B�B��R                                    Bu����  �          Aff?J=q��A�
B�  C���?J=q@e�@��B���B���                                    Bu��ي  �          A\)?��?�G�A��B�.B/  ?��@�p�@�(�B^��B�Ǯ                                    Bu���0  �          A��?�{��33AQ�B�W
C�5�?�{@r�\A
=B�u�B��                                    Bu����  �          A?u��Q�A��B��
C�Q�?u@�G�AB{�\B�B�                                    Bu��|  �          A{?�z�?�\A��B�� A�=q?�z�@�p�A ��Bl�B��                                    Bu��"  �          A?=p�=�A��B��
AQ�?=p�@�=qA�Bw��B��3                                    Bu��"�  �          AQ�?�z�?(�AQ�B���A��?�z�@�(�@���BhG�B��                                    Bu��1n  �          AQ�>�(���RA\)B�aHC�^�>�(�@`  AQ�B���B�                                      Bu��@  �          A�R?�\��33A=qB�{C���?�\@mp�Ap�B�Q�B�W
                                    Bu��N�  �          A
{?�
=>uA�\B�.@��R?�
=@�  @�z�Bn\)B�u�                                    Bu��]`  �          A	?�>��RAffB�A
=?�@��@�BkQ�B�Q�                                    Bu��l  �          A	G��u���A  B�aHCx��u@S33@��B�k�B�W
                                    Bu��z�  �          A
�R�^�R��Az�B���Ci@ �^�R@2�\A=qB�z�B֙�                                    Bu�ΉR  �          A
�H�u�^�RA	B�\C~�H�u@EAp�B��B��3                                    Bu�Η�  �          A	�8Q�
=A��B���C[J=�8Q�@S33@�z�B���B�p�                                    Bu�Φ�  �          A�׿�{�\)A	��B���CG:��{@Vff@�{B��HB�8R                                    Bu�εD  �          Ap���{�
=qA	B���CDͿ�{@W�@�{B�G�B���                                    Bu����  �          A�׿z�H��  A��B���Cp��z�H@  A�RB��B��                                    Bu��Ґ  �          A�H?(�>L��A�B��RA�33?(�@�(�@�33Bw�B�33                                    Bu���6  �          A�>�  ?#�
AQ�B�W
B�>�  @��\@�G�Bn  B�                                    Bu����  �          A��?&ffAG�B��)B�p���@��@��HBn(�B���                                    Bu����  �          A=q��?�p�A�B�B�B����@��@�z�BY=qB��3                                    Bu��(  �          Ap����
?���A  B��B��þ��
@�{@�33Bc�\B�L�                                    Bu���  �          A�����
?fffA33B�(�C�׿��
@���@��
BdQ�B�\                                    Bu��*t  �          Ap���\)?�z�A(�B��B�#׾�\)@���@�=qBa�\B�aH                                    Bu��9  �          A
=��p����A=qB�33Cn����p�@_\)A\)B��B��                                   Bu��G�  �          A\)��z�>�A�HB�(�B��f��z�@��RA ��Bs��B�p�                                    Bu��Vf  h          A�׾�  ?��HA\)B�ǮB�p���  @�(�@��Ba��B��{                                    Bu��e  �          Az���H?���A�B�.B�aH���H@���@�\BQ33B���                                    Bu��s�  �          A=q�u?�=qA
=B��B£׾u@�=q@�\)BQz�B��
                                    Bu�ςX  �          A����@
=Ap�B��RB�{���@��
@�BKB�\                                    Bu�ϐ�  �          A�׾�33@{@�z�B���B�𤾳33@�p�@���B:��B���                                    Bu�ϟ�  �          AQ���?��A(�B�  B�  ���@���@��BO\)B��R                                    Bu�ϮJ  �          A(���z�>uA{B�ǮC(쿔z�@��H@�(�Bv�Bӣ�                                    Bu�ϼ�  �          A��>��@~{A�B~�RB�z�>��@��H@�G�BB�ff                                    Bu��˖  �          A�?�\@ ��A��B��B�u�?�\@�(�@ᙚBM  B���                                    Bu���<  �          A���@�A�B��B�k���@�
=@��BB�HB��{                                    Bu����  �          A�>��?p��A��B���B��>��@�ff@�\BgG�B�L�                                    Bu����  �          @�=q>���?�33@�p�B�W
B�W
>���@��@��B^�
B�B�                                    Bu��.  �          @�\)>�  ?��
@�B��\B�Q�>�  @�ff@��B[�B��3                                    Bu���  �          @��H?\)?�\)@��B��qB��q?\)@�=q@��
BU��B�\)                                   Bu��#z  �          @���<#�
?�\)@�
=B��{B�(�<#�
@�33@�BW  B��q                                    Bu��2   �          @陚�^�R?�33@��B�p�B�q�^�R@���@��BKp�B�Ǯ                                    Bu��@�  �          @��Ϳu?�@���B��B��u@��\@��BKG�B˔{                                    Bu��Ol  �          @�zῈ��?�p�@���B�Q�B�LͿ���@��@�=qBP=qB�#�                                    Bu��^  �          @�
=��?0��@���B���B����@r�\@�z�BlQ�B�\                                    Bu��l�  �          @�{��>���@���B�aHCuÿ�@^{@�G�Bw33B�33                                    Bu��{^  �          @��
���;���@�Q�B�
=CG�ῌ��@(Q�@�Q�B���B�W
                                    Bu�Њ  �          @�
=���
=�G�@�=qB��Bǽq���
@G�@�33B=qB��q                                    Bu�И�  �          @�z�?��?c�
@�ffB�B�B�?��@p��@���B_33B�u�                                    Bu�ЧP  �          @��?B�\?8Q�@�B���B,G�?B�\@fff@�
=Biz�B���                                    Bu�е�  �          @�ff?!G�?(��@�z�B��=B9\)?!G�@hQ�@�{Bm
=B�p�                                   Bu��Ĝ  �          @�ff?W
=?0��@�B�=qB��?W
=@o\)@��
Bk�HB��                                    Bu���B  �          @�
=?�=q?�z�@�{B�B�Bcz�?�=q@�G�@��BL�HB�B�                                    Bu����  �          @�  ?�(�@��@�ffB�8RB|33?�(�@�Q�@��B1�
B���                                    Bu����  �          @��
?�33?�33@�B�8RBkG�?�33@�G�@�  BA{B��{                                    Bu���4  �          @�=q?���?��@��B���B��?���@{�@��RBZ�B��R                                    Bu���  �          @�z�?�z�L��@�B��fC�,�?�z�@<(�@�
=Bv(�Bc��                                    Bu���  �          @�Q�@   �=p�@�G�Bx�C�f@   >#�
@���B���@�ff                                   Bu��+&  �          @��?��:�H@��B�C��
?�>W
=@��B�{A                                      Bu��9�  �          @�?�\)���H@�  B�
=C���?�\)?�33@�p�B�
=Bp�                                    Bu��Hr  �          @��
?��H�^�R@��HB�C���?��H@z�@ҏ\B��{BJQ�                                    Bu��W  �          @�{@(��
�H@�=qB|G�C��H@(�?\)@�p�B�33Afff                                    Bu��e�  �          @�{?���?\)@��Bh�C�t{?���\@��HB���C���                                   Bu��td  �          @�
=@
=�r�\@��RB7=qC��f@
=�˅@�(�B���C�w
                                    Bu�у
  �          @�z�@=q�a�@�\)B?�\C�"�@=q��  @�Q�B���C�J=                                    Bu�ё�  �          @θR@1G��p��@�ffB.�\C�5�@1G�����@��Bq��C�8R                                    Bu�ѠV  �          @���@��W
=@�Q�BIp�C��\@��}p�@�ffB�k�C���                                    Bu�Ѯ�  �          @���@33��
=@�p�B��C�
@33@   @�B��)B1{                                   Bu�ѽ�  �          @��@���@ۅB�ǮC��=@?��@�
=B�z�B"��                                    Bu���H  �          A�\�,��@mp�@��HBn�B�(��,��@�33@��B�RB�u�                                   Bu����  �          Ap���@L��A\)B�� B�ff��@�G�@��B+�B�#�                                   Bu���  �          A�R����@>�RA(�B��RB�ff����@ƸR@�G�B6=qB���                                   Bu���:  �          A�׿��@,��A��B��{Bޮ���@�
=@�ffB?\)B�
=                                   Bu���  �          A����@(��AB�33B�3���@�(�@�\)BD=qB�                                    Bu���  �          A�\���@%A�B�G�B�R���@���@�(�BEffBȀ                                     Bu��$,  �          A\)��p�@+�A�
B��B����p�@Å@�BC  Bʨ�                                    Bu��2�  �          A�ÿ��@8��A(�B�33B����@��@ᙚB>G�B�u�                                    Bu��Ax  �          A�
��\)@/\)Az�B���B��=��\)@ȣ�@��
BD�B�=q                                   Bu��P  �          A���  @EA�\B��HB��쿀  @љ�@�B<�B�aH                                    Bu��^�  �          A�H���
@L��Ap�B�u�B׽q���
@Ӆ@�Q�B9�BŸR                                    Bu��mj  �          Az�L��@XQ�A�B�8RB��ͿL��@�@׮B4=qB��q                                    Bu��|  �          A�\�Q�@J=qAp�B�� B�녿Q�@��@�G�B;�B�(�                                    Bu�Ҋ�  �          A�\�n{@fffA�RB��qB���n{@�z�@ָRB/�HB�L�                                    Bu�ҙ\  �          AG��(�@QG�A�B�ffB�(��(�@�33@��B8��B��\                                    Bu�Ҩ  �          Ap����H@R�\A  B�u�B��þ��H@��
@�p�B8��B�u�                                    Bu�Ҷ�  �          A=q�z�@W�AQ�B��B�ff�z�@�ff@��B7{B���                                    Bu���N  �          Ap��!G�@Z=qA
=B��{B�Ǯ�!G�@�ff@�=qB5z�B���                                    Bu����  �          AG���
=@a�A=qB�z�B�k���
=@�G�@׮B2��B�                                      Bu���  �          A�;�z�@Z�HA�RB��B��=��z�@�{@��B5�B��H                                    Bu���@  �          A=q�
=@X��A  B�.Bǔ{�
=@�ff@��B7{B���                                    Bu����  �          A33�+�@[�A��B���B�#׿+�@׮@�{B6�B�\)                                    Bu���  �          A=q�
=@N�RA��B�(�BȊ=�
=@��@���B;p�B�.                                   Bu��2  �          A�R��@R�\A�B���B�LͿ�@��
@��B:p�B�(�                                   Bu��+�  �          AG��\@L(�AQ�B���B��{�\@�  @���B<�B��                                    Bu��:~  �          A��.{@?\)A�B�Q�B�z�.{@�G�@��B@��B�B�                                    Bu��I$  �          A�\��\)@1G�A�\B��B�
=��\)@��@��HBD{B��                                    Bu��W�  �          A�=p�@Y��A
=B�aHB̙��=p�@�G�@���B5�B��f                                    Bu��fp  �          AG����
@HQ�Az�B���B�����
@�=q@��HB<�B��3                                    Bu��u  �          A�ͿJ=q@A�A  B���B�
=�J=q@�
=@ۅB>Q�B�aH                                   Bu�Ӄ�  �          A\)�
=@c�
A�B��)Bƨ��
=@��H@���B0�B�#�                                    Bu�Ӓb  �          Ap��B�\@�\Ap�B���B��ÿB�\@���@���BYBè�                                    Bu�ӡ  �          A{���@!G�A  B�#�B̞����@�\)@�=qBKG�B���                                    Bu�ӯ�  �          A{��\@'
=A�B�#�B�(���\@���@��BIQ�B�\                                    Bu�ӾT  �          A\)��z�@(Q�A�B��{B��{��z�@�33@�33BI�
B��                                    Bu����  �          A{��{@P��Az�B��B��q��{@��@��HB8B�{                                    Bu��۠  �          A��33@N{AQ�B�L�B�8R��33@ȣ�@�33B9��B�L�                                    Bu���F  �          A�H����@@��A
�\B��3B������@��
@�=qB@ffB��H                                    Bu����  �          A
=>u@Q�A�HB�B�ff>u@��@��BW\)B�                                    Bu���  �          A{�5@\(�A ��B��)B�(��5@���@�33B0
=B���                                    Bu��8  �          A�Ϳ�=q@�G�@��Bx  B�zῪ=q@ٙ�@�=qB (�B�#�                                    Bu��$�  �          Aff���H@/\)A\)B�#�B��H���H@�@���B?
=B�k�                                    Bu��3�  �          A�׾\)@\)A�B~�RB��H�\)@���@�p�B$�\B�G�                                    Bu��B*  �          Aff=�@qG�AG�B�G�B�� =�@�p�@�  B,�\B�                                    Bu��P�  �          A\)    @}p�A�B�\B�#�    @��H@�p�B(G�B�{                                    Bu��_v  �          A�\>#�
@�G�A�B=qB�u�>#�
@��
@��B%��B�W
                                    Bu��n  �          AQ�>aG�@u�A�RB��RB�k�>aG�@���@��HB*
=B�33                                    Bu��|�  �          A�;.{@|��@��HB|��B�Ǯ�.{@�(�@�  B#�B��)                                    Bu�ԋh  �          A��@��\?O\)@�33BP33A��@��\@P  @�G�B/p�Bz�                                    Bu�Ԛ  �          A�
@�\)>�p�@��HBC@i��@�\)@5�@��RB,  A�z�                                    Bu�Ԩ�  �          A�@�Q�?333@��BO(�@�@�Q�@S�
@ȣ�B1{A�=q                                   Bu�ԷZ  �          A��@�ff?aG�@���BQQ�A�R@�ff@`��@�G�B0�B33                                    Bu���   �          A33@�
=?��@��BV�
A��@�
=@��R@�G�B,��B��                                   Bu��Ԧ  �          A@�  ?���@���BN��AW\)@�  @y��@�(�B){B�\                                   Bu���L  �          A  @��
?�33@ᙚBF�
A0��@��
@mp�@ÅB%ffB(�                                    Bu����  �          A(�@�=q?�{@�z�B@p�A$��@�=q@fff@�
=B �
A�\)                                   Bu�� �  �          AQ�@�G�?�p�@љ�B;
=A8Q�@�G�@e@��
B��A��                                   Bu��>  �          A@�(�?�33@ָRB7{AF=q@�(�@s33@�ffB{A�ff                                    Bu���  �          A33@�{?��@���B&�A*�\@�{@c33@��HB	A��H                                    Bu��,�  �          Az�@�
=?�
=@�p�B&A`��@�
=@vff@�33B�A��                                    Bu��;0  �          A\)@���?�\)@�
=B)�A�
@���@�G�@��\B��A�=q                                    Bu��I�  �          A��@�ff@�@�B-��A�33@�ff@�33@�{B�
B�H                                    Bu��X|  �          A�@Ϯ@�\@˅B,G�A���@Ϯ@�  @��Bp�B��                                    Bu��g"  �          A�@��
@{@ϮB'�
A���@��
@�ff@�
=B  B��                                   Bu��u�  �          Aff@�
=?�\)@�  B$33AhQ�@�
=@�(�@�33B  A�(�                                    Bu�Մn  �          A z�@�Q�@�@���B2=qA��@�Q�@�ff@�ffB
�BG�                                    Bu�Փ  �          A33@�  @Fff@��B<\)Aڏ\@�  @���@��
B
{B+
=                                    Bu�ա�  �          A�R@�@>{@�ffB)�A�{@�@�
=@�z�A��
B                                     Bu�հ`  �          A
=@��
@U�@�\)B(=qA���@��
@�
=@�=qA��HB"��                                   Bu�տ  �          A�R@��@Dz�@�B5(�A��H@��@�G�@�33Bz�B(Q�                                    Bu��ͬ  �          A(�@�  @H��@�33BA�A��@�  @�  @�
=BffB4(�                                    Bu���R  �          A�R@��
@a�@�B4�RB ��@��
@��R@�{A��B6                                      Bu����  �          Aff@�ff@k�@˅B0(�B33@�ff@�\)@��HA���B9�                                   Bu����  �          A�@�@n{@�(�B+�
B	@�@�{@��A�Q�B9\)                                   Bu��D  �          A{@���@|��@�=qB$  B��@���@�G�@�  A�ffB;��                                    Bu���  �          A�
@�@l(�@���B$=qB
=@�@�=q@�p�A�p�B1                                    Bu��%�  �          AG�@�  @�
=@���B�B��@�  @��@c33A���B6��                                    Bu��46  �          A
=@�(�@���@���BG�B�\@�(�@�  @W
=A�33B1��                                    Bu��B�  �          A��@�ff@qG�@���B��A��\@�ff@�ff@k�A�z�B%p�                                    Bu��Q�  �          A�R@�Q�@s33@�(�Bz�B{@�Q�@�
=@j�HA�=qB)33                                    Bu��`(  �          A�@��\@{�@���B(�B
=@��\@�33@h��A�  B/z�                                   Bu��n�  �          A�@�
=@�=q@�=qBz�B	  @�
=@�{@aG�A��HB.��                                   Bu��}t  �          Az�@�G�@~{@��BG�Bz�@�G�@�z�@h��A�Q�B,=q                                   Bu�֌  �          A�@�z�@�G�@�
=B=qBQ�@�z�@�G�@Mp�A�B(=q                                    Bu�֚�  �          A  @��H@�Q�@��B	33B�
@��H@���@N�RA�ffB.                                      Bu�֩f  �          A��@��@�G�@�{B��B(�@��@��H@U�A��HB/�                                    Bu�ָ  �          A��@�
=@�p�@��HBz�Bz�@�
=@��H@=p�A�G�B,                                    Bu��Ʋ  �          A\)@���@�G�@�z�Bz�B�@���@��@C�
A�=qB,(�                                    Bu���X  �          A�R@�(�@��@�=qB  B��@�(�@�\)@?\)A��B,z�                                    Bu����  �          A
�H@�33@���@���B��Bz�@�33@�p�@>�RA��RB0�\                                    Bu���  �          A�@��@���@��
B�HB  @��@��\@AG�A�(�B5�
                                    Bu��J  �          A\)@�(�@�Q�@���B(�B �
@�(�@\@,��A�Q�B<��                                    Bu���  �          A
�H@��H@���@��A��B��@��H@��@,(�A��B4ff                                    Bu���  �          A
�H@���@���@���A��RB\)@���@�@'
=A�{B7{                                    Bu��-<  �          A
=q@�ff@�\)@�ffA��
B��@�ff@�\)@!G�A�  B9ff                                    Bu��;�  �          A	@��
@�z�@��\A�\)B$�@��
@��H@
=A~�RB=(�                                    Bu��J�  �          A��@��@�\)@���A�=qB'G�@��@Å@
=qAj�HB>��                                    Bu��Y.  �          A
�H@��@��@�A��HB)33@��@Ǯ@
=qAf�HB@{                                    Bu��g�  �          A	G�@�{@��@�A��HB-��@�{@���@��Af�HBDz�                                    Bu��vz  �          A
=@�
=@�
=@�G�A�RB.��@�
=@��
@�RAn=qBE�\                                    Bu�ׅ   �          A��@�{@���@��
A�ffB-�R@�{@�  @ffAc\)BC�H                                    Bu�ד�  �          A��@�(�@��@��
A�{B1{@�(�@��H@z�A`(�BF                                    Bu�עl  �          A  @�(�@�=q@�ffA���B8(�@�(�@�@�Ag�BM                                   Bu�ױ  �          AQ�@��H@��@��RA��RB@@��H@�33@ffA�
BW(�                                   Bu�׿�  �          A33@���@���@��
A�33BA�\@���@�=q@G�Ax��BWff                                    Bu���^  �          A  @��H@���@�BBF�\@��H@�p�@#�
A��\B]�H                                    Bu���  �          A@�p�@�(�@���A�p�BD
=@�p�@љ�@�
A�{BZ                                      Bu���  �          AQ�@�z�@��@��HB
p�BWQ�@�z�@޸R@(Q�A�{Bm�                                   Bu���P  �          A��@b�\@�
=@�ffB
=Bmz�@b�\@�G�@(��A�Q�B�G�                                   Bu���  �          A=q@	��@ə�@��
B%��B�G�@	��@��@Y��A�{B��{                                    Bu���  �          A�@
=q@�@��HB"�B��@
=qA Q�@U�A��HB��f                                    Bu��&B  �          A  >u@��@�G�B*\)B��f>uA\)@^�RA��B��R                                    Bu��4�  �          A\)���
@ۅ@���B�\B�#׿��
A�@:=qA�z�Bŀ                                     Bu��C�  �          AQ��r�\@�  @�(�B�HB�Ǯ�r�\@�
=@H��A�z�B�ff                                   Bu��R4  �          A���z=q@�z�@�=qB$�B��
�z=q@���@k�A���B�#�                                    Bu��`�  �          Aff�l��@�\)@�p�B/�B�p��l��@߮@�=qA��
B�3                                    Bu��o�  �          Aff��@�{@�z�B/
=B�p���@�z�@s�
A˅B�8R                                    Bu��~&  �          A��?\)@�@�Q�B#��B��?\)@�Q�@]p�A�\)B�p�                                    Bu�،�  �          A�
���@��
@�\)BG�Bٞ����@�\)@/\)A�ffBӏ\                                    Bu�؛r  �          Az��*=q@��@�{B��B���*=q@��@.{A�ffB�(�                                    Bu�ت  �          A���%@�
=@�33B  B߳3�%@��
@:=qA��HB�z�                                    Bu�ظ�  �          A���0��@���@���B(�B�q�0��@��@6ffA�Q�B�ff                                   Bu���d  �          A���2�\@��H@��
BG�B���2�\@���@*=qA�
=B��f                                   Bu���
  �          A���O\)@�p�@�=qB�
B��O\)@�
=@+�A�{B�p�                                   Bu���  �          A�W�@���@��
B33B�u��W�@�
=@/\)A�{B�{                                   Bu���V  �          A�\�j�H@�(�@��B��B����j�H@���@AG�A�z�B���                                    Bu���  �          A
=�fff@��@���B ��B�\�fff@��
@c33A�G�B�
=                                    Bu���  �          A33�k�@��@�(�B$33B���k�@�Q�@mp�A�(�B�                                   Bu��H  �          A\)�E@��@�Q�B(�
B뙚�E@�  @q�A��B���                                   Bu��-�  �          AG��Mp�@��H@���B*�
B��Mp�@��@z�HA�
=B�(�                                    Bu��<�  �          Ap���(�@�=q@��A�33Bͮ��(�A(�?�p�A�RB��                                    Bu��K:  �          A  �{@�ff@\)A�G�B�33�{AG�?�\)A�
B��
                                   Bu��Y�  �          A
{�'
=@�z�@c33A¸RB��
�'
=A=q?xQ�@ϮB׀                                    Bu��h�  �          A
=�#33@�z�@O\)A�G�B���#33Az�?(�@���B�=q                                    Bu��w,  �          A=q�*�H@��@z=qA��HB��*�HA{?��AG�B�L�                                    Bu�م�  �          A�'�@�  @��
A�ffB۽q�'�AQ�?�A=�B�(�                                    Bu�ٔx  �          A�����@Ǯ@�33A�(�B�\)���@�(�@
=Ax��B�Ǯ                                    Bu�٣  �          Az��I��@�(�@��\B�HB�ff�I��@�Q�@EA�ffB�                                     Bu�ٱ�  �          A���<(�@У�@�G�B�\B�=�<(�@���@,(�A��B�aH                                    Bu���j  �          A��S�
@��
@���B&z�B�  �S�
@�p�@mp�A��B�\                                   Bu���  �          A��<�@���@���A�B���<�A�?У�A3\)B���                                   Bu��ݶ  �          A  ���
@�(�@�33B33B�#׾��
A�@ffAe��B�u�                                   Bu���\  �          A�
�\)@���@У�B3�B�q�\)@���@���A�=qB�k�                                   Bu���  �          A=q�
=@�33@�  B/G�Bܳ3�
=AG�@��Aң�Bԅ                                    Bu��	�  �          A
=���@�(�@�\)BJ�B�8R���@�{@��\B�HB֣�                                    Bu��N  �          Aff��\@�z�@���Bfz�B�(���\@Ӆ@���B"�B�33                                    Bu��&�  �          AG��U�@�z�@�=qBX=qC ��U�@�\)@��B��B�.                                    Bu��5�  �          A�H��(�@q�@�ffBL��C	����(�@���@�p�Bz�B�8R                                   Bu��D@  �          A33�}p�@��
@θRB,�HB�Q��}p�@�33@�(�A�\)B�\                                   Bu��R�  �          A�����@�G�@���A���B�\)����@�
=@"�\A}�B�\                                    Bu��a�  �          A=q�J=q@�Q�@�\)Bp�B�Ǯ�J=q@�z�@K�A�  Bߨ�                                    Bu��p2  �          Ap��a�@�Q�@�z�A�\)B����a�A�H?�
=A+
=B➸                                    Bu��~�  �          A
{�0��@��@��RB�RB����0��@�G�@�HA�ffB���                                    Bu�ڍ~  �          A33��Q�@�
=@���BG�B�33��Q�A@=qA���B���                                    Bu�ڜ$  �          A
�R��G�@��@{�A�  Bʔ{��G�A�\?�33A�B�\)                                    Bu�ڪ�  �          A�
�޸R@��@XQ�A�  B��f�޸RAQ�?J=q@�{B�                                    Bu�ڹp  �          AQ��p�@�G�@;�A�33B�=q�p�@��\?��@vffB���                                    Bu���  �          A33�E�@�G�?�Q�A\  B��E�@��þǮ�1�B�p�                                    Bu��ּ  �          Aff�1G�@���?��A33B�\)�1G�@�=q���
���B��                                    Bu���b  �          A�(��@�=q?�=q@�p�B�aH�(��@�G�����ffBڊ=                                    Bu���  �          A{�[�@�Q�?@  @���B��[�@�z��G��,(�B�=q                                    Bu���  �          A   �8��@�=q?J=q@�\)B�  �8��@�
=��p��,(�Bߔ{                                    Bu��T  �          @��Ϳ��
@�  ?O\)@�z�B����
@��
��=q�8��B�\                                    Bu���  �          @����33@�=q���Ϳ8Q�BĽq��33@�p��{��p�BŞ�                                    Bu��.�  �          @�\)����@��
�B�\��=qB��Ῠ��@�{�#�
����B�
=                                    Bu��=F  �          @��
��
=@�  �L�Ϳ�B�Q쿗
=@�\�!���ffB�L�                                    Bu��K�  �          @�=q�W
=@�Q�>Ǯ@7
=B�\)�W
=@�׿�(��iG�B�                                    Bu��Z�  �          @�G��h��@��<�>aG�B�W
�h��@�z��33��\)B���                                    Bu��i8  �          @�33���H@�zῚ�H��BƮ���H@��XQ��ә�BȞ�                                    Bu��w�  �          @�p��n{@�G�?z�@��\B�{�n{@����H�O�B�ff                                    Bu�ۆ�  �          @��\���@�?���AG�BøR���@����  ��RB�                                    Bu�ە*  �          @�G���=q@���?p��@�B�\��=q@��H����$Q�B�33                                    Bu�ۣ�  �          @����z�H@�
=?�@tz�B�ff�z�H@�׿�ff�U�B�                                    Bu�۲v  �          @�  �z�H@�{<�>8Q�B=�z�H@��H�����B�33                                    Bu���  �          @�\)��ff@���=u>���B�aH��ff@�{�������B�\                                    Bu����  �          A�Ϳ���A�?У�A0��B�����Ap��^�R��(�Bɨ�                                    Bu���h  �          Aff��z�A  ?   @Z�HB�aH��z�A z���H�Xz�B��f                                    Bu���  �          A�
��p�AQ�?:�H@�{B˳3��p�A녿޸R�=B�#�                                    Bu����  �          Ap��
=q@���@HQ�A��HBԏ\�
=q@��?O\)@��B�B�                                    Bu��
Z  �          A=q��
@���@fffA˙�Bә���
A Q�?�ffA�HB���                                    Bu��   �          Ap���@�33@^{A���B����A ��?�z�A Q�B�Ǯ                                    Bu��'�  �          A{���@�@N�RA�p�B�LͿ��A?c�
@�(�B�8R                                    Bu��6L  �          Ap���=q@���@Dz�A���B�W
��=qAp�?=p�@��\B�z�                                    Bu��D�  �          A����@�(�@A�A�B�B�����A�H?+�@��HBɸR                                    Bu��S�  �          A��z�@��@4z�A��
BȨ���z�A�>�ff@C�
B�u�                                    Bu��b>  �          Ap����@�p�@<��A��Bȏ\���A
=?��@�33B�B�                                    Bu��p�  �          Ap���Q�@�=q@P��A���B��Ϳ�Q�A
=?n{@��B�u�                                    Bu���  �          A����G�@�\)@Y��A�  B���G�A=q?��@�\)B���                                    Bu�܎0  �          A녿��@�@P��A�G�B�{���A�\?p��@�B�\)                                    Bu�ܜ�  �          Ap���Q�@��@5�A���B��f��Q�Aff?   @]p�B�p�                                    Bu�ܫ|  �          A  ��Q�@�ff@(�A���B̮��Q�AG�=�?W
=Bˏ\                                    Bu�ܺ"  �          A=q���A�H>\@'
=Bʮ���@�{���R�\  B�Q�                                    Bu����  �          A���HA
=�B�\��
=B�G����H@�(��E�����Bɽq                                    Bu���n  �          A�׿�33@����z��9�B��ÿ�33@��xQ���\)B�(�                                    Bu���  �          A  ��  @��(Q����Bƀ ��  @�33���R��B�p�                                    Bu����  �          A����\)@�\�G
=���RB�#׿�\)@�(���z���BЅ                                    Bu��`  �          A
=q���@��H�E���B�
=���@�z���{�Bӳ3                                   Bu��  �          A(�� ��@�p��G���G�B�k�� ��@�ff����Q�B�L�                                   Bu�� �  �          A�z�AG��>{����B��z�@�����(����B�aH                                   Bu��/R  �          A Q��=q@��p��\)B�aH��=q@����\)����B��                                    Bu��=�  �          @��Ϳ���@���\)��Q�B��f����@�(����R���B�Ǯ                                    Bu��L�  �          @�ff�G
=@�33�i����Q�B����G
=@��\��
=�){B��                                    Bu��[D  �          @�z��+�@أ��:=q��Q�B�L��+�@�p���ff�33B��                                    Bu��i�  �          @�G����@�{������B�\���@�Q��XQ���Q�Bѣ�                                    Bu��x�  �          A��=q@�33���N�RB�B���=q@����(����z�B�                                    Bu�݇6  �          A
�\�ffA�\?�ffA$��B�#��ffAQ�L�����Bӽq                                    Bu�ݕ�  �          A
�\��
@�G�@�33A�G�Bԏ\��
@�
=@p�ApQ�B��                                    Bu�ݤ�  �          A�
��@�=q@��RB�B�8R��@��\@Z=qA��B�aH                                    Bu�ݳ(  �          A�����@���@�=qB?�B��Ϳ���@�=q@��B �
B�u�                                    Bu����  �          AG���@>{A  B��)B�\��@��R@��HBW�HB�Q�                                    Bu���t  �          A{��=q@P  A
=B�\B�k���=q@���@�ffBR��B���                                    Bu���  �          A  ��@L��A��B�Q�B�Ǯ��@��
@��HBOBъ=                                    Bu����  �          A  ����@*=qA  B�u�B�
=����@��@�{B_�B��                                    Bu���f  �          Az�   @{A�
B�B�W
�   @���@�G�BnG�B��=                                    Bu��  �          AQ�aG�@l(�A�HB�B�B���aG�@���@�33BEB�B�                                    Bu���  �          A=q��33@�(�A ��Bx  B�  ��33@�@��
B9��B���                                    Bu��(X  �          A�H��(�@�=q@��
Bk�HB��)��(�@��@��B-�RB�{                                    Bu��6�  �          A�R�+�@g
=AB�Q�B��f�+�@�{@��BG��B�W
                                    Bu��E�  �          @��
���@\)@�{Bi33B����@��@��HB+G�B�33                                    Bu��TJ  �          @�����\@`  @ٙ�Bw33BԀ ���\@�
=@��HB9��B��                                    Bu��b�  �          A�׿��A������=qB�𤿧�A33�h������B��                                    Bu��q�  �          A#�����A
=�   �4��B�����AQ���(��ׅB�(�                                    Bu�ހ<  �          A!��L��A�\�-p��yp�B���L��A����
=��(�B��q                                    Bu�ގ�  �          A�
�=p�A�R�w
=��Q�B�8R�=p�@�����ff�B��)                                    Bu�ޝ�  �          A z�\A��x����z�B����\@��H�Ǯ��B�z�                                    Bu�ެ.  �          A!p���A��(���G�B�� ��@�33���%=qB���                                    Bu�޺�  �          A!��\)A��������B��\��\)@�
=����1ffB�\)                                    Bu���z  �          A�
���A33����� p�B��þ��@ָR��(��>��B�z�                                    Bu���   �          AG��
=@����Q���B��׿
=@��H����T��B�p�                                    Bu����  �          A!p��^�RA�H������B�\�^�R@ʏ\�����J�BÏ\                                    Bu���l  �          A �ÿ�RA�H���\��B����R@�=q�����Kz�B�33                                    Bu��  �          A!��+�A����G����B����+�@�{�޸R�/�RB��\                                    Bu���  �          A$Q콸Q�@�(����
�(  B�G���Q�@����
ff�e��B�                                    Bu��!^  �          A"�R�#�
@�Q����� �B�#׼#�
@�\)�=q�^��B�33                                    Bu��0  �          A#�����@�33��G��'  B������@�������d�\B�8R                                    Bu��>�  �          A%G��#�
@�ff��z��7
=B����#�
@�\)�z��t�B���                                    Bu��MP  �          A&{�.{@����G��B��B�ff�.{@�  ����B�(�                                    Bu��[�  �          A-p��h��@�
=��\)�>z�B�G��h��@������{{B��                                    Bu��j�  �          A.�\�B�\@����33�C�B�\�B�\@�\)������B�#�                                    Bu��yB  �          A)녿
=@�G����A33B��{�
=@�ff�  �~  B�Q�                                    Bu�߇�  �          A(  ���@�����I�B�\���@����8RB�p�                                    Bu�ߖ�  �          A&�H�0��@�
=��{�Fp�B��R�0��@�����Hk�B���                                    Bu�ߥ4  �          A$(��B�\@�ff��ff�J��B�\)�B�\@�z���=BȨ�                                    Bu�߳�  �          A$�þ�@��H��O�RB�ff��@\)��
\B�G�                                    Bu��  �          A%p����
@�{�33�[p�B�{���
@aG��33�B�8R                                    Bu���&  �          A%�k�@��
����UG�B��k�@o\)�W
Bπ                                     Bu����  �          A#�
�!G�@�Q���\�]B�ff�!G�@W��ǮB�                                    Bu���r  �          A!�xQ�@�=q�33�X��B���xQ�@_\)��H��B��H                                    Bu���  �          A   �}p�@�����\�e\)B�G��}p�@;���
�)B�z�                                    Bu���  �          A
=�B�\@��H��
�_\)B��;B�\@P���ff�B��                                     Bu��d  �          A �׽�G�@����H�Zz�B�{��G�@_\)�ff8RB�p�                                    Bu��)
  �          A$(����@��H�
=�]
=B�����@]p���\L�B�Q�                                    Bu��7�  �          A$Q���@�  ���X�RB����@i���G�8RB��=                                    Bu��FV  �          A�
>u@���G��XG�B�L�>u@e����B�Q�                                    Bu��T�  �          A�>\@���p��X��B��>\@b�\���(�B��q                                    Bu��c�  �          A%�=��
@�ff�=q�Z�RB��\=��
@e�{�B���                                    Bu��rH  �          A%�\)@����  �f�HB��f�\)@Fff���B�.                                    Bu����  �          A&�R��@����G��h
=B�� ��@Dz��33��B�z�                                    Bu����  �          A#�
��@��R��
�`Q�B����@Vff��\�qB�G�                                    Bu���:  �          A#�>�  @�{�  �`�RB�\>�  @U���\�HB��{                                    Bu���  �          A!>�33@��R�  �e  B�>�33@G
=���fB�\)                                    Bu�ໆ  �          A�L��@�33�Q��dz�B�.�L��@Dz���3B�\                                    Bu���,  �          A�
>���@��
�(��h�B�.>���@6ff����B�=q                                    Bu����  �          A  ���
@��
�=q�bG�B�k����
@HQ����B��q                                    Bu���x  �          A�H��=q@���  �a\)B����=q@N{�{��B�ff                                    Bu���  �          A!�=#�
@����ff�`Q�B�{=#�
@U���p�B�u�                                    Bu���  �          A Q�<�@���\)�f��B�\)<�@C33�z��=B��H                                    Bu��j  �          A"�H<#�
@���(��cz�B��f<#�
@N�R�=q�B���                                    Bu��"  �          A"=q>�@����  �d  B�L�>�@L���#�B�W
                                    Bu��0�  �          A�>.{@�����{��B��3>.{@
=q�\)�HB�                                      Bu��?\  �          A�H��z�@�{�	�pz�B��R��z�@'���8RB���                                    Bu��N  �          A!p�=�\)@�\)�	��k
=B�u�=�\)@9���ff�=B�=q                                    Bu��\�  �          A"=q>\)@�(�����g\)B�>\)@Dz��{��B�Ǯ                                    Bu��kN  �          A"{��ff@�z����z\)B��þ�ff@\)����)B�p�                                    Bu��y�  �          A �þ��@�G��G��u�RB�8R���@���
� B��H                                    Bu�ሚ  �          A �Ϳ=p�@��
�  ��B�8R�=p�?��R����\B���                                    Bu��@  �          A!���\@�{�Q��~�\B����\@�
�p��3B��)                                    Bu���  �          A�\��z�@���
=�uG�B�  ��z�@(����L�B��{                                    Bu�ᴌ  �          A�;�=q@�  ��R�m{B�{��=q@0  �=q33B�                                      Bu���2  �          A�\���@�{�	��o��B��H���@*=q�z�\)B�\                                    Bu����  �          A\)��Q�@�z�����dffB��׾�Q�@J=q��R�qB�                                    Bu���~  �          A Q�(�@��ff�cB��R�(�@L(���33Bɀ                                     Bu���$  �          Ap��aG�@����=q�_\)B��\�aG�@U�  8RB��=                                    Bu����  �          A�\��@�(��	�q�
B�\��@'
=���p�B��R                                    Bu��p  �          A�R>8Q�@����
�w�B��{>8Q�@��8RB�Q�                                    Bu��  �          A�
<�@�������B�W
<�@�
�z�8RB���                                    Bu��)�  �          A녽�@��R����|�\B�8R��@
=q���B���                                    Bu��8b  �          A�þ�  @��H��j�\B�����  @8Q������B��                                   Bu��G  �          Ap��u@�ff�  �o{B�p��u@.{�\)�
B��H                                   Bu��U�  �          A�R�aG�@��H�
=q�r��B���aG�@%�����qB��=                                    Bu��dT  �          A   ��33@�  �  �i
=B�����33@@���z��B�=q                                    Bu��r�  �          A �þ#�
@��H�  �gp�B��=�#�
@Fff����B��                                    Bu�⁠  �          A$�׾W
=@��
��R�pp�B��{�W
=@2�\�=qaHB�ff                                    Bu��F  �          A(Q�=u@�p���\�rG�B���=u@1��"=qL�B��                                    Bu���  �          A&�\��\)@��ff�vB�����\)@#33�!��B�#�                                    Bu�⭒  �          A&�H��=q@�G��Q��z��B�W
��=q@���"ffW
B���                                    Bu��8  �          A'���{@�=q��\�sB�����{@,���!�
B�W
                                    Bu����  �          A&�R���@�(���H�wG�B��f���@ ���!G�G�BΣ�                                   Bu��ل  �          A$�׾�{@����p��x�B����{@�����B�Ǯ                                   Bu���*  �          A#
=�aG�@�Q���q�B��aG�@.{����)B�=q                                    Bu����  �          A$z�O\)@n�R���aHB̀ �O\)?����"�\¢�B�(�                                    Bu��v  �          A$�Ϳ@  @����=q��B�\)�@  ?�\�!�=B�                                    Bu��  �          A#���@�33���|�\B�p���@���\)�HB���                                    Bu��"�  �          A#33�u@xQ��{�HBϮ�u?�G�� z��
B��q                                    Bu��1h  �          A �ͿJ=q@����}��B�=q�J=q@���z�B܏\                                    Bu��@  �          A �Ϳ���@�(����}=qB�8R����@�(�B�p�                                    Bu��N�  �          A!p���ff@�G����v\)Bٔ{��ff@��
=B�B�.                                    Bu��]Z  �          A!p���\)@�������sz�B�aH��\)@!��33#�B�q                                    Bu��l   �          A$(����
@���
�R�fffB�����
@P������B�8R                                    Bu��z�  �          A%p���@���{�X\)B�����@x���G���B�
=                                    Bu��L  �          A$�þu@�������_33B��q�u@e��R.B���                                    Bu���  �          A%G���p�@����
=�o�B�z῝p�@0  �{\B�#�                                    Bu�㦘  �          A&�R�k�@�������f�B��
�k�@P�����  B�Q�                                    Bu��>  �          A&�H�O\)@��R��hffB��f�O\)@L(��ff=qBЀ                                    Bu����  �          A(Q쿁G�@�{����b�RB�
=��G�@\(��=q33Bԙ�                                    Bu��Ҋ  �          A'���@ָR� z��H
=B���@���=q�~B���                                    Bu���0  �          A((��aG�@�{�����B�B��=�aG�@��
���y�B�\                                    Bu����  �          A+�
=��
@�G���(��<�
B���=��
@�
=�{�s�B�#�                                    Bu���|  �          A,�þB�\@�=q��p��<�B��f�B�\@����R�s�B�
=                                    Bu��"  �          A*�\���R@���{�@��B�  ���R@����ff�w=qB�\                                    Bu���  �          A)녾�z�@���(��?B�����z�@�G��p��v\)B�z�                                    Bu��*n  �          A*�R���H@�z�����?ffB�Ǯ���H@�=q���u�
B��                                    Bu��9  �          A+
=���@��� Q��BQ�B��\���@�
=�33�xB�Q�                                    Bu��G�  �          A)G����H@�����z��@�B��f���H@�
=���wG�B�(�                                    Bu��V`  �          A)�\)@�z�� ���EQ�B�8R�\)@����
=�{�\B�.                                    Bu��e  �          A)�z�H@���\�6\)B���z�H@��
����l(�BȔ{                                    Bu��s�  �          A)�8Q�@�R��  �;�RB�W
�8Q�@����q�RBøR                                    Bu��R  �          A*{�n{@�(����\�=B��Ϳn{@��H�z��sz�Bș�                                    Bu���  �          A+
=�u@�Q�� Q��BG�BÅ�u@��
=�w�
B��                                    Bu�䟞  �          A(�ÿW
=@ڏ\� Q��E�\B�
=�W
=@�  �ff�{=qB�
=                                    Bu��D  �          A#33�(��@�\)�����2ffB�p��(��@�33�
ff�hQ�B�{                                    Bu���  �          A!G��E�@�z���=q�2G�B�Q�E�@�G�����h
=BĔ{                                    Bu��ː  �          A#
=��33@����\)�%�\B�LͿ�33@������Z�HBʊ=                                   Bu���6  �          A&�H�Tz�@��������%�B�33�Tz�@�{�z��[��B��                                   Bu����  �          A(�׿@  @��
��
=�4��B��=�@  @�p����j��Bã�                                    Bu����  �          A*�H�Q�@�����  �+  B�  �Q�@�z����`��B��
                                    Bu��(  �          A)�^�R@�(���\�.��B��^�R@��R�ff�d{B�8R                                    Bu���  �          A*{�k�@�R�����4G�B�{�k�@������i��B�                                      Bu��#t  �          A+
=���@�33��{�0ffB��H���@���  �e�\B�8R                                    Bu��2  �          A+�����@�G�����1��B�Ǯ����@��\���fB΀                                     Bu��@�  �          A+���p�@�z���p��6�B�녿�p�@�����R�k�Bͨ�                                    Bu��Of  �          A,Q�}p�@�����z��-\)B�p��}p�@��H��
�b�B�#�                                    Bu��^  �          A,  �}p�@�(���
=�?�RBýq�}p�@��\��\�tB��                                    Bu��l�  �          A)녿��@�(�����;ffB�{���@�(��
=�oB�L�                                    Bu��{X  �          A)������@�G��G��Fz�B��
����@�\)��H�{33B�ff                                    Bu���  �          A,�ÿ�33@�Q��=q�C��Bƣ׿�33@�����x=qB�G�                                    Bu�嘤  �          A)��G�@�\)��G=qB����G�@�p��
=�{�\B�{                                    Bu��J  �          A(  ����@�
=�
=�M
=BǸR����@����\)�RBЮ                                   Bu���  �          A'�
�z�@˅����Q�
B�W
�z�@�Q�����B�\)                                   Bu��Ė  �          A)p�����@ȣ��Q��V�B�
=����@�(���
�B�#�                                    Bu���<  �          A*�R�+�@�z��33�Z�B�\)�+�@}p��{�qB�
=                                    Bu����  �          A(Q�@  @�\)�33�U��B��R�@  @����\8RBȮ                                    Bu����  �          A&{����@�����Q�\B�=q����@�  �33ffB�                                    Bu���.  �          A*{�   @�z��Q��L��B����   @������fB��=                                    Bu���  �          A(�ÿ\(�@ȣ��33�TBã׿\(�@�����R�B�k�                                    Bu��z  �          A'
=��
=@�����s��B��
��
=@,����
33B��                                    Bu��+   �          A*�H����@�������r{B�aH����@7��#��RB�Ǯ                                    Bu��9�  �          A$�ÿ}p�@�p����B�ff�}p�@
=q� ��ffB�                                     Bu��Hl  �          A#����@�G���{��Bͮ���@z���\33B�
=                                    Bu��W  L          A"�H���\@����\�B�W
���\@����\�B�                                    Bu��e�  �          A#��:�H@�{����yp�BŸR�:�H@�R�=q�RB��
                                    Bu��t^  �          A!녾�G�@����R�w��B�z��G�@#�
�Q�.B�B�                                    Bu��  �          A�
���H@�{��\�f�\B�#׿��H@G��{�qB�=q                                    Bu�摪  �          A���{@��H�ff�[(�B�aH��{@dz��\)��B�                                    Bu��P  �          A"�R��G�@˅�����I(�B�W
��G�@�z�����|�
B��H                                    Bu���  �          A"�H����@�{����O�Bș�����@�{�33z�B�
=                                    Bu�潜  �          A   ��G�@Å���H�NB�Ǯ��G�@����z�ffB�\)                                    Bu���B  �          A!����
@�ff��33�D�\B�\)���
@�G��{�x(�B�ff                                    Bu����  �          A�H�(�@ȣ���=q�E=qB���(�@�p�����y�HBøR                                    Bu���  �          A$Q쿚�H@ʏ\��p��KffBɣ׿��H@�33�ff�
=B��                                    Bu���4  �          A#33�aG�@�=q��{�D��B�(��aG�@�z��  �yG�B�aH                                    Bu���  �          A%���=q@˅���
�J��B�G���=q@�z����~�BϨ�                                    Bu���  �          A=q�+�@Ϯ����Bp�B�Ǯ�+�@�(��33�w  B�z�                                    Bu��$&  �          A&�\��@�����H�\ffB��
��@k��z��)B��                                    Bu��2�  �          A*�R��  @��H��(��Az�B̽q��  @����
�t�RB�W
                                    Bu��Ar  �          A'�����@�G����[p�B��
����@n{���B��                                   Bu��P  �          A.�R��@�������K
=B�녿�@��R����}=qB��                                   Bu��^�  |          A�33@�Q�A>�H�w\)�GffB�u�@�Q�AG���(��v�Bc�
                                    Bu��md  �          A�@ӅA`Q���z��M  B��@ӅA���  �z��BY��                                    Bu��|
  �          A���@�AF�R����dQ�Bj  @�@�ff���B)��                                    Bu�犰  �          AׅA  AS���
=�Z�Bh=qA  @�(��\B.                                    Bu��V  �          A��@��A>ff��p��l��Bi@��@�\)��(�B!��                                    Bu���  �          A�\)A�A���Ǚ����B8=qA�@7���ffffA��                                    Bu�綢  �          A�33A"{Ap��Å�q�B-��A"{@p������
A��H                                    Bu���H  �          AᙚA�HA�����xG�B/�A�H@Mp���33G�A��\                                    Bu����  �          A�33A,  A;���Q��_�
B=�
A,  @����̸R�\A�Q�                                    Bu���  �          A�\)A+33A{���t33B$��A+33@P����p�B�A��                                    Bu���:  �          A��
A333@�z���(��x  B��A333?�ff���B�A�                                    Bu����  �          A�G�A;�
@�����G��p
=B�A;�
?������AQ�                                    Bu���  �          A�A/�@�  ���H�p\)B�A/�@p���{�fA6ff                                    Bu��,  �          Aә�A0Q�A�H���
�i=qB�A0Q�@E���z���Ay��                                    Bu��+�  �          AхA2�R@������m  B33A2�R?��H���k�A�                                    Bu��:x  �          AͅA-�@�\)����k��B
33A-�@�������A=�                                    Bu��I  �          A�33A<��A����(��`BffA<��@I�����R�w�Ao�                                    Bu��W�  �          A�A2�\A���
=�c��B��A2�\@Mp����{�RA��\                                    Bu��fj  �          A�
=A��A����\�t��B*Q�A��@@  ��
=\A��R                                    Bu��u  �          Aٮ@�
=A�����B��@�
=@XQ��ԏ\  B                                      Bu�胶  �          A�Ax��A333����<�
B
=Ax��@����Vz�A�\)                                    Bu��\  �          A���A���A_
=����$�B�A���A{�����A�RA�(�                                    Bu��  �          A�ffA��HAq���\)�(�B�\A��HA)G�����2\)A�                                    Bu�诨  �          A�{A�p�Ay������ Q�B!�A�p�A(�����H�>�HA�\                                    Bu��N  �          B p�A���Arff��Q��0��B%p�A���A�\��33�O��A�z�                                    Bu����  �          B��A?�A����{(�BG�A?�@���z�\A7�
                                   Bu��ۚ  �          B�RA5G�Az���p��~�B#33A5G�@'����H��AP��                                   Bu���@  �          BA.�\A����HǮB'�A.�\@#�
� (�p�AS�                                    Bu����  �          B  @љ�@=p�����{A�ff@љ����R����=C�"�                                    Bu���  �          B  @׮@�H�����A��@׮�������fC�{                                    Bu��2  �          B��@�ff?xQ��z��A(�@�ff�����ffC��
                                    Bu��$�  �          B{A��@=q�{��A��A����G����.C�e                                    Bu��3~  �          B��Az�@vff��(��A��Az��]p���z���C�C�                                    Bu��B$  �          Bp�A)�@��
��z��{A�A)��6ff���aHC�s3                                    Bu��P�  �          B33A'�@k���33{A���A'��fff��33.C���                                    Bu��_p  �          B33A2ff@{��Q�aHA4Q�A2ff������.C���                                    Bu��n  �          B��A3�?L������@��A3���\)��z��RC�                                      Bu��|�  �          BA0�׽�����z�p�C��qA0����=q����Q�C�8R                                    Bu��b  �          Bp�A%�?��H����Ǯ@��A%���z���z�.C�#�                                    Bu��  �          B�A!p�@33���{AM��A!p��������C�"�                                    Bu�騮  �          B  Ap�@2�\���H��A|��Ap���p���\)�C��=                                    Bu��T  �          B�A��@��
��Q�#�A�ffA���7
=��33C�7
                                    Bu����  �          BffA�@z=q����
=A�Q�A��Tz���G��)C���                                    Bu��Ԡ  �          B�RA�@>{��
=�)A�A����
���
=C���                                    Bu���F  �          B�\A\)@Q���=q�3AU��A\)��
=��\)z�C�޸                                    Bu����  �          B=qA   �fff��z���C��A   ��R��{8RC�.                                    Bu�� �  �          B\)A녿�����fC��A���
=��  �qC���                                    Bu��8  �          A��\A�>������#�?�A�������RW
C�{                                    Bu���  �          A�Q�@�33?(���Q�{@��@�33�����Hu�C�W
                                    Bu��,�  �          A�z�@���?0����\\)@���@����˅��G��)C�Z�                                    Bu��;*  �          A��
@��?z���@�@����z���Q�#�C�q�                                    Bu��I�  �          A��H@�G�?8Q������@�  @�G���G����C��f                                    Bu��Xv  �          A�ff@�
=?p�����H\)@�p�@�
=��(���  G�C�N                                    Bu��g  �          A�{@�33�����=C�z�@�33��(����H��C�c�                                    Bu��u�  �          A���@�Q쿫��¡=qC�#�@�Q��\)����{C�\                                    Bu��h  �          A�\)@��Ϳ���ff¢W
C�R@����  ��\)�HC��                                    Bu��  �          A�Q�@�\)��33���¡��C�,�@�\)����z�L�C�1�                                    Bu�꡴  �          A�(�@�
=�������H¡33C��=@�
=�  ��\)�
C��                                    Bu��Z  �          A�
=@�(����R���¡�RC�{@�(���H��\aHC�b�                                    Bu��   �          A�@�
=��(���Q� �)C��q@�
=������B�C�p�                                    Bu��ͦ  �          A�Q�@��.{��R �=C�33@���\��
=�{C�O\                                    Bu���L  �          A���@��ÿ�{��\) �3C���@�����H���k�C�Ǯ                                    Bu����  �          A�=q@��Ϳ�����R �{C��f@�������噚�
C�>�                                    Bu����  �          A�
=@�=q��(����
¡� C���@�=q�	���{�=C��R                                    Bu��>  �          A��
@dz������p�¤{C��R@dz��
=���B�C���                                    Bu���  �          A�ff@H���P����¢�C��
@H���"�R���H.C��3                                    Bu��%�  �          A���@9�����������3C�<)@9���6�R����RC�q                                    Bu��40  �          A�  @5���p����33C��)@5��733�����C��                                    Bu��B�  �          A��@Dz��xQ���� ǮC�33@Dz��)���Q�p�C�)                                    Bu��Q|  �          A��
@/\)���\����C�k�@/\)�0  ��ffaHC��)                                    Bu��`"  �          A׮@i�����\��G�£�C�p�@i������
=33C�3                                    Bu��n�  �          A���@9������܏\¤� C�:�@9����
��{W
C�(�                                    Bu��}n  �          A�G�@
=q��R���§��C�~�@
=q����\��C�W
                                    Bu��  �          A�{@�
�$z�����§�C�S3@�
�  �����
C��{                                    Bu�뚺  �          A�?\)�x����G�¥��C�R?\)�0������qC�s3                                    Bu��`  �          A�p�?��H��z���=q¡L�C�
?��H�8Q����H��C�5�                                    Bu��  �          A�\)@-p���\)���
 ��C�S3@-p��0����G���C��                                    Bu��Ƭ  �          A�(�@��ÿ����
= ��C�4{@����=q���Hu�C�                                      Bu���R  �          A�z�@�����߅k�C�%@��8���ϙ�G�C�/\                                    Bu����  �          A�p�@@�����H��33�C��=@@���0����Q��C��H                                    Bu���  �          A��@�G�>8Q���  (�?�=q@�G���Q���  =qC��\                                    Bu��D  �          A�G�@�(�?�=q��33��A<z�@�(������33  C���                                    Bu���  �          A�z�@�{?ٙ����ǮA��\@�{��������C�>�                                    Bu���  �          A�Q�@��H@��������\B>�
@��H@z������HA��H                                    Bu��-6  �          A���@�p�Ad  �����:G�Bv�H@�p�AG����h�BP33                                    Bu��;�  �          A��\A�Av�H�q��!��Br
=A�A7
=���\�Op�BR��                                    Bu��J�  �          A��A33AT  ����3p�BZ{A33A�����H�\�B/=q                                    Bu��Y(  �          A��A)�Ap����Q��&{B[�RA)�A,����
=�P=qB6\)                                    Bu��g�  �          Ař�A2=qAm���Q��%  BT��A2=qA)�����R�N
=B.Q�                                    Bu��vt  �          A���A1G�Aq���  �(�
BW
=A1G�A*�R���R�R=qB/�                                    Bu��  �          A��A:=qA^�H��33�*(�BHz�A:=qAp����P��B                                      