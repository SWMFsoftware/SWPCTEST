CDF  �   
      time          *   Conventions       ACDD-1.3, Spase v2.2.3     title         /DSCOVR Magnetometer Level 2 One Minute Averages    id        Doe_m1m_dscovr_s20170529000000_e20170529235959_p20170530021651_pub.nc   naming_authority      gov.noaa.swpc      program       DSCOVR     summary       }Interplanetary magnetic field observations collected from magnetometer on DSCOVR satellite - 1-minute average of Level 1 data      keywords      _NumericalData.ObservedRegion.Heliosphere.NearEarth, NumericalData.MeasurementType.MagneticField    keywords_vocabulary       Spase v2.2.2   
references        �; DSCOVR TIME SERIES DATA AVERAGES ALGORITHM THEORETICAL BASIS DOCUMENT, v2.4; GSE TO GSM COORDINATE TRANSFORMATION ALGORITHM THEORETICAL BASIS DOCUMENT v2.1      metadata_link         �http://www.ngdc.noaa.gov/docucomp/page?xml=NOAA/NESDIS/NGDC/STP/Space_Weather/iso/xml/satellite-systems_dscovr.xml&view=getDataView&header=none    license       Spase.Access Rights.Open   institution       NOAA   source        DSCOVR Magnetometer Level 1    platform      'Deep Space Climate Observatory (DSCOVR)    
instrument        +boom-mounted triaxial fluxgate magnetometer    history       ,DSCOVR real-time telemetry processing system   	algorithm         FDSCOVR MAGNETOMETER LEVEL 1B DATA ALGORITHM THEORETICAL BASIS DOCUMENT     algorithmVersion      B      algorithmDate         
2015-10-15     processing_level      Level 2    processing_level_description      11-minute average using Hodges-Lehmann M-estimator      date_created      2017-05-30T02:16:51.494Z   date_calibration_data_updated         2017-04-26T00:00:00.000Z   time_coverage_duration        P01D   time_coverage_start       2017-05-29T00:00:00.000Z   time_coverage_end         2017-05-29T23:59:59.000Z   time_coverage_resolution      PT1M   creator_name      Doug Biesecker     creator_type      person     creator_institution       DOC/NOAA/NWS/NCEP/SWPC     creator_email         doug.biesecker@noaa.gov    creator_url       http://www.swpc.noaa.gov/      publisher_name         National Geophysical Data Center   publisher_type        institution    publisher_institution         DOC/NOAA/NESDIS/NGDC   publisher_email       william.rowland@noaa.gov   publisher_url          http://www.ngdc.noaa.gov/dscovr/   records_maximum         �   records_present         �   records_data        �   records_fill             records_missing                    time                description       "date and time for each observation     
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
short_name        overall_quality    C_format      %d     units         n/a    lin_log       TSpase.NumericalData.Parameter.Structure.Element.RenderingHints.ScaleType.LinearScale        7lBu�	@  ;          AVff���AffA=qB>p�Bǣ׿��@�
=AC�
B�
=B��H                                    Bu��  �          AU��\A��A  B*  B�����\@�(�A9BrQ�B���                                    Bu�&�  �          AUG����AG�A�B.�Bнq���@��A;�Bv�RB�ff                                    Bu�52  �          AU���RA
=A��B%\)BШ���R@ʏ\A7\)Bm=qB޳3                                    Bu�C�  �          AT���*=qA�HA�\B/{B�Q��*=q@��A:{Bu��B�q                                    Bu�R~  �          AU녿��A�A!�BD{B�G����@���AEp�B�z�B���                                    Bu�a$  �          AU�����A\)AQ�B*��B�L����@��A9G�Br��B���                                    Bu�o�  �          ATQ��+�A\)AQ�B��B���+�@أ�A0��BbQ�B�.                                    Bu�~p  �          ATQ��=qA�A33B)BЅ�=q@�33A8Q�BqG�B�{                                    Bu��  �          AS33�#�
A�\A	B#
=Bѣ��#�
@�(�A4  BjQ�Bߣ�                                    Bu���  �          AS33�2�\A'\)@�  B
�B��
�2�\@�  A'\)BRQ�B�                                    Bu��b  �          AT�ÿ�Q�A=qA'�BO\)Bģ׿�Q�@��AHz�B�W
Bҏ\                                    Bu��  �          AT�׿��A��A!p�BE�
B�����@��
AD��B��3B�8R                                    Bu�Ǯ  �          ATz῜(�A�\A"�RBHz�BĀ ��(�@�
=AEG�B��)B�                                      Bu��T  �          ATQ��   A�
A��B+�HB����   @ÅA9p�Bt  B�B�                                    Bu���  �          AT(��  A\)A��B%�B���  @�z�A6�HBmQ�B�Ǯ                                    Bu��  �          AQ��33A@��@�{A�33Bɞ��33A (�A ��BffB��f                                    Bu�F  �          AP�׿�Q�A7\)@�z�A��B�.��Q�A�A�B4�B�Q�                                    Bu��  �          AP  ��Q�A*�\@�\)BG�B�\��Q�@��A$  BP=qB̀                                     Bu��  �          AO\)�%A=@�33A��B̞��%A�@�z�B�HB�k�                                    Bu�.8  �          AP  � ��A*ff@�33B�
B�Q�� ��@�33A!BM=qBЮ                                    Bu�<�  �          AP  ��RAAp�B,�B�u���R@��\A4z�Br��B�\                                    Bu�K�  �          AQ��Mp�A�HA33B9\)Bݣ��Mp�@�  A:{B{��B�Q�                                    Bu�Z*  �          AP�����A	A  B:�B�#����@��A;�
B�=qB��)                                    Bu�h�  �          AO���RA�
A  BCQ�B�L���R@�\)A=B�k�B�                                     Bu�wv  �          AP  ��\A�A=qBF��B�B���\@�p�A?�B�B�ff                                    Bu��  �          AQ���ffA=qA�HBE�
BŊ=��ff@��\AA�B���B�                                    Bu���  �          AR=q�Q�@�A'�BT  B�8R�Q�@z=qAEp�B�Q�B�                                      Bu��h  �          AQ녿�Q�A�\A ��BH�Bνq��Q�@��\AAB�\)B��                                    Bu��  �          AN�\��Q�A�\A��BE�HB����Q�@��A>{B��B�Q�                                    Bu���  �          AO���  @�33A"�RBN��B�#׿�  @�Q�AA�B�k�B�3                                    Bu��Z  �          AO33�˅@�
=A$z�BR
=B�G��˅@�33AB�HB�B�B�W
                                    Bu��   �          AM녿��H@�{A#�BRQ�Bɔ{���H@��HAA�B��=B�ff                                    Bu��  �          AN{�L��@�A$��BT�B���L��@�=qAB�HB�ffB�ff                                    Bu��L  �          AM����
@�{A$��BVffB�.���
@uAA��B�L�B�L�                                    Bu�	�  �          AMG���ff@�
=A z�BMB����ff@@��A8��B�p�CQ�                                    Bu��  �          ANff����@�A!�BM=qB�33����@L��A:ffB�#�C�3                                    Bu�'>  �          AN�H����@�(�A�BEQ�C������@@  A4��Bs�
C�                                     Bu�5�  �          AN�R����@ָRA{BG��B�Q�����@S33A7�B{{C{                                    Bu�D�  �          ALQ��n{@�
=A Q�BO  B���n{@`��A;
=B�ǮC��                                    Bu�S0  �          AJ�H�7
=@��
A!p�BS{B߳3�7
=@hQ�A<��B�B�C +�                                    Bu�a�  �          AJ�\�(��@��\Az�BD\)B�G��(��@�\)A7�
B�G�B�                                      Bu�p|  �          AK����A�Az�B"z�B�k����@�A,��Bh�RBԀ                                     Bu�"  �          AL  ��Q�Ap�Az�B!��B���Q�@љ�A-p�Bh��B̳3                                    Bu���  �          AI��`��A{@�ffB\)B�  �`��@�\)A&{B]��B�q                                    Bu��n  �          AJ�R�1G�A{A Q�BffB���1G�@�{A(Q�Ba=qB�=                                    Bu��  �          AK�� ��A��AffB\)B˽q� ��@ҏ\A+33Be
=B���                                    Bu���  �          AL�׿O\)A�
A�B4�\B�=q�O\)@�Q�A6=qB{�HB��                                    Bu��`  �          AL�׿�  A�\Ap�B5=qB��ῠ  @�A6=qB{�
B��
                                    Bu��  �          ALQ�\A��AffB0��B�{�\@��
A4  Bv�B�
=                                    Bu��  �          ALQ�ǮAp�AG�B/  B�z�Ǯ@�{A3
=Bt��B�p�                                    Bu��R  �          ALQ��33A��A��B4�B�#׿�33@���A5�Bz{Bԏ\                                    Bu��  �          AL�ÿ�\A�A\)B7�B��H��\@��A6�HB}  B׮                                    Bu��  �          AMG���
=A{A   B�B�B���
=@޸RA*=qB`Q�B�{                                    Bu� D  �          AMp���A)p�@�(�B(�B�����@��A Q�BM�B��
                                    Bu�.�  �          AM���
=A'�@��
B�B��
��
=@���A�BL�\BϸR                                    Bu�=�  �          AMG��  A#�
@��
BffB̽q�  @�Q�A"{BQ�B�L�                                    Bu�L6  �          AMG�����A'�@�p�BQ�B�  ����@���A (�BN{Bʮ                                    Bu�Z�  �          ANff��
=A.ff@�
=A���B��ÿ�
=Ap�A\)BC�RB�u�                                    Bu�i�  �          AO���\)A+33@��B�B����\)A ��A�BIQ�B��                                    Bu�x(  �          AO\)��G�A/\)@أ�A�Q�B�\��G�AffAQ�BD
=B�                                      Bu���  �          AO33��(�A5G�@�G�A�Q�B�L;�(�A�A�HB6z�B�k�                                    Bu��t  �          AO\)>��HA:{@�A�  B�.>��HA�A�RB.33B�                                    Bu��  �          AN�H>.{A9�@�(�AΣ�B�aH>.{A{A�B-z�B���                                    Bu���  �          AO
=��A5@���A�{B��q��A(�A
=B6  B�=q                                   Bu��f  �          AO���A-G�@���BG�B�G���A�A\)BH�RB�#�                                    Bu��  �          AN�H���A1�@�p�A�=qB�=q���A��A�HBA�B�z�                                    Bu�޲  �          ANff�0��A/�
@�ffA�ffB�#׿0��A�A�HBB��B�=q                                    Bu��X  �          AM녿�G�A*�\@�\)B�B���G�AG�A��BG��B̔{                                    Bu���  �          AM����G�A)p�@���B33B�(���G�A (�A�BI�
B�G�                                    Bu�
�  �          AM����Q�A.�R@��
A��\B�ff��Q�A
=A�BA33B���                                    Bu�J  �          AMG���{A)@�B
=B��H��{A ��Az�BG  B���                                    Bu�'�  �          AMp����A/33@��A�{B��f���A  Az�B?��B��
                                    Bu�6�  �          AM��AG�A"�H@�BQ�B�\�AG�@�\A{BI�RB�k�                                    Bu�E<  �          AMp��$z�A$Q�@��B	�
B���$z�@���A�BL(�B��                                    Bu�S�  �          AMG��{A%�@��HB�B����{@��Ap�BI  B��                                    Bu�b�  �          ANff��\)A/�
@��HA�{B�(���\)A��A��B?(�B�#�                                    Bu�q.  �          AN=q���
A3�
@�33A�  B�uÿ��
A
=A=qB4�B�\)                                    Bu��  �          AN=q��=qA1@ƸRA��BƸR��=qAz�A\)B7  Bˊ=                                    Bu��z  �          AN{��\)A-��@�  A��RB���\)A{A=qBA�
B���                                    Bu��   �          AN=q��{A.{@�G�A�{B�33��{AffA�HBB�RB�Q�                                    Bu���  �          AN=q��G�A(Q�@���B	�B�Q��G�@�A ��BL�
Bɏ\                                    Bu��l  �          AM���\A%�@陚B
=B�Q��\@���A Q�BM�HB͔{                                    Bu��  �          ALQ��A#33@�RB
=B�ff��@�=qA!BQ��B�B�                                    Bu�׸  �          AL(���p�A$��@�=qB
=B�\��p�@�
=A   BN�B�G�                                    Bu��^  �          AL(���\A"=q@�RB33B���\@���A!p�BQ=qB�W
                                    Bu��  �          ALz��A�@��
Bz�B�p��@�\A#
=BSB�z�                                    Bu��  �          AL  ��33A)��@�33BB�Q��33AffA{BC��B�=q                                    Bu�P  �          AK33��\)A4��@�{A��HB�Q쿏\)A�\A�B-z�B��                                    Bu� �  �          ALQ쿇�A3�@�
=A���B��q���AQ�A\)B2p�B�W
                                    Bu�/�  �          AK���{A1@���A��B��ÿ�{A=qA  B4(�B�ff                                   Bu�>B  �          AJ�R��{A/�
@�p�A���B�\��{A�
A�B6�BŞ�                                    Bu�L�  �          AJ{��G�A2�R@�  AظRB��쿡G�A��A�B.��B���                                    Bu�[�  �          AJff��\)A-@�(�A�Q�B�Ǯ��\)A��A�B;�\B��f                                    Bu�j4  �          AK
=���
A7�@��AÙ�B�B����
A�
A��B$33B�aH                                    Bu�x�  �          AIp��fffA5@��A�{B�\�fffAA��B&ffB���                                    Bu���  �          AIp��uA7�@��HA��RB��{�uAz�AffB!�\B��                                     Bu��&  �          AIG��W
=A;\)@�  A���B�33�W
=A
=@���B��B���                                    Bu���  �          AIG��5A<z�@�33A��B��f�5A ��@���B{B�{                                    Bu��r  �          AI���A;�
@�
=A��\B�z��A�@��
BQ�B�G�                                    Bu��  �          AE��ffA9�@�=qA��B�� ��ffA�@�BB�G�                                    Bu�о  �          AE���\A5�@�=qA�ffB����\A�@��\B  B��                                    Bu��d  �          AE����AQ�@�{BffB�����@�G�A(�BVffB���                                    Bu��
  �          AE�.{A9�@��
A�{B����.{A�@�\)B��B��f                                    Bu���  �          AF�H��p�A1��@���A�ffB��쾽p�Ap�A33B+��B���                                    Bu�V  �          AFff��G�A5�@��
A�\)B�p���G�A��@��
B  B�G�                                    Bu��  �          ADQ쿐��A<z�@L��AqB�녿���A&�\@��
A��RB�W
                                    Bu�(�  �          AD�׿�33A8��@~{A��HB�Ǯ��33A\)@ᙚB  B��                                    Bu�7H  �          AC\)��=qA-G�@���A�=qBĊ=��=qA=qA�B)Q�B��                                    Bu�E�  �          A?����A,��@�AÅB�  ���A�
@�  B"=qB�33                                    Bu�T�  �          A>ff���\A*=q@�A�Q�B������\AQ�@�B'\)B�z�                                    Bu�c:  �          A>�\��33A�@ȣ�A��\B��Ϳ�33@��\A��B>��B���                                    Bu�q�  �          A>�\�ffA!G�@�A�p�Bˊ=�ffA z�A�
B6�B�L�                                    Bu���  �          A>�R��A��@أ�B33B��Ϳ�@陚AffBI�Bъ=                                    Bu��,  �          A?\)�  A��@���B
  B�Q��  @�33A�RBH{B���                                   Bu���  �          A?
=�<��A��@�z�B�HB���<��@�RA��B>z�B�\                                    Bu��x  �          A?��B�\A�@�G�B
\)B���B�\@�(�ABFffB��                                    Bu��  �          A?33�9��A\)@��HB��B��H�9��@��HAQ�BS�\B�                                     Bu���  �          A@  ��\)A%�@�
=A�p�B�
=��\)AG�A	G�B7ffB�Ǯ                                    Bu��j  �          A@�׿���A&�H@�33A��B�����A�HA�B333Bƅ                                    Bu��  �          A?���Q�A+\)@�(�A���B�Q쿸Q�Aff@��B$G�B�aH                                    Bu���  �          A?
=����A,��@��A��\B������A�@�\B��B���                                    Bu�\  �          A@z῱�A2�\@�
=A��\B�33���Ap�@�33B�HBĀ                                     Bu�  �          A@�׿�p�A5�@z=qA��B�\)��p�AG�@��HB
z�B�8R                                    Bu�!�  �          A@�׿}p�A4��@���A�33B���}p�AQ�@�ffB=qB��                                    Bu�0N  �          AAp���p�A5��@~�RA��B�Q쿝p�A��@���B33B�.                                    Bu�>�  �          AB=q��(�A733@o\)A�p�B£׿�(�A Q�@�{B��Bĳ3                                    Bu�M�  �          AA��\)A6�H@qG�A��B�����\)A�
@ָRB�\BÏ\                                    Bu�\@  �          A@�׿�  A733@`��A��B��῀  A!G�@θRB{B�W
                                    Bu�j�  �          A=��!G�A2ff@x��A���B�k��!G�A33@׮B
��B�aH                                    Bu�y�  �          A:�R�uA4z�@0��A[33B���uA"{@�A�\)B�Ǯ                                    Bu��2  �          A:ff>\A*�\@���A��B��>\A�@߮BB�8R                                    Bu���  �          A9�=�A6ff@
=A'�
B���=�A&�H@�=qAυB��                                    Bu��~  �          A8  ?&ffA6{?���@�  B�u�?&ffA)G�@�p�A�33B���                                    Bu��$  �          A6ff?��HA3�?�(�@�(�B�8R?��HA(  @���A�
=B�8R                                    Bu���  �          A5G�>�G�A4  ?�p�@ƸRB��\>�G�A(Q�@��A�ffB�B�                                    Bu��p  �          A5�>�(�A3�?�p�@�
=B���>�(�A((�@���A�=qB�Q�                                    Bu��  �          A4��?L��A3\)?��@�G�B��
?L��A(z�@}p�A�=qB�Q�                                    Bu��  �          A4��?��\A3�
>�G�@�RB��?��\A+�@XQ�A�\)B�33                                    Bu��b  �          A6{?s33A4��>���?\B�k�?s33A,��@P  A�p�B�                                      Bu�   �          A;33>�G�A4��@=p�Aj�HB��=>�G�A!�@��A���B�                                    Bu� �  �          A<  >�
=A3\)@[�A��B�>�
=A�R@�\)B z�B�33                                    Bu� )T  �          A<Q�>�Q�A2�H@]p�A�G�B�Q�>�Q�Aff@�  B
=B��
                                    Bu� 7�  �          A9=��
A3
=@:�HAiB��=��
A ��@�
=A�p�B�
=                                    Bu� F�  �          A:�R��A.�\@���A�ffB�33��A\)@ڏ\B\)B�ff                                    Bu� UF  �          A:=q>aG�A/�@uA�=qB�>aG�A@љ�B	�B�p�                                    Bu� c�  �          A;33?#�
A3�@K�A|Q�B�z�?#�
A Q�@�
=A��B��3                                    Bu� r�  �          A:�H>��A2�R@UA���B�.>��A�H@�33A�=qB��{                                    Bu� �8  �          A:�H>��RA.�H@�=qA�
=B���>��RAQ�@׮B{B�W
                                    Bu� ��  �          A;�
?�G�A*ff@���A�\)B�(�?�G�A��@��
B��B�G�                                    Bu� ��  �          A8  ?   A,  @�G�A�ffB��?   A@���Bp�B��H                                    Bu� �*  �          A733���
A.�H@W
=A��\B�B����
A\)@���A��HB�L�                                    Bu� ��  �          A6�R=��
A-G�@eA��HB��=��
A��@�\)Bp�B���                                    Bu� �v  �          A5�=�G�A+33@j�HA�G�B���=�G�A�R@�Q�Bz�B���                                    Bu� �  �          A6�\>�  A.�R@R�\A��B�aH>�  A�@�{A�G�B�\                                    Bu� ��  �          A5p���z�A,z�@UA�p�B���z�Ap�@�ffA��\B�ff                                    Bu� �h  �          A4�Ϳ�Q�A'\)@�33A�=qB�
=��Q�Ap�@ӅB�B���                                    Bu�!  �          A4�ÿ�\)A(��@uA��RB���\)A�
@˅B	{B���                                    Bu�!�  �          A4�Ϳ��A+33@XQ�A�\)B��ÿ��A  @��RA���Bó3                                    Bu�!"Z  �          A4�׿xQ�A,  @Tz�A���B�Q�xQ�AG�@��A�=qB��\                                    Bu�!1   �          A4Q쿀  A-�@?\)Av=qB��\��  A�@�33A�=qB��q                                    Bu�!?�  �          A4Q쿐��A.{@,��A]�B��쿐��A@�=qA�B�                                    Bu�!NL  �          A4�׿Y��A,z�@L(�A��B��ÿY��Aff@���A�(�B�                                      Bu�!\�  �          A5��=qA,  @^�RA���B�k���=qA��@�G�B z�B��
                                    Bu�!k�  �          A5G���=qA-G�@HQ�A�ffB�ff��=qA�@��RA�=qB��                                    Bu�!z>  �          A5p��
=qA1��@	��A.�HB���
=qA#�@��A�p�B�                                      Bu�!��  �          A5p��0��A,z�@Y��A��
B�G��0��A@�ffA�p�B�(�                                    Bu�!��  �          A4  ��(�A/33@G�A:ffB��R��(�A ��@�z�A�  B��
                                    Bu�!�0  �          A4Q����A%G�@{�A�\)B�\���A��@��HB�B�Q�                                    Bu�!��  �          A333���A-�@!G�APQ�B�����A�@��\A�=qB�u�                                    Bu�!�|  �          A2�H��(�A/�?�ffA�
B��3��(�A#33@��A��
B���                                    Bu�!�"  �          A3��333A0(�?�p�A"�RB�G��333A#33@��HA��B��)                                    Bu�!��  �          A3��8Q�A/�
@ffA,��B�p��8Q�A"ff@�ffA�(�B�\                                    Bu�!�n  �          A3\)�uA.ff@�AHQ�B��uA�
@��A�p�B��                                    Bu�!�  �          A/��c�
A+\)@  A<��B�� �c�
A��@�Q�AͅB�Q�                                    Bu�"�  �          A/�����A*�\@ffAF{B�uÿ���Az�@��HAљ�B�z�                                    Bu�"`  �          A/33�ǮA*�R@�HALz�B�.�ǮAz�@���A���B��\                                    Bu�"*  �          A/
=>�Q�A-�?�  @��B�=q>�Q�A"ff@�G�A�\)B�                                      Bu�"8�  �          A/
=?��A,��?���A�\B���?��A!@�(�A�\)B�33                                    Bu�"GR  �          A/\)?�\A-p�?�  @��HB���?�\A"�R@���A��\B�B�                                    Bu�"U�  �          A/�?5A-p�?�@�p�B��\?5A#33@|(�A��RB�{                                    Bu�"d�  �          A/�
?(��A.{?��@��B��?(��A#�
@z�HA�G�B��                                    Bu�"sD  �          A/�
?uA.=q?��\@��\B���?uA%p�@c�
A�33B�p�                                    Bu�"��  �          A/\)?�Q�A-�?E�@�G�B��
?�Q�A%G�@R�\A�  B�#�                                    Bu�"��  |          A.{=�Q�A*{?�(�@�33B�=�Q�A�
@z=qA��B���                                    Bu�"�6  �          A.ff���A)�@33AC�B�33���A�
@�ffA�G�B�#�                                    Bu�"��  �          A.ff>W
=A,��?��@�G�B�Ǯ>W
=A#33@tz�A�{B���                                    Bu�"��  �          A->�A,z�?��H@�(�B��>�A#\)@k�A�z�B���                                    Bu�"�(  �          A.=q��ffA,��?�\)@�\)B��R��ffA"�R@u�A��HB�                                      Bu�"��  �          A.=q���A,Q�?���@�ffB����A"�H@qG�A�Q�B�=q                                    Bu�"�t  �          A.ff����A(��@*=qAa��B�W
����A�\@���A�G�B��q                                    Bu�"�  �          A.{    A'\)@(��Ab�R��O�    A�@�
=Aۅ��O�                                    Bu�#�  �          A-��W
=A'�@��AR{B�=q�W
=A=q@���A��HB�p�                                    Bu�#f  �          A-녾�A#�@h��A�z�B����A�@��
B��B��R                                    Bu�##  �          A,�׾���A(  ?��
Ap�B�8R����AG�@��
A��B�p�                                    Bu�#1�  �          A)�&ffA'�>���?��B�
=�&ffA"=q@*�HAk�B�G�                                    Bu�#@X  |          A)��A\)@_\)A�(�B�
=��A�\@���BQ�B��q                                    Bu�#N�  �          A(Q�#�
A\)@VffA���B��f�#�
A
=@�Q�A�
=B��                                    Bu�#]�  �          A%p���A�
@�
=A�=qB���@��H@߮B2  B�aH                                    Bu�#lJ  �          A$z�}p�@�
=A�
BV�
Bƽq�}p�@~{A�B���B��)                                    Bu�#z�  �          A#
=�L��@�Q�@��HB0�B��{�L��@��Az�Bc�Bę�                                    Bu�#��  �          A&ff�0��@�z�@�\)B!�B�  �0��@�{A�BTB��R                                    Bu�#�<  �          A'\)�aG�@�z�@ٙ�B"=qB����aG�@�A{BU33B��                                    Bu�#��  �          A(  �#�
Aff@��B{B�녿#�
@ϮA\)BN{B�.                                    Bu�#��  �          A'��z�HAQ�@��HB�B�p��z�H@�p�A (�BG�RBģ�                                    Bu�#�.  �          A'��B�\A
=@�\)B  B��=�B�\@��A{BK��B��                                    Bu�#��  �          A'���ffA@�Q�B��B�8R��ff@�\)A{BKz�Bʮ                                    Bu�#�z  �          A(�Ϳ�{A��@��
BffB̀ ��{@ᙚ@��HB8�\B�u�                                    Bu�#�   �          A*�\>uA{@�{A�Q�B�
=>u@�
=@陚B-�B��                                    Bu�#��  �          A)p���AQ�@�  A��\B�����@�@�\B/ffB��H                                    Bu�$l  �          A)�>�z�A=q@���A��\B�k�>�z�@���@���B*Q�B���                                    Bu�$  �          A(��>ǮA�@�=qA�ffB�8R>Ǯ@��@�ffB%
=B�k�                                    Bu�$*�  �          A(  ��AQ�@�ffB  B��\��@��H@�RB5B��H                                    Bu�$9^  �          A(  �uA�@\Bz�B���u@�\)@�  B@
=B���                                    Bu�$H  �          A'�
���
A   @�33B�B�� ���
@���AffBOG�B���                                    Bu�$V�  �          A&=q���A�@fffA���B�  ���A�@��HB�B�W
                                    Bu�$eP  �          A$(�����A�@%Ak�B�8R����Ap�@�(�A�  B�Q�                                    Bu�$s�  �          A$(��B�\A�R@%�Ah��B�#׾B�\A=q@��
A�=qB�Q�                                    Bu�$��  �          A%>k�A�\@;�A�B�ff>k�A�@��RA�33B�(�                                    Bu�$�B  �          A&=q�\)A  @aG�A��HB��׾\)A��@��B 
=B���                                    Bu�$��  �          A&�\����A@R�\A���B�zᾙ��A33@���A�ffB��
                                    Bu�$��  �          A&=q�ǮA z�@+�An�RB�ff�ǮA  @��RA��
B�                                    Bu�$�4  �          A&{��A33@2�\Ay�B�uþ�Aff@���A�
=B��                                    Bu�$��  �          A$Q��A{@�z�A�{B�G���A�@��B�HB�{                                    Bu�$ڀ  �          A$�ͽL��A�H@��A�z�B��=�L��A�@�
=B  B���                                    Bu�$�&  �          A$��>L��Ap�@n�RA�{B���>L��A	@�(�B��B�W
                                    Bu�$��  �          A$��<�A��@vffA��B��3<�A��@�\)BG�B���                                    Bu�%r  �          A%>8Q�Ap�@vffA���B��>8Q�A	��@�\)B��B���                                    Bu�%  �          A&�H�B�\A!p�@ ��A_
=B���B�\A�@�Q�A�B�B�                                    Bu�%#�  �          A&�\>��HA#33?�A*�HB��\>��HAp�@}p�A�33B�33                                    Bu�%2d  �          A&=q?uA#�?�p�A�HB�B�?uA\)@aG�A��\B��3                                    Bu�%A
  �          A$z�?�A�@�AM��B��?�A��@�  A��
B�\                                    Bu�%O�  �          A>�ffA��@q�A�\)B�\)>�ffAp�@���B	
=B��3                                    Bu�%^V  �          A�ͽ��
A�R@�p�A�z�B�����
@��@θRB*�B�L�                                    Bu�%l�  �          A  ���A�R@n{A��B�W
���@��@�B��B��R                                    Bu�%{�  �          A�\)A  @$z�AqB���\)A��@��AԸRB���                                    Bu�%�H  �          A논��
A�
@^{A��\B�Q켣�
A@�\)B 
=B�W
                                    Bu�%��  �          Aff?�\Ap�@EA��B�?�\A��@��
A�
=B�.                                    Bu�%��  �          A�R���RA��@AZ�HB��쿞�RA=q@�p�AǅB��H                                    Bu�%�:  �          A�>��A��?���A(  B��f>��A�
@l��A��\B��R                                   Bu�%��  �          A Q�B�\A�?�33A/�B�(��B�\A  @r�\A�{B�L�                                   Bu�%ӆ  �          A (����
A\)@AG�A��B�=q���
A
=@���A癚B�B�                                    Bu�%�,  �          A!���
A\)@a�A�p�B�𤾣�
A	��@�G�A��HB�W
                                    Bu�%��  �          A$Q���A�@{�A��B������Az�@�Bz�B�aH                                    Bu�%�x  �          A$  ��A33@B�\A�Q�B���A�H@�33A�\B��                                    Bu�&  �          A#��=p�A33@FffA�33B��R�=p�A�H@���A�p�B�z�                                    Bu�&�  �          A"�H��G�A�@<��A��\B����G�A�
@�  A޸RB��=                                    Bu�&+j  �          A"�H�L��A  @2�\A~�HB�Q�L��Az�@�33A���B�\                                    Bu�&:  �          A#
=����A��@1G�A|Q�B��)����A��@��\AծB�(�                                    Bu�&H�  |          A(  >8Q�A$��?�p�A-B��>8Q�A�
@x��A�{B���                                    Bu�&W\  �          A0�Ϳ!G�A&{@hQ�A��B��f�!G�A(�@���A��B��                                    Bu�&f  h          A1�?���A+\)?�ffA�\B��?���A#�@a�A�
=B���                                    Bu�&t�  �          A2�H@�A.ff?���@�ffB��f@�A'33@W
=A�=qB�                                    Bu�&�N  �          A2ff?�{A/�?z�@>�RB���?�{A*�R@'
=AX��B�G�                                    Bu�&��  �          A1�@�\A-�?�\@'
=B���@�\A)p�@ ��AQ�B�=q                                    Bu�&��  �          A2{@ ��A.�H>W
=?�=qB�(�@ ��A+33@�RA8��B��R                                    Bu�&�@  �          A1��?�  A.=q?�  @�B��q?�  A(Q�@?\)AzffB��                                    Bu�&��  �          A1�?�33A.=q?�  @�\)B���?�33A&�H@^{A�\)B�\                                    Bu�&̌  |          A3�?�Q�A0(�?��
@�=qB�
=?�Q�A(��@`��A�  B�ff                                    Bu�&�2  �          A8Q�@(��A3\)>k�?��B��=@(��A/�@G�A5p�B�                                    Bu�&��  �          A9p�@�HA5G�>.{?W
=B��H@�HA1@{A0��B�k�                                    Bu�&�~  �          A9p�@p�A5�=L��>aG�B�  @p�A2�H@ffA&�RB���                                    Bu�'$  �          A9p�@z�A5����
�˅B��H@z�A3
=?�(�A��B���                                    Bu�'�  �          A9G�?�33A5���}p���p�B�
=?�33A5p�?��@�  B�
=                                    Bu�'$p  �          A8��?�A5G�?(��@R�\B�?�A0z�@*�HAV�\B�B�                                    Bu�'3  �          A8Q�@�A4Q����E�B�@�A1�?���AQ�B�u�                                    Bu�'A�  |          A8  ?\A5��zῷ
=B�?\A3�?�p�A
�RB��{                                    Bu�'Pb  �          A9�=uA0z�@X��A���B�aH=uA$(�@���A�B�Q�                                    Bu�'_  �          A9G��\(�A)��@���A�=qB�8R�\(�A=q@��B\)B�#�                                    Bu�'m�  �          A9p��(��A$��@��RA�ffB�W
�(��A�@�p�BQ�B�33                                    Bu�'|T  �          A8�ÿ�A-p�@y��A�(�B����A�
@�
=A�(�B�z�                                    Bu�'��  �          A8z��G�A0Q�@UA�
=B����G�A$Q�@�ffA���B�.                                    Bu�'��  �          A8�׿�=qA Q�@�ffA��B�\��=qA�H@�33B�B��H                                    Bu�'�F  �          A:=q�!G�A,Q�@���A��B��׿!G�A��@�B 33B�B�                                    Bu�'��  �          A<z��
=A-�@�z�A��B�p���
=A@�p�B(�B��H                                    Bu�'Œ  �          A=p�����A.=q@�(�A�=qB������A
=@�p�BQ�B��)                                    Bu�'�8  �          A<�þaG�A/�@�33A�
=B�=q�aG�A!�@���A�
=B�p�                                    Bu�'��  �          A=����
A-G�@�
=A�ffB��
���
A{@�\)B
=B��                                    Bu�'�  �          A=��p�A1G�@�
=A���B��쾽p�A#\)@���A�{B�(�                                    Bu�( *  �          A>=q?.{A5@Z�HA��
B�33?.{A*{@���AҸRB��q                                    Bu�(�  �          A=�>�33A7�@@��Aj�RB�� >�33A,��@��
A�  B�L�                                    Bu�(v  �          A>ff=�G�A733@P��A~ffB��f=�G�A,  @��A˅B���                                    Bu�(,  �          A>ff>�A7
=@K�AxQ�B�33>�A,(�@���A�{B��f                                    Bu�(:�  �          A?\)�\(�A3\)@��A��\B�Ǯ�\(�A&{@�z�A��B�z�                                    Bu�(Ih  �          A?��E�A6=q@c33A�ffB��q�E�A*ff@��
AՅB�B�                                    Bu�(X  �          A?�
��=qA0��@���A�p�B����=qA"ff@�Q�A�{B�{                                    Bu�(f�  �          A@(���=qA5p�@z=qA�  B����=qA(��@�{A��B��H                                    Bu�(uZ  �          A@  ��\)A6=q@q�A��RB���\)A*{@��A���B���                                    Bu�(�   �          A@Q�E�A4��@}p�A�  B��ͿE�A(Q�@�
=A�B�aH                                    Bu�(��  �          A?�
=uA8Q�@Q�A}�B�ff=uA-��@��\Aȏ\B�\)                                    Bu�(�L  �          A@  �@  A0��@�(�A��RB�Ǯ�@  A#33@\A��
B�ff                                    Bu�(��  �          A@���(�A#33@��RA��
B�33�(�A�@�  B�B��                                    Bu�(��  �          A?\)?W
=A:{@��A&{B��q?W
=A2ff@|(�A�p�B�aH                                    Bu�(�>  �          A>ff?}p�A5�@3�
A]G�B��?}p�A,��@��A���B��\                                    Bu�(��  �          A@Q�?�\A*�\@�p�A�G�B��?�\A�H@�Q�B�\B���                                    Bu�(�  �          A@Q�?
=A1p�@��\A�33B���?
=A$  @�  A��RB�u�                                    Bu�(�0  �          AAp�>���A4z�@��A�\)B���>���A'�@�Q�A�\B��                                    Bu�)�  �          AAp�>W
=A9G�@Z�HA�p�B��>W
=A.�R@��A�Q�B���                                    Bu�)|  �          AAG�>�(�A;
=@=p�Ab�HB�Ǯ>�(�A1��@��RA��B��\                                    Bu�)%"  �          A@z�fffA6ff@l��A�G�B���fffA+33@�z�A�33B��\                                    Bu�)3�  �          AAp���z�A3�
@��
A�G�B���z�A'�@���A�Q�B��                                    Bu�)Bn  �          AB�R�^�RA;33@J�HAqp�B�� �^�RA1p�@���A�{B���                                    Bu�)Q  �          ABff�fffA<��@.{AO\)B���fffA4  @��RA���B��                                    Bu�)_�  �          AB�\���HA@Q�?�z�@��B������HA:=q@\(�A��B���                                    Bu�)n`  �          AB�H�G�AA�?���@�33B�ff�G�A;�
@HQ�An=qB���                                    Bu�)}  �          AB�H�Tz�A>�H@�A$��B��ÿTz�A7�@z�HA�z�B�G�                                    Bu�)��  �          ADQ��A:�\@qG�A�
=B�33��A/�@�{A���B��                                    Bu�)�R  �          AD��<��
A4��@��A�=qB��q<��
A'33@θRA��B��R                                    Bu�)��  �          AD��    A6=q@��
A���B�\    A)p�@�\)A�B�\                                    Bu�)��  �          AD�ͿO\)A;\)@`  A���B��)�O\)A1G�@��A�p�B�Q�                                    Bu�)�D  �          AD  ��A@  @Q�A ��B����A9�@uA���B�#�                                    Bu�)��  �          AC�>��A8Q�@z�HA�Q�B�Q�>��A-G�@���A�Q�B�
=                                    Bu�)�  �          A@Q���A:=q?�
=@�z�Bȣ���A5�@E�Ao�B�8R                                    Bu�)�6  �          AA���G�A=?��RA  B��q��G�A733@j=qA�33B�{                                    Bu�* �  �          A@���|(�A*�H@uA�33B܅�|(�A Q�@��A�  B��                                    Bu�*�  �          AB{�.{A4��@\��A�ffB�(��.{A+
=@�  A�G�BО�                                    Bu�*(  �          AC\)�=qA6�H@`  A��B����=qA-�@�=qA�z�B��                                    Bu�*,�  �          AEG��{A8Q�@eA�\)B�33�{A.�\@��A��B̀                                     Bu�*;t  �          AE�����A;�
@J=qAm�BȞ����A2�H@�  A�33Bɞ�                                    Bu�*J  �          AC\)�I��A:�\?c�
@��RB�.�I��A6�H@\)A=B�Ǯ                                    Bu�*X�  �          AC33�C33A<Q�?p��@���B�\�C33A8z�@"�\A@z�Bѣ�                                    Bu�*gf  �          AE���\AA�?5@U�Bɀ ��\A=��@ffA0z�B��)                                    Bu�*v  �          AE���p�AA��?�=q@���BȨ��p�A=p�@-p�AK
=B��                                    Bu�*��  �          AC���33A>�\@ffA�\BøR��33A8Q�@l(�A��RB�B�                                    Bu�*�X  �          AB{�n{A>�\@�A�B��n{A8z�@fffA��\B�8R                                    Bu�*��  �          ABff���\A?33?�Q�A�B��R���\A9G�@aG�A��HB�                                   Bu�*��  �          AC���{A?�@�
A�HB�녿�{A9p�@hQ�A�{B�W
                                    Bu�*�J  �          AC�
��G�A@��?��@�
=B��=��G�A;�@N{At��B���                                    Bu�*��  �          AD  �У�A@��?�z�@��HB�k��У�A<(�@>{Aa�B�Ǯ                                    Bu�*ܖ  �          AD(��Q�AA?��@�G�B��q�Q�A=p�@7
=AXz�B��                                   Bu�*�<  �          AE��G�AD(�>�{?�=qB�  ��G�AA?�
=A�B�(�                                   Bu�*��  �          AEp��\AC�
>�\)?��
B�(��\AA��?���A
=qB�Q�                                    Bu�+�  �          AE���\)AC\)���
��33B�\��\)AA�?��R@�
=B�.                                    Bu�+.  �          AD  ��\)AB�H>8Q�?Q�B�uÿ�\)A@��?�p�A{B��\                                    Bu�+%�  �          AA���G�A?��333�S33B���G�A?�?Tz�@|��B�                                   Bu�+4z  �          A@Q�B�\A=��?���@�ffB��H�B�\A9@'�AK33B��                                   Bu�+C   �          A?�>B�\A=p�?��\@�p�B�(�>B�\A9�@   AB{B��                                    Bu�+Q�  �          A?�
��  A=?W
=@�Q�B��׿�  A:�\@�
A2�\B���                                    Bu�+`l  �          AAp����
A>ff?@  @e�B¨����
A;�@{A*=qB��H                                    Bu�+o  �          AA��� ��A;33���H�B�(�� ��A=���  ��
=B��                                    Bu�+}�  |          A@�׿���A=녿�p����B��׿���A>�H>u?��B��{                                    Bu�+�^  �          A>ff>���A=p����.�RB��>���A=�?aG�@���B��                                    Bu�+�  T          A=G�����A:{�\���B��Ϳ���A;����;�B��R                                    Bu�+��  |          A<(��uA9�n{���B����uA:{>��@�
B���                                    Bu�+�P  �          A;\)>��A:ff�8Q��b�\B�>��A:ff?.{@UB�                                    Bu�+��  �          A;�
��A9�˅����B�Lͼ�A;��B�\�p��B�L�                                    Bu�+՜  �          A;��ǮA8�ÿ�\)��\B���ǮA;
=���H��B�Ǯ                                    Bu�+�B  �          A;\)���A5p��'
=�M�B�zῑ�A9���  ���B�B�                                    Bu�+��  |          A=���{A9p��\��{B��f��{A;
=�#�
�B�\B���                                    Bu�,�  �          AA�>�ffA?\)?��@��
B��q>�ffA;�@-p�APz�B���                                    Bu�,4  �          AA?\)A@Q�?��@ʏ\B���?\)A<��@-p�AO33B��\                                    Bu�,�  �          AC�<��
AB=q?�=q@��HB��)<��
A>�H@p�A:�RB��)                                    Bu�,-�  �          AFff�5AE�?L��@n�RB��\�5ABff@��A$Q�B���                                    Bu�,<&  �          AG\)<#�
AD��?���A�\B��f<#�
A@Q�@L��An�\B��f                                    Bu�,J�  �          AHQ쿵AB�H@p�A#
=B�=q��A=@c�
A��HB���                                    Bu�,Yr  �          ALQ�#�
A9��@���A�G�B�Q�#�
A.�H@���A��\B��3                                    Bu�,h  �          AJ�R���
A2=q@�Q�A��B�L;��
A&ff@�RB
�
B��                                    Bu�,v�  �          AJ�R>ǮA6ff@��\A�ffB�>ǮA+�
@��A��B�Ǯ                                    Bu�,�d  �          AI>�=qA9�@�
=A�p�B�G�>�=qA1p�@��RA��
B�(�                                    Bu�,�
  �          AI�=p�AC�
@z�A��B�녿=p�A?
=@X��A|��B��                                    Bu�,��  �          AJ�R���HAAp�@S�
Ar=qB�#׿��HA:�R@�33A�Q�BĸR                                    Bu�,�V  �          AI��  A@��@B�\A^�RB�.�  A:=q@��A��B��H                                    Bu�,��  �          AJ�\�+�A>{@\(�A|(�B�p��+�A7
=@�A��B�\)                                    Bu�,΢  �          AL  �/\)A>ff@j=qA�p�B���/\)A7
=@���A���B��                                    Bu�,�H  �          AL(����A@��@c33A�\)BȨ����A9��@���A���B�k�                                    Bu�,��  �          AL����\A>{@��
A�z�B�Ǯ��\A6{@��HAŮBʳ3                                    Bu�,��  �          ALQ��.�RA<��@~{A��HB�
=�.�RA5G�@�p�A�p�B�{                                    Bu�-	:  �          ALQ쿽p�AB{@eA��B�녿�p�A;
=@��\A�=qB�k�                                    Bu�-�  �          AL�þ�G�AI@�RA   B��þ�G�AD��@`��A~=qB�
=                                    Bu�-&�  �          AL�þ\AK�?��H@љ�B�k��\AH  @0  AFffB�z�                                    Bu�-5,  �          AMp���
=AL  ?�(�@��RB�Ǯ��
=AI�@   A4Q�B���                                    Bu�-C�  �          AL�׾�\)AJ=q?У�@�33B��=��\)AF�\@8��AQB��{                                    Bu�-Rx  �          AJ�H���AIp�?��@�33B�\)���AFff@"�\A9G�B�ff                                    Bu�-a  �          AIG���(�AHz�>��@	��B���(�AF�R?��H@��\B���                                    Bu�-o�  �          AH�Ϳ�Q�AEp�?�A�RB���Q�AA��@B�\A`��B�=q                                    Bu�-~j  �          AHzᾳ33AG
=�=p��Y��B�.��33AG33>�@��B�.                                    Bu�-�  �          AI���AH�׿�����
=B�Q���AIp�<��
=���B�Q�                                    Bu�-��  �          AIp�=L��AH  ��Q��љ�B��==L��AIp��aG����\B��=                                    Bu�-�\  �          AH��?fffABff�AG��^�RB��{?fffAF{���33B��q                                    Bu�-�  �          AI�?}p�ADz��{�5p�B���?}p�AG\)������B���                                    Bu�-Ǩ  �          AI��?s33AF=q�   �=qB�=q?s33AHQ�Q��p  B�Q�                                    Bu�-�N  |          AF�R?�AD�ÿ������HB��3?�AF{�#�
�:�HB��R                                    Bu�-��  �          AFff��(�AEp����(�B�  ��(�AEG�?�R@8��B�                                      Bu�-�  �          AC����A@  @(�A%G�B�=q���A<  @R�\AyB�\)                                    Bu�.@  �          AD��?c�
A=p�@I��Amp�B�p�?c�
A8  @��RA���B�33                                    Bu�.�  �          AF�H?���A>{@Z=qA~�HB�.?���A8Q�@�
=A���B��
                                    Bu�.�  �          AG\)?0��AC\)@
=qA�
B��=?0��A?�@P  Ar�\B�ff                                    Bu�..2  �          AH(�>8Q�AE��?��A  B�G�>8Q�AB=q@8��AV{B�B�                                    Bu�.<�  �          AIp���\)AG�?˅@�Q�B��׽�\)AD��@,(�AE��B���                                    Bu�.K~  �          AIG���\)AH  ?�  @��\B�����\)AE@ffA{B���                                    Bu�.Z$  �          AJ{>�{AG\)?�33@��B��H>�{AD(�@.�RAHz�B���                                    Bu�.h�  �          AJ�H>ǮAG33@z�A(z�B�k�>ǮAC33@X��Ax(�B�W
                                    Bu�.wp  �          AL  ?\(�AI�?�33A	��B�8R?\(�AE��@>�RAXz�B�{                                    Bu�.�  �          AL��?Q�AH��@��A{B��?Q�AEG�@L��Ah(�B�ff                                    Bu�.��  �          AM�?�AH��@ ��A4��B��
?�ADz�@c�
A�G�B��q                                    Bu�.�b  �          AMp�?J=qAH��@\)A2�HB�?J=qAD��@a�A�
B���                                    Bu�.�  �          AN=q?
=qAK�?��RA�\B�.?
=qAH(�@C33AZ�HB��                                    Bu�.��  �          AM��?:�HAJ�\@33A�\B�p�?:�HAG
=@E�A^ffB�W
                                    Bu�.�T  �          AMG�?�=qAF�H@2�\AI��B�{?�=qAB�\@s33A�Q�B��)                                    Bu�.��  �          AMp�?J=qAH  @#33A8  B�Ǯ?J=qAD(�@c�
A�G�B���                                    Bu�.�  �          ANff?�G�A>�R@��
A�=qB���?�G�A8(�@�=qA���B��                                    Bu�.�F  �          ANff?�  A>{@��RA�\)B�G�?�  A7�@���AϮB��3                                    Bu�/	�  �          AO
=?�Q�A>�\@�
=A�\)B���?�Q�A8  @���A�p�B�8R                                    Bu�/�  �          AN�H@�\A;\)@�33A��B�G�@�\A4Q�@�  A�G�B��                                    Bu�/'8  �          AO�?�Q�A<  @��
A��B�=q?�Q�A5�@���A�G�B��=                                    Bu�/5�  �          AM>���AG�@AG�AY��B��>���AC33@~�RA�Q�B��)                                    Bu�/D�  �          AO�
?�{AF{@l(�A�(�B��q?�{A@��@��
A�33B�z�                                    Bu�/S*  �          AP  =�\)A<��@���A��HB�\)=�\)A5��@���A�B�W
                                    Bu�/a�  �          AN�H=L��A>�H@�=qA�  B��=L��A8z�@��RAҏ\B��                                     Bu�/pv  �          AO33>�(�AHQ�@L(�Ad(�B�\>�(�AD  @��A�Q�B���                                    Bu�/  �          AO�>�AG
=@eA��\B���>�AB=q@�  A�z�B��3                                    Bu�/��  �          AO33?
=qAD��@}p�A��\B�?
=qA?�@�33A�=qB��H                                    Bu�/�h  �          AO�
?5AEp�@|��A�B�k�?5A@Q�@��HA��B�=q                                    Bu�/�  �          AO�?��AG
=@b�\A}G�B�z�?��ABff@�A���B�B�                                    Bu�/��  �          AO
=?�G�AH  @E�A\��B���?�G�AD  @~{A�
=B���                                    Bu�/�Z  �          AO\)?uAH��@AG�AW�
B�L�?uAD��@y��A�Q�B��                                    Bu�/�   �          AO\)?���AHz�@H��A`  B�=q?���ADz�@�Q�A�{B�
=                                    Bu�/�  �          AN�H?�G�AG�
@HQ�A`  B���?�G�AC�
@\)A��
B���                                    Bu�/�L  �          AL��?��AJ�R?}p�@�p�B�z�?��AI�?�{A��B�aH                                    Bu�0�  �          AMG�@�AHQ�?�=q@��HB�@�AF�\?�
=A
�HB��
                                   Bu�0�  �          AN�H?�AK33@�\Ap�B��?�AHz�@8��AO33B�aH                                   Bu�0 >  �          AN�\?�p�AH��@�A�B�{?�p�AF=q@AG�AXQ�B��
                                    Bu�0.�  �          AN�R@ ��AG33@
=A(z�B�=q@ ��AD(�@K�Ad(�B��f                                    Bu�0=�  �          AN�H@AG�AD��@��A/
=B�p�@AG�AA�@P  Ai��B�                                    Bu�0L0  �          AP��@Tz�A:�H@�\)A�=qB�Q�@Tz�A5��@�\)A���B�p�                                    Bu�0Z�  �          AUp�@\(�AB{@��A���B�aH@\(�A=�@�Q�A�33B��{                                    Bu�0i|  �          AW33@?\)AG�@�  A�ffB�
=@?\)AC
=@���A���B�p�                                    Bu�0x"  �          AV=q@   AEp�@�\)A�  B��{@   A@Q�@�  A\B��                                    Bu�0��  �          AY�@�AI��@��A���B�z�@�AD��@��HA�33B���                                    Bu�0�n  �          AZ{?�ffAMp�@��A��B�z�?�ffAH��@�33A��B�8R                                    Bu�0�  �          AYG�?�ffAS�@5AAp�B���?�ffAPQ�@h��Ayp�B���                                    Bu�0��  �          A[�?0��AV�H@%A.{B�(�?0��AT  @X��Ae��B�{                                    Bu�0�`  �          A\��>ǮAYp�@�A�B��R>ǮAV�R@K�AT��B��                                    Bu�0�  �          A^{>��AZ�\@�HA z�B�Ǯ>��AW�
@N{AW
=B�                                    Bu�0ެ  �          A_33����A\Q�?�
=@�z�B�  ����AZ�\@\)A�
B��                                    Bu�0�R  �          A`  ��(�A\��?�p�@�B�(���(�AZ�H@!�A&�RB�G�                                    Bu�0��  �          A`�ÿ��\A]��@��A�
B�k����\A[33@;�A@z�B��                                    Bu�1
�  �          Ab{��A^�H@�A��B�Q��A\z�@Dz�AH��B�\)                                    Bu�1D  �          Ab�H��
=A^�R@�HAG�B��׿�
=A\(�@L��AP��B�                                    Bu�1'�  �          Ab�H�aG�A_
=@��A
=B�.�aG�A\��@J=qAN{B�B�                                    Bu�16�  �          Ac��z�A_\)@�RA�B��R�z�A]�@@  AC�B�                                    Bu�1E6  �          Ag\)��33AY@��RA�  B�����33AUp�@�{A���B��)                                    Bu�1S�  �          AeG��
=qA\��@b�\AeB�p��
=qAYG�@���A���B��                                    Bu�1b�  �          Abff?p��A]���H��\B�B�?p��A^�H��
=�ۅB�Q�                                    Bu�1q(  �          Af�R?�G�Ae����B���?�G�Aep�?#�
@#�
B��                                    Bu�1�  �          Ah��?��\Ae�?��
@���B��?��\Ad(�@!�A (�B��)                                    Bu�1�t  �          Ai?8Q�Af{@�HAQ�B�B�?8Q�Ac�@I��AG�B�33                                    Bu�1�  �          Aj�\�#�
Aa�@|(�Ay��B�{�#�
A^ff@���A�(�B�{                                    Bu�1��  �          Ak���RAX  @��A��B�8R��RAS33@�\)A���B�W
                                    Bu�1�f  �          Am���ALz�@�{A�B��3��AF=qA�B�B��)                                    Bu�1�  �          Anff>��
AFffA  B��B�  >��
A?�A��B�HB��f                                    Bu�1ײ  �          Ao33��G�A;�
A=qB=qB�Ǯ��G�A4z�A33B"\)B�.                                    Bu�1�X  �          Ap  ���HA4Q�AffB ��Bǽq���HA,��A"�HB+z�Bș�                                    Bu�1��  �          Al  �G�A*{A�RB)�B���G�A"ffA&�\B4(�B�8R                                    Bu�2�  �          Ai��<��Ap�A$��B4\)B�\)�<��A��A,(�B>��B�                                    Bu�2J  �          Af�H�O\)AQ�A!B1�Bأ��O\)A��A(��B;�B�aH                                    Bu�2 �  �          Ag\)�33A'�A�HB(G�B�Ǯ�33A Q�A"=qB2z�B��)                                    Bu�2/�  �          Af�R��G�A)�A�B'�B��f��G�A"{A!p�B1�
BǸR                                    Bu�2><  �          Ak33��A/�A33B ��B��)��A(��A�RB*��Bʽq                                    Bu�2L�  �          Am���z�A>�\A
=qB33BǸR�z�A8Q�AffB�B�aH                                    Bu�2[�  �          An�R��Q�AI��@��A�(�Bŏ\��Q�AD  Az�B�B�
=                                    Bu�2j.  �          Ap�Ϳ��AX��@��
A�ffB��)���ATz�@�{A��B��                                    Bu�2x�  �          AqG���33A[\)@�33A��HB�����33AW
=@�p�A�(�B��)                                    Bu�2�z  �          Arff����A\��@��A�z�B�����AXz�@��
A�p�B�33                                    Bu�2�   �          Ar�\�G�Ah  @�G�Axz�B�(��G�Ae�@�(�A�
=B�=q                                    Bu�2��  �          At�Ϳ��Ac�
@�z�A�
=B��R���A`(�@��RA��B��H                                    Bu�2�l  �          At  �5AlQ�@hQ�A\��B�uÿ5Ai@�
=A���B��                                    Bu�2�  �          Au���\)Ag�@���A��B��)��\)AdQ�@��HA���B���                                    Bu�2и  �          Av{���Ae�@�Q�A�ffB�
=���Abff@��A�(�B�(�                                    Bu�2�^  �          Au��AhQ�@��A�=qB�{��AeG�@��A��B�B�                                    Bu�2�  �          As�
�)��AiG�@eAZ=qBș��)��Af�H@�z�A|Q�B���                                    Bu�2��  �          Aw���HAf{@�p�A�=qB�{��HAb�R@�ffA�
=B�W
                                    Bu�3P  �          Ay����AhQ�@�ffA�{B����Ae�@�\)A��RB�                                      Bu�3�  �          Az�H��\)Ai@��A��
B{��\)Af�\@�(�A�=qB���                                    Bu�3(�  �          Ao��
=A=p�AQ�B�B����
=A8(�A
=B=qB���                                    Bu�37B  �          Ao33����AAA
=B33B�W
����A<��A��B33B���                                    Bu�3E�  �          ApQ�=#�
AM�@��A���B���=#�
AH��A  B\)B���                                    Bu�3T�  �          Apz�\)AL(�@�A��HB�B��\)AG�AB33B�G�                                    Bu�3c4  �          Aqp�<��
AS�
@�{A�{B���<��
AO�
@�(�A�p�B���                                    Bu�3q�  �          Ar�R<#�
Ab�\@��A�33B��<#�
A_�@��
A�=qB��                                    Bu�3��  �          As���Q�AQp�@�A�z�B�W
��Q�AMG�A��B ��B��\                                    Bu�3�&  �          At�ÿ�  AN{A33B�B��
��  AIA	B�B�                                    Bu�3��  �          Avff���A\Q�@ڏ\A��HB��{���AX��@�  A�33B���                                    Bu�3�r  �          Ax  ���\Ac�@��HA���B�(����\A`z�@У�A�
=B�G�                                    Bu�3�  �          AyG��aG�Aj�\@�(�A��B��H�aG�Ah  @�=qA�B��                                    Bu�3ɾ  �          Az=q����An{@�\)A�
=B�� ����Ak�@�p�A���B��                                    Bu�3�d  �          Ay��\)Ar�R@]p�AMG�B����\)Ap��@y��Ah  B��                                    Bu�3�
  �          Az�R��\)Azff>�ff?�B���\)Az{?fff@S�
B�                                    Bu�3��  �          A|Q�(��At��@\��AJ�HB��f�(��As33@w�Ad��B��                                    Bu�4V  �          A~�H�J=qAz�H@��A�B��q�J=qAy��@8Q�A'\)B�                                    Bu�4�  �          A�(��xQ�A}?��H@���B��ÿxQ�A|��@��A	p�B�                                      Bu�4!�  �          A������A���?��\@��B��Ϳ���A�Q�?�Q�@�Q�B���                                    Bu�40H  �          A��+�A�33?�  @^{B���+�A��H?�@�
=B��                                    Bu�4>�  �          A��
��A���>�
=?��HB��
��A�p�?W
=@;�B��
                                    Bu�4M�  �          A�33?�=qA�(�������B���?�=qA�ff�k��J�HB��
                                    Bu�4\:  �          A��?�G�A�p������w�B��?�G�A����8Q��p�B��                                    Bu�4j�  �          A�p�?�(�A��Ϳ���dz�B��R?�(�A��ÿ&ff�(�B��R                                    Bu�4y�  �          A��?�
=A�=q��ff���B�L�?�
=A�zΐ33�x��B�Q�                                    Bu�4�,  �          A���?��A�ff����tz�B�G�?��A��\�=p��   B�G�                                    Bu�4��  �          A�=q?J=qA�G���ff��=qB���?J=qA���������B���                                    Bu�4�x  �          A�=q?L��A�33������z�B��{?L��A����Q����
B���                                    Bu�4�  �          A�Q�?�RA�33��p���B��
?�RA�p���{��{B��
                                    Bu�4��  �          A�z�>W
=A�
=�����HB���>W
=A�\)������(�B���                                    Bu�4�j  �          A��R>�  A�{��ff��{B�Q�>�  A�Q쿘Q���  B�Q�                                    Bu�4�  �          A�z�>��A�����
��  B�B�>��A���Q����HB�B�                                    Bu�4�  �          A���?
=qA�=q�B�\�$(�B�W
?
=qA��R�-p��{B�\)                                    Bu�4�\  �          A�
=>��A�(���z���(�B�G�>��A�ff��=q����B�G�                                    Bu�5  �          A�
=>�
=A�{��\)��Q�B�.>�
=A�Q�����p�B�.                                    Bu�5�  �          A�z�L��A�
=����(�B�\)�L��A�\)��\)��=qB�\)                                    Bu�5)N  �          A�G�?8Q�A��׿�\)��
=B�?8Q�A��Ϳ����l(�B�
=                                    Bu�57�  �          A�
=>�=qA��R�fff�EB�#�>�=qA��Ϳ(��B�#�                                    Bu�5F�  �          A�ff>W
=A�33���B��=>W
=A�p����ȣ�B��=                                    Bu�5U@  �          A�Q�>\)A�\)��z����
B�>\)A����У���p�B�                                    Bu�5c�  �          A��׾��A�G���
��z�B��)���A������ƸRB��)                                    Bu�5r�  �          A�\)@   A��������z�B�(�@   A�������  B�.                                    Bu�5�2  �          A�p�?�G�A�p���\���B�B�?�G�A����\��G�B�G�                                    Bu�5��  �          A�33?Q�A�p�����  B�Q�?Q�A��������B�W
                                    Bu�5�~  �          A�33?W
=A�ff������
B�.?W
=A��\�����s33B�33                                    Bu�5�$  �          A��?L��A��ÿ}p��X��B�u�?L��A�
=�@  �&ffB�u�                                    Bu�5��  �          A��
?z�A����&ff��RB�\?z�A�����(����HB�\                                    Bu�5�p  �          A�=q?�=qA����   ��33B�#�?�=qA��Ϳ��
�ÅB�(�                                    Bu�5�  �          A�  ?z�A�\)�h���G
=B�?z�A�p��333���B�                                    Bu�5�  �          A��?�A�
=��Q���=qB�aH?�A���z�H�XQ�B�aH                                    Bu�5�b  �          A����z�A����=q��=qB�  ��z�A�33����y��B�                                      Bu�6  �          A�����A�Q쿬������B��쿵A�ff��z���Q�B���                                    Bu�6�  �          A���.{A������z�HB���.{A�33�u�S33B��                                    Bu�6"T  �          A�(�=���A�p��fff�Dz�B�Q�=���A���8Q���RB�Q�                                    Bu�60�  �          A�Q켣�
A�  �����p��B�.���
A�{�n{�L(�B�.                                    Bu�6?�  �          A�=q����A�  ��׿˅B�8R����A�  �������B�8R                                    Bu�6NF  �          A�G����
A���(���\)B��{���
A�33��\���HB��{                                    Bu�6\�  �          A�G����A�
=�0���B��q���A���
=q��B��q                                    Bu�6k�  �          A���<#�
A��Ϳ�=q���B���<#�
A��H��Q���(�B���                                    Bu�6z8  �          A�녾�33A��H��G���33B�aH��33A��ÿ�\)����B�aH                                    Bu�6��  �          A��R?�33A���X���7
=B���?�33A�G��P���0(�B���                                    Bu�6��  �          A��H@\)A�
=�U�3�
B��3@\)A�33�N{�-p�B��R                                   Bu�6�*  �          A�G�@A����h���D  B���@A����a��=�B�                                      Bu�6��  �          A�G�?��
A����\)�G�B���?��
A���Q���
=B�                                      Bu�6�v  �          A�p�?�33A�����\���B�=q?�33A����
=��
=B�=q                                    Bu�6�  �          A�\)?�  A�zῦff���HB���?�  A��\���H����B���                                    Bu�6��  �          A���@��A����
=���B��@��A����˅��=qB��                                    Bu�6�h  �          A��@'�A���������HB�W
@'�A�
=����=qB�\)                                    Bu�6�  �          A�z�@333A�
=�x���O�B��@333A���s�
�K�B��                                    Bu�7�  �          A�33?�
=A���
=��G�B�.?�
=A����\���B�.                                    Bu�7Z  �          A��?Y��A�ff���
���
B�aH?Y��A�z��(����B�aH                                    Bu�7*   �          A��H@K�A�ff��{�_\)B�G�@K�A�z���z��\z�B�L�                                    Bu�78�  �          A��H@EA�p��e�?�B�
=@EA���c33�<��B�\                                    Bu�7GL  �          A��H@(�A����Z�H�5�B�33@(�A�
=�XQ��3�B�8R                                    Bu�7U�  �          A�\)?��
A����0  �G�B���?��
A����-p��33B���                                    Bu�7d�  �          A�
=@A���Tz��-��B��@A����R�\�,  B��                                    Bu�7s>  �          A�z�?�
=A�
=�E�"�\B�#�?�
=A���Dz��!G�B�(�                                    Bu�7��  �          A���?��A�=q��  �S33B�\)?��A�=q�z�H�O\)B�\)                                    Bu�7��  �          A���>�
=A�  ?�p�@��B�33>�
=A�  ?�  @���B�33                                    Bu�7�0  �          A�  ?+�A��
>Ǯ?�ffB��{?+�A�>���?���B��{                                    Bu�7��  �          A�z�?!G�A�ff=L��>.{B���?!G�A�ff=L��>.{B���                                    Bu�7�|  �          A���?}p�A�=q��R��B�p�?}p�A�=q��R��
B�p�                                    Bu�7�"  �          A�
=?#�
A��;�33��z�B���?#�
A��R��Q쿙��B���                                    Bu�7��  �          A��?�p�A�G�����{B��?�p�A�G����  B��                                    Bu�7�n  �          A�p�?#�
A��\��=q�dz�B�?#�
A��\�����h��B�                                    Bu�7�  �          A���?   A�33�:�H��HB���?   A�33�@  �!G�B���                                    Bu�8�  �          A���?�A����z����HB�\?�A�p���Q���ffB�\                                    Bu�8`  �          A��R?#�
A�z�8Q�(�B��?#�
A�z�aG��@  B��                                    Bu�8#  �          A���>uA�z�?�p�@�ffB�ff>uA�z�?�Q�@���B�ff                                    Bu�81�  �          A�(�>.{A��?�z�@�=qB��
>.{A��?�{@���B��
                                    Bu�8@R  �          A��H>��A�z�?��H@�ffB���>��A�z�?�z�@�  B���                                    Bu�8N�  �          A���>��RA�z�?p��@P  B��f>��RA��\?aG�@B�\B��f                                    Bu�8]�  �          A���?�\A��R?
=q?��B��?�\A��R>�?�33B��                                    Bu�8lD  �          A��?�A�p�?��@~{B�?�A�p�?���@n{B�                                    Bu�8z�  �          A��?�  A���?���@��B�  ?�  A��R?�\)@���B�                                      Bu�8��  �          A���>\)A��@Q�AB�  >\)A���@33AG�B�                                      Bu�8�6  �          A��H    A�\)@{A
�RB���    A�p�@Q�A�B���                                    Bu�8��  �          A�{<��
A�(�@&ffA�B��)<��
A�=q@ ��AffB��)                                    Bu�8��  �          A~�R�aG�A}�?�?��B�W
�aG�A}�>�(�?ǮB�W
                                    Bu�8�(  �          Aup��   Ar{@Q�A�HB��q�   Ar=q@�\A	G�B��q                                    Bu�8��  �          Am=uAdz�@�G�A|��B��\=uAd��@|��Av�HB��\                                    Bu�8�t  �          AlQ�
=qAc\)@~�RAz=qB�ff�
=qAc�@xQ�At(�B�aH                                    Bu�8�  �          AlQ�0��Ac33@\)AzffB���0��Ac�@x��At  B��                                    Bu�8��  �          Ak\)���RA`(�@�G�A��B�����RA`��@�A�=qB��                                    Bu�9f  �          Am�W
=Ac�
@�33A�ffB��R�W
=AdQ�@�  Ay�B��3                                    Bu�9  �          A^ff���
A^{>��H@G�B�(����
A^{>\?���B�(�                                    Bu�9*�  �          AL��    AK�?�G�@�G�B�
=    AK�?h��@�=qB�
=                                    Bu�99X  �          AP  ���
AO�?Tz�@h��B�#׼��
AO�?8Q�@J=qB�#�                                    Bu�9G�  �          AH�׿�=qA6ff@��RA�ffB�B���=qA7
=@��A�z�B�8R                                    Bu�9V�  �          A;���RA:=q?k�@�Q�B�
=��RA:ff?Q�@�  B�
=                                    Bu�9eJ  �          A=G����A8z�@
=qA(��B����A8��@33A Q�B��q                                    Bu�9s�  �          AAp��-p�A*ff@�A�\)BЅ�-p�A+
=@��\A�33B�ff                                    Bu�9��  �          AI���s33A$(�@�  A�Bܙ��s33A%�@�z�A陚B�aH                                    Bu�9�<  �          AJ=q��z�A+33@B�\A{
=Bţ׿�z�A+�@;�Aq�Bř�                                    Bu�9��  �          AO�@AH  �z��%p�B���@AG�����.�RB�                                    Bu�9��  |          AMp�@AC33�L(��fffB�=q@AB�R�Tz��o�
B�.                                    Bu�9�.  �          AS33@"�\AN�H�5�C�
B�Ǯ@"�\AN�R�W
=�j�HB�                                    Bu�9��  �          AP(�?�\)AM��@  �R�\B�ff?�\)AL�ÿc�
�z=qB�aH                                    Bu�9�z  �          AP��?��RAN�\��R�.�RB��
?��RANff�B�\�W�B���                                    Bu�9�   �          AS�
?�=qAP��?��\@�{B�=q?�=qAP��?^�R@r�\B�=q                                    Bu�9��  �          AUG�@{AK�
@333AB�\B��@{ALQ�@)��A8  B�(�                                    Bu�:l  �          AS33?�AP�ÿE��VffB�u�?�AP�׿n{����B�u�                                    Bu�:  �          AR�H?333AQ�c�
�xQ�B��H?333AQ����ff��=qB��H                                    Bu�:#�  �          AR�\�L��AN�\������\B�#׿L��AN=q��Q�����B�#�                                    Bu�:2^  �          AXz�.{AQ@C33AQG�B��f�.{ARff@8Q�AEB��H                                    Bu�:A  �          AXzῸQ�AS�@
=A ��B�zῸQ�AT  @(�AG�B�p�                                    Bu�:O�  �          AY����AR=q@:�HAF�\BĔ{��AR�R@0  A:�RBĊ=                                    Bu�:^P  �          AS�
��ffAK�@HQ�A[
=B����ffALQ�@=p�AO
=B�\                                    Bu�:l�  �          AY��B�\AN=q@uA�Q�B��3�B�\AO
=@j=qA|Q�B��                                    Bu�:{�  �          AYG�?��AMG�@���A��RB���?��AN{@vffA�z�B��                                    Bu�:�B  �          AXzᾊ=qAM�@�G�A�  B�\)��=qAN{@��A���B�\)                                    Bu�:��  �          AZ{�:�HAJ=q@�
=A��B����:�HAK33@�G�A��B��{                                    Bu�:��  �          AZ�\>�(�AN�\@�p�A�
=B�#�>�(�AO�@�\)A�z�B�(�                                    Bu�:�4  �          A_���=qAR�R@��
A�=qB��=��=qAS�@�A���B�z�                                    Bu�:��  �          A^=q��\)AT  @l��Ax(�B���\)AT��@`  Aj�RB��R                                    Bu�:Ӏ  �          Ab�H�5AUp�@�p�A�(�B���5AV�\@�
=A�\)B�\                                    Bu�:�&  �          A_\)��
=AG�@�\)A�=qB����
=AH��@�G�A�\)B�Ǯ                                    Bu�:��  �          A_\)�#�
AA��@޸RA�G�B�uþ#�
AC33@���A�=qB�u�                                    Bu�:�r  �          ATQ쿞�RA#�@�Bz�B��
���RA%p�@���B��B��                                    Bu�;  �          AT�׿z�HA/33@�=qA���B�8R�z�HA0��@���A��
B�#�                                    Bu�;�  �          A\(��uAV=q@Dz�AN=qB�\�uAW
=@6ffA?�
B�
=                                    Bu�;+d  �          A[\)����AV�H@.{A7
=B�\)����AW�@ ��A(z�B�\)                                    Bu�;:
  �          AXz�J=qAUG�@{A\)B�Ǯ�J=qAU@ ��A��B�                                    Bu�;H�  �          AY���(��AS�@C33AO33B��R�(��ATQ�@5�A@Q�B��3                                    Bu�;WV  �          A]��L��AD��@ȣ�A�{B�uýL��AFff@�=qAЏ\B�u�                                    Bu�;e�  �          Ab�R>���A=@�
=B33B���>���A?�@��B ffB��
                                    Bu�;t�  �          Ae���=qA4��Az�B\)B����=qA7
=A	p�B�B���                                    Bu�;�H  �          Ac
=��z�A+�
AQ�B#{B����z�A.=qAG�B=qB�
=                                    Bu�;��  �          Ag33>�Q�A"=qA$z�B5�\B���>�Q�A$��A!B1�B�\                                    Bu�;��  �          Abff>�A  A'�B?
=B�u�>�A�RA$��B;�B��\                                    Bu�;�:  �          A\��=���A
=A*�\BK=qB��=���A�A((�BGG�B��3                                    Bu�;��  �          AV�H<#�
A  A&{BJB��)<#�
A
�RA#�BFB��)                                    Bu�;̆  �          AN�R�k�Az�A{BH{B���k�A33A�BD{B�
=                                    Bu�;�,  �          AM���&ffA�A�RB<�B��=�&ffA{A(�B8z�B�aH                                    Bu�;��  �          AK���G�A�A�BG��B����G�A��A�BC��B���                                    Bu�;�x  �          AMp����H@��HA (�BM�B̙����HA Q�A�BI�B�{                                    Bu�<  �          AM��@��HA\)BK=qB�33��A Q�A�BG=qBя\                                    Bu�<�  �          AIp��C�
@�ffA�BG�B��C�
@��
A�HBC��B�Ǯ                                    Bu�<$j  �          AR{�!G�A\)@��\A�\)B�
=�!G�A�@���A�33Bнq                                    Bu�<3  |          Ad��?�AYp��{���B���?�AXQ���p���(�B��q                                    Bu�<A�  h          Aa�?�33AU��u��}�B���?�33AT����=q����B��R                                    Bu�<P\  �          A`��?�ffATQ�������B��\?�ffAS
=������=qB�u�                                    Bu�<_  |          A]?�Q�AUp��H���Qp�B�u�?�Q�ATz��XQ��bffB�aH                                    Bu�<m�  �          Ab{@�\A^ff���H��z�B�Q�@�\A]녿�(����RB�G�                                    Bu�<|N  �          Ab=q?�A^�R��\)�ҏ\B�.?�A^=q������B�#�                                    Bu�<��  �          Ac�?�p�A`Q��{��\)B��H?�p�A_���\)��=qB��)                                    Bu�<��  �          Ae��?��RAb�H�z�H�y��B�?��RAbff��  ��\)B�                                      Bu�<�@  �          Af�\@)��Ab�\��(���Q�B��
@)��Ab=q�333�1G�B���                                    Bu�<��  �          Ae�@?\)A`z�\(��Z=qB���@?\)A`(��������B��                                    Bu�<Ō  �          Ac\)?�RA[�?k�@u�B���?�RA\  ?&ff@.{B��
                                    Bu�<�2  �          A_\)��33AZ=q@\)A$��B���33A[
=@{A�HB��R                                    Bu�<��  �          Ac
=���
A`��?˅@�p�B�W
���
AaG�?��@���B�Q�                                    Bu�<�~  �          Ac33���Ab�H?&ff@'�B�Q���Ac
=>�p�?�  B�Q�                                    Bu�= $  �          AdQ�=��
Ab�R?��@ҏ\B�Q�=��
Ac33?�{@��RB�Q�                                    Bu�=�  �          Ac33?+�Aap�?�33@�p�B��\?+�Aa?�\)@���B��\                                    Bu�=p  �          Ab�R>�Aa�?�=q@��B���>�Aap�?�ff@���B���                                    Bu�=,  �          A`��?�G�A_�
?Q�@U�B��q?�G�A`  ?
=q@(�B��q                                    Bu�=:�  �          A\z�?�ffA[\)>�p�?\B�33?�ffA[\)=�Q�>ǮB�33                                    Bu�=Ib  �          A^=q>\A[33?�ff@�ffB���>\A[�?��
@��B���                                    Bu�=X  �          A[�@�z�AAG�������B�(�@�z�A?���Q���ffB��
                                    Bu�=f�  �          AU��@n{A>�H��p����B�ff@n{A=G�������RB�#�                                    Bu�=uT  �          AY@h��AFff��\)��33B�Q�@h��AD����\)��  B��                                    Bu�=��  �          A[�
@a�AIp����R����B���@a�AH  ���R���B�u�                                    Bu�=��  �          AYp�@P��AH�������\)B���@P��AG\)��=q��=qB���                                    Bu�=�F  �          AU@@  AH  �fff�zffB�\@@  AF�R�vff��(�B��f                                    Bu�=��  �          AT��@QG�AD(��z=q���HB�.@QG�AB�H������B���                                    Bu�=��  |          AX��@b�\AL  �4z��@Q�B�  @b�\AK
=�Dz��R{B��)                                    Bu�=�8  �          AYG�@r�\AG��o\)��B�8R@r�\AFff�\)���RB�                                    Bu�=��  h          AT��@��A=p��h������B���@��A<(��w���\)B�\)                                    Bu�=�  �          AW\)@�z�A.ff������\)Brff@�z�A,�����
��p�Bqz�                                    Bu�=�*  �          A]�@��RA333��33��{B|
=@��RA1G����\��ffB{{                                    Bu�>�  |          AF�H@9��A=?�\A�B�� @9��A>=q?\@�33B��{                                    Bu�>v  �          AE�?�\)A=G�@<��A^�RB��
?�\)A>{@-p�AL(�B��f                                    Bu�>%  �          AE�@33ABff?W
=@y��B��
@33AB�\?
=@0  B��)                                    Bu�>3�  �          APQ�@9��A>�\�<(��W�
B���@9��A=p��K��i�B��                                    Bu�>Bh  	`          A^�\@o\)A9p����
��(�B�8R@o\)A733��33����B���                                    Bu�>Q  �          A\��@s33A;�������B��@s33A9����p���B��q                                    Bu�>_�  �          AX��@k�A=���\)���HB�k�@k�A;\)���R�ǮB��                                    Bu�>nZ  �          AW�@s�
A=p����R���B�Q�@s�
A;���{��z�B�                                    Bu�>}   �          A]@Z�HA?\)��p���
=B�{@Z�HA=G�������B�                                    Bu�>��  �          A]��@XQ�A:�H��=q��33B��R@XQ�A8�������{B�\)                                    Bu�>�L  �          AaG�@UA@  �Ϯ��Q�B��@UA=��׮��33B���                                    Bu�>��  �          Ac
=?У�A6�R�(��z�B��q?У�A4  ��
�
=B��                                     Bu�>��  �          Ad  ?�A7�
����HB���?�A5��33�p�B��3                                    Bu�>�>  �          Abff@^�RA;33��������B��)@^�RA8����(���B�u�                                    Bu�>��  �          A`��@fffA9����
��\)B�p�@fffA6�H��33��{B�                                    Bu�>�  �          Ae��@�  A=p���z��噚B��\@�  A;\)��(���=qB�#�                                    Bu�>�0  �          Ad��@�p�A<����������B�{@�p�A:�\��(���p�B���                                    Bu�? �  �          Ac�
@=p�A4Q��=q��RB��\@=p�A1�����B�#�                                    Bu�?|  �          AaG�@{A/33�(����B��@{A,Q����{B��                                    Bu�?"  �          A^ff@5A-��
=�\)B�@5A+\)�ff�B�W
                                    Bu�?,�  �          A[�
@   A%�����  B��@   A#33�(��ffB��                                     Bu�?;n  �          A[
=@�
A!��33�#{B�Q�@�
A
=�=q�'p�B��H                                    Bu�?J  �          Aap�@U�A2ff���R�	z�B�Ǯ@U�A/�
��R�B�Q�                                    Bu�?X�  �          A_
=@K�A4Q�����Q�B�z�@K�A1��������B�{                                    Bu�?g`  �          A`��@:�HA8  ��
=� �B��\@:�HA5��{�  B�8R                                    Bu�?v  �          A`  @C33A;33������p�B���@C33A8����  ��  B��                                     Bu�?��  �          A_�
@\(�A:�\����p�B�(�@\(�A8Q��������B���                                    Bu�?�R  �          A[33@5AE���Q�����B�@5AC\)�����33B���                                    Bu�?��  �          AZff@A�A>�R�����
B�u�@A�A<��������Q�B�33                                    Bu�?��  h          AX��@P  A<��������B�8R@P  A;33�����˅B���                                    Bu�?�D  �          AY@q�A�R�  ��RB�G�@q�A(��
=�B���                                    Bu�?��  |          AV{@hQ�A%G�������
B�L�@hQ�A"�H���H��HB���                                    Bu�?ܐ  h          ANff@�z�A?33���\���HB���@�z�A>�H���R��33B�                                    Bu�?�6  �          AR�\@���A=p��P���hQ�B�G�@���A<Q��^�R�xz�B�{                                    Bu�?��  �          A[33@l��A:�\��z���G�B��
@l��A8����33��G�B��                                     Bu�@�  �          A^�H@~{A8����p���33B��@~{A6�R��(���33B��3                                    Bu�@(  �          A_�@g�A8����
=��\)B�B�@g�A6�H����\)B��f                                    Bu�@%�  �          A_\)@s33A8�����H��RB���@s33A6�H�ᙚ���B�G�                                    Bu�@4t  �          A^�\@�
=A5���ڏ\��\)B�33@�
=A3��������B���                                    Bu�@C  �          A[�
@}p�A5���ff��B�p�@}p�A333������G�B�\                                    Bu�@Q�  �          AZ�H@uA8  ��  ��{B�#�@uA6=q��ff���
B���                                    Bu�@`f  �          AY�@���A/�����Q�B�.@���A-�����
���
B��q                                    Bu�@o  �          AW�
@mp�A=��  ��33B�B�@mp�A<Q����R���HB�                                      Bu�@}�  �          AS33@dz�A@�������\)B�@dz�A?���������B���                                    Bu�@�X  �          A\��@|(�A9����{��z�B�z�@|(�A7�
��z����B�(�                                    Bu�@��  �          A[�@�p�A3���p����HB�B�@�p�A1���ۅ��=qB��H                                    Bu�@��  �          AU�@\)A6=q��z���=qB�aH@\)A4�����\�υB�{                                    Bu�@�J  �          AS�@w
=A5G�������=qB�\)@w
=A3����H�хB�\                                    Bu�@��  �          AR�H@|(�A5G����R��B���@|(�A3�
��������B�\)                                    Bu�@Ֆ  �          AS33@tz�A3
=��(���p�B�W
@tz�A1p�����ڏ\B�                                    Bu�@�<  �          AQp�@~{A0Q���(���33B�ff@~{A.�R������=qB�{                                    Bu�@��  �          AN�R@z=qA333�����=qB��@z=qA1�������33B�=q                                    Bu�A�  �          AR=q@��RA<  ��������B���@��RA:�H��ff���B�k�                                    Bu�A.  �          AQG�@��A@�ÿ�� Q�B���@��A@z��   ��B��q                                    Bu�A�  �          AT��@��A>�R�
=��B��\@��A>{��\��HB�p�                                    Bu�A-z  �          AU�@��HA?
=�{�+�B��
@��HA>ff�*=q�8z�B��                                    Bu�A<   �          AR�H@���AB{��\)��\B��)@���AA���33��B�                                    Bu�AJ�  �          AMG�@�(�AA�aG��{�B�\)@�(�AA�������  B�L�                                    Bu�AYl  |          AL��@xQ�AB�H��zΰ�
B��R@xQ�AB�H����B��3                                    Bu�Ah  �          AM�@��
A@Q������B�#�@��
A?�
�Q��Q�B�\                                    Bu�Av�  �          AP��@�\)AAG�����(��B�p�@�\)A@���#�
�5p�B�W
                                    Bu�A�^  h          Aj�R@���A<Q���z�����B��q@���A:�H������HB�k�                                    Bu�A�  �          AuG�@���A:�H�������RBzp�@���A8����{��z�By�                                    Bu�A��  �          Ay�@�Q�A733�	��(�BuQ�@�Q�A5G������BtQ�                                    Bu�A�P  �          Ay�@�p�A<z�� Q�����Bu��@�p�A:�R��H��z�Bt�R                                    Bu�A��  �          Ay@��
AAp���p����B�B�@��
A?�
�G���p�B�R                                    Bu�AΜ  �          Az�\@�z�A?33�����
=Bwz�@�z�A=p�� Q���Q�Bv��                                    Bu�A�B  �          Aw�@У�A=G���=q��ffBt��@У�A;���\)�Bs                                    Bu�A��  �          Ayp�@�
=A@����\)�噚Bw
=@�
=A?
=��(���RBv=q                                    Bu�A��  �          As�
@�p�AC33��\)��B|�R@�p�AA��(����HB|{                                    Bu�B	4  �          As�@��HABff��ff��(�B��@��HA@�����H��33B�\)                                    Bu�B�  �          Az=q@���A,  ����\)Bm
=@���A*=q��R��RBl                                      Bu�B&�  �          A|  @�Q�AQ��-p��.\)Bb�@�Q�A=q�/\)�0��Ba=q                                    Bu�B5&  �          A|z�@ǮA�R�,  �,=qBd��@ǮA���-�.p�Bc=q                                    Bu�BC�  �          A{�@��\A��5p��8�\Bf��@��\Ap��733�:Be\)                                    Bu�BRr  �          A{�@��\A���:=q�?�Ba�@��\A
�R�;��A=qB`Q�                                    Bu�Ba  �          A|z�@�ffAff�Ap��G�B_p�@�ffAQ��B�H�I��B]                                    Bu�Bo�  �          A�=q@��A��9�9�HBb�
@��A���;\)�;�HBaff                                    Bu�B~d  �          A33@���AQ��:{�;33B^@���Aff�;��=(�B]Q�                                    Bu�B�
  �          A\)@���AG��?��Bz�BcG�@���A33�@���DffBa�
                                    Bu�B��  �          A~�R@�=qA���C33�H=qBc��@�=qA
=�Dz��J�Bb(�                                    Bu�B�V  �          A~�\@��A	��?��Cz�B\�@��A\)�@���E=qBZ��                                    Bu�B��  �          A~�H@���A��D���J{B\�
@���A\)�F{�K�
B[\)                                    Bu�BǢ  �          A~{@��
@��\�K��U�B^=q@��
@�
=�L���V��B\��                                    Bu�B�H  �          A}��@���@��M�X�HBk=q@���@�=q�N�H�Z�\Bi��                                    Bu�B��  �          A~�H@���A ���Q��\�Bx�@���@��R{�^=qBv��                                    Bu�B�  �          A}p�@���Az��L  �V��Bw��@���A�H�M��XG�Bv                                    Bu�C:  �          A|Q�@�
=Ap��L���X��Bt\)@�
=@�\)�M���Z33Bs(�                                    Bu�C�  �          A~=q@���A��L���VBx��@���A��M��XG�Bw�                                    Bu�C�  �          A}p�@��@�ff�Mp��Yp�Bb��@��@�33�Nff�Z��Ba�                                    Bu�C.,  �          A~�\@���@�
=�O33�Z33BXp�@���@�(��P  �[z�BW�                                    Bu�C<�  �          A~=q@�=q@�p��N�H�Y�HBK��@�=q@�\�O��[
=BJG�                                    Bu�CKx  �          A~ff@��@�ff�PQ��\33BQ�@��@��P���]\)BO�
                                    Bu�CZ  �          A}@�@�(��Mp��X(�BQ�@�@陚�N{�Y=qBP�                                    Bu�Ch�  �          A|��@���@���J�R�UG�BIQ�@���@�{�K\)�VG�BH33                                    Bu�Cwj  �          A~�R@�ff@�(��L���V\)BD
=@�ff@���Mp��WG�BB��                                    Bu�C�  �          A}@��@�(��P���]�BFff@��@���Q��]��BEQ�                                    Bu�C��  �          A~ff@�\)@�33�U��eG�BI�@�\)@����Vff�f{BH                                      Bu�C�\  �          A\)@��@�G��S��_BE�H@��@�\)�S�
�`�BD�                                    Bu�C�  �          A�  @�(�@�
=�Fff�JB5p�@�(�@�p��F�R�Kp�B4��                                    Bu�C��  �          A~�\@�\@�
=�HQ��P=qB.�@�\@�p��H���P��B-Q�                                    Bu�C�N  �          Az=q@�z�@���8  �=z�B>ff@�z�@����8Q��>
=B=�
                                    Bu�C��  �          Ax��@׮@�{�D���Q=qB3{@׮@����D���Q�RB2ff                                    Bu�C�  �          Ayp�@�p�@��=��F33BC(�@�p�@�\�>=q�F�BB�                                    Bu�C�@  �          Aw
=@�G�@��A��O(�BC33@�G�@����B=q�O�\BB                                    Bu�D	�  �          As\)@�z�@��H�F{�Y��B@�
@�z�@���F=q�ZG�B@p�                                    Bu�D�  �          As33@��@��
�EG��Y33B7�
@��@�33�Ep��Yp�B7z�                                    Bu�D'2  �          Arff@�p�@θR�J�\�cQ�BM=q@�p�@�{�J�\�c�\BL��                                    Bu�D5�  �          Aj�H@��@�{�Ip��m��BS�\@��@�p��I���m��BS\)                                    Bu�DD~  �          Aep�@p  @����J�H�x�B_��@p  @�G��K
=�x��B_�
                                    Bu�DS$  �          Aj�H@`��@��
�QG��|�\Bg��@`��@���QG��|��Bg                                    Bu�Da�  �          Aj�H@n{@�Q��B�H�`�B{\)@n{@�Q��B�R�`��B{ff                                    Bu�Dpp  �          Aj�\@���@�Q��H  �j
=Bi{@���@У��G�
�i�Bi33                                    Bu�D  �          Aj�\@�33@��H�HQ��j�BS�R@�33@�33�H(��j\)BS��                                    Bu�D��  �          Ai�@�@Ϯ�Dz��e�B^�@�@�Q��DQ��eG�B_33                                    Bu�D�b  
u          Aj�H@�p�@����F�H�g�HB]��@�p�@�p��F�R�g�\B]��                                    Bu�D�  �          Ajff@���@Ӆ�E��e�Bc��@���@�z��D���e�Bd\)                                    Bu�D��  �          Ak
=@���@���?��ZBfG�@���@�{�?\)�ZG�Bf�                                    Bu�D�T  �          Am�@{�@��Ep��a��Bu(�@{�@�R�D���a33Bu��                                    Bu�D��  �          Aq�@n{@�(��J�R�fp�By�R@n{@�p��Jff�eBzG�                                    Bu�D�  �          Ap��@x��@��Ip��b�Bx�@x��@���H���affByG�                                    Bu�D�F  �          Ai�@�z�@��
�J�R�q�
B[\)@�z�@�p��Jff�q{B\G�                                    Bu�E�  �          Ah  @\)@�\)�K33�t�RB\�
@\)@�G��J�R�s�HB]�H                                    Bu�E�  �          Ah��@�z�@�\)�IG��o�HB]\)@�z�@�G��H���n��B^p�                                    Bu�E 8  �          Ah��@��R@���J=q�q�BY�@��R@�p��I���p(�BZ\)                                    Bu�E.�  "          Ag�@���@�=q�Ep��j��Bf=q@���@����D���i�
Bgff                                    Bu�E=�  �          Ag�
@xQ�@�{�E�j�
Bk�
@xQ�@У��EG��i��Bm
=                                    Bu�EL*  �          Ahz�@�z�@У��D���g�\BfG�@�z�@�33�D(��fG�Bg�                                    Bu�EZ�  �          Ar{@�@˅�LQ��g33BP�@�@�{�K��e�BRp�                                    Bu�Eiv  �          Ar{@�Q�@����K��eBO��@�Q�@Ϯ�J�H�dp�BQff                                    Bu�Ex  �          Al��@�\)@���DQ��`z�Bd=q@�\)@�Q��C��^��Be�                                    Bu�E��  �          AhQ�@�Q�@�
=�<���Y�RB^��@�Q�@���;�
�X�B`{                                    Bu�E�h  �          Ah��@��@�  �<  �W��Bs�H@��@�33�;
=�U�
Bu33                                    Bu�E�  �          Aj�R@�z�@��H�B{�`G�BK��@�z�@�ff�A��^��BM�R                                    Bu�E��  �          Ah��@�Q�@�  �DQ��f\)B3��@�Q�@��
�C\)�d��B633                                    Bu�E�Z  �          Ah��@��@�ff�E�i�\B,Q�@��@�=q�D���h  B/
=                                    Bu�E�   �          Ai��@���@�=q�=G��Yz�BA  @���@�ff�<(��W�BC33                                    Bu�Eަ  �          Aj{@���Ap��2=q�F��Bk\)@���A��0���Dz�Bl�H                                    Bu�E�L  �          Ak�@�(�A	�333�F(�B���@�(�A�
�1���C��B�z�                                    Bu�E��  �          Aj�\@l��A���2=q�EB�aH@l��A�R�0z��C=qB���                                    Bu�F
�  �          Ak�@xQ�A
�H�4  �G(�B��
@xQ�A��2=q�D�\B��                                     Bu�F>  �          Ak�@�\)AQ��6�H�K�B{�@�\)A�\�5��I
=B}Q�                                    Bu�F'�  �          Aj�R@�ffA ���8  �N�By�@�ffA
=�6=q�L=qB{p�                                    Bu�F6�  �          Aj�H@��Az��5��J
=Bz
=@��A�H�333�G=qB{��                                    Bu�FE0  �          Ak
=@{�A
{�3��G\)B�\@{�Az��1�DffB��
                                    Bu�FS�  �          AxQ�A�?���Ep��Sp�A�
A�?�(��D���R�
A)G�                                    Bu�Fb|  �          AxQ�A��@=q�H���W�HAu�A��@&ff�H(��V�A��                                    Bu�Fq"  �          AyG�A
ff@8���J=q�X�RA�A
ff@E�Ip��W�A�33                                    Bu�F�  �          Au�Az�@N{�Ep��V=qA�33Az�@Z=q�D���T�HA��\                                    Bu�F�n  �          Atz�A�@��
�B{�R{A�{A�@�=q�@���P(�A���                                    Bu�F�  �          As�A�H@�\)�@z��P�HA�A�H@�{�?33�N�A�\                                    Bu�F��  �          As33A�@���@  �PA�(�A�@��
�>�R�N�RA�
=                                    Bu�F�`  �          ArffA@���<  �M  A��A@����:�\�J�
A�Q�                                    Bu�F�  �          Aq@ڏ\A{�=q�#��BT@ڏ\A����� \)BV�                                    Bu�F׬  �          AqG�@�33A\)�#��*BOG�@�33Aff� ���'G�BQ�R                                    Bu�F�R  �          ApQ�@���A�R�&ff�/{BC{@���A��#�
�+�BE�H                                    Bu�F��  �          Ar�\@��
A   �+�
�6
=BEp�@��
A��)G��2�BHp�                                    Bu�G�  |          Av�RA%�@7
=�0Q��6��Av=qA%�@E��/\)�5z�A�z�                                    Bu�GD  �          At��A�
@�33��R�B{A�
@陚�Q����B=q                                    Bu�G �  �          Atz�@�33Ap��G���\BG��@�33A������RBJ(�                                    Bu�G/�  �          At  @��
Ap�����
=BP�@��
A z��	����BS{                                    Bu�G>6  �          As33@陚A33�{�  BV�H@陚A"ff�
ff�
BY
=                                    Bu�GL�  �          Ar�\@���A#�
�p��BX��@���A&�H����p�BZ��                                    Bu�G[�  �          Aqp�@��HA\)��R�p�BJ�R@��HA�H�33�(�BM�\                                    Bu�Gj(  �          Ar{@�A���  � �
BN�@�AQ��z��ffBP��                                    Bu�Gx�  �          Arff@�A{�   �%G�BMG�@�A��Q�� ��BP\)                                    Bu�G�t  �          Ar=q@�@�p��(���0�\B;Q�@�A
=�%G��,G�B?{                                    Bu�G�  �          Ap��@���@���(Q��1p�B:
=@���AG��$���-
=B=�                                    Bu�G��  �          Ao�
@�(�@�
=�(Q��2\)B9{@�(�@���%��-�B=�                                    Bu�G�f  �          Ar�R@��
@��)��1�HB4�H@��
@�
=�&�\�-ffB9{                                    Bu�G�  �          At��@�@�p��/�
�7��B1(�@�@�
=�,Q��3Q�B5                                    Bu�Gв  �          As
=@��HA��(���0G�BLp�@��HAQ��$���+33BPG�                                    Bu�G�X  �          Ar�R@�A���=q�{BU33@�A�����RBX=q                                    Bu�G��  �          Arff@޸RA"�H�����HB^�@޸RA&�H���Q�Ba�                                    Bu�G��  �          As\)@���A,(���33Bg�@���A0(�� z����RBiz�                                    Bu�HJ  �          AtQ�@���A+������Bc
=@���A/����R��G�Beff                                    Bu�H�  �          As�@���A'��Q���B`��@���A+�
�
=�(�Bc(�                                    Bu�H(�  �          At  @�=qA1���z���\)Bi��@�=qA5��������Bl                                      Bu�H7<  �          AtQ�@��
A4  ���R��RBjff@��
A7�
���H��  Bl�\                                    Bu�HE�  �          Aup�@ٙ�A3\)��
=��Q�Bk{@ٙ�A7\)���H��p�Bm\)                                    Bu�HT�  �          At��@�ffA:�H�޸R���HBm  @�ffA>ff����ˮBn�                                    Bu�Hc.  �          AuG�@���A>{��Q��ѮBop�@���AA����33��(�BqG�                                    Bu�Hq�  �          At(�@�ffA:�\�޸R��33Bl�H@�ffA>=q�љ��˅Bn�H                                    Bu�H�z  �          As\)@�G�A<��������  Bp33@�G�A@Q��˅���Br�                                    Bu�H�   �          As�@�33A=G���p�����Bw{@�33AAG��׮��Q�By{                                    Bu�H��  
�          As�@޸RA>�\��{��{Bn�H@޸RAB=q��  ���Bp�R                                   Bu�H�l  �          Ar�R@�
=A@  ��z���p�Bs
=@�
=AC���{���\Bt�H                                    Bu�H�  �          At��@�
=AAp��Ϯ���Bs�@�
=AE�������  Bu�\                                    Bu�Hɸ  �          Av�\@У�AC�
�����33Bw�
@У�AG�
��{���By�R                                    Bu�H�^  �          Azff@أ�AJ{�ə���Bw33@أ�AM������{Bx��                                    Bu�H�  �          Ax��@��AR{��=q���B���@��AU��������33B���                                   Bu�H��  �          Ax(�@�p�ARff��  ���B��@�p�AU��
=��33B�8R                                   Bu�IP  �          Az{@��AX�����H�s
=B�Q�@��A[33�a��QG�B���                                    Bu�I�  �          Ax��@���A_��e��UG�B�(�@���Aa�@  �2=qB��=                                    Bu�I!�  �          Ao
=@�z�AX(��P���IG�B���@�z�AZ{�,���%B�
=                                    Bu�I0B  �          Aj=q@�Q�AW��%��"ffB�8R@�Q�AYG��   ���B��                                     Bu�I>�  �          Ah��@��
AX������B�� @��
AZ{���R��z�B��3                                    Bu�IM�  �          Ai��@�ffAU��C33�AG�B�\)@�ffAW�
�p���B��3                                    Bu�I\4  h          Ag
=@��\AR�\�\(��\��B��3@��\AT���6ff�6=qB�{                                    Bu�Ij�  	.          Af�H@�p�AS��AG��Ap�B�(�@�p�AUp���H��RB��                                     Bu�Iy�  �          Af�\@��
AU��'
=�'33B��H@��
AW��   ��\)B�(�                                    Bu�I�&  �          AX��@z=qAM���
��  B�33@z=qAN�\�n{�|��B�W
                                    Bu�I��  �          A<��@8��A6�H�B�\�k�B���@8��A6�R>�33?�Q�B���                                    Bu�I�r  |          A:=q@1�A3�
?�33@�p�B�B�@1�A2�R?�
=AG�B��                                    Bu�I�  �          A9p�?�G�A3
=@*=qAS�
B���?�G�A0��@L(�A�B�k�                                    Bu�I¾  �          A;�?�A4��@7�Ab�RB�8R?�A2{@Z=qA��B�\                                    Bu�I�d  �          A8Q�>�A0Q�@S33A�p�B�8R>�A-p�@vffA�(�B�#�                                    Bu�I�
  �          A4(�>��A*=q@k�A�z�B�p�>��A'
=@�ffA��B�ff                                    Bu�I�  �          A/\)��\)A$��@hQ�A��B�Ǯ��\)A!��@�z�A�z�B���                                    Bu�I�V  �          A!��Tz�Aff@~�RA�\)B�LͿTz�A�H@�ffA���B��\                                    Bu�J�  ,          A4  ��Q�A(�@�\)A�Q�B�p���Q�AQ�@�\)A��
B���                                    Bu�J�            A<���:�H@���A��B5�\B����:�H@�ffA
=B@�
B�.                                    Bu�J)H  �          AT  �~{A ��A��B8{B�=�~{@�G�A\)BC  B�\                                    Bu�J7�  �          Aap��q�@�  A1�BP�HB���q�@�z�A8Q�B[��B�                                    Bu�JF�  �          AV�H��ff@��HA)�BS�RB�
=��ff@�  A/�B^Q�B�                                    Bu�JU:  h          AI��Q�@���A,  Bj(�CO\��Q�@��A0(�Bs��C��                                    Bu�Jc�  �          AB�\����@���A�HBT�
C ������@�33A�B^�RC��                                    Bu�Jr�  �          AB�H��  @(��A'33Bo  CaH��  @�\A)G�Bt�C��                                    Bu�J�,  �          AO�
���
?�p�A/�BgG�C#aH���
?��A1�Bjz�C(��                                    Bu�J��  �          AN�H��z�?��\A,��Bd33C)����z�?#�
A-Bf
=C.��                                    Bu�J�x  �          AIG���z�?�A*{Bg�RC/p���z����A*=qBh(�C4ٚ                                   Bu�J�  �          AEp�� ��?:�HA�B?��C.ٚ� ��>B�\A  B@C2��                                   Bu�J��  �          A8����\)@_\)@��HB*z�C  ��\)@AG�@�G�B0  C                                      Bu�J�j  |          A:ff���R@(�@��B2��C"n���R?���A�B6p�C%�\                                    Bu�J�  h          A:ff����@���@�  B!��C	�H����@�@�33B*�C@                                     Bu�J�  h          A9G����HA ��@��HB ��B�
=���H@��@ҏ\B�B��R                                    Bu�J�\  �          A.�R���A�
@��A�z�B�3���A33@��A�z�B�.                                    Bu�K  �          A+\)�h��A�@��RAŮB�.�h��A
�R@���A���B�\                                    Bu�K�  �          A%��!G�A�@eA���BҔ{�!G�A\)@�A��B�ff                                    Bu�K"N  �          A%����G�Az�@1�Ay��B�W
��G�AG�@Z=qA�Q�B�                                    Bu�K0�  |          A'33�A�R@@  A���B�W
�A33@hQ�A��\B��H                                   Bu�K?�  �          A-G�����@��H@�\)B=qB��)����@���@�
=Bp�B�Ǯ                                   Bu�KN@  �          A,  ���HA   @�(�A�B�Q����H@�z�@���B   B��3                                    Bu�K\�  |          A-��%A	G�@�  B��Bՙ��%A�R@�=qB�\B�.                                    Bu�Kk�  �          A9�>�z�A+�
@�A�{B���>�z�A&�H@��AɮB��)                                    Bu�Kz2  �          A=�?�ffA0��@y��A���B��\?�ffA,(�@��A��B�\                                    Bu�K��  �          A=G�?�A3�
@FffAs�B�ff?�A/�
@xQ�A��B���                                    Bu�K�~  �          A:{?�{A4z�?��HA��B��q?�{A2{@ ��AI�B��=                                    Bu�K�$  �          A=@c33A2ff?�@�z�B���@c33A0Q�@p�A,��B�=q                                    Bu�K��  �          A5G�@a�A(�ͿУ����B�
=@a�A*=q�\(����
B�W
                                    Bu�K�p  �          A-��@8��A  �tz����\B�
=@8��A   �E��Q�B���                                    Bu�K�  �          A(  @333A33��ff����B��@333A��`����Q�B��                                    Bu�K�  �          A��0��A�
@H��A�\)B��R�0��A�@s33A��B���                                    Bu�K�b  �          A���#�
A�
�B�\��
=B�k��#�
A�?�@I��B�k�                                    Bu�K�  �          Aff���
A\)��p���RB�p����
A\)>�33@
=B�p�                                    Bu�L�  �          A33?�A���.{��Q�B�33?�A�=u>ǮB�8R                                    Bu�LT  �          A
=q<��
A�
��G���  B���<��
A�׾�{�33B���                                    Bu�L)�  �          @أ��+�@��@
=qA�=qB�#��+�@���@&ffA��RB癚                                    Bu�L8�  �          @޸R�,��@���?޸RAhz�B�Q��,��@��@{A�p�B�k�                                    Bu�LGF  �          @��H�>{@�=q?B�\@�(�B�\�>{@��?��RA'�
B��                                    Bu�LU�  �          @�
=�Mp�@�33?L��@��HB�z��Mp�@�Q�?��\A.=qB�.                                    Bu�Ld�  �          @���4z�@Å?k�@�  B� �4z�@�Q�?�z�A?�B�33                                    Bu�Ls8  �          @�녿��@��?�=qA-��B�uÿ��@У�?�\)Av{B�{                                    Bu�L��  �          @�\)�0��@�G�@xQ�A�33B���0��@�{@��HB��B��)                                    Bu�L��  �          @��E�@u@��BG�HC ���E�@U@��BVp�C��                                    Bu�L�*  �          @%��33?��H>�(�A[�B�33��33?�z�?�A��B�                                    Bu�L��  �          ?�zᾔz�?�\)���
�>{B�\)��z�?�\)=L��?�B�W
                                    Bu�L�v  �          @<�Ϳ(�@0  ?�\A#
=B��)�(�@,(�?=p�Ao�
B�W
                                    Bu�L�  �          @ �׿^�R?���\�\(�B�33�^�R?����=q�{B�\                                    Bu�L��  �          @
=��Q�?G�>\AQG�C�ÿ�Q�?=p�>�ffAv�RC�
                                    Bu�L�h  �          @*=q��?\(�?k�A��
Cff��?E�?}p�A��C!J=                                    Bu�L�  �          @p��Tz�?���?��B
��B�
=�Tz�?�Q�?��B=qB�Q�                                    Bu�M�  �          @XQ쾞�R@Fff?�G�A��B�k����R@>{?��
A�z�B��f                                    Bu�MZ  �          @p��>W
=@a�?�{A�p�B�33>W
=@Z�H?�A��HB���                                    Bu�M#   �          @o\)� ��?�p�?�p�A�G�C\)� ��?���?�33B
=C	ٚ                                    Bu�M1�  �          @\)�R�\?E�?���A��C&���R�\?
=?�z�A��C)��                                    Bu�M@L  �          @�����?���@33Aأ�C&E���?Y��@Q�A�C)                                      Bu�MN�  �          @�p���G�?W
=@ ��A�C(����G�?&ff@�A��C+ff                                    Bu�M]�  �          @������Tz�?ٙ�A�ffC=�����z�H?�{A��\C?E                                    Bu�Ml>  �          @�{�s33����?�33A�(�CO#��s33��?��HA��CQ&f                                    Bu�Mz�  �          @��R�;��\(�?�A�Q�Ce�H�;��fff?�(�A�z�Cf�H                                   Bu�M��  �          @���mp��'
=?xQ�A@z�CW)�mp��,(�?5A��CW�                                   Bu�M�0  �          @����p��+�@A��CP�\��p��7�?�A��CR=q                                    Bu�M��  �          @�(��r�\�?\)?��A�Q�CZB��r�\�HQ�?��As�
C[��                                    Bu�M�|  �          @�������7�?���A���CU
�����@��?��\AV�RCVY�                                    Bu�M�"  �          @������G
=?�z�AF{CW�q�����Mp�?W
=A�CX�)                                    Bu�M��  �          @��H��Q��3�
?�{Aw�CW��Q��;�?���AA��CX+�                                    Bu�M�n  �          @��H�9�������(����  Cl  �9�����R����@��Cks3                                    Bu�M�  �          @�R?aG�����mp���G�C��?aG����������
C�ff                                    Bu�M��  �          @��@!��������p�C��R@!��������
=C�}q                                    Bu�N`  �          @��
@,(�������\)���C��@,(��������H�p�C��                                    Bu�N  �          A��@��R�����|����C�ٚ@��R���\�����z�C���                                    Bu�N*�  �          Ap�@�����\)�r�\��Q�C�p�@���������� G�C�e                                    Bu�N9R  �          AQ�@_\)��33��  ��
=C�aH@_\)��z�������RC�N                                    Bu�NG�  �          A(�@Y�����
��Q���(�C��@Y����������	�\C��
                                    Bu�NV�  �          AG�@Tz�������z����HC��@Tz���p�����=qC���                                    Bu�NeD  �          A�\@U��
=�qG����C�:�@U�ȣ���
=� �RC��                                    Bu�Ns�  �          A	�@U��(��vff���
C��@U��p����\�\)C���                                    Bu�N��  �          A
=@Y����(��hQ���33C���@Y����{��z����C�y�                                    Bu�N�6  �          A
=q@N{��R�`�����
C�
=@N{�أ���G���(�C��
                                    Bu�N��  �          A  @N�R�����=p���33C��{@N�R�����p  ��  C���                                    Bu�N��  �          @�?��
��33������C�xR?��
���\�����$Q�C�<)                                    Bu�N�(  �          @�p�@333��z����Q��C���@333��z��%���G�C�
=                                    Bu�N��  �          @�G�@�R��  �@  ���HC��@�R�˅�p  ��  C��                                    Bu�N�t  �          @�z�@�\����8����=qC���@�\���g���\C�!H                                    Bu�N�  �          @�\)@U���33���
��RC�e@U���Q쿊=q��\C��=                                    Bu�N��  �          @���@���G������C��)@����H�Q��
=C�R                                    Bu�Of  �          @��?��H��z��\)��z�C��?��H��=q�C�
��ffC��                                    Bu�O  �          @�(�>aG�����33�H\)C�XR>aG��~�R�Å�cz�C��{                                    Bu�O#�  �          @�=q=#�
��33���R�Q\)C�@ =#�
�vff�θR�l�RC�K�                                    Bu�O2X  �          @�33>B�\�q����
�t�C�ff>B�\�;����C��                                    Bu�O@�  �          @��?5��ff�׮�f��C��?5�Vff��ff�C��                                    Bu�OO�  �          @�33?��
�|(���
=�k33C�L�?��
�E��z�  C�,�                                    Bu�O^J  �          @�33?L���q�����q��C���?L���:=q��\)��C���                                    Bu�Ol�  �          @���?�G��|����
=�_�C�n?�G��I�������y(�C��H                                    Bu�O{�  �          @�?��
�}p������[��C��3?��
�J�H�Ϯ�u��C��q                                    Bu�O�<  �          @�{@8���C�
�����^��C��@8�������\)�r
=C��                                    Bu�O��  �          @�p�@�R�7���{�uffC�p�@�R��(����qC�                                    Bu�O��  �          @�\?�p��*=q�ҏ\p�C��?�p����ۅ�)C��=                                    Bu�O�.  �          @陚?�G��333��p��{
=C�
=?�G����H��
=B�C��                                    Bu�O��  �          @�@ �׿�������C��@ �׿aG���ff.C�4{                                    Bu�O�z  �          @�@  ����{��C�H�@  �������\)C���                                    Bu�O�   �          A\)@>�R��ff��
=33C�S3@>�R��\)��G��C�Y�                                    Bu�O��  �          @�?�������
=�S  C�?���e�Ϯ�p  C�7
                                    Bu�O�l  �          @�?@  ��Q���  �](�C��q?@  �Y����  �z��C�7
                                    Bu�P  �          @�(�?O\)�{���{�d33C��3?O\)�E�����fC�`                                     Bu�P�  �          @�Q�?0���{������b=qC���?0���Fff�У��C�H�                                    Bu�P+^  �          @߮?\)�S33���
�uG�C�Ф?\)�����Q��qC�o\                                    Bu�P:  �          @������7
=��
=\)C�����Ϳ��H�ٙ���C��)                                    Bu�PH�  �          @�=q=L���7��θR{C�s3=L�Ϳ�(���G���C���                                    Bu�PWP  �          @�=q?&ff�QG���ff�v�
C���?&ff����ҏ\�3C��R                                    Bu�Pe�  �          @�z�?B�\�K���=q�~33C��f?B�\�\)��{B�C�h�                                    Bu�Pt�  �          @��
?�ff����Ǯ�^�\C���?�ff�J�H�׮�|ffC�                                      Bu�P�B  �          @�(�@p��c�
�����]��C�Q�@p��)���ָR�v��C�h�                                    Bu�P��  �          @�p�@1��C33���`��C�&f@1��
=q�љ��v�HC��                                    Bu�P��  �          @�33?�33�Z�H�����v�C�K�?�33�����=q{C���                                    Bu�P�4  �          @�{?�\)�J=q�����}{C���?�\)������ C��                                    Bu�P��  �          @��H?�
=�=p������}(�C���?�
=�   ��(��RC���                                    Bu�P̀  �          @�Q�?n{�Z�H�����n{C���?n{�!G���{�3C�.                                    Bu�P�&  �          @��H?�33�p����\)�j�C��H?�33�2�\��ff\C�33                                    Bu�P��  �          @߮?}p��a������h�C�˅?}p��(�����H�C�:�                                    Bu�P�r  �          @�(�?s33�dz���\)�`=qC�l�?s33�.�R��{#�C���                                    Bu�Q  �          @���?h�������z��!��C��?h��������\�C  C��                                    Bu�Q�  �          @�\)?G��>�R��ff�vz�C�J=?G��
=�\k�C�
                                    Bu�Q$d  �          @Ϯ?!G��p����\��C��{?!G��������H��C���                                    Bu�Q3
  �          @�z�˅@��
�j=q�p�B�33�˅@��
�@  ���\B�                                      Bu�QA�  �          @�
=?��׿�G���\)�{C���?��׾��R���H
=C�9�                                    Bu�QPV  �          @���?�33�+���\)��C�AH?�33>u��Q�W
Ap�                                    Bu�Q^�  �          @�ff?=p�@  ��z���B��q?=p�@@  ����cB�p�                                    Bu�Qm�  �          @�\)?�ff@4z���
=�pQ�B�{?�ff@e���\)�O{B�G�                                    Bu�Q|H  �          @�33��G�@�p�?�ffA�z�B��H��G�@��\@)��Aң�B�p�                                    Bu�Q��  �          @��Ϳ
=q@���@ ��A��HB�Ǯ�
=q@���@7�A�\)B��=                                    Bu�Q��  �          @ȣ׾�  @�?E�@�33B��=��  @��?�(�A�B��                                    Bu�Q�:  �          @�
=?+�@�(��������B��?+�@�z�>���@fffB��                                    Bu�Q��  �          @�\)?Tz�@˅�aG����B�8R?Tz�@�p�=�?���B�\)                                    Bu�Qņ  �          @Ӆ?��@�33�=q��Q�B��
?��@�����H�R{B���                                    Bu�Q�,  �          @�  ?���@�����z��-��B�(�?���@�ff�u��
=qB�G�                                    Bu�Q��  �          @θR?�
=@X����
=�[p�B�33?�
=@�p����
�9G�B�(�                                    Bu�Q�x  �          @Å?��@W�����Vp�B��{?��@������3�HB��)                                    Bu�R   �          @�(�?�(�@{��p��{(�Ba�R?�(�@AG���  �[  B�                                    Bu�R�  �          @�G�?��@4z���
=�[  Bf33?��@b�\��ff�:�B|�                                    Bu�Rj  �          @���@�\@\)����`�RBJ�@�\@O\)���H�B\)Bg{                                   Bu�R,  �          @�\)?��
@��[����B�
=?��
@��,����33B��                                     Bu�R:�  �          @�=q��{@��@-p�A�z�B�G���{@�G�@j�HB�Bϔ{                                    Bu�RI\  �          @ۅ��33@�\)?��A33B�#׿�33@\@:�HA�(�B�p�                                    Bu�RX  �          @�=q>B�\@�\)?=p�@У�B��R>B�\@�Q�?�ffA�=qB���                                    Bu�Rf�  �          @��?@  @��H��  �"�\B���?@  @���?.{@�{B��3                                    Bu�RuN  �          @���?   @�G�?�R@���B���?   @�33?�{Av{B�Q�                                    Bu�R��  �          @��H����@]p�@�{BD�\B�8R����@-p�@��RBi{B��                                    Bu�R��  �          @���#�
@4z�@���BfQ�B͞��#�
@ ��@�ffB��B�\)                                    Bu�R�@  �          @�p���(�@�z�@��B9
=B�.��(�@b�\@�G�B_�HB��
                                    Bu�R��  �          @����B�\@�>��@�B�8R�B�\@��H?\(�A>�RB�Q�                                    Bu�R��  �          @�Q��Q�@�Q��,�����\B�LͿ�Q�@�(���=q�Pz�BЮ                                    Bu�R�2  �          @�Q���
@ָR�:=q��{Bѽq���
@����H�R�\B��                                    Bu�R��  �          @�p����@ڏ\�W���BָR���@������{
=Bԏ\                                    Bu�R�~  �          @�����@�{� ����(�B�
=��@�׿����!�B�L�                                    Bu�R�$  �          @�G��%@��<(����
B��H�%@��H��\�Y�B�u�                                    Bu�S�  �          @�� ��@����!G���(�B�p�� ��@߮����� ��B۔{                                    Bu�Sp  �          @�Q��-p�@��H�:�H��\)B�G��-p�@�  ��  �X��B߸R                                    Bu�S%  �          @����'�@�{�<(���B�Ǯ�'�@�33�ٙ��K
=B�z�                                    Bu�S3�  �          @���L��@�  �$z����B�R�L��@�33��=q��HB�                                    Bu�SBb  �          @�
=�Dz�@������B���Dz�@�=q>8Q�?��\B�p�                                    Bu�SQ  �          @���J�H@��fff��Q�B㙚�J�H@�
=>��@=p�B�W
                                    Bu�S_�  �          @ə����@�G���33�r�HB��f���@��R��\���B݊=                                    Bu�SnT  �          @Ϯ@5�?\)���\�K�RC���@5�G���G��g=qC�H�                                    Bu�S|�  �          @�(�@%�������t�C��@%���R��z�\)C��R                                    Bu�S��  �          @���@Y��>�=q����W{@��R@Y��?�{�����NA���                                    Bu�S�F  �          @�ff@[�>.{��\)�K@5@[�?p�����
�E  Av=q                                    Bu�S��  �          @���@��>��c33�^p�A6{@��?����Z=q�P��A�ff                                    Bu�S��  �          @���@?��H����Q�B@@=q�����c�
BD=q                                    Bu�S�8  �          @x��?�
=?�G��[��}  B;�?�
=?���HQ��Z�HBgG�                                    Bu�S��  �          @j�H?#�
����!G��>��C��?#�
��Q��8���g�HC�K�                                    Bu�S�  �          @���>L��@=q��  ���HB��>L��@#33���9p�B�
=                                    Bu�S�*  �          @��ÿu@��
?Q�@�Q�B��
�u@�\@(�A�(�B�p�                                    Bu�T �  �          @��ÿ\@�  ?�\)A��B��
�\@���@ ��A�B��                                    Bu�Tv  �          @�녿�z�@�@6ffA��B�
=��z�@�Q�@��A�Q�BО�                                    Bu�T  �          A��޸RA�\@4z�A��B�{�޸R@�
=@�=qA�
=B�8R                                    Bu�T,�  �          A���33A��@$z�A�\)B�W
��33@�R@�=qA�G�BЅ                                    Bu�T;h  �          A
=q�
�HA ��@(�Ak
=B�.�
�H@�\)@l(�A���B�\)                                    Bu�TJ  �          A(��(�@�p�@(�An�HB���(�@��H@k�A�33B�8R                                    Bu�TX�  �          A  ���@��@
=A��HB�8R���@�  @u�A���Bճ3                                    Bu�TgZ  �          A  ���HAp�@�AmB�ff���H@�Q�@mp�A�G�B��                                    Bu�Tv   �          A	��33A Q�@�Al  BЮ�33@�{@mp�A�G�B���                                    Bu�T��  �          A�\��Q�A
=@z�AW
=B��ÿ�Q�@��
@l(�A�B�                                    Bu�T�L  �          A�׿ٙ�A\)?У�A+33Bʽq�ٙ�@�
=@QG�A���B�{                                    Bu�T��  �          A�����A�\?�A�B�����@��R@C�
A�(�B��                                    Bu�T��  �          A=q��ffA
�H?�Q�@�
=B�B���ffA(�@9��A�{B�=q                                    Bu�T�>  �          A���Az�?�{@�G�B�녿�A{@2�\A��B���                                    Bu�T��  �          A{=uA�>k�?���B�.=uAff?�33AR=qB�(�                                    Bu�T܊  �          AQ�<#�
A�
?!G�@��HB��)<#�
@�{@G�A33B��)                                    Bu�T�0  �          A�þ��A  ?:�H@���B������@�@Q�A�G�B��
                                    Bu�T��  �          A��>��HAQ�=�\)>�B�8R>��HAG�?�  AB�RB�\                                   Bu�U|  �          A(��L��A�
>�G�@6ffB����L��A\)@��Ai��B��3                                    Bu�U"  �          A��>8Q�Az�>�@K�B�� >8Q�A (�@��Ao�B�k�                                    Bu�U%�  �          A��>#�
A��>���@$z�B��>#�
AQ�@(�Af�RB��
                                    Bu�U4n  �          A	���z�@��@
=Alz�B���z�@�ff@j�HA��B��H                                    Bu�UC  �          A  �;�@��@EA��
B�{�;�@ȣ�@�\)B��B��                                    Bu�UQ�  �          A
=�   @陚@.{A�33B��   @�=q@�p�A�p�Bݔ{                                    Bu�U``  �          A�����@��@(�AnffB֞����@�\)@q�AҸRB�p�                                    Bu�Uo  �          A���A�H@=qA|Q�Bԅ���@�@��Aڏ\B�Q�                                    Bu�U}�  �          A���A  @�
AW�B�\)���@�z�@p  Aȣ�B���                                    Bu�U�R  �          A���A��?�ffA
=B��)��A z�@Tz�A�\)Bӳ3                                    Bu�U��  �          A��ffA�?��A7�B�  �ff@��@b�\A��B��                                    Bu�U��  �          A
=��\A�
?���A$��B����\@��R@W�A�
=B�
=                                    Bu�U�D  �          A	��A�\?��A$(�B����@�z�@O\)A�z�B���                                    Bu�U��  �          A
ff��A�R?�
=A�
B�\��@�@H��A�ffB�\                                    Bu�UՐ  �          A
{�7
=A Q�?���A�HB�8R�7
=@���@C�
A��\B݅                                   Bu�U�6  �          A  �8��@��
?�33A�B�ff�8��@�(�@C�
A��HB���                                    Bu�U��  �          A
=�&ff@��?�33AQ�B�k��&ff@�p�@Dz�A��RBڣ�                                    Bu�V�  �          A=q��R@�ff?z�H@�B֙���R@�G�@+�A���B�Q�                                    Bu�V(  �          A�R�&ff@�\)=#�
>�\)B�.�&ff@�G�?�(�AC
=B�{                                   Bu�V�  �          @�\)�Q�@�33>�z�@33B�Ǯ�Q�@�33?�Q�AaG�B��)                                   Bu�V-t  �          @�\)�
�H@�p�=�G�?@  BӅ�
�H@�R?��
AN�HB�\)                                    Bu�V<  �          @�
=�33@љ���G��hQ�B��33@Ϯ?��\A  B�{                                    Bu�VJ�  �          @�
=�8Q�@�\)?L��@�{B垸�8Q�@���@
=qA�B�
=                                    Bu�VYf  �          @�p���\@��R��(��|��B߽q��\@��?Y��@�p�B�{                                    Bu�Vh  �          @���+�@�\)�u���HB��
�+�@�(�?��HAffB�                                    Bu�Vv�  �          @��H���@��;�  ���RBۣ����@���?��RA"{B�B�                                    Bu�V�X  �          @�  �"�\@У׽��
�(��Bޅ�"�\@��
?���A6{B�k�                                    Bu�V��  �          @����\)@��>�p�@B�\B�z��\)@��?��AqB�                                    Bu�V��  �          @����{@ȣ�?0��@��B�
=�{@�ff@�A�
=B��                                    Bu�V�J  �          @�  ���@�  ?B�\@�  B�8R���@��@p�A��B�L�                                    Bu�V��  �          @��H�
�H@��?\)@���B����
�H@�z�?�=qA��
B��f                                    Bu�VΖ  �          @����c�
@�녿J=q��B��ÿc�
@��>���@tz�BȽq                                    Bu�V�<  �          @�\)�333@��ͽ�G���(�B�(��333@�G�?�G�A=p�Bą                                    Bu�V��  �          @������
@�  ������B�\)���
@���?uA:�RB�\)                                    Bu�V��  �          @�
=��\)@�=q?G�A#33B�G���\)@���?�  A���B���                                    Bu�W	.  �          @�z�?(�@j�H?�ffA���B��?(�@Mp�@ffB��B��                                     Bu�W�  �          @��H@-p�?\)@	��BQ�A;33@-p�=L��@{BQ�?��                                    Bu�W&z  �          @�  @L(�?�=q@HQ�B+��A��
@L(�>���@R�\B7�@��H                                    Bu�W5   �          @�Q�@H��>���@B�\B/��@�(�@H�þ�
=@AG�B.�RC�0�                                    Bu�WC�  �          @p��?Ǯ@   ?�B(�Bhz�?Ǯ?�p�@��B0�BO��                                    Bu�WRl  �          @>8Q�@��?(�A}B�aH>8Q�?�Q�?��A�RB�aH                                    Bu�Wa  �          @N�R>\)@:�H?�33A�{B�� >\)@#�
?�ffBG�B��q                                    Bu�Wo�  �          @�\)?�@Q�@��B4\)B��?�?޸R@<(�Bi(�B�\)                                    Bu�W~^  �          @P  ?�\)�G�@8Q�B�W
C���?�\)��Q�@'
=B\z�C��f                                    Bu�W�  �          @��?��H��?�BM��C�p�?��H�p��?��RB0C��3                                    Bu�W��  �          @HQ�?��R�xQ�@"�\B\  C���?��R���@�RB8�RC��                                    Bu�W�P  �          @R�\@
=q��\@Q�B<{C�g�@
=q���@(�B)Q�C��                                    Bu�W��  �          @��\@1녿#�
@:�HB6�RC���@1녿��@+�B$p�C�XR                                    Bu�Wǜ  �          @mp�@'
=���@'
=B1�C�
=@'
=��z�@��B =qC��                                    Bu�W�B  �          @s33@!G�����@!�B)��C���@!G����H@�B�C��{                                    Bu�W��  �          @R�\@Q쿴z�?�B��C�7
@Q��=q?\A�p�C��H                                    Bu�W�  �          @�
=@\)��@tz�BY
=C�w
@\)�33@Z�HB:C�<)                                    Bu�X4  �          @�ff@{���@l��BhC�\@{��
=@\��BR�C���                                    Bu�X�  �          @}p�?��?!G�@[�Bo�RA�=q?�׾aG�@^�RBu�C��                                     Bu�X�  �          @r�\?���?��@I��Bb{B�R?���?�@XQ�B~(�A�=q                                    Bu�X.&  �          @���?��H?�  @L��BR�B6��?��H?h��@aG�Bu{A�R                                    Bu�X<�  �          @��@\)@�@7�B'  Bz�@\)?�G�@QG�BF=qAָR                                    Bu�XKr  �          @�Q�@�H?�\@?\)B3�B�R@�H?z�H@U�BO�RA�Q�                                    Bu�XZ  �          @�(�@�\?�G�@`��BX�B
=@�\?��@q�Br��A�=q                                    Bu�Xh�  �          @��@��?�{@fffB[z�B\)@��>�
=@tz�Bq33A2ff                                    Bu�Xwd  �          @�ff@  @
=@N�RB9�B,��@  ?��R@i��B[�RA��H                                    Bu�X�
  �          @��?�G�?���@`  Bm��A�ff?�G�>.{@i��B�W
@���                                    Bu�X��  �          @��?�>\)@h��B�B�@�?��G�@c�
B��C��                                     Bu�X�V  �          @�Q��Z=q@�{�2�\��  B�33�Z=q@��R����0��B�=                                    Bu�X��  �          @�(��?\)@��R�˅�V{B�33�?\)@�p��#�
���
B��                                    Bu�X��  �          @�p��>{@�ff����l(�B�.�>{@�{�W
=���B�(�                                    Bu�X�H  �          @���A�@�33��G��
�HB����A�@��?   @�=qB�L�                                    Bu�X��  �          @���Dz�@�=q���
���B� �Dz�@�z�>�@���B��                                    Bu�X�  �          @�{�Fff@�z�0����p�B��Fff@��
?Tz�@��HB��                                    Bu�X�:  �          @Ӆ�AG�@���
=q��z�B� �AG�@���?xQ�A33B��                                    Bu�Y	�  �          @�\)�AG�@�z�Tz���33B�aH�AG�@��?#�
@�{B�.                                    Bu�Y�  �          @��
�'
=@����#�
���
B�aH�'
=@��
?���AR�RB�                                    Bu�Y',  �          @θR��p�@�(�>���@c�
B׽q��p�@�=q?��HA�G�Bـ                                     Bu�Y5�  �          @�녿�33@���?fffA�\BҊ=��33@��H@=qA��
B�Ǯ                                    Bu�YDx  �          @�=q��{@��?J=q@�BѨ���{@���@z�A���Bӳ3                                    Bu�YS  �          @�녿�{@���?���A@��B�ff��{@�
=@4z�A��HB���                                    Bu�Ya�  �          @�\)���@��?��AN�\B�ff���@��H@7�A��
B�\                                    Bu�Ypj  �          @�  �c�
@��H@��A�
=B��c�
@���@l��BB�8R                                    Bu�Y  �          @��\?�ff@u�@^�RB%
=B�L�?�ff@2�\@��B^�B��R                                    Bu�Y��  �          @�p�?h��@���@aG�B"  B�� ?h��@=p�@�ffB\z�B��)                                    Bu�Y�\  �          @���?��@���?��HA�Q�B��?��@�
=@J�HB  B��H                                    Bu�Y�  �          @���?�Q�@��?�G�A��B�G�?�Q�@�33@@��B�B��\                                    Bu�Y��  �          @���?�ff@��?���AX��B��f?�ff@���@333A�  B���                                    Bu�Y�N  �          @�\)?+�@�  @	��A���B�p�?+�@�  @\��B�
B�
=                                    Bu�Y��  �          @�Q�?
=q@�{?�A���B�?
=q@�=q@>�RB��B�aH                                    Bu�Y�  �          @�G�?��@���?�
=A��B���?��@�ff@N{B��B�Ǯ                                    Bu�Y�@  �          @�G�?#�
@�(�@>{B�B�\)?#�
@j�H@��HB>z�B�aH                                    Bu�Z�  �          @���?�\@��@@��B�HB�\)?�\@fff@��BB{B�                                    Bu�Z�  �          @�Q�>��@�\)��p��_\)B��>��@��?��RA?33B�                                   Bu�Z 2  �          @�ff>�33@�������B��{>�33@\?���A(��B��                                    Bu�Z.�  �          @�(�>�Q�@\>8Q�?�33B�Q�>�Q�@��?��A�33B�                                      Bu�Z=~  �          @�33?#�
@�{@�\A�p�B��{?#�
@�{@Z�HBz�B�u�                                    Bu�ZL$  �          @�{?B�\@�
=@z�A���B��?B�\@�
=@Y��Bp�B���                                    Bu�ZZ�  �          @\?fff@�Q�@Q�A�ffB��=?fff@�p�@qG�B��B�G�                                    Bu�Zip  �          @���?k�@�
=@z�A�G�B�  ?k�@�z�@mp�BQ�B��3                                    Bu�Zx  �          @��R>8Q�@�p��#�
�L��B���>8Q�@�ff?���AzffB�z�                                    Bu�Z��  �          @��H��G�@�  ?Y��A ��B�L;�G�@�G�@��A��B���                                    Bu�Z�b  �          @�(����R@Å�Ǯ�fffB��쾞�R@�\)?��ABffB��                                    Bu�Z�  �          @����k�@��þ�z��0  B�aH�k�@�(�?�{AP��B�z�                                    Bu�Z��  �          @�(���\)@�(��.{��z�B�B���\)@�ff?�Q�Ac
=B�L�                                    Bu�Z�T  �          @�=q����@�G���(�����B��f����@�p�?��RA=��B��                                    Bu�Z��  �          @�33>�Q�@\=�G�?��B�8R>�Q�@��?�\A�\)B��                                    Bu�Zޠ  �          @�
=>#�
@�ff>��R@>�RB�>#�
@�(�?�
=A�p�B��
                                    Bu�Z�F  �          @���=�\)@�Q�>���@~�RB���=�\)@�p�?�(�A��B��                                    Bu�Z��  �          @�p���@�z�>.{?�p�B�����@��
?�(�A�  B���                                    Bu�[
�  �          @��;\)@�G���{�5p�B��f�\)@�(�>�@��RB��)                                    Bu�[8  �          @�33=�@�{��=q�,  B��{=�@�Q�?
=q@��\B���                                    Bu�['�  �          @�  ��=q@����\��z�B�uþ�=q@��\?�=qA/\)B��=                                    Bu�[6�  �          @�G��aG�@�  >���@{�B�G��aG�@��?�p�A��\B��\                                    Bu�[E*  �          @��
��33@��H>u@��B�\��33@���?��
A�z�B�u�                                    Bu�[S�  �          @��\<#�
@�=q�����B��f<#�
@��?��
A\)B��f                                    Bu�[bv  �          @��þ�33@��>aG�@�\B�33��33@��R?�  A�{B��{                                    Bu�[q  �          @����@���>L��@
=B��þ�@�Q�?�A���B��                                     Bu�[�  �          @���<�@��
��Q��uB�\)<�@�  ?�z�AG�B�W
                                    Bu�[�h  �          @�33��z�@�녾�  �(��B�#׾�z�@�p�?�G�A[
=B�Q�                                    Bu�[�  �          @�{��33@�녿���0  B�k���33@�z�?�\@��B�Q�                                    Bu�[��  �          @�=q�\@����Q��p  B�  �\@���>�?���B��q                                    Bu�[�Z  �          @��B�\@�ff�˅��  B�  �B�\@�<��
>B�\B��
                                    Bu�[�   �          @��
��@��Ϳ�ff��B��׼�@��=L��?   B���                                    Bu�[צ  �          @�\)>���@���>���@���B�W
>���@�ff?��A��
B�                                    Bu�[�L  �          @�?�  @�ff@%�A��
B�
=?�  @�  @|��B&��B�Q�                                    Bu�[��  �          @�\)?�p�@���@!�A�{B��?�p�@��H@{�B$G�B�8R                                    Bu�\�  �          @�z�?�G�@�z�@,(�A�G�B��q?�G�@���@�G�B-�\B���                                    Bu�\>  �          @���?�33@��@z�A���B�G�?�33@���@\��BG�B��                                    Bu�\ �  �          @�z�?�Q�@�  @	��A�  B�8R?�Q�@��@c�
B�B���                                    Bu�\/�  �          @���?˅@��@Q�A��B�?˅@���@s�
B�B�ff                                    Bu�\>0  �          @�G�?˅@�{@z�A���B�aH?˅@��@c33B(�B��                                    Bu�\L�  �          @�ff?�\@�p�?�33Ay�B�k�?�\@�ff@N{A��B�                                    Bu�\[|  �          @���?�@�(�@HQ�A�=qB�\?�@��@��
B/�B�G�                                    Bu�\j"  �          @�33?�
=@�p�@��B��B�\)?�
=@a�@���BVz�B�=q                                    Bu�\x�  �          @ҏ\?��@��\@�ffB*�\B��
?��@E@��HBi
=B~�                                    Bu�\�n  �          @�\)?�33@��@s�
B
��B�W
?�33@~{@�BK�\B�
=                                    Bu�\�  �          @У�?��@�=q@�z�B�B���?��@Z=q@��B^  B���                                    Bu�\��  �          @ƸR?�=q@�p�@���B'��B�z�?�=q@AG�@�  Bg�\B�ff                                    Bu�\�`  �          @�G�?�G�@�
=@g�Bp�B���?�G�@\��@��\BUQ�B�ff                                    Bu�\�  �          @��?   @�33@|��B(=qB�?   @@��@���Bk��B�L�                                    Bu�\Ь  �          @�?=p�@�\)@@��A���B�8R?=p�@xQ�@��HB>��B��{                                    Bu�\�R  �          @�\)�aG�@��@ffA�G�B�33�aG�@�G�@�  B��B�                                      Bu�\��  �          @�33�u@�=q?�{A��
B���u@�Q�@c�
B33B�8R                                    Bu�\��  �          @�ff�8Q�@���?�33A�z�B�ff�8Q�@��\@c33B�B��                                    Bu�]D  �          @�\)�k�@��?���ALQ�B�=q�k�@�z�@FffA�33B�Ǯ                                    Bu�]�  �          @��H���@��?���A@��B�33���@�  @E�A��B�k�                                    Bu�](�  �          @���=p�@��@A�z�B³3�=p�@��
@l(�BffB�L�                                    Bu�]76  �          @�=q��@��?�Q�A���B�W
��@���@U�B�B��q                                    Bu�]E�  �          @��
�
=@�z�?ǮAk�B�W
�
=@��@N�RA�
=B��                                    Bu�]T�  �          @ƸR���H@�  ?\Ab�HB�B����H@���@N�RA�33B��                                    Bu�]c(  �          @��׿�@�33?��\AJ�HB��R��@�
=@7�A�33B�\                                    Bu�]q�  �          @��&ff@���?��A3�B�
=�&ff@�\)@%�A�G�Bè�                                    Bu�]�t  �          @�{�333@��\?O\)A	G�B���333@��H@
=A�=qB�u�                                    Bu�]�  �          @��Ϳ�Q�@��׽��
�Y��B�\)��Q�@���?�  A���B�k�                                    Bu�]��  �          @�33�fff@�Q�=u?#�
B�W
�fff@�  ?У�A�ffB�Q�                                    Bu�]�f  �          @��
�5@�G�?��@�p�B�LͿ5@��@
=qA���BĞ�                                    Bu�]�  �          @��H��@�G�?
=q@��B���@�(�@ffA��B�Ǯ                                    Bu�]ɲ  �          @����(�@�\)?!G�@���B�33�(�@���@
�HA�33B�aH                                    Bu�]�X  �          @�ff�G�@��H?:�H@��BĊ=�G�@��
@33A��
B�{                                    Bu�]��  �          @����G�@���?�33Am�B�k���G�@��@;�B(�B�Ǯ                                    Bu�]��  �          @��=�Q�@�
=@�\A��HB�=�Q�@��@aG�B�RB���                                    Bu�^J  �          @�  >k�@��R?�ffA�p�B�.>k�@��@W
=B
=B�\)                                    Bu�^�  �          @���>�\)@�  ?��HA�{B�(�>�\)@�
=@R�\Bp�B�33                                   Bu�^!�  �          @�G�>�Q�@��\?�
=Ae��B���>�Q�@�(�@C33A���B��\                                   Bu�^0<  �          @�33<��
@�z�@�A�  B���<��
@�\)@h��B"�B���                                    Bu�^>�  �          @�=�\)@�
=@p�A�\)B��{=�\)@���@l(�B"p�B�B�                                    Bu�^M�  �          @��H>u@���@��A��B���>u@�=q@xQ�B'��B���                                    Bu�^\.  �          @љ�=��
@�?W
=@�ffB���=��
@��@0��AɅB��=                                    Bu�^j�  �          @߮��@�
=>��
@(Q�B�\��@�G�@�A��B�.                                    Bu�^yz  �          @�=q�L��@�Q�>��@
=B��L��@�33@��A�=qB��
                                    Bu�^�   �          @���@���?Tz�@ָRB�����@�{@<(�A�B�k�                                    Bu�^��  �          @�z���@�Q�?�p�A=qB�����@�G�@S�
A�\)B���                                    Bu�^�l  �          @�p��5@߮?�Q�A8��B����5@ƸR@`��A�ffB�
=                                   Bu�^�  �          @�녿�ff@���@   A�B�G���ff@�{@�(�B\)B��
                                   Bu�^¸  �          @�\)���@�{@(Q�A��B��)���@�=q@�\)B�HB��                                    Bu�^�^  �          @�  ��\)@У�?�\)A^�RB�#׽�\)@�ff@b�\A���B�L�                                    Bu�^�  �          @�=q>W
=@�33?\AV�\B�8R>W
=@�=q@Y��A���B��                                    Bu�^�  �          @Ϯ��G�@�Q�@�A��B�aH��G�@��R@��BffB�#�                                    Bu�^�P  �          @�Q쾙��@���@A�\)B�8R����@���@{�B#�\B��{                                    Bu�_�  �          @�p����R@��H@�RA���B��׾��R@��@�Q�B+ffB�8R                                    Bu�_�  �          @��;�z�@���@33A�{B�(���z�@�p�@vffB${B��                                     Bu�_)B  �          @�{��@���@�{B3�RB�=q��@!�@�\)Bw�B�aH                                    Bu�_7�  �          @�\)����@��@��B+�\B�(�����@1G�@�Bp�B�                                      Bu�_F�  �          @�(����
@���@�  B#{Bͅ���
@C�
@��RBh�B�\                                    Bu�_U4  �          @�(���ff@��@dz�B��B�G���ff@`��@���BT�HB�(�                                    Bu�_c�  �          @��׿u@��@j�HB�B�LͿu@Q�@�{B]33BԞ�                                    Bu�_r�  �          @��H�G�@��@�\)B/�HBȅ�G�@1�@��BvB�\)                                    Bu�_�&  �          @�녿.{@���@��RB0(�B���.{@1G�@��HBw�\Bϔ{                                    Bu�_��  �          @�G��&ff@��@y��B!(�B�=q�&ff@G
=@�(�Bh�B˞�                                    Bu�_�r  �          @�(��
=q@�@z=qBB�(��
=q@N{@�Bf��B�                                    Bu�_�  �          @�33�Ǯ@��H@_\)B	p�B��H�Ǯ@o\)@��BR�B�\                                    Bu�_��  �          @Ϯ>�=q@���@z�A�\)B��H>�=q@���@��HB��B��
                                    Bu�_�d  �          @��>�Q�@�z�@8Q�A�  B��>�Q�@�{@��\B0��B�W
                                    Bu�_�
  �          @�G�?
=q@У�@!�A�G�B��?
=q@�z�@�ffB�B��\                                    Bu�_�  �          @���>��
@�G�@N{A�z�B���>��
@�p�@���B+ffB��=                                    Bu�_�V  �          @�>�
=@߮@>{A�  B�33>�
=@�ff@���B%33B���                                    Bu�`�  �          @���>�
=@���@<(�A�Q�B�>�
=@�(�@�(�B(ffB�{                                    Bu�`�  �          @�
==���@�{@HQ�A�=qB�\=���@�z�@�p�B4��B��=                                    Bu�`"H  �          @ָR����@���@g
=B  B������@�
=@�ffBKQ�B��
                                    Bu�`0�  �          @�\)���@�\)@xQ�Bp�B�W
���@~�R@��BU��BÙ�                                    Bu�`?�  �          @�녾�G�@��@z�HBffB���G�@�G�@�\)BU�
B�L�                                    Bu�`N:  �          @��þ��R@���@|��B�HB����R@�  @��\BR�B�33                                    Bu�`\�  �          @�\)���@���@��
B4z�B�����@:=q@��
Bw33B�=q                                    Bu�`k�  �          @��\@��@���B*\)B�\�\@R�\@�Q�Bo��B�p�                                    Bu�`z,  �          @��H��{@���@�33B"
=Bˮ��{@b�\@���BiB֮                                    Bu�`��  �          @�  �Q�@�G�@�p�B#z�Bƀ �Q�@W�@�G�Bl(�B�W
                                    Bu�`�x  �          @ڏ\��=q@��@��RB"��B��Ὴ=q@XQ�@��\Bj�RB�B�                                    Bu�`�  �          @ۅ��=q@�p�@�z�B
=B˞���=q@`  @���Bg  B�L�                                    Bu�`��  �          @�����\@�ff@�{B�RB�{���\@aG�@��Bh  B�33                                    Bu�`�j  �          @��
���@��H@�  B#z�B��῅�@X��@�(�Bk��B��                                    Bu�`�  �          @�(��n{@�\)@��BG�B�
=�n{@dz�@���Bf{B�                                    Bu�`�  �          @ۅ�}p�@���@���B�B�aH�}p�@hQ�@�\)Bb�RBң�                                    Bu�`�\  �          @��Ϳ���@���@���BQ�B�uÿ���@j=q@�  Ba��BՀ                                     Bu�`�  �          @��H���
@�{@��\BQ�B�\)���
@a�@�Q�Be�
B�ff                                    Bu�a�  �          @�녿�@�(�@��HB)��B��)��@J=q@��BqffB܊=                                    Bu�aN  �          @�녿E�@���@�Q�B%�HB�\)�E�@U@�z�BoG�B�                                      Bu�a)�  �          @�녿=p�@�(�@�33B{Bè��=p�@q�@�33B]�
B��                                    Bu�a8�  �          @�녿c�
@���@�ffBp�B�#׿c�
@i��@�p�BaB�aH                                    Bu�aG@  �          @ۅ���@�33@�
=B"p�B�aH���@Y��@��
Bk
=Bր                                     Bu�aU�  �          @�(���R@�G�@j�HB �
B�#׿�R@���@��\BK33B�G�                                    Bu�ad�  �          @�{��@�
=@[�A��RB�z��@��@��HBE�B��H                                    Bu�as2  �          @ۅ�Y��@���@tz�B(�B��Y��@��
@�BQ{B�33                                    Bu�a��  �          @�(���G�@��R@eB�\B��)��G�@�Q�@��BM  B��                                   Bu�a�~  �          @�z�:�H@�\)@QG�A�  B�p��:�H@��
@�B@\)B��
                                   Bu�a�$  �          @�
==���@�33@.{A�p�B�
==���@��@��RB.�B��=                                    Bu�a��  �          @�ff=#�
@��R@��A���B�Q�=#�
@�33@��B$��B�.                                    Bu�a�p  �          @�=q����@�ff@�A���B�����@�p�@��B��B��                                    Bu�a�  �          @�����@ȣ�@�\A�Q�B������@�{@�{Bz�B�33                                    Bu�aټ  �          @�{�k�@��H@I��A�RB���k�@�  @��
B<�B��
                                    Bu�a�b  �          @�{�B�\@��
@g
=BB��H�B�\@���@�\)BN�B�=q                                    Bu�a�  �          @�p��#�
@�G�@W�A�p�B�.�#�
@��
@�z�B@33B�=q                                    Bu�b�  �          @��=#�
@�33@^�RA�  B�8R=#�
@��@�{BF�B���                                    Bu�bT  �          @��
>k�@�@^{A�\B���>k�@��@�ffBDB�B�                                    Bu�b"�  �          @�=q>�
=@�z�@[�A��B��
>�
=@��R@���BC�B�=q                                    Bu�b1�  �          @أ�?333@��\@W�A�
=B�ff?333@�p�@��\BBz�B��                                    Bu�b@F  �          @�33>aG�@�\)@R�\A�(�B��H>aG�@��H@���B>�RB���                                    Bu�bN�  �          @�{�u@���@X��A�{B�
=�u@��
@�p�B@��B�\)                                    Bu�b]�  �          @�p���Q�@��@UA��HB��3��Q�@���@�(�B?33B�8R                                    Bu�bl8  �          @�p�<��
@��@UA�z�B��R<��
@���@��
B?
=B���                                    Bu�bz�  �          @��
=u@���@33A�p�B��=u@�Q�@��B�\B�                                    Bu�b��  �          @޸R=��
@ۅ?�33A�B��q=��
@Å@S�
A㙚B���                                    Bu�b�*  �          @�p��.{@��H@z�A��B��)�.{@��@�33Bz�B�ff                                    Bu�b��  �          @�G��(��@��H@>{AǙ�B��Ϳ(��@���@��
B/G�B��
                                    Bu�b�v  �          @��ͽ�G�@ָR@�A���B��ý�G�@���@�\)Bz�B�aH                                    Bu�b�  �          @�33��@�{@
=A��B�k���@���@��B�
B��                                    Bu�b��  �          @��#�
@�  @{A�\)B�(��#�
@��@�G�BB�33                                    Bu�b�h  �          @�(�>��
@�?���AP  B���>��
@���@qG�B 
=B�                                    Bu�b�  �          @�33?&ff@�{?�=qA,Q�B�aH?&ff@��
@`��A�B���                                    Bu�b��  �          @���?Q�@��?�R@�{B�?Q�@�\)@8��A��HB��{                                    Bu�cZ  �          @���>��@�\)?z�H@�\)B�L�>��@ȣ�@L��A��B�k�                                    Bu�c   �          @�z�>���@��@Q�A���B�G�>���@��@��B�B�                                    Bu�c*�  �          @��>��H@�=q@
=A�33B��)>��H@�Q�@�
=B�B�\)                                    Bu�c9L  �          @�{?=p�@��
?�p�A33B�Ǯ?=p�@�33@��B��B��                                    Bu�cG�  �          @�R?G�@��@p�A���B��?G�@��R@��B�B�u�                                    Bu�cV�  �          @�?+�@�=q@Q�A�{B��)?+�@�  @�  B  B���                                    Bu�ce>  �          @�(�?+�@Ӆ@$z�A�33B��?+�@��@��HB �\B���                                    Bu�cs�  �          @���?
=q@�=q@/\)A�ffB��?
=q@�=q@��B&Q�B�L�                                    Bu�c��  �          @���?�@��@333A�{B��?�@���@�G�B(33B�                                    Bu�c�0  �          @�ff?��@�(�@/\)A��B���?��@��@�Q�B%��B�=q                                    Bu�c��  �          @��?�\@�  ?�33A3�
B���?�\@��@g
=A�z�B��                                    Bu�c�|  �          @��
>���@ᙚ?fff@�\)B��R>���@��
@J=qAҸRB�(�                                    Bu�c�"  �          @�(�>�ff@��?Tz�@��B��3>�ff@�z�@EA�  B��                                    Bu�c��  �          @���>W
=@�  ?(�@�{B���>W
=@��@7�A���B�W
                                    Bu�c�n  �          @�  >k�@�(�?��RA#\)B�B�>k�@��H@[�A���B�                                    Bu�c�  �          @�p�>�z�@�
=?��AZ�RB�#�>�z�@��@p  B=qB�aH                                    Bu�c��  �          @��>�  @��?s33@���B��>�  @�
=@J=qA�p�B�z�                                    Bu�d`  �          @��>�Q�@ᙚ>�z�@�
B�(�>�Q�@�=q@%�A���B��R                                    Bu�d  �          @�\>\@ᙚ?
=q@�(�B��f>\@�\)@4z�A�(�B�aH                                    Bu�d#�  �          @�>��
@�z�?!G�@�
=B�>��
@ə�@7
=A�
=B�G�                                    Bu�d2R  �          @���>8Q�@�
=?O\)@�(�B��>8Q�@�=q@C33A�ffB���                                    Bu�d@�  �          @���>8Q�@�\)?O\)@��
B��>8Q�@�=q@C�
A�ffB���                                    Bu�dO�  �          @�=q>�=q@�G�?��@�Q�B��>�=q@θR@5A�p�B�L�                                    Bu�d^D  �          @���<��
@���=�G�?aG�B���<��
@ָR@��A��\B��{                                    Bu�dl�  �          @�p�>\)@��=�?k�B��
>\)@�
=@p�A��HB��3                                    Bu�d{�  �          @�\)>8Q�@�
=>�G�@_\)B�8R>8Q�@�p�@2�\A�p�B�                                      Bu�d�6  �          @�\)���
@�ff?+�@�=qB�33���
@�=q@@  A�(�B�L�                                    Bu�d��  �          @�R=L��@�p�?:�H@�=qB�33=L��@���@C33A�(�B��                                    Bu�d��  �          @�R>k�@�{>�@j=qB�k�>k�@�z�@333A���B��                                    Bu�d�(  �          @�p�>W
=@���>�33@0��B���>W
=@�z�@+�A��B�aH                                    Bu�d��  �          @�{>�@���>�z�@�B��R>�@��@'�A���B�.                                    Bu�d�t  �          @�Q�\)@�R?^�R@��HB�8R�\)@У�@L(�A�ffB�u�                                    Bu�d�  �          @�{��Q�@�z�?B�\@\B�p���Q�@Ϯ@Dz�A�Q�B��{                                    Bu�d��  �          @�ff��Q�@�p�?
=q@��B�p���Q�@��H@7�A�(�B��\                                    Bu�d�f  �          @�p�>aG�@��=u>�G�B��\>aG�@׮@=qA�33B�W
                                    Bu�e  �          @�
==u@�ff>��@l��B�
==u@�z�@3�
A�G�B���                                    Bu�e�  �          @��;�@��
?��@���B����@У�@9��A��B�G�                                    Bu�e+X  �          @�33��@�G�?\(�@޸RB����@˅@HQ�A�p�B�W
                                    Bu�e9�  �          @�\=�Q�@�G�?333@�B���=�Q�@��@>�RA�33B�z�                                    Bu�eH�  �          @��
���
@�=q?@  @�Q�B�Lͽ��
@�@A�A��
B�k�                                    Bu�eWJ  �          @�p��#�
@�?c�
@��HB����#�
@�p�@K�A�z�B��                                    Bu�ee�  �          @�R�k�@�p�?E�@�(�B���k�@�Q�@EAʸRB�
=                                    Bu�et�  �          @�{��  @�z�?Y��@�  B���  @θR@I��AϮB�p�                                    Bu�e�<  �          @�{��\)@�33?�\)A�RB����\)@��H@X��A���B�\                                    Bu�e��  �          @��8Q�@���?�z�A�B��H�8Q�@˅@\��A�p�B�=q                                    Bu�e��  �          @�׽#�
@��?�Q�AffB��\�#�
@��
@^�RA���B���                                    Bu�e�.  �          @�R����@��?�z�A4��B�Ǯ����@�ff@i��A��B�u�                                    Bu�e��  �          @��aG�@��H?�Q�A7�B�z�aG�@�
=@l(�A�p�B���                                    Bu�e�z  �          @�\)���
@�?�ffA%G�B�Lͽ��
@���@c�
A�Q�B�u�                                    Bu�e�   �          @�>�@�=q?!G�@���B��f>�@�
=@:�HA�{B��3                                    Bu�e��  �          @��
>L��@�>#�
?�=qB��)>L��@���@\)A�Q�B���                                    Bu�e�l  �          @��
>k�@�33>�33@4z�B�\)>k�@��H@*�HA�(�B�{                                    Bu�f  �          @�(�>#�
@��
>�  @ ��B�k�>#�
@�z�@%�A�B�=q                                    Bu�f�  �          @���>W
=@�z�=���?B�\B��R>W
=@ָR@(�A��B��                                     Bu�f$^  �          @�p�>�\)@��ͽ��uB���>�\)@�G�@\)A��
B�\)                                    Bu�f3  �          @�\?��@ᙚ��  ���RB�{?��@�\)@A�G�B���                                    Bu�fA�  �          @���>\@�  ��Q��<(�B��)>\@�\)?��HA��
B���                                    Bu�fPP  �          @�  �:�H@��?�@���B���:�H@�33@0��A���B�                                    Bu�f^�  �          @�(���=q@ָR?��A33B�G���=q@�  @L(�A�
=B�k�                                    Bu�fm�  �          @�{��  @�Q�?W
=@�
=B��ÿ�  @�33@@��A�z�B�#�                                    Bu�f|B  �          @�(��\@�33>��R@%B�B��\@��
@"�\A��B��q                                    Bu�f��  �          @�  ��z�@�\)>�\)@B�𤾔z�@ȣ�@{A�  B�L�                                    Bu�f��  �          @�G���33@�Q�>���@UB�녾�33@�Q�@%A��B�ff                                    Bu�f�4  �          @ڏ\�\@ٙ�>�(�@g
=B�ff�\@���@(��A�{B��                                    Bu�f��  �          @�33�#�
@��H>L��?�B��#�
@�z�@(�A��RB���                                    Bu�fŀ  �          @��þ��@أ�>�z�@��B�ff���@�G�@\)A���B��q                                    Bu�f�&  �          @�=q���@��>u@G�B�G����@˅@p�A�G�B���                                    Bu�f��  �          @��þ��R@أ�>�\)@�B�(����R@ə�@�RA��B��=                                    Bu�f�r  �          @ٙ��B�\@���>�33@<��B�8R�B�\@�G�@#33A���B�u�                                    Bu�g   �          @أ׾8Q�@�Q�>k�?�z�B�\�8Q�@��@�A�ffB�B�                                    Bu�g�  �          @�\)���@�ff>��@_\)B�z���@�{@%�A�z�B�=q                                    Bu�gd  �          @׮���H@�{?�@�B�L;��H@���@+�A�(�B�                                    Bu�g,
  �          @�녾�G�@�?�p�A'\)B�uþ�G�@���@VffA�ffB�p�                                    Bu�g:�  �          @أ׾��R@�{?xQ�A33B�8R���R@�  @FffA�ffB���                                    Bu�gIV  �          @�Q�
=@Ӆ?��\A,��B�33�
=@��\@W
=A��B��\                                    Bu�gW�  �          @�\)��@��
?��AB���@��@H��A�33B��                                    Bu�gf�  �          @�Q�\@��H?�
=AC�B���\@�  @`��A�ffB�u�                                    Bu�guH  �          @׮��@�33?�Q�A#33B����@�33@Q�A��B�                                      Bu�g��  �          @�\)��@�33?�
=A!�B�=q��@�33@QG�A��HB�G�                                    Bu�g��  �          @�p���  @��
?(��@�{B�Q쾀  @�G�@2�\A�{B��q                                    Bu�g�:  �          @�{��  @��>��H@��B�L;�  @�z�@(��A��
B���                                    Bu�g��  �          @�ff��33@�p�?�\@��\B���33@�(�@)��A���B��=                                    Bu�g��  �          @��Ǯ@�z�?�@�
=B��׾Ǯ@�33@*=qA�  B�8R                                    Bu�g�,  �          @�(���
=@��?W
=@�G�B�=q��
=@�p�@;�A�ffB�                                    Bu�g��  �          @ҏ\���
@���?�z�AEB��׾��
@�33@Z�HA�
=B�p�                                    Bu�g�x  �          @׮��\)@��        B�녾�\)@��@A�(�B�33                                    Bu�g�  �          @�녾�(�@�G���=q�y��B�p���(�@���>���@X��B�.                                    Bu�h�  �          @ڏ\��(�@�녿�=q�xQ�B�k���(�@ٙ�>��@^{B�(�                                    Bu�hj  �          @�z��ff@��˅�U�B��;�ff@ڏ\?.{@���B���                                    Bu�h%  �          @ٙ��W
=@�
=���\�	p�B�� �W
=@�?�p�A&ffB��                                    Bu�h3�  �          @�녾aG�@׮�p����{B����aG�@�?�ffA0��B��                                    Bu�hB\  �          @�=q��(�@أ׿8Q����B�.��(�@�z�?\AN=qB�Q�                                    Bu�hQ  �          @��þ��H@�  ��z��p�B�8R���H@�
=?�A�B��{                                    Bu�h_�  �          @�녾�@�G������4z�B��
��@���?��A���B�(�                                    Bu�hnN  �          @�=q�z�@�G���p��Dz�B���z�@�G�?�{A}�B�\                                    Bu�h|�  �          @�\)��@�z῁G��	G�B����@Ӆ?��HA$��B�.                                    Bu�h��  �          @��.{@љ���\)�ffB��.{@��?���A
=B�                                    Bu�h�@  �          @�p��B�\@У׿�����B�ff�B�\@���?�ffA�B�\)                                    Bu�h��  �          @�p����\@У׿p���Bų3���\@�
=?�(�A)p�B���                                    Bu�h��  �          @Ӆ�k�@����R�-�B�8R�k�@�\)?h��@���B�{                                    Bu�h�2  �          @�zῂ�\@�{��ff�3�
B�녿��\@�Q�?\(�@�BŽq                                    Bu�h��  �          @��
��  @�p����
�1��BŞ���  @Ϯ?^�R@��B�p�                                    Bu�h�~  �          @�ff�p��@�����b{Bģ׿p��@Ӆ?�@���B�33                                    Bu�h�$  �          @ָR�Y��@�p���(��m�B�{�Y��@�(�>�ff@u�B�                                    Bu�i �  �          @�녿xQ�@�\)�����B�
=�xQ�@�\)>��
@*�HB�ff                                    Bu�ip  �          @�\)��ff@θR�����W�
B�aH��ff@��
?��@��B��                                    Bu�i  �          @�녿���@�녿�Q��C\)B�����@�?B�\@��
BƳ3                                    Bu�i,�  �          @�녿��H@љ������D��B�
=���H@��?=p�@�
=BȨ�                                    Bu�i;b  �          @�녿�33@�=q����5�B�Ǯ��33@���?Y��@�RBǊ=                                    Bu�iJ  �          @�녿�ff@��ÿ�p��IG�Bʊ=��ff@��?333@��B��                                    Bu�iX�  �          @��ÿ���@�G�����<��BǙ�����@�z�?J=q@�
=B�Q�                                    Bu�igT  �          @�ff��33@�ff��{�;�
B�=q��33@�G�?J=q@׮B��                                    Bu�iu�  �          @�ff���H@��!���33BӅ���H@��R�:�H��G�BЮ                                    Bu�i��  �          @�녿�G�@�\)�H����B�ff��G�@��
�:�H���
B�ff                                    Bu�i�F  �          A=q��\@����H��=qB͊=��\A�R>aG�?�G�B�p�                                   Bu�i��  �          A�ÿ�(�A�׿�=q�)��B����(�A��?�@��\B���                                    Bu�i��  �          Az��Q�@�p���33�8Q�B����Q�A z�?xQ�@أ�B�Ǯ                                    Bu�i�8  �          A z���@��H���\��BΏ\���@���?�R@���B��)                                    Bu�i��  �          A�H��\@��H�Ǯ�/33B�aH��\@�?��@��B��                                    Bu�i܄  �          A\)�ٙ�@����=q�p�B�B��ٙ�@�p�?��\A�\B�8R                                    Bu�i�*  �          AQ���H@�
=��33�\)B�(����HA   ?�p�AQ�B�\                                    Bu�i��  �          A �ÿ���@�G�������B�8R����@���?�  AffB�.                                    Bu�jv  �          @�  �У�@�  ����q�B�.�У�@߮>\@?\)B�B�                                    Bu�j  �          @ۅ��G�@ƸR�����{Bӏ\��G�@�33�#�
����B�                                    Bu�j%�  �          @�(����
@�
=�����33B�����
@�(��u��\B��                                    Bu�j4h  �          @�����@����Q���G�B�{���@θR��{�5�Bؔ{                                    Bu�jC  �          @�\)�33@�33�33����B�Ǯ�33@�p�=��
?!G�B�(�                                    Bu�jQ�  �          @���
=@�{�ff��=qB�z��
=@�\���
�.{Bף�                                    Bu�j`Z  �          @��
�{@�R��R���B�(��{@�G�>8Q�?��BԸR                                    