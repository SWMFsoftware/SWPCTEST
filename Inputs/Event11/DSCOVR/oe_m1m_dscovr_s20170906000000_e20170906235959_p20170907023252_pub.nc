CDF  �   
      time          *   Conventions       ACDD-1.3, Spase v2.2.3     title         /DSCOVR Magnetometer Level 2 One Minute Averages    id        Doe_m1m_dscovr_s20170906000000_e20170906235959_p20170907023252_pub.nc   naming_authority      gov.noaa.swpc      program       DSCOVR     summary       }Interplanetary magnetic field observations collected from magnetometer on DSCOVR satellite - 1-minute average of Level 1 data      keywords      _NumericalData.ObservedRegion.Heliosphere.NearEarth, NumericalData.MeasurementType.MagneticField    keywords_vocabulary       Spase v2.2.2   
references        �; DSCOVR TIME SERIES DATA AVERAGES ALGORITHM THEORETICAL BASIS DOCUMENT, v2.4; GSE TO GSM COORDINATE TRANSFORMATION ALGORITHM THEORETICAL BASIS DOCUMENT v2.1      metadata_link         �http://www.ngdc.noaa.gov/docucomp/page?xml=NOAA/NESDIS/NGDC/STP/Space_Weather/iso/xml/satellite-systems_dscovr.xml&view=getDataView&header=none    license       Spase.Access Rights.Open   institution       NOAA   source        DSCOVR Magnetometer Level 1    platform      'Deep Space Climate Observatory (DSCOVR)    
instrument        +boom-mounted triaxial fluxgate magnetometer    history       ,DSCOVR real-time telemetry processing system   	algorithm         FDSCOVR MAGNETOMETER LEVEL 1B DATA ALGORITHM THEORETICAL BASIS DOCUMENT     algorithmVersion      B      algorithmDate         
2015-10-15     processing_level      Level 2    processing_level_description      11-minute average using Hodges-Lehmann M-estimator      date_created      2017-09-07T02:32:52.021Z   date_calibration_data_updated         2017-08-18T00:00:00.000Z   time_coverage_duration        P01D   time_coverage_start       2017-09-06T00:00:00.000Z   time_coverage_end         2017-09-06T23:59:59.000Z   time_coverage_resolution      PT1M   creator_name      Doug Biesecker     creator_type      person     creator_institution       DOC/NOAA/NWS/NCEP/SWPC     creator_email         doug.biesecker@noaa.gov    creator_url       http://www.swpc.noaa.gov/      publisher_name         National Geophysical Data Center   publisher_type        institution    publisher_institution         DOC/NOAA/NESDIS/NGDC   publisher_email       william.rowland@noaa.gov   publisher_url          http://www.ngdc.noaa.gov/dscovr/   records_maximum         �   records_present         �   records_data        �   records_fill             records_missing                    time                description       "date and time for each observation     
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
short_name        overall_quality    C_format      %d     units         n/a    lin_log       TSpase.NumericalData.Parameter.Structure.Element.RenderingHints.ScaleType.LinearScale        7lBu�G�@  �          @���c�
����?�33A��
CO{�c�
��Q�?��
A���CJ{                                    Bu�G��  �          @�ff�P���33?�z�A�z�CT\�P�׿���@A�G�CN�                                    Bu�G�  �          @���mp�����?��A�Q�CNxR�mp�����@G�A�G�CH�                                    Bu�G�2  �          @�  �o\)�\@ ��A�z�CJ{�o\)��  @�
A��CC�                                    Bu�H�  �          @��H�n{��{?�p�A��CKn�n{��(�?���A�CF&f                                    Bu�H~  �          @��R�q녿�Q�?�33A��\CL��q녿�  @   A��CFQ�                                    Bu�H $  �          @��
�{���z�@Q�A�G�CDp��{��!G�@A�p�C=
                                    Bu�H.�  �          @��H���
�#�
?�33A�C<����
�.{?��RA�ffC6ff                                    Bu�H=p  �          @��u��333@z�A�C>^��u��B�\@
�HA�ffC6�                                    Bu�HL  �          @�p��z�H��Q�?�(�A��HC9@ �z�H=�G�@   A�Q�C2W
                                    Bu�HZ�  �          @��R�w�?!G�@
=A�Q�C*� �w�?�{?�33A�Q�C$                                      Bu�Hib  �          @�\)�r�\>Ǯ@A�=qC.0��r�\?^�R?�Q�A�ffC'�                                    Bu�Hx  �          @�Q��p  �5?���A�(�C>�q�p  ���?�Q�A�=qC7�R                                    Bu�H��  �          @w
=�8Q��
=?�
=A�G�CU�{�8Q���?���A��
CP
                                    Bu�H�T  �          @u�8���ff?�z�A�z�CX��8�ÿ��H?�\)A��HCR�)                                    Bu�H��  �          @k��:=q��z�?�(�A���CUB��:=q�Ǯ?��A��CPB�                                    Bu�H��  �          @g
=�5����?�ffA�Q�CT�H�5���H?�Q�A�G�CO0�                                    Bu�H�F  �          @l(��5��ff?��
A��CTh��5���?�z�A��CN
=                                    Bu�H��  �          @n�R�5���?У�AθRCT�f�5���\)@ ��BffCM�f                                    Bu�Hޒ  �          @e��%��?��A�ffCWc��%��33@�B
p�CPW
                                    Bu�H�8  �          @`���   ��p�?��HAř�CZp��   ����?��B�
CT@                                     Bu�H��  �          @a��%��=q?��A��HCWL��%��z�?�
=B��CP�H                                    Bu�I
�  �          @^{�333��33?\A���CN��333�}p�?�ffA�z�CG�\                                    Bu�I*  �          @W
=�8Q�>�Q�?�  AڸRC,�R�8Q�?333?�\)Aƣ�C&G�                                    Bu�I'�  �          @[��:�H?p��?�G�A��C"=q�:�H?��\?��RA��C��                                    Bu�I6v  �          @c33�@  ?�R?޸RA���C(Q��@  ?��\?��A�p�C!=q                                    Bu�IE  �          @Mp��,(�>�=q?��HBC.\)�,(�?+�?���A�z�C&�                                    Bu�IS�  �          @K��#33>�ff?�\)B\)C)�q�#33?c�
?��HB=qC �
                                    Bu�Ibh  �          @?\)�/\)�#�
?�z�A��
C45��/\)>�=q?���A��\C.aH                                    Bu�Iq  �          @;��0      ?xQ�A��RC3�f�0  >u?p��A�C/�                                    Bu�I�  �          @333�%��L��?�ffA���C8p��%�=u?���A�{C2�                                    Bu�I�Z  �          @+�����?���A�p�C@G����k�?�(�A���C9��                                    Bu�I�   �          @(Q����   ?��\A��C?�����k�?�{A�(�C9��                                    Bu�I��  �          @+�����{?�G�A�z�C<L�����?�ffA�G�C4��                                    Bu�I�L  �          @:�H�\)��\)?��HA��
C:L��\)=�Q�?�p�A�{C2                                      Bu�I��  �          @Z=q�B�\�!G�?�z�A�p�C?���B�\���?\A�C8��                                    Bu�Iט  �          @a��J=q��?��RA�=qC<�f�J=q����?ǮAң�C5�H                                    Bu�I�>  �          @\���C�
��?\A��C<���C�
��Q�?˅AۅC5�3                                    Bu�I��  �          @Z=q�@  �&ff?��RA���C@=q�@  ��=q?���A�  C9�                                    Bu�J�  �          @e�HQ�#�
?��A�p�C?xR�HQ�aG�?�  A�RC7�                                    Bu�J0  �          @{��Z�H��G�?��A噚C;B��Z�H=#�
?�
=A�(�C3Y�                                    Bu�J �  �          @��\�vff�
=?��A�(�C<���vff��G�?�(�A�z�C5��                                    Bu�J/|  �          @����z=q��G�?�p�A�p�C:� �z=q=L��@G�A��C3:�                                    Bu�J>"  �          @����c33��\)?�{A��HC8��c33>8Q�?�\)A�ffC1�                                    Bu�JL�  �          @h���P�׾��H?��
A�p�C<xR�P�׽�Q�?���Aљ�C5��                                    Bu�J[n  �          @dz��R�\���?��A���C8��R�\=�\)?��A�(�C2�)                                    Bu�Jj  �          @_\)�L��>\)?�\)A���C1}q�L��>��?��A�C+�)                                    Bu�Jx�  �          @x���_\)>\?�33A��HC-�=�_\)?E�?�  A�(�C'}q                                    Bu�J�`  �          @x���`��?�\?���A�
=C+���`��?aG�?�33A���C%��                                    Bu�J�  �          @}p��`  ?333?�Q�A�G�C(��`  ?��?�(�A���C"��                                    Bu�J��  �          @�33�i��=�?���A�ffC2��i��?�?�G�A˅C+�                                    Bu�J�R  �          @��R�r�\?
=q?�  AĸRC+�H�r�\?u?ǮA�ffC%�\                                    Bu�J��  �          @����qG�?
=q?�AՅC+��qG�?�  ?�(�A�=qC%
                                    Bu�JО  �          @����n�R>�
=@G�A�\C-���n�R?fff?���A�ffC&Y�                                    Bu�J�D  �          @~{�G�>\)@�HB�
C1n�G�?=p�@33B��C&�3                                    Bu�J��  �          @w��K�=�G�@��B
��C1��K�?(��@ffB��C(@                                     Bu�J��  �          @w
=�U����?�A�p�C8c��U�>k�?�A��
C/�q                                    Bu�K6  �          @��H�]p���z�@��A�33C8�=�]p�>��@��A�C/Ǯ                                    Bu�K�  �          @z=q�I�����@�BffC8���I��>��
@G�B�
C.0�                                    Bu�K(�  �          @j�H�:=q����@p�B
=C;�q�:=q>.{@\)BG�C0��                                    Bu�K7(  �          @b�\�4zᾏ\)@�B��C9���4z�>��@�B�C.��                                    Bu�KE�  �          @e�8Q�B�\@�B�C7Ǯ�8Q�>�33@B�C-{                                    Bu�KTt  �          @\���,(��B�\@	��Bz�C8��,(�>�Q�@Q�B��C,c�                                    Bu�Kc  �          @a��2�\���R@Q�B�RC:@ �2�\>u@Q�BffC/
=                                    Bu�Kq�  �          @fff�:=q�z�@�\B	��C?J=�:=q�L��@�B=qC4��                                    Bu�K�f  �          @c33�:�H�!G�?�B33C@.�:�H��@G�B
�RC6aH                                    Bu�K�  �          @g
=�?\)���
@   B�C:��?\)>L��@G�B�HC033                                    Bu�K��  �          @i���E����?�
=B �C8�q�E�>u?�
=B 33C/u�                                    Bu�K�X  �          @q��L�;��
?�(�A��C9���L��>L��?��RA�(�C0z�                                    Bu�K��  �          @q��N{���?��A��C=�=�N{�L��?�(�A��
C4�R                                    Bu�Kɤ  �          @tz��K���@G�B {C>��K���@ffB��C4�=                                    Bu�K�J  �          @�{�g
=>#�
@�A�33C1u��g
=?333@ ��A�33C)�                                    Bu�K��  �          @�p��tz�#�
@��A�\)C6ff�tz�>��@
�HA�p�C-��                                    Bu�K��  �          @���p��>aG�@�HB�RC0�{�p��?W
=@�A���C'p�                                    Bu�L<  �          @��k�?W
=@.�RB��C'��k�?�G�@�HA��HC�)                                    Bu�L�  �          @�G��~{>�(�@(Q�Bz�C-���~{?��@�A�ffC$�)                                    Bu�L!�  �          @����|(�>��H@,(�BG�C,���|(�?�@{A��C#��                                    Bu�L0.  �          @���tz�W
=@8��BG�C7��tz�?��@5B��C+�{                                    Bu�L>�  �          @�G�����>��
@"�\B 33C/z�����?xQ�@�A�p�C&�\                                    Bu�LMz  �          @�z��{�>�@+�B	
=C2��{�?Q�@#33B�RC(&f                                    Bu�L\   �          @����p  �Ǯ@ ��A�G�CJ�
�p  �\(�@4z�B(�C@�)                                    Bu�Lj�  �          @�  �w
=��ff@(�A���CF�)�w
=��R@,(�B
{C=&f                                    Bu�Lyl  �          @��R�xQ쿂�\@p�A�ffCB��xQ쾮{@(��B��C9                                      Bu�L�  �          @�  �u�n{@'�B33CA�)�u�W
=@1G�B�C70�                                    Bu�L��  �          @������
�\(�@�RA߅C?�����
��  @Q�A�C7p�                                   Bu�L�^  �          @����(��:�H@A�G�C>��(���Q�@��A�\)C5E                                   Bu�L�  �          @�������>�\)@0��B	(�C0�����?}p�@%A�\)C&(�                                    Bu�Lª  �          @�p���>\)@%�A���C2{��?O\)@��A��C)�                                    Bu�L�P  �          @�\)��p�?=p�@'
=A�p�C)�q��p�?�33@z�A��C!xR                                    Bu�L��  �          @���x��?J=q@AG�B
=C(��x��?Ǯ@,��B\)C+�                                    Bu�L�  �          @�  �~�R?0��@<(�BQ�C*&f�~�R?�Q�@)��B p�C \                                   Bu�L�B  �          @�p��xQ�?L��@Dz�B{C(G��xQ�?˅@0  B��C�q                                    Bu�M�  �          @�{��  >\@P��BffC.����  ?�p�@C33BQ�C"�3                                    Bu�M�  �          @�=q����?O\)@E�B(�C)Q�����?˅@0  A���C��                                    Bu�M)4  �          @�z���=q>B�\@4z�A��HC1���=q?n{@*=qA��C(�=                                    Bu�M7�  �          @�p���z��@.�RA��C9����z�>�\)@0  A�
=C0��                                    Bu�MF�  �          @�ff���Ϳ0��@0  A���C<s3����=�\)@5�A��C3&f                                    Bu�MU&  �          @�������
@��A��
C@k�����Q�@$z�A�{C8W
                                    Bu�Mc�  �          @�33��
=����@8��B=qC7Ǯ��
=>��H@7
=B�HC-                                    Bu�Mrr  �          @����  �#�
@4z�B 
=C5�R��  ?(�@0  A��
C,T{                                   Bu�M�  �          @������R��Q�@1G�Bz�C5(����R?(��@,(�B33C+�                                   Bu�M��  �          @�
=��zὸQ�@/\)B��C5@ ��z�?&ff@*=qB�RC+\                                    Bu�M�d  �          @�\)��
=���@(Q�A�\)C7u���
=>�@&ffA�=qC-�R                                    Bu�M�
  �          @�(����R���\@�A�=qCA�����R���@�
A�33C9��                                    Bu�M��  �          @��H��Q��=q?�
=A�ffCHJ=��Q쿇�@�\AǮCA�q                                   Bu�M�V  �          @�����\)���?��HA��
CB��\)��@
�HA�z�C:�=                                    Bu�M��  �          @�Q���\)��
=?�A��CC���\)�!G�@A�Q�C<}q                                    Bu�M�  �          @�Q���z�+�@�RA��
C=33��z�#�
@z�A��C4�=                                    Bu�M�H  �          @�  �����
?�=qA��CD�����:�H@
=Aә�C=��                                    Bu�N�  �          @���ff�^�R?�{A���C?����ff���
@�A�p�C8h�                                    Bu�N�  �          @�ff��
=�Tz�?�33A�\)C?���
=��=q@�
A��
C7�3                                    Bu�N":  �          @���ff�Tz�?���A���C?.��ff��z�@ ��A��
C7�R                                    Bu�N0�  �          @�=q��z�O\)?��
A��RC?{��zᾔz�?�
=AǮC8�                                    Bu�N?�  �          @�����(��}p�?���A�ffCA�\��(���?��
A��C;@                                     Bu�NN,  �          @������Ϳ���?�ffA���CD&f���ͿL��?�=qA�C>�H                                    Bu�N\�  �          @����{�z�?���A��
C;�\��{�L��?�33A�p�C4��                                    Bu�Nkx  �          @������ÿ��?��HA���C;ff���ýu?��A��C4�{                                    Bu�Nz  �          @����
=�
=q?�G�A�C;J=��
=��?�A��\C4k�                                    Bu�N��  �          @��H��{����?�=qA��C9c���{>�?�{A��C2B�                                    Bu�N�j  �          @�(���Q��?�A���C5���Q�>\?�\A��C.�H                                    Bu�N�  �          @��
�����p�@z�A��HC9&f���>aG�@A�G�C0�                                    Bu�N��  �          @�������G�?��RA˙�C5����>�ff?�Q�A�Q�C-�)                                    Bu�N�\  �          @��
���\>#�
?���A�\)C1�3���\?
=?��HA�(�C,E                                    Bu�N�  �          @�{���?E�?�=qA�=qC*+����?�{?��AR=qC%�                                    Bu�N�  �          @����=�\)@{A�\)C3)��?.{@
=AӮC*�3                                    Bu�N�N  �          @�  ��  ��z�@#33B�RC8&f��  >�G�@!G�B �C-�                                     Bu�N��  �          @�Q����\�aG�@(�A��\C7
���\>��@��A�z�C-Y�                                    Bu�O�  �          @�  ��33>\)@��A�C2)��33?L��@  A��C(��                                    Bu�O@  �          @�{����>aG�@
=A�C0������?aG�@��A�{C'�                                     Bu�O)�  �          @�G���(�>��@=qA�  C0c���(�?n{@\)A�
=C'E                                    Bu�O8�  �          @�������>�z�@A��C0�����?p��@
=qA�C'@                                     Bu�OG2  �          @��\���>�Q�@�A�
=C/5����?}p�@�A�Q�C&��                                    Bu�OU�  �          @��H���þ\)@��A�ffC5�\����?�\@��A�z�C-(�                                    Bu�Od~  �          @�Q����H>B�\@�HA�=qC1E���H?aG�@��A���C'��                                    Bu�Os$  �          @�{���׾W
=@�A��C6�q����>�@�A�p�C-=q                                   Bu�O��  �          @�\)����>�33@{A�z�C/
����?��@G�A�C%z�                                   Bu�O�p  �          @������
>���@=qA�C.����
?���@��A�=qC%p�                                    Bu�O�  �          @�
=���\?Tz�@p�A�G�C(� ���\?�
=?�\)A�p�C ��                                    Bu�O��  �          @�
=��=q=��
@
=A�(�C2�3��=q?@  @�RA��C)�\                                    Bu�O�b  �          @��R���ü��
@�A��C4\)����?.{@A�=qC*n                                    Bu�O�  �          @�(��u>�@��BG�C-.�u?�33@p�A���C#\)                                    Bu�Oٮ  �          @~�R�X�ý�G�@33A�
=C5Ǯ�X��>��H?��RA�G�C+��                                    Bu�O�T  �          @��g�>aG�@ ��A�=qC0��g�?J=q?�{A�\)C'�)                                    Bu�O��  �          @�z��vff?z�@�A�{C+}q�vff?��?�\A��\C#}q                                    Bu�P�  �          @�  �~{?!G�@G�AՅC+��~{?�Q�?�  A�33C#\)                                    Bu�PF  �          @������>��R@�AᙚC/������?n{?��RA�
=C'
                                    Bu�P"�  �          @�������=��
@z�A�p�C2�)����?@  @(�A�\)C)aH                                    Bu�P1�  �          @��R��33>�
=@��A�C.#���33?��@�A�G�C%s3                                    Bu�P@8  �          @��H��G�>�@
�HAՙ�C-�H��G�?�=q?�Q�A�\)C%�f                                    Bu�PN�  �          @�\)���H>��
@��A�33C/Ǯ���H?�G�@��A�Q�C&�)                                    Bu�P]�  �          @�{���
>�G�@  A�33C.O\���
?�=q@G�A��C&)                                    Bu�Pl*  �          @�\)��p�>�33@  A�G�C/�=��p�?}p�@33A\C'Q�                                    Bu�Pz�  �          @����(�>��
@
=A�  C/����(�?�  @
=qA�\)C'
                                    Bu�P�v  �          @�����>�p�@�HA���C/�����?���@��A��C%�3                                    Bu�P�  �          @�33�w�?0��?���AƸRC)���w�?���?��
A�C"Ǯ                                    Bu�P��  �          @�\)�u�?=p�?�{A���C)#��u�?�
=?��A��C"�H                                    Bu�P�h  �          @�����(�?J=q?��HA�33C)
��(�?��\?��A�G�C"�f                                    Bu�P�  �          @�33��(�=#�
@ ��A��
C3����(�?!G�?�z�A�z�C+B�                                    Bu�PҴ  �          @�{���>�  @�\A���C0Ǯ���?k�@
=A�z�C()                                    Bu�P�Z  �          @�\)���
>B�\@ffA�  C1�{���
?aG�@(�A���C(�
                                    Bu�P�   �          @�����>B�\@
=A�C1�)��?aG�@(�A���C(��                                    Bu�P��  �          @������
>�=q@(�A�
=C0u����
?}p�@  A��HC'33                                    Bu�QL  �          @�����>k�@A��HC1
��?k�@
�HA���C(=q                                    Bu�Q�  �          @�������=#�
@
=A�(�C3������?+�@   A�z�C+�                                    Bu�Q*�  �          @������H��?��RA�33C5�R���H>�?�Q�A�p�C-��                                    Bu�Q9>  �          @����\)>u@Q�A�G�C0����\)?^�R?���A��HC(aH                                    Bu�QG�  �          @��H��G�>Ǯ@	��A��HC.�\��G�?��\?�
=A�z�C%�
                                    Bu�QV�  �          @��u?Y��@ ��B
=C'���u?���@Q�A�G�C��                                    Bu�Qe0  �          @���l��?�G�@{A�ffC!B��l��?�\)?�p�A���C+�                                    Bu�Qs�  �          @�Q���녿#�
?�=qA�p�C;���녽#�
?�Q�A�{C4�\                                    Bu�Q�|  �          @�
=��\)�&ff?��RA���C;���\)�#�
@A�z�C4\                                    Bu�Q�"  �          @����
=��Q�?��HA�
=CG� ��
=���@	��A��C@��                                    Bu�Q��  �          @�{��
=��z�?�\)A�\)CD�f��
=�W
=?�(�A��HC>&f                                    Bu�Q�n  �          @�G������{?ǮA�p�CC�H����O\)?�33A���C=}q                                    Bu�Q�  �          @�����׿���?�33A~ffCAW
���׿#�
?�
=A�C;��                                    Bu�Q˺  �          @�33��G���?���Ao
=CA����G��5?�{A���C<p�                                    Bu�Q�`  �          @������Ϳ�Q�?�p�A�G�CBO\���Ϳ+�?�\A��C<.                                    Bu�Q�  �          @�  ������Q�?�\)A�  CB�R�����!G�?�z�A��RC;��                                    Bu�Q��  �          @�Q�������G�?�G�A�{CHc��������?�A��
CB^�                                    Bu�RR  �          @��H��ff���?�33A��\CD)��ff�G�?�p�A��C=�q                                   Bu�R�  �          @�
=������{?���AV�\CH��������Q�?��A��RCCn                                   Bu�R#�  �          @��R���Ϳ�33?���A_�
CKG����Ϳ�
=?�p�A�CE�                                    Bu�R2D  �          @�G���Q��{?��A�  CP����Q��
=?��HA�Q�CJǮ                                    Bu�R@�  �          @U�$z��Q�?^�RA|z�CUh��$zΎ�?�{A��COu�                                    Bu�RO�  �          @HQ��p��(�>�=q@�
=C`�q�p����R?p��A�33C^�                                    Bu�R^6  �          @*�H��=q���>L��@��Ci� ��=q���H?\(�A�\)Cg(�                                    Bu�Rl�  �          @(�ÿL���z�����{Cz�L����R?#�
As
=Cz:�                                    Bu�R{�  �          @"�\��z������HQ�C��쾔z���H>�  @��\C���                                    Bu�R�(  �          @4z�
=q�,�Ϳ
=q�3�C�b��
=q�.�R>�{@�ffC�t{                                    Bu�R��  �          @E���
=�%=�@�RCm���
=��H?p��A�\)Ck33                                    Bu�R�t  �          @C33��(��0�׼���Cv)��(��'�?Y��A�
=Cu
=                                    Bu�R�  �          @E��xQ��:=q�L���h��C{�=�xQ��4z�?=p�A`Q�Cz�q                                    Bu�R��  �          @Dz�(��>{��(���\)C�>��(��<��?��A$��C�4{                                    Bu�R�f  �          @5���z��.{�&ff�TQ�C��{��z��1�>��@��HC�f                                    Bu�R�  �          @=p����7
=��(����C�h����5?�A!��C�b�                                    Bu�R�  �          @4z��33��Q�>���A��Ce����33���H?�  A�ffCb
                                    Bu�R�X  �          @��\�[��˅?�G�A�z�CL�{�[���G�?�Q�A�(�CDz�                                    Bu�S�  �          @�  ��33�˅?��A�33CI33��33�n{@p�AݮC@��                                    Bu�S�  �          @�{��
=�У�@ ��A�p�CI{��
=�c�
@�HA��HC?�f                                    Bu�S+J  �          @������R��\)?�z�A�\)CI����R�h��@�A�G�C@E                                    Bu�S9�  �          @������
��p�?�A�  CJ�)���
����@��AծCB�                                    Bu�SH�  �          @�p���녿�G�?�G�A�z�CKff��녿�?��RA�ffCD{                                    Bu�SW<  �          @N{��G��0  >���@�CqO\��G��{?��\A�Cn�f                                    Bu�Se�  �          @E���{�.�R>�Q�@�z�Cs����{�p�?�p�A���Cq0�                                    Bu�St�  �          @8�ÿ��\�%>u@���Cs녿��\�
=?���A���Cq�
                                    Bu�S�.  �          @1G���33�?�A.�RCo#׿�33��?�G�A��HCk��                                    Bu�S��  �          @*=q������R>��HA(��Cn�\���Ϳ���?�Q�Aՙ�CkB�                                    Bu�S�z  �          @0�׿�  �=q>�A ��Cr�=��  �
=?�  A�G�Coc�                                    Bu�S�   �          @%����ff>�p�Ap�Cv:῅��ff?�\)A���Cs�q                                    Bu�S��  �          @+����H�
=>�z�@�(�Cr�)���H�Q�?�ffA�p�Cpn                                    Bu�S�l  �          @,(����\��>��Az�Cqh����\��
?�z�Ạ�CnaH                                    Bu�S�  �          @&ff���\�{>�A*�\CpE���\��
=?�Q�A�  Cl                                    Bu�S�  �          @!녿u��\>�ffA$z�Cw\)�u� ��?�Q�A��\Ct�{                                    Bu�S�^  �          @Q쿂�\�Q�>��R@�Cth����\��z�?�  A�(�Cqٚ                                    Bu�T  �          @��\)�G�>�Q�ACp�q��\)���
?�G�AͮCm޸                                   Bu�T�  �          @
=q�u��33>�p�A  Cs!H�u��z�?z�HA��Cp�                                    Bu�T$P  �          @�׿Q���>���@��Cx�\�Q녿���?z�HA�Q�CvE                                    Bu�T2�  �          @
�H�&ff�33>8Q�@���C|��&ff���?\(�A���C{                                    Bu�TA�  �          ?�=q�n{�fff>\A���C`\�n{�5?(��A�\)CY�3                                    Bu�TPB  �          @\)��
�5>�ffA:�RCG��
��?(��A��RCB{                                   Bu�T^�  �          @<(��)�����H>�G�A  CLs3�)���}p�?Q�A��HCHn                                    Bu�Tm�  �          @'��
=���\>�G�A��CK^��
=�O\)?@  A��\CG                                      Bu�T|4  �          @5�=q��ff?�A<��CPL��=q���\?z�HA��CK{                                    Bu�T��  �          @7
=�녿�ff?E�Az=qCV.�녿�Q�?�  AυCO��                                    Bu�T��  �          @��G���z�?�\AK�
CZ�3��G���33?uA�(�CU5�                                    Bu�T�&  �          ?�\)��G���Q�>���Ac�
Ce�\��G��z�H?G�A���C`)                                    Bu�T��  �          ?����p��=p�>��
A��RCsn��p��
=?��BQ�Cm�\                                    Bu�T�r  �          ?�ff���R��{>��HA���C~�׾��R�aG�?W
=B(  Cz��                                    Bu�T�  �          ?����z�h��>�  Al(�C|���z�B�\?��B{Cy��                                    Bu�T�  �          ?�
=�\��  >�z�At(�CyY��\�Tz�?(�B�Cu�\                                    Bu�T�d  �          ?�33��\��  �u�E�Cs
��\�s33>�z�Am��Cr�                                    Bu�U 
  �          ?�녾�녿�ff=��
@u�Cx���녿s33>�(�A��\Cw                                    Bu�U�  �          @G����\���H>#�
@��HCo.���\��ff?=p�A�Q�Cl��                                    Bu�UV  �          ?��þ\�Ǯ�����=G�C�8R�\����>aG�@���C�N                                    Bu�U+�  �          ?�G�����{��\)��\C{�������>�z�AffC{�3                                    Bu�U:�  �          ?�Q���Ϳ��
�L�Ϳ�CY����Ϳ���>��HA��HC~��                                    Bu�UIH  �          ?��ÿ��c�
=�\)@eCo:���O\)>�p�A���Clٚ                                    Bu�UW�  �          ?�{�}p���p����
�
=qCg+��}p���z�>�
=At  CexR                                    Bu�Uf�  �          ?�  �
=����k��,Q�CpǮ�
=����>��@�p�Cq�                                    Bu�Uu:  �          ?Y�����
�&ff���=qC��\���
�E��L���n�\C�33                                    Bu�U��  �          ?0��>W
=��녾��H�;��C�H�>W
=�\)���R���
C��                                    Bu�U��  �          ?W
=�aG���33�333�nCmz�aG��녿��$�RCx޸                                    Bu�U�,  �          ?�z�+��5��G��8Q�Cbuÿ+����\�333��ffCl�
                                    Bu�U��  �          ?�{���H��\)��\)�@��Cv�
���H���
�aG���=qC|h�                                    Bu�U�x  �          ?������Y���\)��ffCY�3����}p��aG��	��C^W
                                    Bu�U�  �          ?����(����
�����
C7�q��(������
�g
=C9�H                                    Bu�U��  �          @!G��(��z�H=#�
?W
=CL��(��fff>\ACJ^�                                    Bu�U�j  �          @\���?\)������CQB��?\)��{>��HA
=CP@                                     Bu�U�  �          @e��U��p�>�\)@�CH+��U��ff?0��A3�CEk�                                    Bu�V�  �          @xQ��hQ쿬��>�\)@�z�CH\)�hQ쿔z�?=p�A0z�CE��                                    Bu�V\  �          @e��XQ�}p�>��H@�p�CDT{�XQ�@  ?O\)AS33C@�                                     Bu�V%  �          @���tzἣ�
?�G�A��\C4L��tz�?�?�A�p�C,5�                                    Bu�V3�  �          @����mp��.{?�
=A��C6���mp�>�33?��A�C.�\                                    Bu�VBN  �          @xQ��j=q�\(�?uAd(�CA&f�j=q��ff?���A�  C;�                                    Bu�VP�  �          @\)�n{�J=q?���A�C@��n{���R?�33A���C8��                                    Bu�V_�  �          @����q녿n{?���A{�CA��q녾��?�{A��HC;\                                    Bu�Vn@  �          @z�H�k���\)?:�HA+
=CD�H�k��G�?�=qA�=qC?�                                    Bu�V|�  �          @l���`  �u?+�A'�CC\)�`  �&ff?xQ�At��C>��                                    Bu�V��  �          @hQ��[��#�
?uAt��C>���[���  ?�\)A��\C8(�                                    Bu�V�2  �          @fff�[���ff?s33AuC;xR�[���\)?�ffA�  C5:�                                    Bu�V��  �          @b�\�U��R?z�HA�Q�C>���U�aG�?���A��C7�\                                    Bu�V�~  �          @c33�S33�Q�?��
A�
=CA���S33�\?�G�A�  C:��                                    Bu�V�$  �          @g
=�P  ���?��A�Q�CG@ �P  �+�?�33A���C?��                                    Bu�V��  �          @`  �G
=���\?uA33CJ5��G
=�Tz�?�{A�
=CB�                                    Bu�V�p  �          @a��E��Q�?c�
Ai�CL޸�E��G�?���A���CF
=                                   Bu�V�  �          @^{�@�׿�33?z�HA�ffCL���@�׿p��?�
=AÅCE\)                                   Bu�W �  �          @aG��I����(�?uA|��CI+��I���G�?��A��CA�3                                    Bu�Wb  �          @e�G
=���\?��HA���CJ@ �G
=�:�H?˅A�Q�CAJ=                                    Bu�W  �          @`  �E��ff?��\A���CJٚ�E�Tz�?�A�(�CC�                                    Bu�W,�  �          @e��G���(�?��RA��RCIc��G��+�?���AծC@5�                                    Bu�W;T  �          @s�
�QG���p�?�G�A�(�CLY��QG��h��?��HA�ffCC��                                    Bu�WI�  �          @r�\�S�
��33?���A�(�CG0��S�
���?��HA�(�C=�                                    Bu�WX�  �          @z=q�g
=�0��?���A���C>�g
=��?�G�A��C6)                                    Bu�WgF  �          @`  �QG��5?z�HA��\C@@ �QG���z�?�A�p�C9�                                    Bu�Wu�  �          @mp��Tzῌ��?�(�A�{CFG��Tz�\)?��A���C=�{                                    Bu�W��  �          @p���S33����?�33A�G�CJ33�S33�Q�?���AƏ\CA�                                    Bu�W�8  �          @�Q��_\)��
=>B�\@*=qCP�H�_\)���H?c�
AO
=CN+�                                    Bu�W��  �          @��H�Q��ff��R�
�RCW���Q��=q>��R@��CXW
                                    Bu�W��  �          @x���J�H�(�������CV�{�J�H���>\@��CV��                                    Bu�W�*  �          @\)�Vff��þaG��J�HCT���Vff��
?��A33CS�
                                    Bu�W��  �          @���U�������G�CV��U����?B�\A-�CUs3                                    Bu�W�v  �          @�33�XQ��z�\)���CVh��XQ��(�?@  A(��CT�q                                    Bu�W�  �          @���W
=�����޸RCW=q�W
=�\)?G�A/�CU��                                    Bu�W��  �          @����dz�����G���p�CU+��dz����?G�A)p�CS�f                                    Bu�Xh  �          @�ff�`��������\CU�)�`�����?E�A'�
CT(�                                    Bu�X  �          @����^{��L�Ϳ#�
CS
=�^{��Q�?@  A+�CQL�                                    Bu�X%�  �          @{��XQ���R<�?�\CR���XQ��=q?J=qA:�RCPp�                                    Bu�X4Z  �          @qG��G���>aG�@Q�CU���G���?}p�Au��CR�                                    Bu�XC   �          @l(��L�Ϳ�=q�u�\(�CQ�3�L�Ϳ��H?&ffA"=qCP�                                    Bu�XQ�  �          @p���P  ���=�Q�?�\)CR.�P  ���H?O\)AF�RCO                                    Bu�X`L  �          @�G��l�����>��R@��HCR{�l�Ϳ�{?���Ao33CN�3                                    Bu�Xn�  �          @�Q��j�H�Q�<��
>�=qCR��j�H����?W
=A6{CP                                    Bu�X}�  �          @�G��g��33>#�
@��CTxR�g���
?��A_�CQ�                                    Bu�X�>  �          @��R�dz���R=�Q�?�(�CS�q�dz��G�?s33AO�CQ��                                    Bu�X��  �          @�=q�[��(�=�G�?�p�CTu��[���(�?p��AV=qCQ�H                                    Bu�X��  �          @~�R�Vff�<��
>�Q�CS���Vff��?Tz�AC
=CQǮ                                    Bu�X�0  �          @�(��hQ��Q쾸Q���  CP&f�hQ��
=>�
=@��
CP                                      Bu�X��  �          @����g
=�G���Q쿠  CQB��g
=��33?333A��CO�q                                    Bu�X�|  �          @���b�\��#�
�\)CR� �b�\��Q�?G�A.=qCP��                                    Bu�X�"  �          @�\)�j=q�Q��G����RCR:��j=q�   ?:�HA
=CP��                                    Bu�X��  T          @�\)�e�\)�L���(��CS��e�Q�?0��A\)CR�                                     Bu�Yn  �          @�p��Z�H��ý�\)�uCV�q�Z�H��R?^�RAAG�CU�                                    Bu�Y  �          @����e�33��Q쿚�HCT��e�	��?Q�A1��CR��                                    Bu�Y�  �          @�\)�dz��G����Ϳ���CTc��dz���?L��A.=qCR��                                    Bu�Y-`  �          @�z��Z=q��\)��\)CV� �Z=q���?L��A1�CT��                                    Bu�Y<  �          @u�B�\�ff<�>�ffCY� �B�\�	��?s33AfffCWG�                                    Bu�YJ�  �          @|(��E���ͼ#�
��\)CZ���E��  ?uAc
=CX8R                                    Bu�YYR  �          @����QG���=�\)?n{CWxR�QG��
=?z�HAb�\CT�H                                    Bu�Yg�  �          @����Y���$z�>�?�
=CY{�Y����
?���Av�RCV0�                                    Bu�Yv�  �          @���QG��$z�=�\)?uCZ)�QG���?�=qAq��CWn                                    Bu�Y�D  �          @�{�S33�$z�=�\)?uCY���S33��?��Ap��CW8R                                    Bu�Y��  �          @|���L���Q�>�?�\)CX�{�L���Q�?���Ax  CU��                                    Bu�Y��  �          @S�
�N�R=�G���R�,��C2#��N�R����(��*{C6�f                                    Bu�Y�6  �          @J=q�=p�>�=q�
=�2ffC.Ǯ�=p�<#�
�#�
�D��C3�q                                    Bu�Y��  �          @B�\�9���aG�������CD���9���h��=�G�@�CEaH                                   Bu�Y΂  �          @G
=�9������B�\�Z�HCH���9������>�=q@�ffCHL�                                    Bu�Y�(  �          @?\)�5��n{�k���p�CF8R�5��p��>#�
@HQ�CFz�                                    Bu�Y��  �          @>�R�-p����H��G��G�CL&f�-p���33>Ǯ@�33CK�                                    Bu�Y�t  �          @2�\��R��p���  ��p�CNn��R��p�>�=q@���CN\)                                    Bu�Z	  �          @5�%���\)��  ���HCK���%�����>aG�@���CK�)                                    Bu�Z�  �          @4z��/\)�녾����׮C?��/\)�&ff��\)����CAu�                                    Bu�Z&f  �          @6ff�.{�O\)��G���CD�)�.{�G�>k�@�ffCD
                                    Bu�Z5  �          @;��7���׾��R���HC=Q��7��\)��Q����C>�R                                    Bu�ZC�  �          @(���$z�   �aG����C?��$z���    =L��C@                                    Bu�ZRX  �          @#33�   ������P��C>n�   ��=L��?�p�C>ٚ                                    Bu�Z`�  �          @$z�� �׾�33������p�C;�� �׾�ff�#�
�c�
C>B�                                    Bu�Zo�  �          @"�\�������)��C?�R���(�þW
=���CC33                                    Bu�Z~J  �          @#33����Ϳ
=q�Ep�C@� ���8Q쾊=q��(�CD�)                                    Bu�Z��  �          @$z��{��R���R�ڏ\CB
�{�0�׼��
�
=qCC��                                    Bu�Z��  �          @!��p���\)��G���C:aH�p���(���\)��\)C=�f                                    Bu�Z�<  �          @%� ��>k��
=�S33C.� � �׼��!G��b�RC4�                                     Bu�Z��  �          @333�%?   �n{���\C)��%=�\)��ff��Q�C2W
                                    Bu�Zǈ  �          @5�"�\?n{�Q���z�C�3�"�\?�\��\)��  C(�3                                    Bu�Z�.  �          @,(��!G�?#�
�(���dQ�C%�R�!G�>��R�^�R����C,�R                                    Bu�Z��  �          @-p��%?!G�����ffC&n�%>\�.{�i��C+�R                                    Bu�Z�z  �          @�H�{?.{�(��l  C"��{>�p��W
=���C*�)                                    Bu�[   �          @녿���?Tz�5��Q�C����>��}p���(�C&�
                                    Bu�[�  �          @{��?��
�0����  C�)��?aG���33��33CJ=                                    Bu�[l  �          @Q��33?�(��\)�s�
C����33?aG����\��  C�                                    Bu�[.  �          ?��R�}p�?�녾��a��B�ff�}p�?����\)�
=qB�.                                    Bu�[<�  �          @�׿��?�녿O\)��p�Cp����?333���H�=qC�f                                    Bu�[K^  �          @�ÿ��H?���L������C
���H?&ff��
=��C!��                                    Bu�[Z  �          @{����Q����d(�C=������;�33�  CB�
                                    Bu�[h�  �          @33��>��
�G�����C+k������W
=��z�C4�                                    Bu�[wP  �          @(��녾�G�����S\)C>���녿�R���R���CCL�                                    Bu�[��  �          @{�Q콏\)��33��
C5��Q�W
=��\)�أ�C9�                                    Bu�[��  �          @*=q�(Q�<��
�Ǯ�p�C3�\�(Q�\)��Q���  C7#�                                    Bu�[�B  �          @(Q��%����
����#\)C5���%�����Ǯ���C9ٚ                                    Bu�[��  �          @"�\�=q��G�����ZffC>Y��=q�&ff��33� ��CC�                                    Bu�[��  �          @,(��p��Q녿+��hQ�CF\)�p����\�����(�CJ��                                    Bu�[�4  �          @0  �#�
�8Q�+��bffCC���#�
�n{�����˅CH                                      Bu�[��  �          @/\)�$z�+��&ff�Z�HCB���$z�aG�������33CFٚ                                    Bu�[�  �          @0���"�\�p�׾��!�CHY��"�\��ff���:�HCJ�
                                    Bu�[�&  �          @5�)���W
=����5�CE��)���}p�����>{CH�\                                    Bu�\	�  �          @<���*�H�}p��&ff�L(�CHW
�*�H���#�
�J�HCK��                                    Bu�\r  �          @[��S�
>��H��\�	G�C+�{�S�
>k��+��5��C0�                                    Bu�\'  �          @c33�X��?�G��L���J=qC#h��X��?Tz�(��=qC&@                                     Bu�\5�  �          @c�
�X��?��þ�  �|��C"u��X��?\(��.{�0(�C%��                                    Bu�\Dd  �          @e�\(�?�  ��\)��\)C#޸�\(�?^�R���H���C%�{                                    Bu�\S
  �          @`���X��?h�ý�\)���C$�3�X��?J=q��ff���
C&��                                    Bu�\a�  T          @^{�XQ�?@  ���Ϳ�z�C'xR�XQ�?!G�����ۅC)\)                                    Bu�\pV  �          @_\)�W
=?h��>��@�ffC$�f�W
=?n{�#�
�(Q�C$�\                                    Bu�\~�  �          @^�R�Vff?h��>#�
@(��C$�H�Vff?c�
��  ���C%0�                                    Bu�\��  �          @X���K�?�z�=u?��\C 
=�K�?��þ�G���C!p�                                    Bu�\�H  �          @Tz��I��?���#�
�0��C!�\�I��?k����=qC#�=                                    Bu�\��  �          @S33�J=q?p�׽L�ͿG�C#h��J=q?Tz��ff��=qC%L�                                    Bu�\��  �          @Mp��A�?}p�������Q�C!���A�?=p��:�H�R�HC&8R                                    Bu�\�:  �          @K��B�\?n{=��
?���C#{�B�\?^�R������G�C$�                                    Bu�\��  �          @R�\�E?��=��
?��C ���E?�G�������
C!�)                                    Bu�\�  �          @N{�Dz�?s33��\)��z�C"�)�Dz�?Q녾����HC$��                                    Bu�\�,  �          @Mp��J=q>��H>#�
@1�C+0��J=q?�\��\)��=qC*�)                                    Bu�]�  �          @S33�O\)?z�>��@!�C)��O\)?z���
=C)�{                                    Bu�]x  �          @U��O\)?z�>�(�@��
C)�
�O\)?5>�@{C'��                                    Bu�]   �          @S�
�E?k�?@  APz�C#c��E?�33>�=q@�(�C�                                     Bu�].�  �          @S33�H��?E�?z�A#
=C&J=�H��?p��>B�\@O\)C#G�                                    Bu�]=j  �          @l���j=q>��
>\@��C/{�j=q>�ff>L��@I��C,�q                                   Bu�]L  �          @k��a�?333?@  A<��C(��a�?u>�p�@��RC$�=                                   Bu�]Z�  �          @l(��e?B�\>�(�@��
C()�e?^�R=L��?B�\C&n                                    Bu�]i\  �          @{��u?
=q?z�A33C+���u?=p�>�\)@�=qC)�                                    Bu�]x  �          @vff�q�?5=L��?+�C)Y��q�?(�þ�=q���\C*!H                                    Bu�]��  �          @p���j�H?5>Ǯ@��RC)��j�H?O\)=#�
?
=qC'�\                                    Bu�]�N  �          @g��c�
>\)?�\A�C1� �c�
>�33>Ǯ@�\)C.ff                                    Bu�]��  �          @c33�`  �u?��A�
C7�
�`  =#�
?��A  C3k�                                    Bu�]��  �          @`���Y����p�?E�AIC:!H�Y��<#�
?Y��A`  C3Ǯ                                    Bu�]�@  �          @Y���Q녾�?Y��AhQ�C6.�Q�>�=q?Q�A_
=C/\)                                    Bu�]��  �          @Vff�Tz�>�p�>aG�@vffC-���Tz�>�(�=#�
?!G�C,��                                    Bu�]ތ  �          @Z�H�W
=?��>��R@�ffC*�3�W
=?!G�<�?
=qC)^�                                    Bu�]�2  �          @X���W
=>�
=>B�\@HQ�C,�)�W
=>����
��p�C,8R                                    Bu�]��  �          @Y���Tz�?#�
�u���C)
�Tz�>�׿   �  C,                                    Bu�^
~  �          @\(��U?G���=q��Q�C&��U?녿
=��C*E                                    Bu�^$  �          @Z=q�U?+�=L��?W
=C(�U?�R��  ��Q�C)��                                    Bu�^'�  �          @Z�H�W�?녾���C*z��W�>�ff��p��ƸRC,s3                                    Bu�^6p  �          @U��S�
>u=���?��C/��S�
>�  ���
��Q�C/��                                    Bu�^E  �          @U�Tz�>aG�>�  @�
=C033�Tz�>��R=�@�
C.��                                    Bu�^S�  �          @c�
�b�\>��>\)@�C/�H�b�\>�z�<#�
=�Q�C/W
                                   Bu�^bb  �          @hQ��e>u>��@ϮC0B��e>Ǯ>��@��C-��                                    Bu�^q  �          @X���U>��
>�(�@�
=C.�)�U>��>u@���C+�                                    Bu�^�  �          @P���N�R>�\)>��
@���C/��N�R>Ǯ>��@-p�C-{                                    Bu�^�T  �          @c�
�b�\>�\)=�G�?�\C/�\�b�\>�z����(�C/=q                                    Bu�^��  �          @`  �[�>��H>Ǯ@�p�C+�3�[�?(�>�@ffC)�                                    Bu�^��  �          @R�\�J�H?(�?�A�HC)0��J�H?L��>k�@�  C%��                                    Bu�^�F  �          @XQ��P  >u?^�RAn=qC/��P  ?(�?(��A5G�C)ff                                    Bu�^��  �          @Y���Tz�.{?#�
A.ffC6��Tz�>\)?&ffA0Q�C1�
                                    Bu�^ג  �          @\(��W
=?�R>�{@�C)�H�W
=?333<��
>�p�C(0�                                    Bu�^�8  �          @aG��Z�H?J=q>8Q�@<(�C&�q�Z�H?J=q�L���QG�C'�                                    Bu�^��  �          @b�\�X��?c�
>�@��C%J=�X��?�  <#�
=�G�C#�                                     Bu�_�  �          @`���U?n{>�@�z�C$��U?��    =uC"��                                    Bu�_*  �          @N{�H��?   >�33@�{C+
=�H��?��=��
?�
=C)8R                                    Bu�_ �  �          @H���@��?L��>#�
@<(�C%��@��?J=q�k���p�C%W
                                    Bu�_/v  �          @K��=p�?�{>�@G�C���=p�?��������ffC ��                                   Bu�_>  �          @J=q�A�?Y��>\)@#33C$T{�A�?Q녾�=q��33C$޸                                    Bu�_L�  �          @L(��G
=?5<�?
=qC'��G
=?#�
�������C(G�                                    Bu�_[h  �          @L(��E�?E�<�?!G�C%�H�E�?333������z�C'!H                                    Bu�_j  �          @J=q�C33?Tz὏\)��
=C$Ǯ�C33?5��G�� (�C&��                                    Bu�_x�  �          @H���C33?.{>W
=@uC'�=�C33?333���33C'+�                                    Bu�_�Z  �          @G
=�<��?Tz�?��A!��C$Y��<��?z�H=���?�\)C!��                                    Bu�_�   �          @E�8��?���>u@��RC�q�8��?����\)��
=C��                                    Bu�_��  �          @7
=�(��?��ü#�
����C�f�(��?s33�   �"=qC B�                                    Bu�_�L  �          @8Q��'
=?�
=��z���G�C�R�'
=?h�ÿL����C ��                                    Bu�_��  �          @333�z�?�{�J=q��ffC���z�?W
=��=q��\C �                                    Bu�_И  �          @0  ��?���:�H�v�HC�\��?Y�����\�܏\C�H                                    Bu�_�>  �          @0���p�?����=p��x��C���p�?p�׿�=q��33C�                                    Bu�_��  �          @5����
?�׿�\)��\)C�����
?�녿�\)�%��Cs3                                    Bu�_��  �          @:�H���?�33�����{Cٚ���?�33����"G�C��                                    Bu�`0  �          @4z��z�?�=q�������\CT{��z�?G���z��+(�C�q                                    Bu�`�  �          @=p���\?�
=��\)�  C�f��\?�\�ff�3��C%��                                    Bu�`(|  �          @(�ÿ�\)?�녿����مCLͿ�\)?+����H�#  C J=                                    Bu�`7"  �          @8�����?��Ϳ�33����C=q���?&ff��33�  C#�q                                    Bu�`E�  �          @8Q��(��?���#�
�O\)C
�(��?k����-�C �\                                    Bu�`Tn  �          @4z��2�\>k�>��R@ʏ\C/G��2�\>�33>.{@W�C,�)                                    Bu�`c  �          @8Q��4z�?��=���?�33C(��4z�?��8Q��`  C)W
                                    Bu�`q�  �          @5�{?��ÿ5�lz�C�{�{?(��������C&#�                                    Bu�`�`  �          @.{���?������
=C�����?&ff���(�C!�                                    Bu�`�  �          @7����?��Ϳfff���\C޸���?
=q�������C'�=                                    Bu�`��  �          @?\)�5?.{�z��1�C&u��5>��ÿTz���\)C-Y�                                    Bu�`�R  �          @H�ÿ�=q?���Q���
C�Ϳ�=q?c�
����F��C�f                                    Bu�`��  �          @K��?���
=� ��Cc��?+��G��8  C"+�                                    Bu�`ɞ  �          @G��33?�=q�У���(�C  �33>�����
�%�C*5�                                    Bu�`�D  �          @@  ��
=?��ÿ����RC�Ϳ�
=?���(��=Q�C"��                                    Bu�`��  �          @9�����?��Ϳ��
����C�Ϳ��?fff�{�H
=CE                                    Bu�`��  �          @Fff��
=?�\)���
���C{��
=?z����D��C#aH                                    Bu�a6  �          @L(���p�?��ÿ�33�{C�)��p�>����H�G�
C&�{                                    Bu�a�  �          @W
=�%�?�ff��(���=qC  �%�?(�����Q�C%��                                    Bu�a!�  �          @b�\�333?��Ϳ������
CT{�333?5��\��C%Ǯ                                    Bu�a0(  �          @h���:�H?�Q�����\)C� �:�H>�����C*�
                                    Bu�a>�  �          @i���;�?�z��z���(�CW
�;�>�G��Q����C+ff                                    Bu�aMt  �          @l���=p�?����H���HCT{�=p�>�(��(���
C+��                                    Bu�a\  �          @\����?�33���	�C#���>����ff�/p�C,޸                                    Bu�aj�  �          @X����?�=q�
=�ffCT{��>�p��&ff�I�HC*                                    Bu�ayf  �          @_\)� ��@p���\���CG�� ��?�=q�'
=�C�\C��                                    Bu�a�  �          @K����H@�׿�\)��ffB�8R���H?�����\�:z�CE                                    Bu�a��  �          @b�\���?�\)�޸R��\)C�)���?z��33�)��C&�R                                    Bu�a�X  �          @e�G�@ �׿�ff��G�C ��G�?��H�$z��7�\C0�                                    Bu�a��  �          @fff�J=q?녿�G���33C)ٚ�J=q�k��˅�ՙ�C8.                                    Bu�a¤  �          @\(��333?�  ���H���
C Y��333=L�Ϳ�p��Q�C3                                    Bu�a�J  �          @@���Q�?�=q��z���RC���Q�>�Q���0�C*B�                                    Bu�a��  �          @K���?У׿�\���C���?����<��C$��                                    Bu�a�  �          @K���@zῸQ���ffC���?�{����6ffC�\                                    Bu�a�<  �          @N{�
=q?��ÿ���p�C{�
=q?   �z��9ffC&�                                    Bu�b�  �          @Z�H�p�?����ff����C
=�p�>���z��+(�C)33                                    Bu�b�  �          @Y��� ��?�p���  ���
C��� ��>�G��\)�%�\C)�q                                    Bu�b).  �          @U�{?��
���H���Cn�{>Ǯ����=�C*)                                    Bu�b7�  �          @^{�\)?���Q��Q�C}q�\)>��R�'
=�DffC,#�                                    Bu�bFz  �          @`��� ��?�G������HC��� ��?8Q��z��&p�C#�H                                    Bu�bU   �          @e��1�?�p���\)����C)�1�?W
=��\�G�C#!H                                    Bu�bc�  �          @o\)�8Q�?��\���C\)�8Q�?^�R�{���C#(�                                    Bu�brl  �          @p  �:�H?�ff��G���ffCaH�:�H?Tz��(����C$�                                    Bu�b�  �          @[��.{?��Ϳ�(�����C���.{?L�Ϳ���C#�H                                    Bu�b��  �          @33��=q?У�=��
@��C)��=q?��H�8Q����\C	33                                    Bu�b�^  �          @   ���?��=�@0  C
�f���?��R�333���C�H                                    Bu�b�  �          @{� ��?�\)��=q���HC��� ��?���fff���C@                                     Bu�b��  �          @\)�z�?}p��xQ�����Cc��z�>Ǯ��=q�
=C)Q�                                    Bu�b�P  �          @5�z�?��׿���  C!H�z�>��Ϳ�=q�(�C*#�                                    Bu�b��  �          @@���   ?��\��{��ffC)�   ?\)��=q��=qC'aH                                    Bu�b�  �          @<���(�?�  �xQ���  C�R�(�?(����H��RC&�                                    Bu�b�B  �          @HQ��0  ?�  �W
=�y�C���0  ?+�����˅C&G�                                    Bu�c�  �          @=q��?h�ÿL������Cp���>Ǯ��33��  C)T{                                    Bu�c�  �          @333���?��H�W
=��\)C=q���?!G���=q��C%#�                                    Bu�c"4  �          @Mp��,��?�33������
=C�
�,��?0�׿�\)��C%�                                    Bu�c0�  �          @=p��p�?�  ��ff����C\�p�?녿��
��C'                                      Bu�c?�  �          @*=q��?Q녿u��=qC ����>u���R�ߙ�C.&f                                    Bu�cN&  �          @(Q��Q�?(��fff��ffC%���Q�=�Q쿊=q��p�C1�f                                    Bu�c\�  �          @��?&ff��\�HQ�C#���>��R�B�\��  C+�f                                    Bu�ckr  �          @��  ?B�\���1G�C!W
�  >�(��G����\C)0�                                    Bu�cz  �          @!G��?Q녾�G���C �>��H�G���33C()                                    Bu�c��  �          @%���?.{�(��[�C$33���>�z�\(����C-.                                    Bu�c�d  �          @9���-p�>�녿n{��p�C+aH�-p����Ϳ�G����C633                                    Bu�c�
  �          @@  �5?E�����733C$�f�5>�p��fff��\)C,�)                                    Bu�c��  �          @AG��9��?(�ÿ��!�C'@ �9��>����J=q�qC.                                      Bu�c�V  �          @@���5?L�Ϳ
=�5G�C$=q�5>��Ϳh�����C+��                                    Bu�c��  �          @@���5?:�H�(���J�HC%�{�5>����p����33C-�f                                    Bu�c�  �          @@���8Q�?(�ÿ���*=qC'0��8Q�>�z�O\)�yp�C.=q                                    Bu�c�H  �          @@���8Q�?.{���p�C&�R�8Q�>�Q�=p��dQ�C,��                                    Bu�c��  �          @Fff�>�R?G���Q���C%ff�>�R>��H�333�P��C*��                                    Bu�d�  �          @Dz��=p�?333��
=���C&���=p�>��Ϳ5�W
=C,aH                                    Bu�d:  �          @@  �:�H?���G��33C)���:�H>k��#�
�E�C/�{                                    Bu�d)�  �          @:�H�8Q�>u�\��  C/T{�8Q�<#�
��ff�G�C3�q                                    Bu�d8�  �          @1G��.�R�8Q쾽p���33C7��.�R��{�k���{C;�                                    Bu�dG,  �          @E�7�>��H�z�H���C*c��7���\)������RC5s3                                    Bu�dU�  �          @Q��;�?J=q���R���
C$���;�=u��(�����C2��                                    Bu�ddx  �          @U��1G�?�녿�����=qC��1G�>�z��G���\C.\                                    Bu�ds  �          @J=q��R?�녿����ʸRC����R?���{�{C(&f                                    Bu�d��  �          @B�\���?�ff����ffC#����?���z���C'�q                                    Bu�d�j  �          @@  �\)?�Q쿗
=��\)CQ��\)>�G���\)��HC*�                                    Bu�d�  �          @<(����R?˅��Q���p�Cuÿ��R?&ff��\�1
=C"�                                    Bu�d��  �          @,�Ϳ��?��ÿ�z����RCٚ���>�(�����1��C'!H                                    Bu�d�\  �          @p��ٙ�?h�ÿ�����z�C�R�ٙ�>u�����33C+�                                    Bu�d�  �          @5���z�?�p���p���33C:��z�?��G��6(�C$p�                                    Bu�d٨  �          @ �׿���?�zῴz���C
�)����?�\��
=�C�C"s3                                    Bu�d�N  �          @�׿}p�>��
���vQ�C"Y��}p��333�����a
=CWB�                                    Bu�d��  �          @!G���z�>B�\��R�x�C*𤿔z�xQ�� ���Tp�C[��                                    Bu�e�  �          @'����
>�G��  �k��C!����
�B�\�
=q�]�CR��                                    Bu�e@  �          @'
=���H>�����o��C�f���H�:�H���c�CS#�                                    Bu�e"�  �          @   ��33>��
�H�q
=CxR��33�0���
=�f�\CS#�                                    Bu�e1�  �          @�H���\?����(��Z33C�f���\���H�   �_{CI�                                    Bu�e@2  �          @�׿0��>B�\�ff��C$� �0�׿fff��z��l��Ch�{                                    Bu�eN�  �          @�R�.{>�=q�Q�CW
�.{�Tz��
=�t  Cf��                                    Bu�e]~  �          @
�H���=����C(J=��Ϳu�����l=qCo�3                                    Bu�el$  �          @#33��Q�?��ÿ��
���
C	c׿�Q�?(���ff�3�C�{                                    Bu�ez�  �          @G
=�33?����8Q��W33C�f�33?����{��33CB�                                    Bu�e�p  �          @P  �!�?��&ff�7�
C� �!�?��ÿ��
��=qCY�                                    Bu�e�  �          @@  �z�?ٙ��O\)�{�C��z�?�ff�Ǯ��z�C��                                    Bu�e��  �          @C33�"�\?�G��333�Up�CY��"�\?p�׿�\)����C                                    Bu�e�b  �          @5��R?��
�W
=��
=C�=��R>�ff��  ��ffC)��                                    Bu�e�  �          @333�=q?s33��������C}q�=q>�=q��33��{C-�\                                    Bu�eҮ  �          @E��.{?��ÿ�G���ffC�f�.{>��Ϳ�z���G�C+�                                    Bu�e�T  �          @*�H��?�ff����>{C5���?�R��  ��(�C%^�                                    Bu�e��  �          @\)�  ?@  �333���HC!���  >�z�z�H��p�C,�                                    Bu�e��  �          @$z����?��
=q�D  C����?:�H����ŅC!�f                                    Bu�fF  �          @#33�
=q?�ff���<��C\�
=q?�ff�G���G�C.                                   Bu�f�  �          @G��ٙ�?�
=�W
=����C��ٙ�?�\)�h����=qC��                                   Bu�f*�  �          @���?�p����Yp�C���?z�H���R��G�C��                                    Bu�f98  �          @,���z�?�(���
=�  CB��z�?Tz�z�H���C =q                                    Bu�fG�  �          @���p�?�  ���R��33C
�q��p�?��׿��
����CǮ                                    Bu�fV�  �          @
=���?�Q�E����HC.���?W
=��33�(\)CE                                    Bu�fe*  �          @H���%?�=q�0���L��C���%?�  ��33��ffC�                                    Bu�fs�  �          @G
=�*�H?�Q�+��F=qC�3�*�H?c�
������C!�{                                    Bu�f�v  �          @@���'
=?�{�z��2�RC��'
=?\(�������Q�C!�                                    Bu�f�  �          @E�(Q�?�녿Q��v�HC��(Q�?E�����p�C#��                                    Bu�f��  �          @G��   ?��׿��\���C#��   ?�����z�C()                                    Bu�f�h  �          @L(��33?�p�������33C���33?L�����33C �                                    Bu�f�  �          @Mp���Q�@�ÿ�\)��
=CT{��Q�?�\)���5�\C�                                    Bu�f˴  �          @I���p�@   ��  ���
C	�=�p�?��������Cz�                                    Bu�f�Z  �          @7��G�?�(��n{���\C�
�G�?}p���Q��Q�C�)                                    Bu�f�   �          @�ÿk�?��
���(��B�W
�k�>�33����y�RCٚ                                    Bu�f��  �          @   ��p�?��R��=q�ffC�\��p�?
=��z��H�RCaH                                    Bu�gL  �          @2�\����?˅��������C
�)����?(�ÿ�(��6(�C�R                                    Bu�g�  �          @33���H?�=q����Q�C	�����H?���Q��=G�C��                                    Bu�g#�  �          ?�
=���?�����ff�z�C^����>���G��O(�C:�                                    Bu�g2>  �          ?��
��R?p�׿��\�(��B�aH��R>�=q��{�~��C�                                    Bu�g@�  �          ?��H�Q�?Q녿aG����C  �Q�>u���X
=C#n                                    Bu�gO�  �          ?���E�?Q녿&ff���C33�E�>�p��z�H�C�\C�{                                    Bu�g^0  �          ?���5?k��
=��B�Q�5>��z�H�B�C��                                    Bu�gl�  �          ?��Ϳ333?fff�333���HB��q�333>�녿���R��C�=                                    Bu�g{|  �          ?�\)�J=q?fff�#�
�ᙚCn�J=q>�(���G��AffCY�                                   Bu�g�"  �          ?�\)�s33?녿J=q���C!H�s33=�\)�xQ��6�C/��                                    Bu�g��  �          ?\����>�
=�c�
��\C�����׽��ͿxQ��#�C9.                                    Bu�g�n  �          ?���fff?�R��\)�N{CJ=�fff�8Q쿾�R�j{C?�H                                    Bu�g�  �          @Q쿃�
?�\)���,��C�
���
>W
=����n�C(Q�                                    Bu�gĺ  �          @R�\���@�\�����
�B򞸿��?}p��1G��i��C��                                   Bu�g�`  �          @<�Ϳ�?޸R��z��!{CQ쿵>��H�!��l��C ��                                    Bu�g�  �          @Dz��=q?\���H��C5ÿ�=q>���  �H��C'n                                    Bu�g�  �          @I���
�H?��H��p���=qC�
�
�H?.{�
=q�-��C"��                                    Bu�g�R  �          @L���=q?�������ɮC���=q?(������ffC%޸                                    Bu�h�  �          @HQ����?�33��������C�
���?5� ���!�C"�H                                    Bu�h�  �          @A녿���?��
������C� ����>�33��L�C)@                                     Bu�h+D  �          @4z���H?�G���ff� ��C�R���H>��(��O�\C/��                                    Bu�h9�  �          @,�Ϳ�\)?�z��p��#p�B�Ǯ��\)?�\��y�Cp�                                    Bu�hH�  �          @G�����?��Q��,B�������>�
=�0���y�HC"��                                   Bu�hW6  �          @<�Ϳ��?���\�0G�B�(����>�33�'
=�{�HC$��                                   Bu�he�  �          @?\)��p�?�(���=q���B��ÿ�p�?8Q��%�tC�                                    Bu�ht�  �          @<(���p�@�^�R����B��Ϳ�p�?�����H�*(�C�R                                    Bu�h�(  �          @<�Ϳ�p�?�Q쿮{��=qC  ��p�?�\��z��,=qC%z�                                    Bu�h��  �          @9����R?:�H��\)�
p�C!�3��R�k���G��z�C9�f                                    Bu�h�t  �          @0���?�����
��p�C%����.{��33���HC8
=                                    Bu�h�  �          @�\��\�   ��z����
CA����\��<#�
>�33CC�3                                    Bu�h��  �          @���H>�  ���\(�Cn���H�����H�s�
C^�                                    Bu�h�f  �          ?�(��   ?��ÿ�=q�G�B�p��   ?B�\�޸R�yG�B�aH                                    Bu�h�  �          ?�Q�(��?ٙ������ffB�#׿(��?�z΅{�6�B�                                    Bu�h�  �          @���\)?�p������B��Ϳ�\)?5��
=�O�\C��                                    Bu�h�X  �          @'
=��p�?�(����
���C�ÿ�p�?J=q���R�GQ�C�{                                    Bu�i�  �          ?�p��aG�?�녿���+��B��{�aG�>����p��xG�C#^�                                    Bu�i�  �          @ �׿u?@  �Ǯ�OC��u�8Q��(��q�HC>�\                                    Bu�i$J  �          @	���\(�?�Ϳ�\)�u��C@ �\(���\����w�CS�                                    Bu�i2�  �          @��G�?u���V=qC=q�G���\)���C8��                                    Bu�iA�  �          @녿s33?fff��{�[C�\�s33�aG��33W
C@��                                    Bu�iP<  �          @(�����?&ff��\�XCO\���;\���g\)CG�                                    Bu�i^�  �          ?�ff��?�������{ffC��녾�{��
=CR�H                                    Bu�im�  �          ?��Ϳ�\?���Q��{C�R��\��ff���Hk�C]��                                    Bu�i|.  �          ?�\)�aG�?   ���H�H��Cff�aG��aG���ff�\(�CA��                                    Bu�i��  �          ?�{�J=q?�G�����8��C ��J=q>����u�C)�                                    Bu�i�z  �          ?�\�&ff?u��=q�C�B�33�&ff=�G����{C*)                                    Bu�i�   �          ?���!G�>�׿�ff�|��C\�!G���
=�Ǯ�{CU��                                    Bu�i��  �          ?���+�>8Q���C$�ÿ+��5��p��b�\Cb��                                    Bu�i�l  �          ?�ff��  �u��   �
CA��  �W
=���R�Z�
C}                                    Bu�i�  �          ?���Q�?^�R�Y�����C!H�Q�>�zῗ
=�W(�C s3                                    Bu�i�  �          ?�z�G�?�{�u�\)B�.�G�?��\�k��  B���                                    Bu�i�^  �          @;�����?�\)�ٙ���
C�����>����\�W��C#}q                                    Bu�j   �          @@  ���
?��Ǯ���RCͿ��
?:�H��\�H
=C��                                    Bu�j�  �          @@  ��G�@33����̣�C�׿�G�?�ff���;
=C
=                                   Bu�jP  �          ?�\)��=q?��׿Tz����C &f��=q?:�H��
=�>�HC
=                                   Bu�j+�  �          @#33��
=?�������z�C J=��
=?fff��(��F(�C�
                                    Bu�j:�  �          @��Q�?�������{C녿�Q�?���=q�I33C�                                    Bu�jIB  �          ?��R�
=?G��E��z�B��q�
=>������k�CT{                                    Bu�jW�  �          ?�p���G�?0�׿c�
�=��B�
=��G�=�G���\)�
C%��                                   Bu�jf�  �          ?�Q���?Tzῃ�
�7��B��{���>#�
���{C#��                                    Bu�ju4  �          ?�=q��?h�ÿ���=\)B��ÿ�>.{����\)C"Q�                                    Bu�j��  �          ?��ÿu?����n{���
C ���u?����RffC:�                                    Bu�j��  �          @��33?�33���\��  C.��33?&ff��{�Jz�CO\                                    Bu�j�&  �          @\)��Q�?�
=��p���C�)��Q�?�Ϳ�ff�W��C{                                    Bu�j��  �          @%����?�녿�Q��
=C.���?!G���W��C�{                                    Bu�j�r  �          @=p��\?�׿�Q��Q�C �H�\?333���]��C(�                                    Bu�j�  �          @   �k�?���ff��z�B�Ǯ�k�?#�
����^�C�
                                    Bu�j۾  �          @33��z�?�\)�aG���p�C�H��z�>�����;�
CY�                                    Bu�j�d  �          ?�Q�
=q>��
����$�CY��
=q���
�#�
�F�\C65�                                    Bu�j�
  �          ?�z����aG����
�CH#׿����  ��
=�533Cn�                                    Bu�k�  �          ?�p����=#�
��33��C0\)��ͿW
=��z��Z  Cl��                                    Bu�kV  �          ?�녿!G�������H��CA� �!G��h�ÿ�z��:33CkaH                                    Bu�k$�  �          @����p�?�����7�CaH��p�<#�
��(��h�C3�{                                    Bu�k3�  �          ?��^�R?�G��������B��^�R>������i
=C�
                                    Bu�kBH  �          ?��
�Q�?
=q��{�B�CxR�Q녾���p��`G�C=@                                     Bu�kP�  �          ?�녿n{�L�Ϳ\(��*�HC7{�n{�   �333�p�CP=q                                    Bu�k_�  �          ?\�s33��(�����9
=CLxR�s33�p�׿0�����HC`�H                                    Bu�kn:  �          ?������
�#�
��  �0�C5�ÿ��
�\)�Q���HCP��                                    Bu�k|�  �          ?����\>�׿���0�\CB����\�8Q쿕�B33C>)                                   Bu�k��  �          @(��޸R?^�R����ffCn�޸R=#�
�����(
=C2��                                    Bu�k�,  �          ?��H���
?5���C�Czῃ�
�#�
��=q�b�C<�                                    Bu�k��  �          ?�����>���\)
=Cn�����R��p��up�Cw8R                                    Bu�k�x  �          ?��þ�������\��Cs�׾��c�
�p���8�
C��                                    Bu�k�  �          ?��׾�zᾔzῧ���Ca  ��z�p�׿u�133C})                                    Bu�k��  �          ?�����þaG����H�3CU�����ÿTz�h���5�RCxT{                                    Bu�k�j  �          ?�=q��  ��\)��p���CB�)��  �5��  �U  Cz��                                    Bu�k�  �          ?��;��W
=���H�
CLǮ���Q녿h���0ffCp��                                    Bu�l �  �          ?�{>�Q콸Q쿡G�G�C�\)>�Q�=p����\�L33C���                                    Bu�l\  �          ?�
=>L�;�\)��=q�
C���>L�Ϳ��ÿ�Q��=��C�'�                                    Bu�l  �          ?˅>\?+�����[  Bq>\�#�
���
�fC���                                    Bu�l,�  �          ?�?�R>#�
�0���;��A`��?�R�k��(���3��C���                                    Bu�l;N  �          ?�p�>�z�?
=q��  �i�By�\>�z὏\)������C�5�                                    Bu�lI�  �          ?��H>.{�^�R�fff�6\)C��\>.{���H�����\��C���                                    Bu�lX�  �          ?�33�8Q�?��R��G��z�Bą�8Q�?�\�\��B���                                    Bu�lg@  �          ?�
=�(��?�{�����HB�{�(��?#�
�����F�\C�)                                    Bu�lu�  �          ?��Ϳ��?fff�W
=�0Q�B󙚿��?&ff�&ff�G�C�{                                    Bu�l��  �          ?��Ϳ0��?�G�>\A���B��\�0��?�ff�W
=��RB��                                    Bu�l�2  �          ?��ÿ(��?}p�>#�
@�{B��׿(��?k��Ǯ��  B�aH                                    Bu�l��  �          ?��
��ff?=p��G����\C���ff>W
=��ff�2
=C(��                                    Bu�l�~  �          ?Ǯ��ff>�33����/�RC!�ῆff��=q��=q�4{CB�f                                    Bu�l�$  �          ?ٙ��xQ�?��\�h�����C�\�xQ�>\����M��C�{                                    Bu�l��  �          ?�(��E�?�p��h��� \)B���E�?\)��
=�aQ�C0�                                    Bu�l�p  �          ?��Ϳ#�
?\�W
=�ׅB�z�#�
?W
=��G��]  B�ff                                    Bu�l�  �          ?��fff?�p����
�ffB�{�fff>��H���
�`�C8R                                    Bu�l��  �          ?�녿s33?�Q쿌����C s3�s33>�
=�Ǯ�aC�H                                    Bu�mb  �          @��p�?fff�@  ��G�C���p�>�Q쿎{� �C()                                    Bu�m  �          @   ��ff?J=q�s33���
Cٚ��ff>.{��(��z�C-Ǯ                                    Bu�m%�  �          ?��H����?@  �Tz���C�����>B�\�����	��C-!H                                    Bu�m4T  �          @   ��{?u�5��33C���{>�G���{��RC$�=                                    Bu�mB�  �          ?��H���H?���Q���\)C�쿺�H>�G���  �\)C#:�                                    Bu�mQ�  �          @�\�˅?^�R�k��ָRC=q�˅>�  ���R���C+�                                    Bu�m`F  �          @
=q��(�?�{�(�����CG���(�?zΐ33�(�C!G�                                    Bu�mn�  �          @(���\?�\)�����  C�=��\?�R������\)C ��                                    Bu�m}�  �          @�R��33?��Ϳ�G��׮CY���33>Ǯ��
=�!33C&��                                    Bu�m�8  �          @Q��  ?J=q��  ���C:��      ��p��2\)C3�                                    Bu�m��  �          @녿�?:�H��\)��
C��������ff�*�
C8                                      Bu�m��  �          @������?.{��33���C�f���þ.{���� p�C9h�                                    Bu�m�*  �          @=q��ff?�\��G���C$#׿�ff��p���ff� ��C?�                                     Bu�m��  �          @�H����>�Q��ff���C(Ǯ���ÿ���  �{CD�                                   Bu�m�v  �          @p����
?
=q��\)�$��C#:���
��녿�z��){CA�                                    Bu�m�  �          @$z��{?(����!�C!�
��{��p���p��)�RC?J=                                    Bu�m��  �          @*=q��?
=��p��"\)C"�ÿ���
=��\�(  C@O\                                    Bu�nh  �          @)����
=?�����H�!  C"޸��
=��녿�G��'=qC?�                                    Bu�n  �          @)����>�G���G��&��C'
���\)��(��"�RCDW
                                    Bu�n�  �          @,(���p�?   ���H� �C%���p����H���H� 33CA�q                                    Bu�n-Z  �          @.{���H?�zῡG���z�CE���H?������'p�C%
                                    Bu�n<   �          @333��?�33�������\Ch���>���{�&C&�{                                    Bu�nJ�  �          @8�����?��ÿ��� ��C����=�Q��\)�!�
C1Ǯ                                    Bu�nYL  �          @:�H�	��?�p����
���RC!H�	��>k������({C-�\                                    Bu�ng�  �          @<(���R?���G����HCQ���R>B�\��33�!�C/(�                                    Bu�nv�  ^          @<(���R?��H��(���
=Cu���R>u���� ��C-�\                                    Bu�n�>            @=p��
=?Y���Ǯ��33C L��
=����\�\)C6��                                    Bu�n��  �          @C33�z�?��ÿ��H�噚Cs3�z�>�{��Q��33C+                                    Bu�n��  �          @E��?����ڸRC� �>�ff�����ffC)#�                                    Bu�n�0  �          @A���\?�����ٙ�C33��\>���
=��C(�                                    Bu�n��  �          @C33�?�Q쿪=q����Cz��?�\�����C'�                                    Bu�n�|  �          @A��z�?�녿������C�z�>�ff��33��C))                                    Bu�n�"  �          @>�R�33?�  ��z���Q�C�H�33>�����{�ffC,}q                                    Bu�n��  �          @>{�
=?�\)����  C���
=>B�\�����C/Y�                                   Bu�n�n  �          @A��
=?��Ϳ�ff���
C���
==�G�����{C1T{                                    Bu�o	  �          @@���
=?�\)��G��C�)�
=>����\)�\)C0h�                                    Bu�o�  �          @@  �z�?��׿\��  C��z�>������Q�C0T{                                    Bu�o&`  �          @:=q�(�?�녿\���C���(�>������"��C0                                      Bu�o5  �          @8Q�� ��?�  �У��
�C(�� ��>B�\��\�5��C.��                                    Bu�oC�  �          @1녿�33?�p���\)�\)C���33>8Q��G��:C.�
                                    Bu�oRR  �          @.{��\?�녿������C�q��\>k����
�#�C-�\                                   Bu�o`�  �          @+���
=?�  ��{��z�C  ��
=>�{���+Q�C*�                                    Bu�oo�  �          @1G���?�{��G���
CaH��>���\)�*ffC05�                                    Bu�o~D  �          @333��\?�33���
�ffC�3��\>#�
��33�+�C/�                                     Bu�o��  �          @5���?�����R����C����>�����Q��.(�C+�H                                    Bu�o��  �          @.{�33?�=q��z���ffCc��33>#�
��\�"Q�C/z�                                    Bu�o�6  �          @=q���?�G���G����C�����>B�\�����&\)C.{                                    Bu�o��  �          @�R�޸R?�G����R��=qC33�޸R>�녿�(��/p�C&޸                                    Bu�oǂ  �          @!G����?�Q쿡G���G�C
�����?\)��=q�:��C!�                                    Bu�o�(  �          @ �׿�  ?У׿���
=C����  ?B�\��{�?�\C�                                    Bu�o��  �          @#�
��=q?�33�����\)C��=q?L�Ϳ��8G�C:�                                    Bu�o�t  �          @%���{?��Ϳ����߅C.��{?8Q��{�:�C�3                                    Bu�p  �          @'���Q�?�33����͙�C���Q�?J=q��=q�1��Cٚ                                    Bu�p�  �          @'
=��?�(����
��  C&f��?h�ÿ��
�,��CT{                                    Bu�pf  �          @*�H�У�?�(����H��ffCuÿУ�?Q녿�Q��:�CY�                                    Bu�p.  �          @0�׿�Q�?�����z�CB���Q�?+����D  Cff                                    Bu�p<�  �          @1G����
?�33������=qC	B����
?.{� ���:(�C                                      Bu�pKX  �          @5�����?�{��ff���RC녿���?��\��\)�&G�C.                                    Bu�pY�  �          @.{��?��u����C
��?�\)�����(�
C(�                                   Bu�ph�  �          @1녿�\)@   ������  C 녿�\)?��׿��H�3Q�C�                                   Bu�pwJ  �          @0  ����?�Q쿌����  Cp�����?��ÿ��H�5�C0�                                    Bu�p��  �          @2�\��\?�����(�C\)��\?k���Q��1\)C��                                    Bu�p��  �          @333��  ?�����R����CY���  ?\(��   �6�RC�R                                    Bu�p�<  �          @5���{?�z�h������CQ��{?�녿��
��HC��                                    Bu�p��  �          @333�Q�?�(���G��=qC��Q�?�33��G�����C�H                                   Bu�p��  �          @)����?��.{�{�CǮ��?fff�B�\��33Cz�                                    Bu�p�.  �          @.�R���?�(��(��q��C33���?5��z���\CJ=                                    Bu�p��  �          @-p��У�?�  ���H���C�H�У�>���
=�P��C.��                                    Bu�p�z  �          @)�����?��\���H�#{C�����>.{���W�C-��                                    Bu�p�   �          @!녿�33?˅��{���C\)��33?!G����R�Q�C�f                                    Bu�q	�  T          @#33����?�33������HB��q����?������>C��                                    Bu�ql  �          @!녿�?�\)�h����p�B�k���?�{��G��1=qC                                      Bu�q'  �          @p���?�G����\��33C(���>��Ϳ޸R�4��C&�\                                    Bu�q5�  �          @#33�޸R?�  ������
Ck��޸R>�p���\�3ffC(�                                   Bu�qD^  �          @1녿�\?�z�u��{C�q��\?�\)�����$Q�C��                                   Bu�qS  �          @/\)���?��Ϳk����C!H���?�=q��  ���C�=                                    Bu�qa�  �          @/\)��(�?��H��  ���
C{��(�?L�Ϳ�(��8
=C�                                    Bu�qpP  �          @/\)���H?�  ��(���Q�Ck����H?W
=���H�6�C�                                    Bu�q~�  �          @,(���(�?�Q쿗
=���HC�
��(�?O\)����3=qC�3                                    Bu�q��  �          @*�H�޸R?�p��������C+��޸R?n{����(�C�                                    Bu�q�B  �          @*=q��p�?�ff�h������C�)��p�?�ff��(��!�C��                                    Bu�q��  �          @,(���\?��k���(�C\)��\?�ff��p�� ffC.                                    Bu�q��  �          @,(�����?�p��k����C�
����?}p���Q���RC�=                                    Bu�q�4  �          @*�H��?�z�z�H��{C	޸��?fff�ٙ��
=C�{                                    Bu�q��  �          @,(���?����
��\)C	���?aG���  �"Q�CT{                                    Bu�q�  �          @,�Ϳ�=q?�Q쿂�\���C	0���=q?h�ÿ�  �"p�C��                                    Bu�q�&  �          @)����ff?�Q�z�H���C�\��ff?k���(��!��C�{                                    Bu�r�  �          @)����?��s33���RC	LͿ�?k���
=��\C�                                    Bu�rr  �          @*=q��(�?��c�
����C�=��(�?�=q���H� =qC�R                                    Bu�r   �          @%���{?ٙ��������CY���{?c�
��ff�1�\C��                                    Bu�r.�  	.          @(Q��=q?�Q쿡G���33C��=q?G����H�@G�C�                                     Bu�r=d  �          @(�ÿ�{?��ÿ�33���C�R��{?��� ���E��C\)                                    Bu�rL
  �          @!녿�G�?˅�^�R��Q�C	����G�?fff�������C�{                                    Bu�rZ�  �          @%��\)?��
�����C�Ϳ�\)?(���Q��AG�Cff                                    Bu�riV  �          @!녿˅?�=q��z���{C.�˅?=p����7�C�                                    Bu�rw�  �          @(���\)?���z�H���C\)��\)?L�Ϳ���)�C�
                                    Bu�r��  �          @
=��(�?�G������
=C!H��(�?=p���Q��7G�CE                                    Bu�r�H  �          @���?��ÿ���ӮC�����?J=q�ٙ��;z�C5�                                    Bu�r��  �          @ff��33?��
�����޸RC�f��33?:�H��p��>{C�                                    Bu�r��  �          @�\���?���u��C쿱�?Q녿�\)�4\)C�\                                    Bu�r�:  �          @�\����?�G��n{���RC�
����?O\)��=q�.{C��                                    Bu�r��  �          @  ��
=?��H�p������C� ��
=?B�\�Ǯ�/�\C#�                                    Bu�rކ  �          @{��?�����(���HC�3��>Ǯ��z��B(�C$}q                                    Bu�r�,  �          @�\����?aG���{��RC@ ����=#�
��{�533C2u�                                    Bu�r��  �          @�H��Q�?�{������C�\��Q�?Q녿޸R�9��C33                                    Bu�s
x  �          @�����?�33�}p���  C�\����?fff�ٙ��8=qC�                                    Bu�s  �          @�\���H?�p��s33����C�)���H?G���=q�.Q�C�                                    Bu�s'�  �          @���p�?Ǯ�^�R��  C�
��p�?aG���ff�'�
CJ=                                    Bu�s6j  �          @��=q?˅�!G��{�C���=q?��
��{���C�                                     Bu�sE  �          @�\��33?��
�����=qC (���33?��׿����p�C=q                                    Bu�sS�  �          @ �׿�{?�
=�G�����C
�3��{?�����
�#p�C                                    Bu�sb\  �          ?�ff��
=?+����"��C����
=������B�\C5��                                    Bu�sq  �          @zῚ�H?�Ϳ�=q�GCxR���H��{�У��Q�CC�3                                    Bu�s�  �          @G����?�����Q�CT{���>����  �M�\C-�=                                    Bu�s�N  �          @=q�Ǯ?��H������\)C�q�Ǯ?.{��Q��333Cu�                                    Bu�s��  �          @%����
?��H��z�����C����
?\(�����;��Cp�                                    Bu�s��  �          @"�\��?�G������{C{��?h�ÿ���@�CO\                                    Bu�s�@  �          @�
��G�?�Q�u��33B�33��G�?s33��Q��;��C�q                                    Bu�s��  �          @Q쿫�?Ǯ��������C�f���?5��=q�I��C�H                                    Bu�s׌  �          @����
?��Ϳ�\)����C\)���
?z��z��G{C�\                                    Bu�s�2  �          @	������?�z�k���{C  ����?:�H��G��4��C�\                                    Bu�s��  �          ?��
�u?��\��G��(�CB��u>�33����V��C��                                    Bu�t~  �          ?�Q�c�
>������V  C�=�c�
��������`{CF�
                                    Bu�t$  �          ?\�B�\>�ff��p��X�C
�B�\�u���
�hCE�                                     Bu�t �  �          ?��ÿ\(�?����H�I�C�\(��8Q쿦ff�`��C?��                                    Bu�t/p  �          ?��H�}p�?�\��ff�E�C�)�}p��k���\)�V=qCA=q                                    Bu�t>  �          ?�{��  ?(������,G�C����  �#�
��  �M�C65�                                    Bu�tL�  �          ?У׿�G�?fff�h���ffC
s3��G�>������R�F{C#=q                                    Bu�t[b  �          ?�Q쿂�\?���^�R���\Cp����\>�ff���\�C�
CO\                                    Bu�tj  �          ?�p��c�
?p�׿�\)�#��C�
�c�
>k���Q��e�HC%�\                                    Bu�tx�  �          ?�׿5?����p��2(�B��f�5>���˅8RC �                                    Bu�t�T  �          @ �׿�z�?���33�33C� ��z�>�
=��=q�P=qC �                                    Bu�t��  �          ?��H��\)?�ff��p��\)Cٚ��\)>�\)�˅�X�C&&f                                    Bu�t��  �          ?�(����?�p����
��z�C�{���?���G��I�C                                    Bu�t�F  �          ?�Q쿠  ?�Q�^�R��\)CJ=��  ?zῬ���2{C��                                    Bu�t��  �          @   �5?��
����)z�B�
=�5>�
=��ff��Ck�                                    Bu�tВ  �          @ �׿fff?��ÿ��H�ffB�Ǯ�fff?����H�j��C#�                                    Bu�t�8  �          @33���?}p���z��1��CE���>\)���H�j��C,�                                    Bu�t��  �          @	����p�?.{��{�C�RC#׿�p��u��p��Xz�C>�                                    Bu�t��  �          @��  ?�R��Q��8��Cz��  ���
��\�DffC@8R                                    Bu�u*  �          @����H?\(���p��6Q�Ch����H�\)���S
=C9^�                                    Bu�u�  �          @Q쿱�?�  ��33�/��Cff���<��
��
=�XC3=q                                    Bu�u(v  �          @��33?z�H�����,�CͿ�33<���\)�UG�C2޸                                    Bu�u7  �          @Q쿺�H?s33��\)�+=qC.���H�#�
��\)�OC45�                                    Bu�uE�  �          @Q쿱�?8Q����CQ�C����녾�z��z��UffC?��                                    Bu�uTh  �          @ �׿�33?E���Q��J=qC�3��33���R�z��]33C@�R                                    Bu�uc  �          @.{��Q�?G��   �<\)CLͿ�Q쾮{�
=�Kp�C?xR                                    Bu�uq�  �          @>{����?�
=�Q��9Q�C� ����>���#�
�qG�C.
=                                    Bu�u�Z  �          @8Q쿮{?���   �0�Cs3��{>��
�   �sffC&�)                                    Bu�u�   �          @9�����?�  ��8Q�C޸���>u�#33�w�
C)��                                    Bu�u��  �          @:=q���
?���
=�9�C�쿣�
>���%�}  C(k�                                    Bu�u�L  �          @2�\��z�?���
=q�JC�q��z�=u�"�\��C0��                                    Bu�u��  �          @7���z�?��
�Q��A
=C	����z�<���R�r
=C2��                                    Bu�uɘ  �          @AG��G�?޸R�z��JQ�B�LͿG�>����8Q�(�C�=                                    Bu�u�>  �          @>{����?��G��G=qB������?�\�;���B�                                    Bu�u��  �          @0��>�z�?�G��
=�F�HB�G�>�z�>��,��.Bg��                                    Bu�u��  �          @,��>�(�?�{�Q��P  B�W
>�(�>��
�(��B�B��                                    Bu�v0  �          @,(�>aG�?У����Pz�B�G�>aG�>�33�)��¢8RBdQ�                                    Bu�v�  �          @&ff���
?�\)��\�M�B�k����
>\�$z�£(�B�                                    Bu�v!|  �          @G����?   ��Q���\C!�ÿ���#�
���
��C:�                                    Bu�v0"  �          ?�33��33?���z����C
��33�����\�(��C8��                                    Bu�v>�  �          ?�p����?=p�������RCͿ��=#�
��z��5C2��                                    Bu�vMn  �          ?�33��\)?\(���  �%��Cz῏\)=���G��T��C-Ǯ                                    Bu�v\  �          ?��H���H>������
=C"�쿺�H�L�Ϳ��\�"�\C;��                                    Bu�vj�  �          ?�Q쿺�H?
=q��33�z�C����H��G����\�#
=C8&f                                    Bu�vy`  �          @
=����?5���H�Q�C������<#�
��33�'�C3��                                    Bu�v�  �          @����?�������
��CT{���>����Ǯ�>Q�C'�)                                    Bu�v��  �          @ �׿�33?���u��C���33>�G���{�+�C"u�                                    Bu�v�R  �          ?�׿�Q�?u�8Q���p�C�=��Q�>�׿����{C!��                                    Bu�v��  �          ?�{����?��\�0����{C������?
=q�����\)CxR                                    Bu�v  �          ?�ff��=q?�G��#�
��C�=��=q?\)������C8R                                    Bu�v�D  �          ?����  ?��Ϳ(����(�C
�=��  ?!G���{�z�C+�                                    Bu�v��  �          ?�\����?�{�E��Џ\C������?z῜(��/�RCٚ                                    Bu�v�  �          ?��z�H?�z�xQ���CO\�z�H?���z��Oz�C�                                    Bu�v�6  �          ?��
�}p�?�\)�xQ����C���}p�>��H����N{C��                                    Bu�w�  �          ?�\)��33?Y����\)��C����33>8Q쿱��HQ�C+
                                    Bu�w�  �          ?��Ϳ�
=>�G���{�<��CB���
=��\)��33�D��CA��                                    Bu�w)(  �          ?���33>�����8z�C�ΐ33�k������D(�C?n                                    Bu�w7�  �          ?��Ϳ���?B�\��p��'�\C0�����=u��Q��N�C1#�                                    Bu�wFt  �          ?�{���?k���p��&�RC
����>B�\�\�]Q�C)��                                    Bu�wU  �          ?����?�����
�  C�Ϳ��>��Ϳ�z��L�
Ck�                                    Bu�wc�  �          ?�p����\?�  �z�H�
{Cn���\>Ǯ�����L=qC\                                    Bu�wrf  �          ?�Q�s33?fff������C�ÿs33>����{�X33C$�f                                    Bu�w�  �          ?�녿fff?L�Ϳ�{�*�C
5ÿfff>����{�`�RC*8R                                    Bu�w��  �          ?��\(�?Tz῔z��0p�Cٚ�\(�>#�
��z��i��C)��                                    Bu�w�X  �          ?��H�fff?�G���ff�  C�Ϳfff>�p���z��]�
C��                                    Bu�w��  �          ?�=q�#�
?u���K�HB��ÿ#�
>\)���HL�C'k�                                    Bu�w��  �          ?��G�?\(������G�RC�\�G�=�\)��\)(�C.�)                                    Bu�w�J  �          ?�녿\(�?c�
���Dp�Cٚ�\(�=��
��
=�{��C.��                                   Bu�w��  �          ?�\)�G�?��\����9(�B�uÿG�>u��.C#{                                   Bu�w�  �          ?�=q��G�?W
=��G��/�
CG���G�=�G���G��`�\C-��                                    Bu�w�<  �          ?�  ��Q�>����z��-p�C'�ῘQ쾮{����)��CC�3                                    Bu�x�  �          ?�
=�E�?u��Q��E�C ��E�>\)��(�{C)��                                    Bu�x�  �          @ �׿��R?333��33�1��C�Ϳ��R��\)�Ǯ�M�HC7
                                    Bu�x".  �          @ �׿��R?@  �������CG����R=���=q�&G�C/\)                                    Bu�x0�  �          @녿���?}p���33�	�CǮ����>��R��p��<  C'5�                                    Bu�x?z  �          @	��=�\)?�녿�=q�B�B�=q=�\)>�ff�33�HB�aH                                    Bu�xN   �          @�\>8Q�?�=q�\�BG�B�  >8Q�>�(���(��B�p�                                    Bu�x\�  �          ?�(�>��
?�Q���
�M(�B�8R>��
>�����z�� B-
=                                    Bu�xkl  �          @   =�G�?�  ��(��nB�=�G�=#�
���R­u�A���                                   Bu�xz  �          @�\��?�G���G��pQ�B�.��<���¬�qC&��                                   Bu�x��  �          @ff����?��׿�\�e�B�(�����>��ª�)B��{                                    Bu�x�^  �          @=���?�
=��p��^�B�Q�=���>L����§��B~��                                    Bu�x�  �          @ �׽���?�\)���`�B��q����>.{�   ¨�RB�                                    Bu�x��  �          ?�(����
?�\)��{�\ffB�����
>W
=����¦�HB��\                                   Bu�x�P  �          @G�>�\)?z�H��p��nG�B��>�\)<����R£�@�                                      Bu�x��  �          ?�p�=u?k���  �x��B��==u����(�°{C��H                                    Bu�x��  �          ?��<��
?Tz��Q����B��<��
���
��\)®ǮC�\                                    Bu�x�B  �          ?�׾u?8Q���Hz�B�aH�u�B�\��¡Q�C[+�                                    Bu�x��  �          ?��
�
=?Y����
=�X\)B�{�
==u��z��C-��                                    Bu�y�  �          ?��ÿ^�R?Q녿�{�C{C���^�R=�\)�˅�uG�C/\)                                    Bu�y4  �          @��+�?J=q��ff�o��C��+��#�
���HG�CA��                                   Bu�y)�  �          @�Ϳz�?�����c�B�.�z�=L����z�C.�{                                    Bu�y8�  �          @33�.{?�
=���U�B��f�.{>#�
��\)C&�                                     Bu�yG&  �          @��B�\?�z��\)�U=qB��ͿB�\>��(�  C*+�                                    Bu�yU�  �          @33�O\)?��׿����R��B�� �O\)=����C+B�                                    Bu�ydr  �          @�׿0��?��Ϳ����[B�33�0��=�Q��	��#�C,�)                                    Bu�ys  �          @�ÿTz�?�
=��z��Sp�B�=q�Tz�>\)�\)��C*�                                     Bu�y��  �          @�
�aG�?�
=��\�I=qB�W
�aG�>L���
=�C'8R                                    Bu�y�d  �          @33��Q�?����z��9�C
�ῘQ�>������jz�C-�R                                    Bu�y�
  �          ?��ÿ�?#�
���H�)=qC8R���#�
��\)�FffC4ff                                    Bu�y��  �          ?�Q쾮{?������GffB�G���{>�33��=q#�C
                                    Bu�y�V  �          ?��>�?����H�L{B��)>�>�33��Q�B�k�                                    Bu�y��  �          ?�=���?��
��G��^Q�B��f=���>L�Ϳ���¦#�B|\)                                    Bu�y٢  �          ?��ͽ�Q�?^�R�У��wp�B�8R��Q�    ��®�RC5�                                    Bu�y�H  �          ?��H��?L�Ϳ�\\B�uý�����
=©��Cd\                                    Bu�y��  �          ?�p��Ǯ?n{�ٙ��mz�B���Ǯ<��
��Q�z�C0��                                    Bu�z�  �          ?�����?J=q�У��y{B�R���ýu��33C?33                                    Bu�z:  �          ?���aG�?\(����
�8�C���aG�>#�
���
�o  C)�                                    Bu�z"�  �          ?�\�=p�?:�H����Tp�Cc׿=p�    ����ffC48R                                    Bu�z1�  �          ?�=q�@  ?J=q���H�U��C� �@  <#�
��z���C3�                                    Bu�z@,  �          ?�z�z�H?^�R����;
=C
��z�H=��У��kp�C-=q                                    Bu�zN�  �          ?��H��{?G����9�\CǮ��{<���\)�^C2��                                    Bu�z]x  �          ?�(���(�?:�H��{�.z�C)��(�<��
����N\)C3J=                                    Bu�zl  �          ?�p����
?G�����"�\CaH���
=��Ϳ�  �FffC/��                                    Bu�zz�  �          @�\���R?\(������)�\Ch����R=���{�QffC.��                                    Bu�z�j  �          @(���Q�?z�H��ff�4=qC����Q�>�������b��C,                                    Bu�z�  �          ?����8Q�?5��z��jQ�Cff�8Q�\)��ff�{C>�
                                    Bu�z��  �          @녿Y��?fff��{�QC��Y��=L�Ϳ�B�C0��                                    Bu�z�\  �          ?��H�E�?k�����PQ�C��E�=��Ϳ���C,Q�                                    Bu�z�  �          ?�=q�L��?333��p��Y=qC
�q�L�ͽu����(�C8��                                    Bu�zҨ  �          ?��ͿB�\?z�Ǯ�j{CxR�B�\�L�Ϳ�338RCC�                                    Bu�z�N  �          ?�
=�+�?0�׿��pQ�C�+������ff\)CA{                                    Bu�z��  �          ?�p���?Tz��(��q\)B�#׿��L�Ϳ�z�\)C9��                                    Bu�z��  �          @
=�L��?�Ϳ�{�yz�C}q�L�;�Q��33\)CLs3                                    Bu�{@  �          @Q�5?(����B�C	)�5��
=��R�qCR��                                    Bu�{�  �          @%�0��?����R�q��B��q�0�׽��
�{ǮC:�f                                    Bu�{*�  �          @)���Q�?W
=���~��CO\�Q녾�{��R�HCJ�f                                    Bu�{92  �          @(�ÿ��?�Q��z��T
=B�aH���>����\)8RC                                   Bu�{G�  �          @(Q�8Q�?���Q��Y�HB� �8Q�>aG�� ���{C#�                                   Bu�{V~  �          @(�ÿJ=q?���	���[�B�׿J=q>.{�   k�C'�                                    Bu�{e$  �          @+���  ?��
����f�\C���  ��G���R
=C:n                                    Bu�{s�  �          @.�R�n{?\(��=q�y{C	=q�n{�����"�\� CG�=                                    Bu�{�p  �          @333�p��?fff�\)�yp�C@ �p�׾����'�p�CG.                                    Bu�{�  �          @1녿�z�?p����f{C�῔z�k��!G��C?                                    Bu�{��  �          @0  ��Q�?G��
=�k��C���Q�\����|
=CE��                                    Bu�{�b  �          @0  ����?+����o\)C�쿙������=q�wz�CI}q                                    Bu�{�  �          @%���  >\��
Cp���  �8Q��  �u=qCW�                                    Bu�{ˮ  �          @#33����>L���33G�C)�����ÿ\(�����e  CZ�
                                   Bu�{�T  �          @1G����H?#�
�=q�qffC����H��\�(��v��CJ�3                                   Bu�{��  �          @,(���?:�H�33�lQ�CQ쿕�Ǯ�Q��z=qCF\)                                    Bu�{��  �          @*�H��ff?+��
=�x�
CT{��ff�����33CK�                                     Bu�|F  �          @*�H�p��?����H�\C�f�p�׿�����G�CTh�                                    Bu�|�  �          @/\)���?k���
�f�C@ ��녾aG���RC>��                                    Bu�|#�  �          @0  ��Q�?p����\�b(�C�
��Q�B�\�{��
C=                                    Bu�|28  �          @'
=���?&ff���t�CE�����G����}�CJ+�                                    Bu�|@�  �          @(�����?(����l  C5ÿ��þ�{�
=q�z�\CE��                                    Bu�|O�  �          @zῊ=q>����R�mp�C
=��=q���   �n\)CK�                                    Bu�|^*  �          @#33���H?   �(��l{C�{���H�����j�CK��                                    Bu�|l�  �          @5��\)?@  �Q��b��C5ÿ�\)�\�p��p33CC��                                   Bu�|{v  �          @(Q쿦ff?E��	���[�CB���ff�������n�C?s3                                   Bu�|�  �          @z�+�������=C>��+������{�_��CmǮ                                    Bu�|��  �          @녾\)�B�\�33�3C�Ǯ�\)�˅��  �-{C�z�                                    Bu�|�h  �          @��#�
�����  �B�C�AH�#�
�	���c�
��  C�w
                                    Bu�|�  �          @�R��z��G���33�Lp�C�����z��(�������
C�9�                                    Bu�|Ĵ  �          @(�ÿ녿8Q��p��Cg�H�녿�p�����833C{�f                                    Bu�|�Z  �          @(Q�\)�+��(��
Cf&f�\)������<p�C{�)                                    Bu�|�   �          @/\)�(��Ǯ�(Q�W
CT�\�(���  �(��UCx
                                    Bu�|�  �          @%����?#�
�(�#�B랸���ÿ   �{��Cl
                                    Bu�|�L  �          @�����?@  �
�HQ�C ٚ�����\)�G��CL�R                                    Bu�}�  �          @/\)�@  �^�R��u�CeB��@  ����  �&�HCw��                                    Bu�}�  �          @=p��c�
���(��^{Cm녿c�
������ z�Cy5�                                    Bu�}+>  �          @>�R�s33�aG��2�\p�C@� �s33��z��=q�[Q�Cl�                                    Bu�}9�  �          @@  �xQ�>�33�3�
�3C (��xQ�h���+��~z�C_(�                                    Bu�}H�  �          @G
=����>L���*�H�mz�C,�R���ÿz�H�\)�U��CT�                                    Bu�}W0  �          @E��\?h���\)�Z33C:�\����(Q��nz�C=�H                                    Bu�}e�  �          @C�
���?����  �@G�Ch����>W
=�&ff�lC,B�                                    Bu�}t|  �          @A녿�  ?���{�=��C	.��  >�z��'
=�n�\C)�                                    Bu�}�"  �          @@  ��  ?z�H�!G��g\)C�=��  �W
=�,����C=k�                                    Bu�}��  �          @>{����?˅���@��B��ῐ��>��H�)��.C�f                                    Bu�}�n  �          @8Q�=p�?�녿���+Q�Bހ �=p�?c�
� ��� Ck�                                    Bu�}�  �          @2�\��  ?�{�z��?�HC� ��  =�G��ff�e\)C/��                                    Bu�}��  �          @*�H����?��R��Q��:�RC	T{����>�z����k�
C(�                                    Bu�}�`  �          @!G���Q�?��Ϳ�G��1p�Cff��Q�>��
�H�n
=C�R                                    Bu�}�  �          @
=��G�?k���\�B�C�)��G�=��
�   �g(�C0�                                     Bu�}�  �          @
=q��\)?��Ϳ�  �.��C���\)>�33��=q�e{C"�\                                    Bu�}�R  �          @Q쿌��?8Q���O(�C�����ͽu���kQ�C7.                                    Bu�~�  �          @���33>�녿�ff�^�
C ���33���Ϳ�ff�_{CG�                                    Bu�~�  �          @�Ϳ�(�>Ǯ���i\)C"}q��(��
=q��\�cp�CK�R                                    Bu�~$D  �          @\)��\)>#�
�z��a\)C-)��\)�:�H��Q��M��CP�                                    Bu�~2�  �          @!G����R���G��V�C8n���R�u���
�4p�CT��                                    Bu�~A�  �          @&ff���
����33�QQ�CB�{���
���R��
=�"Q�CZ�                                    Bu�~P6  �          @�ÿ��׽���Q��Y�HC8�R���׿n{���H�6�HCU�q                                    Bu�~^�  �          @\)���W
=�У��B\)CW�H����Q쿏\)���HCg�                                   Bu�~m�  �          @p���G���
=��p��.CeQ쿁G���Q�Y�����Co#�                                   Bu�~|(  �          @p��0�׿����\��{Cy���0�������{�C{��                                    Bu�~��  �          @��aG���p��}p���(�Cs
=�aG����R�.{��
=Cv�                                    Bu�~�t  �          @��Tz��\�c�
���
Ct�H�Tz��p��u�ٙ�CwB�                                    Bu�~�  �          @Q����녿�p��\)C|
=���   ��(��<  C(�                                    Bu�~��  �          @33������c�
��  C^  �����Q쾞�R�Cc�                                    Bu�~�f  �          @z�Y����ff���H�]Ct���Y����>��RA	p�Cu&f                                    Bu�~�  �          ?��W
=�����xQ��=qCk+��W
=��  �\�HQ�Cp��                                    Bu�~�  �          @33�Tzΐ33��p��8�
Cj\�Tz��z�\(����CsaH                                    Bu�~�X  �          ?�Q�aG��G����
�Rz�C]���aG����������
Cl��                                    Bu�~��  �          @{���
��G���=q��\C��;��
�	�����F=qC��
                                    Bu��  �          @�u���u��\)C�%�u�z��G��:=qC�=q                                    Bu�J  �          @����G��  ?E�A�ffC��R��G���p�?У�B,�C�,�                                    Bu�+�  �          @%�����p�?@  A���C�O\�����
=?�Q�B$�C�ٚ                                    Bu�:�  �          @!G��8Q��(�?�AQC��׾8Q���R?��
B�C�h�                                    Bu�I<  �          @p�=�\)�Q�?
=A_33C��R=�\)��?\B�C��                                    Bu�W�  �          @p�?5�33>�A2�HC��R?5��33?���B�C�C�                                    Bu�f�  �          @
=?���\)>��A�HC���?����\)?��B��C���                                    Bu�u.  �          @�>���
�H?   AIp�C�  >�׿�\?��B��C�n                                    Bu���  �          @�
>�33�
�H?333A�ffC��{>�33�ٙ�?\B%\)C���                                    Bu��z  �          @
�H>B�\��
?�Atz�C���>B�\��33?�{B33C�33                                    Bu��   �          @�R?��33?.{A��C�T{?��˅?���B#\)C�J=                                    Bu���  �          @
=?8Q���?��Aqp�C�\)?8Q��  ?��\B(�C��
                                    Bu��l  �          ?���>u��(��L�Ϳ�33C��)>u�˅?&ffA��HC�L�                                    Bu��  �          ?�{=����H�\)��Q�C�  =����>8Q�@��
C��=                                    Bu�۸  �          ?�33���Ϳٙ��.{��(�C�ff���Ϳ�=q=�\)@�C���                                    Bu��^  �          ?�녾�p���p��s33���C�R��p��޸R�����\C�{                                    Bu��  �          ?��>�p���ff���R�33C��3>�p���\>�ffA^ffC��                                    Bu��  �          ?�>�׿�Q�\)��  C�˅>�׿�\>.{@�\)C�q�                                    Bu�P  �          ?�(�?�\���þ�(��j=qC�f?�\��{>uA   C��\                                    Bu�$�  �          ?�\?(����
�!G����C��f?(���33=#�
?�
=C�%                                    Bu�3�  �          ?�ff?5��33�aG���C�|)?5�У׾u���C��f                                    Bu�BB  �          ?�Q�>�(���  ��ff�Q�C�}q>�(��Ǯ���{�C��\                                    Bu�P�  �          ?���>�����
�k���RC���>����������?�C��3                                    Bu�_�  �          ?�{>��ÿ������\���C���>��ÿ�G���ff���\C�.                                    Bu�n4  �          ?�{>#�
��  ��  �=qC���>#�
�����
=�s33C��                                     Bu�|�  �          ?У�>B�\���ÿp����C�)>B�\��=q�����>{C�n                                    Bu個�  �          ?�    ��zῗ
=�6p�C��     ���
��R����C��                                    Bu倚&  �          ?�{�#�
�������8\)C��׼#�
���H�8Q����
C��=                                    Bu倨�  �          ?��H��zῡG���Q��@ffC�� ��z��p��Q��ɅC�P�                                    Bu倷r  �          ?��þǮ��ff��
=�OQ�Cy���Ǯ���
�c�
��ffC�                                    Bu��  �          ?�33��
=�����ff�-��C|k���
=��(��.{���C�4{                                    Bu�Ծ  �          ?��
��p���
=��  �5\)C|�\��p���=q�.{��G�C�|)                                    Bu��d  �          ?�׾�(����ÿ�p��'(�C|
��(���Q��R���C�                                    Bu��
  �          ?��������ÿ��R�*
=C��3�����ٙ���R����C�{                                    Bu� �  �          ?���׿��\���H�'33Cy���׿�녿(����\C~!H                                    Bu�V  �          ?�z�B�\��
=�����,��Cm8R�B�\���Ϳ@  ��(�Ct��                                    Bu��  �          ?��H�aG��}p������>��CdaH�aG���(��s33��(�CoJ=                                    Bu�,�  �          @���������ff�=��CZٚ�����33��  ����Ch#�                                    Bu�;H  �          @%���Q�s33��z��?�\CU.��Q��{�����HCd(�                                    Bu�I�  �          @�R���������;��CY������zῢ�\��Cg�                                    Bu�X�  �          @���������33�(�Ch�׿����H�333��  CoT{                                    Bu�g:  �          @��s33��(�����D��Ch=q�s33���ÿ����Cr�                                     Bu�u�  �          @��u������M  Cd�H�u�ٙ���  �(�Cp�)                                    Bu偄�  �          @���zῈ�ÿ��H�=\)C^���z��녿�z���RCjٚ                                    Bu偓,  �          @�׿��
��z����:G�CdE���
�ٙ������Cn�R                                    Bu偡�  �          @녾��L�Ϳ�����CJ�����fff�У��hQ�Cq�\                                    Bu偰x  �          @�Ϳ\(��xQ���
�WCdJ=�\(����ÿ��\�=qCqQ�                                    Bu偿  �          @�O\)�����\)�Kp�Cg�3�O\)���ÿ�����  CrǮ                                    Bu���  �          @�O\)�L�Ϳ�  �cz�C`��O\)��zῧ��=qCp+�                                    Bu��j  �          ?�\)�W
=�.{��G��Y��CZǮ�W
=��������ffCk�                                    Bu��  �          ?�=q�:�H��G���{�y(�CR�ÿ:�H���\�����:�RCjxR                                    Bu���  �          ?�=q�@  ���
��z�\)C5&f�@  �#�
���
�dp�C\��                                    Bu�\  �          ?�Q����\��Q��|��C`(�����G�����3�HCr��                                    Bu�  �          ?�=q��(��L�Ϳ�G��Y=qCq޸��(����H�\(��\)Cz��                                    Bu�%�  �          ?޸R�.{��33��33�?33C�;.{��z�>���A"ffC��                                    Bu�4N  �          ?����p���
=����tz�C��=��p���p�>L��@�z�C���                                    Bu�B�  �          ?�=q���H��{�0����\)C}=q���H��  ���c�
C~�                                     Bu�Q�  �          ?���!G���p��G�����Cv�!G���z�.{���HCyE                                    Bu�`@  �          ?�  �aG�����8Q���z�Ck���aG����H�B�\��ffCn�                                    Bu�n�  �          ?���ff��Q쿘Q��+�HCyJ=��ff��ff�&ff��z�C}Ǯ                                    Bu�}�  �          ?�Q�
=q��G������2\)Cv���
=q���G���C|33                                    Bu傌2  �          @�ÿ!G���p������ffCz0��!G��   ���R�(�C|�)                                    Bu傚�  �          @�����
=��  ���C~����G��
=q�g�C�P�                                    Bu傩~  �          @��k���
=q�g
=C���k����>�=q@�Q�C��                                    Bu傸$  �          @�
���   ���O\)C�Y����G�>��RAz�C�`                                     Bu���  �          @�=��
�33��z���C��=��
� ��>��HAZ�\C��                                    Bu��p  �          @G�    ��{������C�3    ����>�@}p�C�3                                    Bu��  �          @Q쾙�������
�p�C�H�����녿��w�C��)                                    Bu��  �          @��>.{��ff����� 
=C��3>.{��Ǯ�'�C�S3                                    Bu�b  �          @(�>��R��33����㙚C���>��R��þ�=q���
C��                                    Bu�  �          @
=>����=q�xQ���{C���>���33�k���p�C��=                                    Bu��  �          @p�=��   �h����p�C��=��(���G��>�RC��                                     Bu�-T  �          @�R=�Q��녿k����C�E=�Q��{��G��4z�C�(�                                    Bu�;�  �          @�R>W
=� �׿k���p�C��>W
=�p����HQ�C��f                                    Bu�J�  �          @��>L���33�n{���HC���>L���\)���EC�|)                                    Bu�YF  �          @\)=�Q��33�fff���
C�B�=�Q���R�����(�C�'�                                    Bu�g�  �          @  ���
�33�n{�\C��H���
�\)���Dz�C���                                    Bu�v�  �          @�׼��녿z�H��(�C��3���  �8Q���G�C���                                    Bu僅8  �          @�\����
�xQ�����C��ü��G��#�
�z�HC���                                    Bu僓�  �          @�\=u���+����C��==u�G�>.{@�C��H                                    Bu僢�  �          @33>#�
��Ϳ.{��ffC��>#�
��\>#�
@�  C�                                      Bu僱*  �          @z�>�{�
=q�@  ��p�C�y�>�{��\=��
?��C�:�                                    Bu僿�  �          @z�>�33���0�����C���>�33��>\)@W�C�^�                                    Bu��v  �          @
=?@  �{�������C�Ff?@  �
=?333A�G�C���                                   Bu��  �          @�?=p����k���=qC�Z�?=p���?�Ad  C��q                                   Bu���  �          @��>�p����z����
C�� >�p���?�A\(�C���                                    Bu��h  �          @(�>��R�33�=p����HC��R>��R�=q>�@C�
C���                                    Bu�	  �          @�R?(���
�(���w33C�W
?(����>L��@��RC�
                                    Bu��  �          @��<��녿^�R��p�C�aH<��(��#�
�.{C�Z�                                    Bu�&Z  �          @(�    �\)�s33������O�    ����Q��	����O�                                    Bu�5   �          @\)�����
�h������C�#׾����R���5C�E                                    Bu�C�  �          @%�������\��{��p�C������!녾k����C���                                    Bu�RL  �          @%���p����H���C�=q���\)��Q���\)C��q                                    Bu�`�  �          @*=q�   �녿��\��{C��Ϳ   �$z�Ǯ��C��H                                    Bu�o�  �          @+����{��  ��(�C��)���*=q��\)���
C���                                    Bu�~>  �          @,��>�Q��(Q쾸Q����
C��>�Q��%?
=AJ�\C���                                    Bu儌�  �          @/\)>�G��*=q��
=��C��{>�G��(Q�?�A4��C��q                                    Bu儛�  �          @0  >�\)�,�;�{����C��
>�\)�(��?�RAQ�C�                                    Bu優0  �          @.{>��*=q=�\)?��RC��>��{?}p�A�  C�t{                                    Bu儸�  �          @0  >��,(�>aG�@�  C�\>����?��AîC���                                    Bu��|  �          @,(�?��(Q�=�\)?��C�3?��(�?xQ�A�\)C��                                    Bu��"  �          @.�R?(��(��>\)@6ffC��H?(���?��A�(�C��                                    Bu���  �          @/\)?+��)��=u?�G�C�?+��p�?xQ�A�ffC��\                                    Bu��n  �          @0��?0���*=q<#�
>W
=C�E?0���\)?n{A�\)C��)                                    Bu�  �          @0��?:�H�(��>aG�@��C��?:�H�=q?�{A��\C�b�                                    Bu��  �          @0  ?#�
�'
=>�A�C��f?#�
��\?�=qA��C��\                                    Bu�`  �          @333?�{��H��{��(�C���?�{���?�\A)G�C��{                                    Bu�.  �          @0  ?E��'
=>L��@��RC�/\?E��Q�?�=qA��\C���                                    Bu�<�  �          @333?�=q���?�A0��C�s3?�=q�z�?���A��
C�H�                                    Bu�KR  �          @-p�?��H�
=?��A<  C���?��H��?���A�C�]q                                    Bu�Y�  �          @'�?h����H>\AQ�C�S3?h�����?�A�C��                                     Bu�h�  �          @&ff?��
�z�?\)AG
=C��R?��
���R?��A�RC��=                                    Bu�wD  �          @(Q�?�����?��AS�
C�1�?����\)?��A�C�Q�                                    Bu充�  �          @'
=?k��
=?��AT  C��q?k��G�?���A�C�4{                                    Bu兔�  �          @%?8Q���H?
=AR�HC�L�?8Q���?�\)A��C���                                    Bu兣6  �          @(��?
=q�!G�?   A.=qC�q?
=q���?��A�Q�C��3                                    Bu共�  �          @+�?z��"�\?��A>�RC�n?z��p�?�\)A�C�\)                                    Bu���  �          @,��?Y����H?J=qA�=qC�� ?Y���G�?�ffBG�C�]q                                    Bu��(  �          @.�R?L�����?��\A��C�J=?L�Ϳ�?�G�B C�b�                                    Bu���  �          @.{?c�
��?��\A�p�C�y�?c�
����?�p�B z�C��3                                    Bu��t  �          @.{?Y����?�Q�A�z�C�9�?Y����  ?��B/�C��                                    Bu��  �          @.�R>��=q?�
=A�C�xR>����?�z�B2�RC���                                    Bu�	�  �          @0��>�33�(Q�k���33C��=>�33�#�
?(��Aep�C��f                                    Bu�f  �          @5>�
=�0�׽�\)��Q�C�H�>�
=�'�?Y��A�G�C�~�                                    Bu�'  �          @3�
>�ff�.{�8Q��o\)C��>�ff�(Q�?:�HAt��C��                                    Bu�5�  �          @5?\)�#33?z�HA�Q�C�.?\)�?�\B  C��                                     Bu�DX  �          @333?=p��!�?W
=A��RC��?=p��
=?�\)B��C���                                    Bu�R�  �          @.{?���p�?Y��A��\C�B�?����\?���B��C�y�                                    Bu�a�  �          @0  ?h���#33>\)@<��C���?h����?xQ�A�G�C���                                    Bu�pJ  �          @.�R>�ff�'
=?#�
AYC��f>�ff�  ?��HB�C��f                                   Bu�~�  �          @.{>�G��$z�?:�HAx��C��>�G��(�?\B	�C��)                                    Bu再�  �          @)��>���"�\?!G�AZ�HC��R>���(�?�B��C�K�                                    Bu农<  �          @'�?.{�(�?&ffAe�C���?.{�?�33B  C��\                                    Bu冪�  �          @&ff?   �\)?�A<��C���?   ��?��A�z�C�b�                                    Bu冹�  �          @'�?@  �\)>��@��C�e?@  �G�?�ffA�
=C�%                                    Bu��.  �          @(Q�?u��>�(�A��C���?u�ff?�A�G�C�4{                                    Bu���  �          @'�?�G���?L��A��C��R?�G���33?��RB
��C��                                    Bu��z  �          @&ff?�����R?8Q�A��HC�h�?��׿��?�33BQ�C�z�                                    Bu��   �          @(Q�?�z��
�H?h��A���C�
?�z��G�?ǮB�HC���                                    Bu��  �          @%�?��\�33?c�
A�{C���?��\��z�?�  B��C��)                                    Bu�l  �          @%?����G�?aG�A��RC�'�?��׿У�?�p�B  C�R                                    Bu�   �          @'
=?���33?Tz�A���C���?����
=?�Q�B
=C�K�                                    Bu�.�  �          @&ff?��
�z�?fffA���C��?��
��?�G�B�C���                                    Bu�=^  �          @%�?����   ?\(�A�\)C�U�?��׿�\)?�Q�B�RC�7
                                    Bu�L  �          @%�?�����
?Tz�A�33C�Ff?��ÿ�Q�?�Q�BQ�C��                                    Bu�Z�  �          @%?�Q��
�H?:�HA�\)C�k�?�Q��=q?���B(�C��
                                    Bu�iP  �          @%�?�33�z�?�G�A�z�C��H?�33���?�{B��C�q�                                    Bu�w�  �          @ ��?�z��   ?}p�A��C��?�z��=q?���B��C�3                                    Bu准�  �          @{?�Q��33?��
A�  C��?�Q쿾�R?���B
=C�g�                                    Bu凕B  �          @�?�
=��
=?\(�A��
C��=?�
=�Ǯ?�BC�u�                                    Bu凣�  �          @\)?����	��?�\A<Q�C���?��׿��?�33A�C���                                    Bu凲�  �          @#33?���녽�Q��
=C�� ?���(�?!G�Ag�
C�0�                                    Bu��4  �          @(Q�?�33�33?�\A3�
C�N?�33�G�?���Aڏ\C���                                    Bu���  �          @'�?z�H�?\)AG
=C�J=?z�H�33?�G�A�ffC��3                                    Bu�ހ  �          @%?c�
��?   A1p�C�B�?c�
�?��HAߙ�C�t{                                    Bu��&  �          @%�?����=�Q�@ ��C���?����?O\)A��\C�8R                                    Bu���  �          @%?���z�>ǮA�C�3?���?��A�z�C�AH                                    Bu�
r  �          @!�?�����׽����
�HC��3?����
�H?(�A_�
C�]q                                    Bu�  �          @#33?����33���&ffC�y�?����{?��AZ�RC�ٚ                                    Bu�'�  �          @ ��?�
=�p��L�Ϳ�G�C�3?�
=�
=?!G�Ah  C��{                                    Bu�6d  �          @\)?����L����(�C���?����
>�ffA(��C�5�                                    Bu�E
  �          @   ?�G����H�Ǯ�C��
?�G���p�>k�@�33C���                                    Bu�S�  �          @\)?�(����H�\�
=C�ff?�(����R>u@���C�B�                                    Bu�bV  �          @\)?�  ������33��\)C��{?�  ��(�>�=q@�ffC���                                    Bu�p�  �          @#33?�p���{�B�\����C�� ?�p�����>\A
=C��)                                    Bu��  �          @!�?��H��\)        C�7
?��H���
?�AO�C���                                    Bu刎H  �          @ ��?��H����>B�\@�33C��)?��H��
=?:�HA�=qC���                                    Bu刜�  �          @%�?�\��\)>8Q�@�Q�C���?�\��(�?=p�A�
=C��R                                    Bu别�  �          @%?����33=u?�(�C��?��ÿ�Q�?+�Aq�C�n                                    Bu刺:  �          @!�?�����=�G�@   C���?��׿�p�?=p�A���C�]q                                    Bu���  �          @"�\?�=q�Q�>�z�@ϮC�?�=q��Q�?h��A��C�7
                                    Bu�׆  �          @"�\?���p�?+�At(�C��q?���Q�?�p�A�33C��                                    Bu��,  �          @!�?�
=��?s33A�p�C���?�
=��(�?��HB��C��                                    Bu���  �          @p�?�z��p�?�G�A�z�C��{?�zΎ�?�p�B�RC�                                      Bu�x  �          @Q�?��
��{?�
=A�RC�>�?��
��
=?�{B*�C��q                                    Bu�  �          @
�H?��R�У�?#�
A��
C��H?��R��\)?��A���C�)                                    Bu� �  �          @G�?aG���G�=�Q�@(Q�C�@ ?aG���33?(�A�ffC���                                    Bu�/j  �          ?�\)�#�
���333����C�+��#�
��ff�.{��  C�aH                                    Bu�>  �          ?��H�����H�=p��ˮCz������{��=q�C|=q                                    Bu�L�  �          @��333�޸R�Tz����Cx
�333��zᾊ=q���Cy�
                                    Bu�[\  �          @ff���
�33��Q���C�⏽��
��
>�=q@�33C���                                    Bu�j  �          @(�?���z�?:�HA�(�C��
?���\)?�Q�Bp�C�<)                                    Bu�x�  �          @\)?��\���?
=At��C�=q?��\��\)?�{A���C�\                                    Bu則N  �          @33?fff���H?�A�=qC�Ǯ?fff��(�?��A��C���                                    Bu剕�  �          ?��H?����>�Q�A&�HC��)?����33?aG�A�z�C���                                    Bu剤�  �          ?���>�(��޸R>aG�@��HC��>�(�����?5A�z�C���                                    Bu剳@  �          ?�ff>�(����H>��
A"=qC���>�(����?L��A�z�C���                                    Bu���  �          ?��H>�녿��>W
=@�\C�>�녿�G�?.{A��
C���                                    Bu�Ќ  �          ?�ff>aG���G�>��@��\C��>aG����?(��A��RC��                                    Bu��2  �          ?��þB�\���
�.{��{C�f�B�\��  >�33A5G�C���                                    Bu���  �          ?�33��Ϳ�p����b�HC|h���Ϳ��=u?�33C|�3                                    Bu��~  �          @�\��\��
=�Ǯ�.�RC33��\���H>B�\@��HCh�                                    Bu�$  �          @���   �����=qC�@ �����R>���A�
C�7
                                    Bu��  �          @�\��G��p���Q��G�C�^���G��{>�z�@��HC�e                                    Bu�(p  �          @���{��\���FffC��{��{�{?
=qAV�RC��R                                    Bu�7  �          @{��33�(�=���@p�C��׾�33�z�?8Q�A�G�C�B�                                    Bu�E�  �          @
�H�\)�ff>�{A�HC�R�\)��z�?n{A�(�C���                                    Bu�Tb  �          @G�<��
��p�>��RA(�C�J=<��
��?\(�A��HC�P�                                    Bu�c  �          ?�33<���\)>\)@�G�C�u�<���  ?+�A��HC�}q                                    Bu�q�  �          ?�\)�����\>�33A.�RC��쾅�����?Tz�A�{C�aH                                    Bu劀T  �          ?�=q��p��У�?�RA��C�����p����?�ffB
=CE                                   Bu劎�  �          @z�   ��33?
=qAu�CB��   ��?��A��
C}Q�                                   Bu劝�  �          @(��#�
�	��>��
A\)C��q�#�
��(�?h��A���C���                                    Bu劬F  �          @{��\)�
�H>�p�A��C�3��\)��p�?uAυC��)                                    Bu劺�  �          @  �aG��p�>W
=@���C�8R�aG���
?Q�A��\C�f                                    Bu�ɒ  �          @{    �
�H>�33A�H��O�    ��p�?p��A�(���O�                                    Bu��8  �          @{?z��녿��[�C��?z��=��
@   C��                                    Bu���  �          @  �(��	��=�Q�@�
C~!H�(���?0��A��C}L�                                    Bu���  �          @  ��ff���H>.{@��
Cr  ��ff��?5A�
=Cpc�                                    Bu�*  �          @  �!G����=�G�@,��C}��!G��G�?333A��C|�\                                    Bu��  �          @(��#�
��>u@�{C��f�#�
��(�?Q�A��\C���                                    Bu�!v  �          @�׾�=q���>��@xQ�C��\��=q�z�?@  A�G�C�XR                                    Bu�0  �          @33��  ��?0��A��C��쾀  ��?�  B�
C�5�                                    Bu�>�  �          @33�#�
����?\B'�Cw��#�
���?�33BaffCo�                                    Bu�Mh  �          @33��\��>��@mp�C�ff��\�33?=p�A���C��                                    Bu�\  �          @G����Q�aG�����C��{���ff>\A Q�C���                                    Bu�j�  �          @  �#�
���=�@?\)C�z�#�
��?8Q�A��C�s3                                    Bu�yZ  �          @Q�����>���A ��C�ÿ���?p��A�(�C~��                                    Bu勈   �          @{�u��Q�?�=qA�(�Cs���u����?���B"
=Cn�=                                    Bu勖�  �          @�R�G��33?���AٮCy8R�G���?�33B'�Ct�                                    Bu勥L  �          @"�\�:�H�z�?��A�(�Cz�f�:�H�У�?�B533Cv\                                    Bu勳�  �          @!녿(���\?�{B33C}p��(��˅?�{B>Q�Cy#�                                    Bu�  �          @\)�\)��
?��\A�  C~�=�\)���?��
B7�\C{�                                    Bu��>  �          @(����  ?E�A�ffC�f������?���B��C�(�                                    Bu���  �          @Q����{?(�AmC  �����(�?�Q�A�=qC}33                                    Bu��  �          @���(���\)>��HA=��C}�{�(���G�?�=qA�
=C{�                                    Bu��0  K          @
=�8Q��{>�=q@�33C|&f�8Q���
?\(�A�{Cz��                                    Bu��  �          @z�!G��
�H>�G�A0��C}Ǯ�!G���(�?�G�A�Q�C|:�                                    Bu�|  �          @�R�!G���>�=q@�\)C}h��!G����H?Tz�A�p�C|5�                                    Bu�)"  �          @��\)��\>B�\@�Q�C~�q�\)��z�?:�HA�ffC}��                                    Bu�7�  �          @Q���z�#�
��=qC�  ���   ?�A`��C�\                                    Bu�Fn  �          @	���z��z�u��(�C~O\�z��   ?   AX  C}�)                                    Bu�U  �          @��#�
��=��
@
=C|�f�#�
��p�?!G�A�p�C|)                                    Bu�c�  �          @(��B�\�33        CyǮ�B�\��p�?��Ahz�Cy{                                    Bu�r`  �          @{�(���z�>L��@�Q�C|p��(�ÿ�Q�?@  A��
C{\)                                    Bu匁  �          @33�L�����>k�@�Q�Cy�{�L���   ?J=qA��CxJ=                                    Bu匏�  
Z          @z�^�R�Q�>aG�@�33Cw�q�^�R���R?E�A�z�Cvff                                    Bu匞R  �          @�n{��<��
?�RCvO\�n{��\?
=Aj�HCuu�                                    Bu匬�  �          @
=��ff�<#�
>uCs}q��ff�G�?\)A_\)Cr��                                    Bu医�  �          @�ÿ���
=>�\)@�Cs�ÿ�����H?Q�A���Cr                                    Bu��D  �          @33�:�H�?\)Ab�RCz�=�:�H��\)?��A�Q�Cx�3                                    Bu���  �          @(��}p��	��>k�@�ffCuW
�}p�� ��?G�A�(�Cs��                                    Bu��  �          @   ��p��
�H�\)�N{Cp� ��p��Q�>�(�A ��Cp
=                                    Bu��6  �          @�Ϳ+��ff�#�
�p��C~33�+���?z�A[\)C}��                                    Bu��  �          @'��fff��H>��R@�33Cy�3�fff�  ?n{A�z�CxW
                                    Bu��  �          @(��xQ��{=�@5CvuÿxQ��
=?333A��Cuc�                                    Bu�"(  �          @z�n{��>���A{Cu�)�n{��?\(�A�
=Ct!H                                    Bu�0�  �          @�ÿ\(���>ǮA&ffCu�\(���  ?^�RA���Cs�                                    Bu�?t  �          @�ͿY���   =�G�@9��Cv�R�Y����33?!G�A�  Cu�                                    Bu�N  �          @�����>��@�G�Cruÿ������?J=qA���Cp��                                    Bu�\�  �          @{�����p�>�=q@�Ct8R������
?Tz�A�33Cr��                                    Bu�kf  �          @�s33��>\)@\��Cu�)�s33� ��?.{A��HCt�R                                    Bu�z  �          @33������>�@HQ�CrB����ÿ�?#�
A��RCq�                                    Bu午�  �          @��ff��Q�=�G�@4z�Cl+���ff��?(�Ar�HCj��                                    Bu南X  �          @33��������>\)@`  Cn� ��������?#�
A�\)Cm)                                    Bu卥�  �          @  ��ff���H>�=q@��Cq��ff����?B�\A���Cp�                                    Bu却�  �          @�H���H�z�>�{@�\)Co�Ὶ�H��z�?Y��A��
Cm�                                     Bu��J  �          @�R��G��>�z�@���Cn�ῡG�����?O\)A�Q�Cm&f                                    Bu���  �          @(����H��ff?0��A�Cf�3���H�Ǯ?�\)Aݙ�Cb��                                    Bu���  �          @!G���녿�
=?Q�A��Cj+���녿�33?��
A�\)Ce�                                    Bu��<  �          @녿������?J=qA��Co������ff?�p�B��Cj�                                    Bu���  �          @(���  ��?B�\A�33CtE��  ��?�G�A�ffCq!H                                    Bu��  �          @�Ϳ�����H?
=AbffCl�����޸R?���A�=qCi�\                                    Bu�.  �          @�þ����R?=p�A�
=C��q�����(�?��
B  C�O\                                    Bu�)�  �          @{����
?J=qA�{C�������?���BC�N                                    Bu�8z  �          @p��:�H���?��AP��C|5ÿ:�H�33?���A�Cz�                                     Bu�G   �          @(��J=q�p�?��AUp�Czff�J=q���R?��Aأ�Cx�                                     Bu�U�  �          @���(��ff>�=q@ʏ\C�� ��(��p�?Y��A�C���                                    Bu�dl  �          @�G��
=q>��R@�{Cz#׿G�� ��?W
=A�
=Cx�\                                    Bu�s  �          @�\�(���>�@R�\C~}q�(���?+�A���C}                                    Bu厁�  �          @�ÿ�=q���>k�@�{Cp\��=q��G�?0��A��
Cnp�                                    Bu厐^  �          @���#�
�p���Q��\)C}�R�#�
�
=q>��A;�C}�H                                    Bu原  �          @   �E��ff�aG����\C{� �E���>\A\)C{��                                    Bu厭�  �          @#�
�G���H�#�
��G�C|��G��?��AZ�RC{�\                                    Bu厼P  �          @�R����(����
��
=Cs}q������>u@�Q�Cs��                                    Bu���  �          @
=�+��{�������C}+��+��\)>.{@���C}aH                                    Bu�ٜ  �          @Q�@  �  ���:�HC{���@  ��?�AO33C{�                                    Bu��B  �          @��5��R�\)�[�C|uÿ5�(�>�
=A%�C|0�                                    Bu���  �          @�ÿ   ��>��@g
=C��q�   �p�?8Q�A�p�C��3                                    Bu��  �          @(���\�>aG�@�z�C��
��\�p�?J=qA�\)C��                                     Bu�4  �          @{��\�
=>�G�A%��C��׿�\�
�H?�G�A���C�e                                    Bu�"�  �          @p��&ff��\?��AR{C~E�&ff��?���A�
=C|Ǯ                                    Bu�1�  �          @�R�.{��?0��A��\C}���.{��\?�p�A��
C{��                                    Bu�@&  �          @�R����?J=qA���C�f��� ��?�=qB��C~L�                                    Bu�N�  �          @�R���H��?.{A33C�����H�?�p�A��C�xR                                    Bu�]r  �          @ �׿��
=?(��At��C��f����?�(�A�C�)                                    Bu�l  �          @&ff�O\)���?
=qABffC{uÿO\)�(�?�\)A̸RCy�
                                    Bu�z�  �          @,(�����\)?
=qA7�
Cn������\?���A�G�Ck��                                    Bu叉d  �          @,�Ϳ��
���?\(�A��Co�����
��?�\)A�(�Clp�                                    Bu变
  �          @*=q�c�
��?��
A��RCx�=�c�
���H?ǮB�Cu�                                    Bu另�  �          @(�ÿ
=q�\)?c�
A�\)C�E�
=q����?�z�B�C~�f                                    Bu叵V  �          @%��   ���?E�A��C�� �   �   ?�ffB ��C��                                    Bu���  �          @!녾��H�G�?5A�=qC�*=���H���
?�
=B��C~�H                                    Bu�Ң  �          @�R@��>�G��W
=��ffA-�@��>�p����R��A��                                    Bu��H  �          @  ���<��
�\)��G�C3�=��녽��
=q��{C7��                                    Bu���  �          @�R��Q�B�\���O\)CI���Q�\(���\)��Q�CK�H                                    Bu���  �          @'��G��aG��J=q���C9���G���녿8Q���{C>E                                    Bu�:  "          @'���p������\��(�C`��p���\)�z��O\)CcE                                    Bu��  �          @-p������33�=p��~�HCh������
=q�aG���p�Cj�                                    Bu�*�  �          @5���
��33��p����C^����
��
==���@�C_.                                    Bu�9,  �          @7
=��p��33����� ��Cb\��p��G�>���A z�Ca��                                    Bu�G�  �          @7
=��z��p�?&ffATQ�Ci)��z��p�?�z�A��
Cf(�                                    Bu�Vx  �          @1녿�(���R?8Q�Aqp�Cl�)��(����R?��RA�Q�Ci�\                                    Bu�e  �          @.�R��ff���?=p�A|Q�Cp
=��ff� ��?�G�A�\)Cm!H                                    Bu�s�  �          @/\)��33���?#�
AX��Cts3��33�
�H?���A��Cr0�                                    Bu吂j  �          @.{�u�   >��HA&=qCx�3�u�33?���A�Q�CwaH                                    Bu向  �          @)���c�
���>�(�A(�Cz
=�c�
��?�  A�  Cx�f                                    Bu吟�  �          @%��  ��>�z�@�{Cw:῀  ��R?Y��A�G�Cu�R                                    Bu吮\  �          @\)�Ǯ���>�A-�C�]q�Ǯ�p�?��\A�{C���                                    Bu吽  	�          @{<#�
��H>�ffA(��C��<#�
�\)?�G�A���C�!H                                    Bu�˨  
�          @!논�� ��>#�
@i��C��
�����?@  A���C��3                                    Bu��N  �          @ ��>L���   =��
?�(�C�<)>L���=q?+�Aw\)C�Q�                                    Bu���  �          @=q?0�׿�Q�>W
=@��C��?0�׿˅?��A�
=C���                                    Bu���  �          @Q�@�׾�\)>k�@���C��f@�׾W
=>�z�@��C�O\                                    Bu�@  �          @$z�@�ÿ��>8Q�@�G�C��H@�ÿ��\>�(�A&{C�L�                                    Bu��  �          @-p�?��R��=L��?��C���?��R��  >�A#�C�ff                                    Bu�#�  �          @
=q@�
��33�#�
��(�C�>�@�
��p���\)�G�C��q                                    Bu�22  �          @Q�?h�ÿٙ�>8Q�@�ffC��?h�ÿ�{?�A��
C��{                                    Bu�@�  �          @\)?����?fffAҸRC��?��c�
?��B	(�C��
                                   Bu�O~  �          @0  ?�Q�У�?�ffA�
=C�?�Q쿣�
?��B33C�t{                                   Bu�^$  �          @'�?k��?��Aә�C���?k���G�?���B(�C��
                                    Bu�l�  �          @�;��H�{>��
A z�C��׾��H��?Tz�A���C�]q                                    Bu�{p  �          @�ÿ�����?J=qA��HCx�f������?���B�CuQ�                                    Bu告  �          @���p���{��33�=qC=����p���녾�����
C?��                                    Bu员�  �          @���Q쾅��&ff����C;xR��Q���Ϳ���z�C?��                                    Bu呧b  �          @�
��녿J=q��CC(���:�H�!G��~�RCGaH                                    Bu呶  �          @�H�33������=q����C;s3�33��33�B�\���C<                                    Bu�Į  �          @�ÿ˅���H���
��G�Cc+��˅�޸R=�Q�@p�Cc��                                    Bu��T  �          @�������ff�@  ��  Ca0������
=��p���RCc�=                                    Bu���  �          @'��s33�ff>�\)@�{Cw�q�s33�{?Q�A���Cv�
                                    Bu��  �          @(�þ��"�\>\)@FffC��q���(�?:�HA�33C���                                    Bu��F  �          @(�þ�z��(�    ��C�����z���?�AT��C��3                                    Bu��  �          @+�?�����=L��?���C�� ?����(�>��A)�C�                                      Bu��  �          @(Q쿞�R�
�H���
��Cp33���R��>�(�A��Co�R                                    Bu�+8  �          @,(���(��  >L��@�Q�ClǮ��(����?8Q�Aw�CkxR                                    Bu�9�  �          @-p�����\>aG�@��Cn33����?=p�A
=Cl�H                                    Bu�H�  �          @6ff��{��R>���@��CqY���{�?fffA�33Co�H                                    Bu�W*  �          @:�H��{�   >��A=qCqh���{�z�?��A���Co�
                                    Bu�e�  �          @?\)��ÿٙ�?
=qA(z�CWk���ÿ��
?k�A�z�CT��                                    Bu�tv  �          @>{�p����>�Q�@��HC\aH�p��޸R?J=qAy�CZG�                                    Bu咃  �          @>�R���H�*=q>�(�A{Cu�H���H�\)?��A�=qCt(�                                    Bu咑�  �          @A녿B�\�5>���@��C~�q�B�\�+�?z�HA��RC~.                                    Bu咠h  �          @>�R�p���2�\?�\A  C{p��p���%?��A�33Cz+�                                    Bu咯  �          @=p����\�/\)>�Q�@��Cy�{���\�%�?z�HA�(�Cxs3                                    Bu咽�  �          @<(��G��0��>�A��C~W
�G��%�?��A��C}L�                                    Bu��Z  �          @Fff��
=�B�\>Ǯ@�Q�C���
=�7
=?�=qA��
C��                                     Bu��   �          @@�׾k��>�R>�=q@�=qC��
�k��5?s33A�
=C��)                                    Bu��  �          @<��>�=q�;�>��@5�C��
>�=q�3�
?Q�A��HC���                                    Bu��L  �          @>�R>.{�=p�=�@z�C��>.{�6ff?L��Az{C���                                    Bu��  �          @7
=����'
=<��
?��C�g�����!�?�RA]��C�\)                                    Bu��  �          @=p��u�5>�(�A�C��
�u�*�H?���A��
C�n                                    Bu�$>  �          @Dz�����>{>�
=@�
=C�8R�����333?��A�33C��)                                    Bu�2�  �          @Fff�n{��
?�
=B
=Cx�n{��{@
�HB8��Csu�                                    Bu�A�  �          @J�H��z��'�?��A��C��þ�z��
�H@��B4�C�0�                                    Bu�P0  �          @O\)=�G��:�H?�\)A���C�{=�G��!�@   B�\C�>�                                    Bu�^�  �          @L��<��
�<(�?��RA�33C�>�<��
�$z�?��B�C�G�                                    Bu�m|  �          @N�R��G��@��?�\)A�z�C��{��G��*�H?��
BG�C���                                    Bu�|"  �          @W
=���R�H��?�{A�
=C�.���R�333?�ffB=qC��R                                    Bu哊�  �          @XQ��
=�E?��
A��C�"���
=�.{?���BG�C��)                                    Bu哙n  �          @TzᾸQ��?\)?���A�G�C��)��Q��%@�B(�C�R                                    Bu哨  �          @Q녿G��@  ?��A�ffC��G��+�?��HA��\C}�)                                    Bu哶�  �          @S33�G��E�?^�RAup�Cٚ�G��2�\?�ffA�
=C~�                                     Bu��`  �          @S�
�J=q�B�\?�G�A���C��J=q�.�R?�
=A��RC}�3                                    Bu��  �          @Tzῆff�B�\?=p�AO\)C{���ff�2�\?�A�G�CyxR                                    Bu��  �          @Tz῝p��0��?��A���Cu𤿝p��Q�?�
=Bp�Cr�H                                    Bu��R  �          @_\)��=q�8��?���A���CuJ=��=q�   @   B�HCq��                                    Bu���            @`  �B�\�U?��A��C��H�B�\�HQ�?��A��C�7
                                    Bu��  �          @dz�s33�P�׿J=q�P  C}Ǯ�s33�W
=���
���
C~33                                    Bu�D  �          @e���R�^{�������C���R�\��?   A�C���                                    Bu�+�  �          @g
=��\)�XQ�>��@���C{�R��\)�K�?�p�A�{Cz��                                    Bu�:�  �          @g
=��{�P��?(��A)��CwQ쿮{�AG�?���A��Cu�                                     Bu�I6  �          @e��Q��K�?Y��AZ�HCu�׿�Q��9��?�ffA̸RCs��                                    Bu�W�  �          @hQ쿬���O\)?k�Aj{CwY������<(�?У�Aՙ�CuY�                                    Bu�f�  �          @n�R��G��S33?Y��AS\)Cus3��G��AG�?�=qAȸRCsxR                                    Bu�u(  �          @k������U�?:�HA7\)Cwuÿ����Dz�?�(�A�ffCu�\                                    Bu唃�  �          @j=q��=q�P  ?��
A�
=Cw�=��=q�;�?޸RA�Cu�H                                    Bu唒t  �          @hQ쿳33�O\)?G�AG33Cv�\��33�>�R?�  AÅCt�q                                    Bu唡  �          @g���Q��@  ?���A�{Ct\)��Q��'�?��RB�
Cq+�                                    Bu唯�  �          @l�Ϳ�z��H��?�  A{�Cr#׿�z��5�?�Q�AٮCo�)                                    Bu唾f  �          @n�R�˅�O\)?n{Ag�Cs�{�˅�<(�?��A�33Cq�
                                    Bu��  �          @l�Ϳ޸R�HQ�?uAo33Cp�׿޸R�5�?��A�Q�CnaH                                    Bu�۲  �          @l(���G��X��?p��AnffC}c׿�G��E�?�
=A�p�C{�)                                    Bu��X  �          @j�H���\�P  ?�33A��HC|�H���\�9��?���A���Cz��                                    Bu���  �          @l(��n{�L��?��A��HC}��n{�8Q�?޸RA�33C|{                                    Bu��  �          @q녿:�H�a�?��A�z�C�(��:�H�L��?�=qA�
=C���                                    Bu�J  �          @h�ÿQ��HQ�?�  A�z�Ch��Q��-p�@
�HBC}B�                                    Bu�$�  �          @hQ쿐���E?�(�A���Cy�ÿ����*�H@Q�BQ�Cw(�                                    Bu�3�  �          @g���ff�=p�?�p�A�Q�Cz�Ϳ�ff�\)@ffB$�Cw@                                     Bu�B<  �          @s33�����Dz�?���A�\Cv�Ῠ���%�@{B!��Cr�H                                   Bu�P�  �          @vff����7�@	��B�
Ct�����33@/\)B6
=Cn�f                                   Bu�_�  �          @�=q��=q�P��@  A���Ct@ ��=q�*�H@;�B-��Cou�                                    Bu�n.  �          @��R����b�\@�B �RCzͿ���:=q@G
=B1ffCv.                                    Bu�|�  �          @�
=��Q��s33@ffA�CyE��Q��J�H@I��B(G�Cu��                                    Bu啋z  �          @�z�z�H��  @'�B�HC�&f�z�H�S33@]p�B4�C}��                                    Bu啚   �          @��׿J=q����@��A�Q�C��H�J=q�hQ�@W
=B(�C���                                    Bu啨�  �          @���Y����Q�@!�A�RC����Y���tz�@^�RB&�RC��R                                    Bu啷l  �          @�녿k����H@\)A�{C�]q�k��z=q@^{B#G�C�h�                                    Bu��  �          @��ýu��p�?���A�(�C��f�u��(�@8Q�Bp�C���                                    Bu�Ը  �          @�?B�\��z�?�p�A���C�c�?B�\��@"�\A�=qC���                                    Bu��^  �          @��H��(��z=q@6ffB	Q�Cy^���(��J=q@j=qB9�Cu
=                                    Bu��  �          @�녿�ff���H@5B(�C�9���ff�e�@p  B4��C}�R                                    Bu� �  �          @�녿�{����@0  A��C�{��{�j=q@j�HB/z�C}�                                    Bu�P  �          @�{�����u�@?\)B�Ct�������C33@q�B;=qCo:�                                    Bu��  �          @�����R����@7�A���CvG����R�p��@tz�B'�RCr�                                    Bu�,�  �          @�G�����s�
@0��A�Q�Cm�f����E@c33B)33Ch=q                                    Bu�;B  �          @�������@
=A���C�@ ���[�@N{B+\)C��\                                    Bu�I�  �          @�G��z��u@
�HA陚C��q�z��P  @>�RB(�C���                                    Bu�X�  �          @�녿}p��dz�@
=qA�  C~�{�}p��?\)@:=qB+33C{�                                     Bu�g4  �          @�(���z��g�?���A���C|:῔z��Mp�@
=qBp�Cz&f                                   Bu�u�  �          @L�;��A녾�p��ٙ�C��H���A�>���@���C���                                   Bu善�  �          @333?��G�>�{A�HC���?��Q�?W
=A�\)C��R                                    Bu喓&  �          @(��?��Ϳ��H?�z�B Q�C���?��Ϳ˅?���B-  C�>�                                    Bu喡�  �          @\)?k��?s33A�33C��R?k�����?�33B
{C�`                                     Bu喰r  �          @/\)?����ff?}p�A�
=C�^�?��Ϳ���?�Q�BC�G�                                    Bu喿  �          @%�?��H��        C���?��H�У�>\A\)C�'�                                    Bu�;  �          @0��?Ǯ��?��
Bz�C��3?Ǯ�aG�?�\)B#�C���                                    Bu��d  �          @4z�?B�\��
=?��HB;G�C�4{?B�\��Q�@�\Bi�\C�S3                                    Bu��
  �          @0��>W
=�33?�\B"��C���>W
=�˅@(�BV��C��                                     Bu���  �          @>{�\)� ��?ǮA��\C�uþ\)�@B3�RC�&f                                    Bu�V  �          @L��=�\)�5�?�p�A�p�C���=�\)��H@B#=qC��{                                    Bu��  �          @Z=q>�33�@  ?ǮAڏ\C�G�>�33�$z�@��B!p�C��3                                    Bu�%�  �          @h��?��\�333?�A�Q�C�,�?��\�p�?�\B�\C���                                    Bu�4H  �          A녾aG���z�@�  B1z�C���aG�����@�G�Bf
=C��
                                    Bu�B�  �          A�H>8Q���\?�\)A/33C���>8Q��ҏ\@<(�A��RC�                                    Bu�Q�  |          A!p�@�{��(��p�����C�ff@�{���?&ff@��\C�U�                                    Bu�`:  �          A-�A���?
=q@7
=C�+�A���?˅A\)C�                                    Bu�n�  �          A$��@�p���p�?E�@���C��@�p��\@p�AK�
C��                                    Bu�}�  �          A  @j=q���>��@P  C�"�@j=q��@	��ApQ�C��q                                    Bu嗌,  �          AG���R��=q@�{A�p�C��{��R��@�  B+33C�"�                                    Bu嗚�  �          A��3�
����@�{A���Cw!H�3�
���R@��HB.=qCr��                                    Bu嗩x  h          AR=q���
�  A��B3z�C��
���
��ffA-Bg�C��)                                    Bu嗸  |          AK�@h���0z�@��RA�p�C�  @h���Q�@ӅB�\C�33                                    Bu���            AT(�?�=q�4��@��HA��HC�W
?�=q���A  B(��C���                                    Bu��j  h          A^�R�aG��Fff@�33AхC�z�aG��*�HAQ�B�\C�e                                    Bu��  |          Al�Ϳfff�D  A{B�HC��׿fff�!�A+\)B:�C�o\                                    Bu��  h          AhQ�+��Nff@�G�A�z�C��f�+��2�HAG�B  C�L�                                    Bu�\  h          A>{@����?�=qA�\C�]q@�����@\(�A�Q�C�e                                    Bu�  �          A`��@�\)�333@�{A���C���@�\)�33@�z�A��
C�
=                                    Bu��  �          A�z��%��k�
@�  A�C���%��MA33B�C�U�                                    Bu�-N  �          A�  ��G��l  @��A�Q�C�{��G��PQ�AG�B
��C���                                    Bu�;�  �          Ak
=@'��Y�@��
A�C�t{@'��Bff@�33A���C��                                    Bu�J�  �          Ao\)@�Q��Z=q@Y��AR�\C�{@�Q��G�
@�A�Q�C��=                                    Bu�Y@  �          Ai�@��H�LQ�@\)A�\C�1�@��H�>�\@�33A�C�                                      Bu�g�  �          Aa@�{�=�?�{@�=qC�
@�{�1�@���A��C��                                    Bu�v�  T          A:�H@>�R�.�H?���@�ffC��q@>�R�&{@g
=A��C�                                      Bu嘅2  h          AD��@B�\�2�R@L��Av�HC���@B�\�"=q@�A�C�U�                                    Bu嘓�            AH  ?z�H�+\)@�\)A��C��q?z�H���Az�B)33C�
                                    Bu嘢~  h          AC33?�
=��
@θRB33C���?�
=���A�B<�C�T{                                    Bu嘱$  �          A7\)�L���ȣ�A�B`G�C���L���}p�A((�B�C���                                    Bu嘿�  �          A+\)�-p����A�BJ�HCvJ=�-p���33A�RBy�HCl�{                                    Bu��p  �          A-p��\)�ָRA�HBD�C{���\)��z�A(�Bv(�Ct8R                                    Bu��  �          AB�H���Q�AQ�B7z�C��H���\A#33Bl�
C���                                    Bu��  {          AP��@:�H���@��
B��C�J=@:�H����A�RBEz�C�H�                                    Bu��b            AHz�@�� ��@���A�  C���@����A��B2��C�%                                   Bu�	  �          Aa@xQ��   A-p�BJ��C���@xQ�����AF=qBx��C�,�                                   Bu��  �          Aj�\@��H�  A4Q�BI�C��q@��H���AM�Bv�RC�W
                                    Bu�&T  �          AmG�@|(�� Q�A<��BS\)C��@|(���=qAU�B��=C��                                    Bu�4�  �          A_�@�(���(�A,��BKp�C��q@�(���AB=qBs\)C���                                    Bu�C�  �          AAp�@s33��(�A!�BpQ�C�}q@s33��A,��B�  C��
                                    Bu�RF  �          AC�@�����
A\)Bf�RC��R@�녿�  A&ffB��C��H                                    Bu�`�  �          AW�@�{�G�A (�Bp�C�(�@�{��ffA!�BBQ�C��q                                    Bu�o�  |          Ag
=@u��\  >#�
?�RC��@u��Up�@VffAX��C�                                      Bu�~8  �          Aj�\@����?�@��A�{C��H@����+33@׮A�  C�.                                    Bu噌�  �          Aj{@{��R=q?���@�G�C�Q�@{��G
=@�
=A�G�C�                                    Bu噛�  T          A`Q�?�z��T��?�
=A
=C�f?�z��G�
@�
=A���C�8R                                    Bu噪*  �          Ap��@C33�(��A ��B)�HC��@C33��p�AC�B]
=C��                                    Bu噸�  h          Ajff@333�33A)G�B>�C�xR@333��
=AF�HBq�RC���                                    Bu��v  ,          Am��?�{�7�
A�\B��C���?�{�p�A5��BJ��C��                                    Bu��  �          Aw�?��\�Z�H@^�RAc�C���?��\�G�@ҏ\A�\)C��                                    Bu���  ,          Aup�@B�\�C33A	�B	(�C��q@B�\���A3
=B=\)C��\                                    Bu��h            Aup�@[��Tz�@ӅA�C�<)@[��5Az�B{C�c�                                    Bu�  �          Av�R@����Zff@�  A�p�C��@����@��A��B�\C��)                                    Bu��  �          Av=q@~{�.�RA�B"�RC���@~{�Q�AD(�BT�
C��\                                    Bu�Z  �          Anff@N�R���AI�Bi�\C�J=@N�R�y��A^�RB�C�Ф                                    