CDF  �   
      time          *   Conventions       ACDD-1.3, Spase v2.2.3     title         /DSCOVR Magnetometer Level 2 One Minute Averages    id        Doe_m1m_dscovr_s20200421000000_e20200421235959_p20200422031650_pub.nc   naming_authority      gov.noaa.swpc      program       DSCOVR     summary       }Interplanetary magnetic field observations collected from magnetometer on DSCOVR satellite - 1-minute average of Level 1 data      keywords      _NumericalData.ObservedRegion.Heliosphere.NearEarth, NumericalData.MeasurementType.MagneticField    keywords_vocabulary       Spase v2.2.2   
references        �; DSCOVR TIME SERIES DATA AVERAGES ALGORITHM THEORETICAL BASIS DOCUMENT, v2.4; GSE TO GSM COORDINATE TRANSFORMATION ALGORITHM THEORETICAL BASIS DOCUMENT v2.1      metadata_link         �http://www.ngdc.noaa.gov/docucomp/page?xml=NOAA/NESDIS/NGDC/STP/Space_Weather/iso/xml/satellite-systems_dscovr.xml&view=getDataView&header=none    license       Spase.Access Rights.Open   institution       NOAA   source        DSCOVR Magnetometer Level 1    platform      'Deep Space Climate Observatory (DSCOVR)    
instrument        +boom-mounted triaxial fluxgate magnetometer    history       ,DSCOVR real-time telemetry processing system   	algorithm         FDSCOVR MAGNETOMETER LEVEL 1B DATA ALGORITHM THEORETICAL BASIS DOCUMENT     algorithmVersion      B      algorithmDate         
2015-10-15     processing_level      Level 2    processing_level_description      11-minute average using Hodges-Lehmann M-estimator      date_created      2020-04-22T03:16:50.790Z   date_calibration_data_updated         2020-03-25T00:00:00.000Z   time_coverage_duration        P01D   time_coverage_start       2020-04-21T00:00:00.000Z   time_coverage_end         2020-04-21T23:59:59.000Z   time_coverage_resolution      PT1M   creator_name      Doug Biesecker     creator_type      person     creator_institution       DOC/NOAA/NWS/NCEP/SWPC     creator_email         doug.biesecker@noaa.gov    creator_url       http://www.swpc.noaa.gov/      publisher_name         National Geophysical Data Center   publisher_type        institution    publisher_institution         DOC/NOAA/NESDIS/NGDC   publisher_email       william.rowland@noaa.gov   publisher_url          http://www.ngdc.noaa.gov/dscovr/   records_maximum         �   records_present         �   records_data        �   records_fill            records_missing                    time                description       "date and time for each observation     
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
short_name        overall_quality    C_format      %d     units         n/a    lin_log       TSpase.NumericalData.Parameter.Structure.Element.RenderingHints.ScaleType.LinearScale        7lBw���  �          Ad(�@Å@x��ADQ�Bm��B  @Å�(Q�AI��Bx�RC�Z�                                    Bw��f  
2          Ae@�@���A<��B_ffB(�@��У�AJ{By{C��                                     Bw��  �          Ak\)@�Q�@�ffA,  B;�B.�@�Q�?J=qALQ�Bp��@�{                                    Bw���  �          Al(�@�p�@ӅA1G�BB�B*�@�p�>�{ANffBs�\@+�                                    Bw��X  �          Al(�@�33@�ffA1�BB\)B-p�@�33>�
=AN�HBt��@Z=q                                    Bw���  �          Ak�
@���@��
A4��BG��B(�\@���<��
AO\)Bv
=>L��                                    Bw��  �          Al  @�
=@�Q�A6=qBJ(�B'�R@�
=��G�AP  Bw�C��                                    Bw��J  �          Ak�
@�G�@�33A733BK��B,G�@�G���\)AQp�BzffC��R                                    Bw��  �          AlQ�@�G�@θRA6�\BJffB.G�@�G�=uAQBzz�>�                                    Bw��  �          Ak�@�z�@ÅA7�BM
=B&�@�zᾏ\)AP  Bx(�C��{                                    Bw�<  �          Al  @�
=@�(�A;\)BRQ�B�R@�
=�O\)AO�BvQ�C���                                    Bw�-�  �          Ak�@ٙ�@���A;�BR��B!(�@ٙ��0��AP��By\)C��                                    Bw�<�  �          Ak�@ڏ\@���A;33BRffB!  @ڏ\�(��APz�Bx��C�8R                                    Bw�K.  �          Ak\)@�@�  A<Q�BT��B"�H@��8Q�AQG�B{33C��                                    Bw�Y�  �          Ak
=@׮@�p�A<(�BT�RB \)@׮�G�AP��Bz
=C��\                                    Bw�hz  �          Aj�R@�p�@�=qA>�HBY��B=q@�p���z�AP(�By��C�                                    Bw�w   �          Ajff@ڏ\@���A;�BT�B  @ڏ\�aG�AN�RBw�
C�XR                                    Bw���  �          AiG�@��
@��
A8��BQ�B=q@��
�5AMp�Bv�HC��                                    Bw��l  �          Ah��@�  @�  A6=qBN
=B@�  ��\AL  Bt�RC��f                                    Bw��  �          Ah��@�{@�33A7�
BPBz�@�{�333ALQ�Bu\)C�!H                                    Bw���  �          Ag\)@�=q@���A7�
BR��B��@�=q�B�\AK�Bv�RC��                                    Bw��^  �          Ag33@�G�@�z�A;33BXG�B  @�G��xQ�AM��B{
=C��=                                    Bw��  �          Af=q@�33@�33A1p�BI��B&@�33�L��AJ�\BvG�C���                                    Bw�ݪ  �          Ae�@�Q�@�G�A+�B@�RB,�@�Q�?�AH��Br��@�                                      Bw��P  �          Aap�@��@��A#�B9�HB5��@��?��AD��Br�RAp�                                    Bw���  �          A`��@ָR@�{A#�B:�\B7�
@ָR?�{AD��BtG�A�H                                    Bw�	�  �          Aa�@�
=@�z�A$(�B;Q�B6@�
=?��AD��BtG�A�H                                    Bw�B  �          A`��@�
=@ۅA$  B;�B6ff@�
=?��AD��Bt=qA��                                    Bw�&�            AaG�@�G�@��A$z�B;�B4p�@�G�?}p�AD��BsffAz�                                    Bw�5�  �          Ab�\@ۅ@�  A&=qB<��B2�@ۅ?aG�AEBs
=@�=q                                    Bw�D4  �          Ac
=@ڏ\@�z�A(z�B?z�B0�@ڏ\?8Q�AF�RBtG�@���                                    Bw�R�  �          Ab�R@�Q�@�=qA&�HB=z�B5  @�Q�?n{AF�RBt�@�33                                    Bw�a�  �          Ac\)@���@��A%�B:ffB7�@���?�AF�HBt{A                                      Bw�p&  �          Adz�@���@��HA'\)B<z�B2�H@���?p��AG\)Bs(�@�Q�                                    Bw�~�  �          Ad��@�=q@�z�A((�B=�B5(�@�=q?xQ�AHz�Bt�RA�                                    Bw��r  �          Ad��@�p�@�z�A'\)B;�HB3p�@�p�?}p�AG�Bs  A�H                                    Bw��  �          Aep�@���@�z�A*�HB@p�B/�@���?.{AH��BtQ�@�33                                    Bw���  �          Ad��@��
@�ffA)�B?�B1(�@��
?B�\AH��Bt��@ə�                                    Bw��d  �          Ad��@��H@�33A2{BL�B"{@��H�aG�AI�Bu�C�\                                    Bw��
  �          Ac\)@׮@�z�A5BS{Bz�@׮�=p�AH��BvffC���                                    Bw�ְ  �          A`��@�
=@�  A"ffB933B0\)@�
=?��ABffBo�A(�                                    Bw��V  �          A`Q�@���@�A"{B8��B.
=@���?�  AAp�Bn=qA ��                                    Bw���  �          A_�
@ڏ\@�
=A (�B6��B6ff@ڏ\?��AB{Bp�RA.{                                    Bw��  �          A^�H@ٙ�@�RA��B2��B:�
@ٙ�?��A@��Bo�\AXz�                                    Bw�H  �          A_�@�
=@�A=qB4{B<p�@�
=?�\)ABffBqffAXQ�                                    Bw��  �          A_�
@ڏ\@�33A
=B5  B8z�@ڏ\?�(�AA�Bp33AB�H                                    Bw�.�  �          Aa�@�Q�@ᙚA33B4�B4��@�Q�?�
=AABm�RA8Q�                                    Bw�=:  �          A`��@�\)@��
A�\B3\)B6(�@�\)?�G�AABm�
AB�H                                    Bw�K�  �          A_�
@�  @�=qAp�B2�RB5=q@�  ?�G�A@Q�Bl�AC
=                                    Bw�Z�  �          A_�@�\)@�A�B0{B8=q@�\)?�(�A@  BlQ�A]��                                    Bw�i,  �          A_33@�{@���AB3��B5p�@�{?�(�A@(�Bm��A?�                                    Bw�w�  �          A_
=@�ff@�(�A(�B1��B6��@�ff?�\)A?�Bl�
AQp�                                    Bw��x  �          A^{@߮@���A=qB/�HB6�\@߮?�Q�A>{BkQ�AYG�                                    Bw��  �          A\��@�=q@�\)A33B'{B:�\@�=q@��A:ffBfG�A�ff                                    Bw���  �          A[�@ᙚ@�A  B#B<��@ᙚ@=qA8z�Bd�\A���                                    Bw��j  �          AY�@�
=@�\A{B(G�B9�R@�
=@
=A8(�BfA�z�                                    Bw��  �          AW33@���@�\)A  B"B=33@���@�HA4  Bc�A��R                                    Bw�϶  �          AU�@�z�@�RA�B"�\B=�@�z�@�A3\)Bc�A�G�                                    Bw��\  �          AUp�@��@�\)A�HB(33B3\)@��?�z�A2�HBc�RAs33                                    Bw��  �          AT(�@�p�@�33A�HB/Q�B.�\@�p�?��HA3\)Bg
=A>{                                    Bw���  �          AT  @���@�ffA\)B$ffB@��@���@�A333Bf��A��R                                    Bw�
N  �          AT��@�z�@�  A33B)=qB=��@�z�@	��A5�BiG�A�G�                                    Bw��  �          AT  @�  @��A�RB)��B9{@�  @   A333BgQ�A��                                    Bw�'�  �          AV{@�\)@��A\)BA��B!�H@�\)>�33A8  Bnp�@>{                                    Bw�6@  �          AZ{@���@�G�A,��BQ�HB�@��ÿaG�A<��Bo�C�H�                                    Bw�D�  �          AY�@�  @�{A-��BSp�BG�@�  �}p�A<z�BoC��R                                    Bw�S�  �          AX��@�z�@�A-G�BTz�B��@�z�z�HA<(�Bq(�C��                                    Bw�b2  �          AU�@Ӆ@�33A(��BP�RB(�@Ӆ�333A9��Bp��C���                                    Bw�p�  �          AV{@׮@���A((�BO(�B�
@׮�8Q�A8z�Bn=qC��
                                    Bw�~  �          AV=q@�ff@��A'\)BM\)Bz�@�ff�O\)A6�RBj{C���                                    Bw��$  �          AV{@ڏ\@�A((�BO  B	�R@ڏ\�O\)A7�Bl33C���                                    Bw���  �          AU@��@�z�A'33BM��B��@���O\)A6�\Bjz�C���                                    Bw��p  �          AUp�@�ff@��A&=qBL��BQ�@�ff�B�\A5Bi�C�޸                                    Bw��  �          AT��@��@���A%BLp�Bff@�׿\(�A4Q�Bg��C��f                                    Bw�ȼ  �          AT��@�=q@�A%�BLB p�@�=q�p��A3�
Bfz�C�1�                                    Bw��b  �          AT��@�
=@�z�A$  BJ
=A�z�@�
=�k�A1Bc(�C�]q                                    Bw��  �          ATz�@�{@��
A$Q�BJ�A�ff@�{�p��A1�Bc�\C�E                                    Bw���  �          AT��@�  @�(�A%p�BLffA�33@�  ��Q�A1�Ba�RC�Z�                                    Bw�T  �          AT��@��@x��A&�\BN
=A�=q@�녿�A0Q�B_�
C�|)                                    Bw��  �          AT��@�\@P  A)BS��A�G�@�\��A.ffB\(�C�
                                    Bw� �  �          AVff@�=q@�
=A&ffBK��A��
@�=q��{A2�RBa�
C���                                    Bw�/F  �          AV=q@�{@��RA!BD�B+(�@�{?�A;�Btz�@���                                    Bw�=�  �          AV�R@��
@�A#33BF
=B+��@��
?   A<��Bv�@�Q�                                    Bw�L�  �          AW�@��@��A%G�BH{B#=q@��>W
=A<z�Bs�?�ff                                    Bw�[8  �          AW
=@�\)@�
=A'
=BK��B @�\)�#�
A<z�Bt�
C��R                                    Bw�i�  �          AXz�@�Q�@�G�A'�BK=qB!�@�Q�=#�
A=Bt�H>��
                                    Bw�x�  �          AW�@У�@���A&�\BJ33B!�@У�=�Q�A<��BtG�?L��                                    Bw��*  �          A[�@�
=@���A+�BM��Bz�@�
=����A?\)Br�\C���                                    Bw���  �          A\  @�
=@�A,��BO\)Bp�@�
=���A?�Br�\C�@                                     Bw��v  �          A^{@�  @�  A\)B1�\BDff@�  @	��AAG�Bq�HA���                                    Bw��  �          A_33@���A�HA{B#�HBU=q@���@P��A?�
Bm�
A�33                                    Bw���  �          A`��@ڏ\A�
A�B�BL��@ڏ\@[�A<��Bd=qA�p�                                    Bw��h  �          A`Q�@׮A�A�RB�BN
=@׮@Y��A=�BeA�Q�                                    Bw��  �          A`(�@љ�A	�A
=B�BRp�@љ�@^�RA>{Bh(�A��
                                    Bw���  �          A`��@ʏ\Az�A�\B�BX@ʏ\@k�A?\)Bj  A�                                    Bw��Z  �          Aa@��AffA	B�B\
=@��@��A=Bd�
B
=                                    Bw�   �          Aap�@�(�AQ�A��B��BS�R@�(�@o\)A=Be33A�                                    Bw��  �          Aa�@�Q�A
{Ap�B�\BO�R@�Q�@fffA<��Bd33A��\                                    Bw�(L  �          Aap�@�G�A	�Ap�B�BO�@�G�@fffA<��Bc�
A�p�                                    Bw�6�  �          Aap�@��A	�A{B�BN
=@��@c33A=�Bc�HA��                                    Bw�E�  �          A`��@��A
{A{B��BQp�@��@g
=A=p�Be��A�                                    Bw�T>  �          A`��@��HA	��A33B33BRG�@��H@c�
A>=qBgG�A���                                    Bw�b�  �          AaG�@�=qA	A�
B��BR��@�=q@c33A?
=Bg�HA��H                                    Bw�q�  �          Aa�@�{A	A=qB�
BP�@�{@eA=p�BeG�A��                                    Bw��0  �          A`z�@�=qA�
A��BffBM  @�=q@aG�A<  Bcp�A�z�                                    Bw���  �          A`z�@���@�33AQ�B%Q�B@��@���@0��A=�Be�RA��                                    Bw��|  �          A`z�@�\)A ��Ap�B!��BD33@�\)@AG�A<(�BdffA�33                                    Bw��"  �          A_�@�\AG�A�BG�BF��@�\@\��A8��B^�HA�                                      Bw���  �          A_\)@ᙚAffA
=qB�HBH
=@ᙚ@c�
A8(�B^=qA�ff                                    Bw��n  �          A]p�@߮A�A
�RB
=BF��@߮@Y��A7\)B_ffA�G�                                    Bw��  �          A]@�
=AQ�A
�RB�
BG�\@�
=@\(�A7�B_��A�Q�                                    Bw��  �          A]��@�@��
A��B��B>�\@�@@  A7\)B_Q�A���                                    Bw��`  �          A_�@�@��\Az�B!{B<�H@�@8��A9��B`Q�A�{                                    Bw�  �          A_�@�{@��A�
B G�B?  @�{@?\)A9��B`�A��R                                    Bw��  �          A_�
@��@�{A��B"\)BAff@��@>{A;33Bc=qA�z�                                    Bw�!R  �          A_�@޸RA ��A��B!p�BD�@޸R@G
=A;\)Bc�RA�ff                                    Bw�/�  �          A`  @ᙚA
=AffB��BE(�@ᙚ@S33A:{B`�
A��H                                    Bw�>�  �          A_33@�Q�A�
A��B�BFz�@�Q�@X��A9G�B`\)A�ff                                    Bw�MD  �          A_�
@��A ��A(�B G�BB�H@��@HQ�A:�\Ba�HA�p�                                    Bw�[�  �          A`��@�z�@��HA\)B$  B>��@�z�@7
=A<(�Bc=qA��H                                    Bw�j�  �          A`��@�ff@�  A  B$�\B<p�@�ff@1�A;�
Bb�RA��R                                    Bw�y6  �          Aa@�
=@�A�B)  B9�@�
=@\)A=Bd�A�ff                                    Bw���  �          AaG�@�{@��\A�B#B=@�{@7�A<  Bbz�A�{                                    Bw���  �          A^�H@�33A=qAQ�B  BJ��@�33@e�A9��Ba=qA�ff                                    Bw��(  �          A_33@���A=qA�
B ffBF��@���@P��A:�HBcG�A�z�                                    Bw���  �          A_�
@�  A (�AQ�B&�BGz�@�  @AG�A=�Bh\)A�
=                                    Bw��t  �          A`Q�@ᙚA   Ap�B!��BBp�@ᙚ@G
=A;\)Bb�\A�=q                                    Bw��  �          Aa�@�z�AG�Az�B�BB(�@�z�@N{A:�HB`��A��                                    Bw���  �          Aa�@�G�A��A�B�HBCp�@�G�@eA8z�B[G�A�                                    Bw��f  �          Ac
=@�G�A�A
=BG�BH�\@�G�@�=qA7
=BW�A�\)                                    Bw��  �          Aa�@�  A��@�Q�BQ�BPG�@�  @�z�A1G�BN�HB
=                                    Bw��  �          Ac\)@陚A  @�B�BN�
@陚@���A3\)BPffB�R                                    Bw�X  �          Ac\)@�\)A��A33B�HBK{@�\)@�{A7�
BW��A���                                    Bw�(�  �          Ad(�@�p�AG�A	Bp�BK�@�p�@��A:{BZ\)A�\                                    Bw�7�  �          Ad(�@�{A\)A
=BG�BM  @�{@���A8z�BX  A�33                                    Bw�FJ  �          Ad��@��A�
A{B�BK�\@��@��
A7�
BU�
A��H                                    Bw�T�  �          Aep�@��A�A�
BG�BL{@��@�=qA9G�BW�A���                                    Bw�c�  �          Af{@�33Ap�Ap�B��BL�H@�33@�G�A=G�B]�A��                                    Bw�r<  �          Af=q@�\)A	A�Bp�BH  @�\)@q�A=��B]�
A��                                    Bw���  �          Af{@�RA
�HA�\B(�BI33@�R@xQ�A=�B]�A�\                                    Bw���  �          Ae��@��A��AG�B�BQ  @��@z=qA@(�BcQ�A��                                    Bw��.  �          Ad��@��HA�RA(�B=qBYG�@��H@���A>ffBa\)B                                      Bw���  �          Af=q@�
=Ap�AQ�Bp�BJff@�
=@���A6�RBR33A���                                    Bw��z  �          Af�R@��\@��A{B"\)B1p�@��\@1�A<��B[G�A�ff                                    Bw��   �          Ag33A ��@���A�B)
=B$�\A ��@�A<��B[ffAh                                      Bw���  �          Ag
=@�  @�  A$  B5�\B   @�  ?���A@��Bc�A!�                                    Bw��l  �          Ag�A ��@�  A��B*33B${A ��@�A=B\{Ab�H                                    Bw��  �          Ag�
A ��@�ffAz�Bp�B2��A ��@N�RA9��BT�
A��R                                    Bw��  �          Ai��A(�@�(�A ��B.  B��A(�?���A?
=B[=qA/\)                                    Bw�^  �          Aj=qAp�@��HA�\B*ffBffAp�?���A>ffBYQ�AHz�                                    Bw�"  �          Aj�RA�@�ffA z�B,�B"G�A�?�A@��B]33ATQ�                                    Bw�0�  �          Alz�A��@�A�RB(z�B#��A��@�A@��BZQ�Ak�                                    Bw�?P  �          Al��A  @陚A�B'z�B&  A  @�
A@��BZp�Az{                                    Bw�M�  �          An=qA@�{A"�HB,��B�RA?�{AB�HB[�\AH(�                                    Bw�\�  �          Ao�AG�@�z�A((�B2p�B33AG�?���AEp�B^\)A=q                                    Bw�kB  �          Ap��A@��
A,(�B6B33A?�{AG\)B_��@���                                    Bw�y�  �          Apz�A
�\@ȣ�A)�B2��B�RA
�\?�{AC�
BZ  @�\                                    Bw���  �          Ap(�A{@�33A+�B6z�B �A{>�G�AAp�BV�R@6ff                                    Bw��4  �          Ap  A@�Q�A.{B:=qA��A=��
AAp�BW
=?�\                                    Bw���  �          Ap(�A	�@���A7�BG=qAޏ\A	��Tz�AD��B\
=C�8R                                    Bw���  �          Ap��A��@���A:=qBJffA���A�Ϳ�{AE��B\\)C�H�                                    Bw��&  �          ApQ�A
ff@Z�HA<��BO{A�ffA
ff���HAB{BWQ�C���                                    Bw���  �          Ab=q@�(�>�z�A>ffBe=q@��@�(���=qA.{BI\)C��)                                    Bw��r  �          Ab=q@�=q?z�A>�HBf(�@��@�=q��=qA0z�BM=qC�p�                                    Bw��  �          A`��A z�?z�A8z�B\Q�@��
A z���z�A*�RBE��C��=                                    Bw���  �          A`  @��R?.{A7\)B\�@��@��R��Q�A*�\BG  C��                                    Bw�d  �          A_�A ��?�A5BY��A��A ���qG�A,z�BJ
=C�t{                                    Bw�
  �          A`  @�p�>�G�A;33Bb��@Q�@�p���=qA,z�BIp�C��q                                    Bw�)�  �          A`��@�{>�{A<(�Bc33@!G�@�{��A,��BH�RC�U�                                    Bw�8V  �          Aa�@��>�  A<  Ba�\?�@����  A,  BF�C�U�                                    Bw�F�  �          Ab�\A녾L��A9G�B[��C�G�A����\A&�\B=�C��)                                    Bw�U�  �          Ac33A����A9�BZ\)C�z�A�����A&�HB=  C�K�                                    Bw�dH  �          Ad(�A�þ�  A9G�BY\)C�&fA�����A&ffB;\)C�5�                                    Bw�r�  �          AdQ�A�����A:ffB[  C��RA���A'
=B<33C��                                    Bw���  �          Ad(�A�����A<  B^  C�ФA���  A(Q�B>33C�}q                                    Bw��:  �          Ad(�A (���(�A<��B_�C�s3A (���33A(Q�B>�C�#�                                    Bw���  �          Ad(�@���
=qA<��B_p�C��@����ffA'�
B=\)C���                                    Bw���  �          Adz�A=q�&ffA;�B\�C���A=q��  A%�B:33C��)                                    Bw��,  �          AdQ�Aff���A8Q�BWffC�#�Aff���A#�
B7\)C��
                                    Bw���  �          Ad��A=q���HA9�BX
=C�T{A=q����A$��B8�C��=                                    Bw��x  �          Ac\)A�    A7�
BW�R<�A���G�A'
=B=(�C�)                                    Bw��  �          A[�A=q?�(�A*�RBL\)AS
=A=q�*=qA(Q�BH\)C�5�                                    Bw���  �          AYG�@��
?��A0  BX�AQ�@��
�b�\A'�BJ�C���                                    Bw�j  �          AYG�@�\)?\A1�BZ=qA1��@�\)�N{A+33BO��C��3                                    Bw�  �          AZ�R@���?W
=A5�BaQ�@���@����|��A+33BN�C�*=                                    Bw�"�  �          AZ�R@�33?n{A7�
Bd�R@�@�33�z=qA-p�BQ��C�                                      Bw�1\  �          AY@�
=?���A1�B[=qA=q@�
=�W�A*�HBN�HC�4{                                    Bw�@  �          AX��@�  ?���A3�B_�
AG�@�  �h��A*�HBP{C�3                                    Bw�N�  �          AW�
@�{?k�A3\)B`�H@��@�{�q�A)p�BO  C���                                    Bw�]N  �          AW�@�R?�ffA4��Bd33A$(�@�R�^{A-p�BVG�C�(�                                    Bw�k�  �          AY�@��
?�A4��Ba�RA.�R@��
�VffA.=qBU�C���                                    Bw�z�  �          AXQ�@�G�?�G�A2�RB_  @�(�@�G��j�HA)��BN�C��                                    Bw��@  �          AW�@�\?L��A1��B^�@���@�\�tz�A'33BK�RC��                                     Bw���  �          AW�
@�G�<�A0  BZ�
>aG�@�G���\)A ��B@�
C��                                    Bw���  �          AW33@�
=?��RA3�Bb��A;
=@�
=�N�RA-BW�C���                                    Bw��2  �          AY�@�?��A7�Bg
=A+33@��]p�A0z�BYffC��                                    Bw���  �          A[\)@�(���ffA9�Bh=qC���@�(���A!G�B=��C�                                      Bw��~  �          AZ=q@��
��  A5��Ba��C�>�@��
���A  B7  C�s3                                    Bw��$  �          AZ=q@�33��33A/�BV��C�0�@�33��ffA(�B+�C��R                                    Bw���  �          AY�@������A/�BV�HC�J=@������A�\B)(�C�:�                                    Bw��p  �          AY@��R�+�A.=qBT�C�j=@��R�ۅA�B"��C�*=                                    Bw�  �          AZ�H@����RA2�HB[G�C��f@�����A�B+��C���                                    Bw��  �          AZ�H@�Q쿦ffA5B`��C�R@�Q�����A�B8�C�5�                                    Bw�*b  �          A]G�@�\����A8��Bb�HC�y�@�\����A&�RBCp�C�4{                                    Bw�9  �          A\��@�
=�!G�A9G�BdG�C���@�
=���A%p�BBQ�C�|)                                    Bw�G�  �          AW
=@��
�(�A0z�B\�C��q@��
��{A�B-(�C�n                                    Bw�VT  �          AU�@�R�EA,(�BW�RC�g�@�R����A	�B!Q�C��)                                    Bw�d�  �          AT��@�Q��u�A)BT�C���@�Q���Q�A
=B33C�                                    Bw�s�  �          AS�@���*�HA+33BY��C��@����\)A�B&z�C�c�                                    Bw��F  �          AU�@����z�A/�
B]ffC���@����p�A�\B3{C���                                    Bw���  �          AW33@����33A0��B\C�AH@�����G�A��B/�C���                                    Bw���  �          AVff@陚��A/�
B\33C�f@陚�љ�A{B+��C�\                                    Bw��8  �          ATz�@�\)�!�A-��B[�C�Y�@�\)��z�A33B)ffC��
                                    Bw���  �          AS�@�ff�У�A/�B`\)C��H@�ff���A�HB5�
C�o\                                    Bw�˄  �          AS�@�R���A0��Bb\)C��@�R���HA�B=33C��q                                    Bw��*  �          AR{@�p��	��A/
=Ba�C�^�@�p����A
=B1�C��{                                    Bw���  �          AP(�@�{����A.=qBcC��@�{��z�A�HB:
=C�p�                                    Bw��v  �          APQ�@�녿�{A,Q�B_�C���@�����RA�\B3
=C��                                    Bw�  �          AO33@ۅ��z�A,��Bb\)C�5�@ۅ��Q�A�\B4��C�aH                                    Bw��  �          AK�
@љ���A*�\Bc\)C��@љ���(�A�B0z�C��H                                    Bw�#h  �          AM��@���Q�A,z�Bd33C��@����ffAG�B3��C��                                    Bw�2  �          AJ�R@љ���A*{Bd=qC��@љ����
A
=B3�RC�y�                                    Bw�@�  �          AK
=@�ff��\)A)��Bc��C�5�@�ff��z�A�B8�C���                                    Bw�OZ  �          AL��@����(�A)�Bap�C��@����  A33B8��C��q                                    Bw�^   �          AN=q@�(�����A+�
Ba��C�y�@�(�����A�RB5Q�C��3                                    Bw�l�  �          AN{@�\)��z�A*�RB_\)C�Z�@�\)��p�AG�B3�C��q                                    Bw�{L  �          AO
=@ٙ���(�A-G�BcG�C��@ٙ�����A\)B5�C�<)                                    Bw���  �          AP(�@�ff��{A.�RBd(�C�w
@�ff���Az�B<ffC��{                                    Bw���  �          AR{@��H��{A/\)Bb�C���@��H��  A�B;ffC��                                    Bw��>  �          AR{@�  ���RA.�RBa=qC��@�  ���A��B4ffC��                                    Bw���  �          AQ��@ڏ\��A0��Bf(�C�!H@ڏ\���A��B;(�C�˅                                    Bw�Ċ  �          AQ��@�(���ffA0  Bd��C��@�(�����A\)B8�HC���                                    Bw��0  �          AMG�@��ÿ��A*{B_��C��
@�����Q�A�B7��C���                                    Bw���  �          AO
=@�\��(�A+�
B`(�C�#�@�\���A��B8�
C�q                                    Bw��|  �          ALz�@�G�����A&=qBY�C�\)@�G����\Az�B4
=C��                                    Bw��"  �          AMG�@�ff����A-p�Bf�C���@�ff���A33B=��C�W
                                    Bw��  �          AO�
@�z��(�A2�RBm\)C�w
@�z����A�\B@G�C���                                    Bw�n  �          AN=q@Å���A4��Bt�C�{@Å����A z�BL�C���                                    Bw�+  �          AL��@Å����A3\)Bt33C��@Å����A\)BK��C���                                    Bw�9�  �          ALz�@�Q쿜(�A333Bu(�C�C�@�Q���z�A=qBK
=C��                                    Bw�H`  �          AK�
@�{��\)A3\)Bv�C��@�{����A
=BM=qC�                                      Bw�W  �          AMp�@�Q쿵A1�Bp{C��
@�Q���G�A  BE��C�=q                                    Bw�e�  �          AN�\@����HA4��Bt=qC��)@����HA\)BC33C�)                                    Bw�tR  �          AM�@�{���RA3�
Bsz�C�@�{���HAffBBp�C�%                                    Bw���  �          ANff@�
=�p�A0��Bk33C�1�@�
=��ffA��B8=qC��R                                    Bw���  �          AO33@�=q�@  A.=qBe(�C�P�@�=q��(�A\)B/(�C�G�                                    Bw��D  �          AL��@�\)�!G�A0z�Bn33C���@�\)��\)Az�B9C�W
                                    Bw���  �          AJ�\@���G�A/33Bo��C�|)@����
=A��B=�C��                                    Bw���  �          AJ�\@����!�A,z�BiG�C��\@�����z�A��B633C��3                                    Bw��6  �          AJ�R@�{�޸RA.�RBn  C�'�@�{��ffA�BA�C��\                                    Bw���  �          AH��@��
��A-�Bn\)C�Y�@��
��33A�\BB\)C��=                                    Bw��  �          AD��@�(����
A(z�Bl33C���@�(���33A33BB{C�p�                                    Bw��(  �          AD��@���p�A{B*��C��f@��p�@�\)A�ffC��=                                    Bw��  �          AE�@�z���\A(�B.�
C��@�z���@���Aʏ\C�}q                                    Bw�t  �          AD��@��\�33@�G�B33C�  @��\�%�@n{A���C�5�                                    Bw�$  �          AEp�@ڏ\��{A�HB&ffC��@ڏ\�z�@��A�{C���                                    Bw�2�  �          AC�
@ۅ���HA�B%ffC�8R@ۅ�
=q@�  A˙�C�<)                                    Bw�Af  �          AC
=@�33�ÅA (�B$\)C�#�@�33�
{@�AɅC�8R                                    Bw�P  �          AC�@�������A	G�B2�RC�G�@������
@��A�
=C���                                    Bw�^�  �          AA@��
��p�A(�B2�C��f@��
��@�G�A���C��H                                    Bw�mX  �          A>�\@�\�^{ABAffC��3@�\��\)@�
=B��C���                                    Bw�{�  �          A=�@�\)��G�Az�B7��C�Ff@�\)��\@�A��HC��=                                    Bw���  �          A<��@�����\)AQ�B233C�~�@����@�33A��HC�(�                                    Bw��J  �          A;�
@�=q��ff@��B(�C���@�=q��H@��A�
=C�.                                    Bw���  �          A>�\@�G����@�  B��C���@�G���\@FffAq�C�&f                                    Bw���  �          A;\)@�  ���\@޸RB\)C�C�@�  �G�@hQ�A��C�y�                                    Bw��<  �          A8  @��=qAz�B`p�C���@���ffA   B0��C�                                    Bw���  �          A9@���=qAffB`��C��@�����AB1ffC��                                    Bw��  �          A8��@���� ��A(�Bf��C�H@������
A
=B4�\C��\                                    Bw��.  �          A8z�@�G��}p�A z�Br�RC��\@�G�����A  BMC�S3                                    Bw���  �          AAp�@��>\A&ffBn�@g
=@���X��Ap�B[�C�`                                     Bw�z  �          AG�@��?s33A-��Br(�A�R@���AG�A'�Bdz�C��                                     Bw�   �          AI�@���?�G�A.�RBq{AG�@����>�RA(��Bd=qC��                                    Bw�+�  �          A5p�@θR��  @�\)B3�C�Ф@θR�陚@�  A�=qC��q                                    Bw�:l  �          A7\)@����  @���B.�\C�Y�@����\)@�  A�C��
                                    Bw�I  �          A5�@�\)���H@��B/�C��\@�\)����@�{A�\C�L�                                    Bw�W�  �          A3
=@��
���A�RBCG�C��@��
���H@���B��C���                                    Bw�f^  �          A2�\@�Q����AffB;��C�
@�Q���Q�@��RB33C��                                    Bw�u  �          A3\)@������
A�B9{C�0�@������@�
=A��\C�~�                                    Bw���  �          A:�H@��R��@�Q�B��C��q@��R�=q@B�\As
=C�P�                                    Bw��P  �          A8��@���G�@�  A���C��{@���p�@!G�AK33C�u�                                    Bw���  �          A:ff@��R����@�G�B	{C�Q�@��R�33@U�A�33C��                                    Bw���  �          A:�H@�{��Q�@�  BC�W
@�{�G�@�(�A�=qC�:�                                    Bw��B  �          A7�@�(��\)@��HB=qC�^�@�(���R@B�\Av=qC��                                    Bw���  �          A7
=@��\�	��@���A��HC��@��\�!G�@��A@��C���                                    Bw�ێ  �          A4��@���
�H@�33A�=qC�� @��� (�?�(�A ��C��{                                    Bw��4  �          A>�R@����z�@�Q�B�C�*=@����@���A�Q�C��f                                    Bw���  �          A=��@��
��p�@��
B�C���@��
���@���A�z�C�&f                                    Bw��  �          A=G�@����z�@�\)B#{C��\@���=q@�  A�p�C��R                                    Bw�&  �          A>�\@�(���
=@�z�BC���@�(��p�@�p�A�z�C��                                    Bw�$�  �          A6�\@�����@�  B
�RC�p�@�����R@hQ�A�=qC�J=                                    Bw�3r  �          A5�@�z�����@ָRB��C��R@�z���R@w
=A���C���                                    Bw�B  �          A5p�@�������@��
B�C��@�����R@`��A�(�C��                                    Bw�P�  �          A4z�@�33��
=@�z�B
{C�~�@�33��
@`��A���C��f                                    Bw�_d  �          A5�@��H��{@��B��C��H@��H�Q�@qG�A�p�C�`                                     Bw�n
  �          A=�@�G���  @�p�B	z�C��@�G��@vffA�ffC���                                    Bw�|�  �          A=��@θR��ff@���B
=C���@θR�p�@x��A��C��3                                    Bw��V  �          A>ff@�  ��@��HB��C���@�  ��@c�
A�\)C��{                                    Bw���  �          AA�@˅���
@��
B
��C��@˅�(�@vffA��HC��                                    Bw���  �          AA@��\��{@�G�B G�C��@��\��R@��
A�C��                                    Bw��H  �          AB�R@��\����A�\B/
=C��)@��\��
@�33A�G�C��3                                    Bw���  �          AB�R@�����\@��RB#�C��@�����@�=qA���C�q                                    Bw�Ԕ  �          AF�H@�z���\@��B
=C��=@�z��Q�@�G�A�p�C��\                                    Bw��:  �          AC\)@˅��33@�z�B  C�o\@˅��\@�
=A��C��                                    Bw���  �          A@��@�Q���
=@���B�
C�ff@�Q���
@��\A��\C�*=                                    Bw� �  �          ABff@�33��p�@�(�B!��C��
@�33��R@��\A�=qC��{                                    Bw�,  �          AD  @����\)A�B(��C��f@���p�@��A�\)C���                                    Bw��  �          AB�H@�����Az�B2=qC��@�����\@���A�C��                                    Bw�,x  �          AF=q@�����
@�G�B  C��)@����\@�\)A���C�S3                                    Bw�;  �          AG�@�
=�޸R@�z�B��C��@�
=�33@��A�G�C�
                                    Bw�I�  �          AJff@�p���\)@�
=B�C�b�@�p���
@�A�\)C�k�                                    Bw�Xj  �          AI�@������A(�B$
=C�9�@���ff@���A�ffC��                                    Bw�g  �          AD��@أ��ǮA�\B&�C���@أ��	��@��
A�\)C��                                    Bw�u�  �          AD  @�z�����A(�B*�C��\@�z���@��
A�C���                                    Bw��\  �          ADQ�@�ff���A��B1{C�(�@�ff��z�@ə�A�G�C���                                    Bw��  �          AAG�@�z�����A	��B5�C���@�z���=q@��
A��RC�.                                    Bw���  �          AC\)@�z����
Ap�B9\)C�^�@�z���Q�@׮B�HC�B�                                    Bw��N  �          AAG�@���33A�B(
=C��@����R@�33A�z�C�z�                                    Bw���  �          A@(�@ٙ���\)A��B5�RC���@ٙ����@�ffB�
C��                                    Bw�͚  �          A?33@��
���HA�
B5{C�j=@��
��@�B=qC��f                                    Bw��@  �          A@(�@������A��B<ffC��@�����@�=qB
p�C��=                                    Bw���  �          A@��@�  ���A
=BFC�:�@�  ��=q@���B��C�J=                                    Bw���  �          AB=q@�ff���HAG�BHC��@�ff����@���BG�C��                                    Bw�2  �          AC�@Ӆ���A��BFC�q�@Ӆ��33@���BG�C�y�                                    Bw��  �          A@��@���  A
=B@  C�H@����@�  B=qC��                                     Bw�%~  �          A=p�@������A33B==qC�>�@�����
=@�
=B
p�C�                                    Bw�4$  �          A:{@�\)��(�A�
B;Q�C�8R@�\)���
@���B�C�#�                                    Bw�B�  �          A8z�@�=q��A33B<=qC���@�=q���@ϮB��C��R                                    Bw�Qp  �          A8z�@������A�RB;�RC��3@�����@�z�B�RC��3                                    Bw�`  �          A:{@�{��p�AffB9Q�C�Ff@�{��(�@�G�B	  C�R                                    Bw�n�  �          A9@�  ���AffB9\)C��
@�  ����@�=qB	�C�s3                                    Bw�}b  �          A?\)@���ffA	G�B7��C�ٚ@���
=@�G�B
z�C�q�                                    Bw��  �          A?�@����p�A
ffB8��C��@���ָR@��
B��C�o\                                    Bw���  �          A<��@ȣ���33A	�B:�C�o\@ȣ����@�  B�HC��{                                    Bw��T  �          A;�@ȣ����HA(�B9�C�u�@ȣ�����@�ffB\)C���                                    Bw���  �          A:�\@�G�����A��B=�C�P�@�G����@�33B	�C�l�                                    Bw�Ơ  �          A<��@Ǯ����A(�B8C��@Ǯ��{@��B��C���                                    Bw��F  �          A;�@���z�Az�B:�C�!H@���=q@�
=B(�C��)                                    Bw���  �          A8(�@�  ���RA��B8G�C���@�  ��=q@ə�B��C�@                                     Bw��  �          A;�@�����A�RB7�C�\)@����@��
B�C��3                                    Bw�8  �          A<��@�z����A��B9p�C�p�@�z�����@�B  C�'�                                    Bw��  �          A>�R@�z���  A	��B8C�3@�z���p�@�{B��C��                                    Bw��  �          A@(�@�{��A  B:�HC�]q@�{��z�@ӅB�C�                                    Bw�-*  �          A@Q�@�33���A
�RB8C��@�33�p�@�\)BffC��H                                    Bw�;�  �          A>�R@�\)��p�A	B9
=C�E@�\)� ��@�p�B\)C�G�                                    Bw�Jv  �          A@��@�����\A�
B:\)C���@���(�@�  B�RC��\                                    Bw�Y  �          A@  @��\���A�B:��C���@��\��@�  BG�C��f                                    Bw�g�  �          AA@�  ����A	��B5Q�C�u�@�  �=q@�=qA��C���                                    Bw�vh  �          A?\)@�
=��A�B+{C�@�
=�=q@�z�A�Q�C�=q                                    Bw��  �          A@��@�=q��\)A
ffB7�
C���@�=q���
@�G�BC�aH                                    Bw���  �          A@��@��
��Q�A ��B'��C���@��
�
�R@��A�ffC���                                    Bw��Z  �          A=p�@��
���A{B.�C�/\@��
��(�@�Q�A�G�C�xR                                    Bw��   �          A;�@Ǯ��=qA
ffB>��C�.@Ǯ��\)@�Q�B33C�g�                                    Bw���  �          A=p�@������A	��B:=qC�` @������@��
B�
C��R                                    Bw��L  �          A<��@ə���ffA{B/
=C���@ə�����@�Q�A�  C�H�                                    Bw���  �          A?
=@��
��ff@�  B"
=C�T{@��
�  @�p�A�Q�C�n                                    Bw��  �          A6ff@����˅@���B*{C�'�@����=q@��A�(�C�c�                                    Bw��>  �          A-G�@��R��
@�=qA�(�C��=@��R��?�33@�p�C��=                                    Bw��  �          A,��@���
{@��RA�p�C���@���ff?��A!G�C�G�                                    Bw��  �          A*ff@�������@�ffBp�C���@������@n{A�z�C���                                    Bw�&0  �          A,��@�������@�p�B��C�J=@����G�@VffA�  C�=q                                    Bw�4�  �          A,z�@��\��H@dz�A��C���@��\�G�?&ff@^�RC��f                                    Bw�C|  �          A*=q@�����\@�RAW�C�Ff@�������ff��C���                                    Bw�R"  �          A(z�@��
��@-p�Ar�HC��)@��
�{���Ϳ
=qC��                                     Bw�`�  �          A��@��H��p�@��HB&�RC��{@��H��{@��A��C��q                                    Bw�on  �          A��@�����p�@�33A�  C���@�����Q�@#�
A�  C��R                                    Bw�~  �          Aff@�Q����@��\A�C�q@�Q���@#33A���C��
                                    Bw���  �          A
=@�
=��ff@�z�B p�C��@�
=���
@5�A���C�Q�                                    Bw��`  �          A)p�@����@��RA�(�C�k�@�����?���A��C�+�                                    Bw��  �          A0��@�Q��p�@'
=A[
=C�1�@�Q���H��{��  C�˅                                    Bw���  �          A4(�@�p��$��?��A�RC�@�p��%����ָRC��3                                    Bw��R  �          A-p�@`���!G�?�ffA��C��R@`���!p���(���33C���                                    Bw���  �          A(z�@I��� ��=��
>�G�C��3@I�����7
=�|��C�                                    Bw��  �          A)@:�H�#33<��
=�C���@:�H�(��=p�����C�Q�                                    Bw��D  �          A+\)@3�
�%G������z�C���@3�
����P����  C��                                    Bw��  �          A�@h�����?��A#�C��{@h����H�Y�����C��\                                    Bw��  �          Ap�@�
=�ȣ�@w�A�
=C���@�
=��(�?��A@��C��                                    Bw�6  �          A\)@�33���@(�A}�C�33@�33����>B�\?�p�C���                                    Bw�-�  �          A\)@�
=�ʏ\@"�\A�p�C��R@�
=�ٙ�?��@�  C��f                                    Bw�<�  �          A��@������@o\)AمC��q@����(�?�z�AW�
C���                                    Bw�K(  �          A
{@����|��@�G�B(��C��@�����ff@��A��
C�XR                                    Bw�Y�  �          @�@���n{@���B&��C���@�����\@~�RA���C��                                    Bw�ht  �          A��@�ff�tz�@���B%��C�.@�ff���@�{A�\)C���                                    Bw�w  �          A�@�Q��>{@�33BFffC�
=@�Q���\)@�
=B�RC���                                    Bw���  �          AG�@�
=�,��@��
BI�C�ٚ@�
=��{@�G�B$z�C��\                                    Bw��f  �          AQ�@���:=q@�z�B?�HC��@����  @���B�C���                                    Bw��  �          Ap�@�{�C33@�ffB@ffC�W
@�{����@�G�Bz�C��)                                    Bw���  �          A  @�
=�@��@�=qB>  C��
@�
=��=q@�BC�P�                                    Bw��X  �          A�
@�(��1G�@�(�B>�\C�aH@�(�����@��\B�RC���                                    Bw���  �          A�@���.{@�B@{C���@�����@�z�B�\C�f                                    Bw�ݤ  �          A�R@���HQ�@�z�B:�HC���@�����
@��B
=C�                                      Bw��J  �          A��@�
=���@�ffB�C��f@�
=��\)@�ffA�{C�y�                                    Bw���  �          A�
@�p��}p�@�Q�B%=qC�  @�p�����@���A��HC�k�                                    Bw�	�  �          A(�@�\)�s33@�\)B(C�:�@�\)��z�@�p�B �C�aH                                    Bw�<  �          AQ�@�����@�p�B�C�� @���p�@�A�{C���                                    Bw�&�  �          A2{@�z��z�A{BCQ�C�w
@�z��{�@��HB+�
C���                                    Bw�5�  �          A1��@�p����HA��BA��C�J=@�p��|��@�B)��C��3                                    Bw�D.  �          A*�\@����
=q@�\B5��C��
@�����@�B��C���                                    Bw�R�  �          A,��@陚�33@�B5p�C�+�@陚���H@��B��C�`                                     Bw�az  �          A,��@�\)�  @��B6p�C�\)@�\)����@��B
=C��                                    Bw�p   �          A/
=@�{��=q@�B.�RC�Q�@�{�u�@�  B�C��                                     Bw�~�  �          A-@��R��(�@�z�B+�\C��
@��R�z�H@�=qB��C���                                    Bw��l  �          A,(�@�
=��\@�\)B(��C���@�
=�|(�@�z�B��C�xR                                    Bw��  �          A,Q�@�{���@�B G�C�C�@�{��Q�@�=qB	(�C���                                    Bw���  �          A+�@��R�@�=qB%{C���@��R��@�p�Bp�C��                                    Bw��^  �          A+�@��R���@��
B33C�w
@��R�{�@���B��C���                                    Bw��  �          A+
=@������@�\)B"��C�f@���qG�@�B\)C�,�                                    Bw�֪  �          A*{@�p��5@�=qB-��C�33@�p���
=@ȣ�B��C�U�                                    Bw��P  �          A(��@�ff�333@�ffB3ffC��@�ff���R@�p�B��C���                                    Bw���  �          A'33@ҏ\�A�@�B7��C��@ҏ\��{@�z�BffC���                                    Bw��  �          A,  @��3�
AG�BK=qC���@���ff@��B*�C��f                                    Bw�B  �          A-@ȣ��:�HA{BIC���@ȣ���=q@�G�B(ffC��=                                    Bw��  �          A,��@����C�
A��BI�C��@�����p�@�B'  C��R                                    Bw�.�  �          A)G�@�Q��l(�@���B@�C�5�@�Q���p�@�(�B�
C�T{                                    Bw�=4  �          A(��@�
=�S�
@�G�B?��C��R@�
=����@�(�Bz�C��R                                    Bw�K�  �          A'�@�ff�>�R@�p�B<��C��
@�ff��p�@�33Bp�C�W
                                    Bw�Z�  �          A*{@θR�A�@�(�B?G�C�p�@θR��Q�@�G�B��C��                                    Bw�i&  �          A+�@����9��Ap�BD  C��\@�����{@���B#��C�+�                                    Bw�w�  �          A*�\@��H�H��@��RBA�\C��{@��H��(�@�33B {C��H                                    Bw��r  �          A)��@ʏ\�#33A   BF=qC��@ʏ\��=q@ᙚB(Q�C��                                    Bw��  �          A%�@���aG�@�(�B6��C�~�@���2�\@�z�B'z�C�XR                                    Bw���  �          A$z�@�Q��Q�@��
BGC�� @�Q����
@���B,�C�W
                                    Bw��d  �          A%p�@��Ϳ�p�A�BM\)C��@�������@��B2C�b�                                    Bw��
  �          A$��@����\)A Q�BMG�C��@�����Q�@���B0��C�]q                                    Bw�ϰ  �          A#
=@�Q��{@��BL{C�� @�Q����R@��B/�C��H                                    Bw��V  �          A!G�@���Fff@�=qBC33C�@�����R@�  B!
=C��)                                    Bw���  �          A"�\@��H��
=@��B-��C�!H@��H���H@�=qA��C�T{                                    Bw���  �          A&ff@�  �˅@�33B%G�C���@�  ��p�@�
=A��HC���                                    Bw�
H  �          A'
=@�Q�����@�z�B%=qC��R@�Q���@�33A�C���                                    Bw��  �          A ��@�����
=@�  B(p�C��)@������@�G�A��\C���                                    Bw�'�  �          A z�@�ff��ff@�G�B*C�  @�ff���@��A�  C���                                    Bw�6:  �          A ��@������@�z�B-�C��@�����
@���A���C�.                                    Bw�D�  �          A"{@�33���@��HB1C�
@�33��  @�\)B
=C�aH                                    Bw�S�  �          A%p�@�G�����A�RBP��C���@�G��ڏ\@���B��C�H�                                    Bw�b,  �          A"�H@����{@�\)BFG�C���@����  @�
=B�C�l�                                   Bw�p�  �          A#�
@{����@�33BH��C�q�@{���=q@�Q�B��C���                                   Bw�x  �          A(  @�
=���@�=qB@C�7
@�
=��\)@�  BQ�C��                                    Bw��  �          A+
=@������@�{B@
=C�t{@������@���B(�C��                                    Bw���  �          A+\)@��
����@�  B9C��\@��
���@�33B{C���                                    Bw��j  �          A%�@�\)��\)@�(�B-�C�R@�\)���\@��\A�33C�33                                    Bw��  �          A(��@����Ӆ@�Q�B&�C���@�����\@��
A�(�C��f                                    Bw�ȶ  �          A*�\@����G�@�\)B#�
C�1�@���G�@���A�\C���                                    Bw��\  �          A,  @��\��33@�p�B�C��@��\���@��AˮC�t{                                    Bw��  �          A*�H@xQ���@�ffB��C���@xQ���H@��A�
=C��                                     Bw���  �          A,Q�@�  ��
=@��HB  C���@�  ��@���A��RC��f                                    Bw�N  �          A+\)@��\���@�\)B=qC���@��\��@�{A�{C��
                                    Bw��  �          A%p�@�
=����@���BC��@�
=�33@fffA�\)C��{                                    Bw� �  �          A$��@��\��\)@��B��C��@��\�
{@a�A���C�T{                                    Bw�/@  �          A%p�@�ff��33@�z�B�C�u�@�ff�(�@e�A��
C��                                    Bw�=�  �          A$(�@o\)�@���A�G�C�` @o\)���@8Q�A�Q�C�*=                                    Bw�L�  �          A&�R@l(��
=@��A�
=C�  @l(��\)@>�RA��C��=                                    Bw�[2  �          A/\)?\(��((�@=p�A{
=C�Y�?\(��.�\>�z�?�  C�B�                                    Bw�i�  �          A/�
?O\)�)G�@6ffAp��C�/\?O\)�/33>.{?c�
C�)                                    Bw�x~  �          A0  ?n{�*�H@(�AM�C�}q?n{�/33��  ���C�l�                                    Bw��$  �          A(��@�\)@��\A��
C�  @� ��@(�A?�
C��                                    Bw���  �          A'�@.�R��@��
A�G�C��@.�R���@#�
Aa�C�˅                                    Bw��p  �          A(  @,����R@���A��C�5�@,���
=?�Q�A*=qC��)                                    Bw��  �          A'33@c33��@o\)A�{C���@c33�\)?�
=@��
C��                                    Bw���  �          A$��@A��
�\@��\A�(�C��H@A��(�@ffAS�C��3                                    Bw��b  �          A$z�@3�
�ff@���A�z�C�@3�
��R?��RA2�HC��                                    Bw��  �          A&=q@0  ��@��A�Q�C���@0  �  @G
=A���C�\                                    Bw���  �          A$��@���  @��\A�G�C�n@���z�@�A6�RC��)                                    Bw��T  �          A*ff@=p��33@��RB	p�C��@=p��=q@tz�A��C��q                                    Bw�
�  �          A+33@vff��R@�z�B p�C��@vff�
ff@��RA��C���                                    Bw��  �          A)�@Z=q���@��B
=C��=@Z=q�p�@�Q�A��C�Ff                                    Bw�(F  �          A(Q�@U��@�
=B&=qC��{@U�	�@�=qA���C��f                                    Bw�6�  �          A'
=@W����@���B��C�9�@W��  @��\A�Q�C���                                    Bw�E�  �          A%@_\)��@ӅBz�C��{@_\)���@�
=A؏\C��                                    Bw�T8  �          A&=q@`����R@�=qB33C��
@`�����@�p�A�=qC�"�                                    Bw�b�  �          A&�H@E���{@���B�C���@E��=q@~{A���C�Q�                                    Bw�q�  �          A%�@-p����H@\B��C���@-p����@��A�  C�U�                                    Bw��*  �          A&ff@Q����H@ϮB�C���@Q��ff@��RA�\)C��                                    Bw���  �          A&=q?�=q����@��B 
=C���?�=q��@���A�33C��f                                    Bw��v  �          A$��?\��\)@�p�B0�\C���?\�\)@���A���C���                                    Bw��  �          A"=q?�\����@��B8��C�N?�\���@���B�C��                                    Bw���  �          A ��?��\��z�A ��BY33C�XR?��\���
@�Q�B$=qC��                                    Bw��h  �          Aff@�\)��=q@��RA�
=C�0�@�\)�p�@Z�HA�=qC��                                     Bw��  �          A��@�����  @��\A�Q�C���@�����@P  A��C�e                                    Bw��  �          A�
@�=q��@���A�\)C�Y�@�=q�p�@:�HA��C�H                                    Bw��Z  �          A��@�(���(�@��A�p�C�AH@�(���33@P��A�\)C���                                    Bw�   �          A�@�p����H@��AՅC��=@�p���@�An�HC��{                                    Bw��  �          A�\@}p����@h��A�p�C�+�@}p��	�?ٙ�A"ffC�U�                                    Bw�!L  �          A\)@�p���33@��
A�Q�C���@�p��p�@VffA��C�H                                    Bw�/�  �          A ��@��R���H@��A���C�W
@��R�Q�@EA�  C��{                                    Bw�>�  �          A"=q@��R��\)@���Aՙ�C���@��R�	�@*=qAs�C�b�                                    Bw�M>  �          A"{@�{����@��A�33C��q@�{���@?\)A��C�aH                                    Bw�[�  �          A(��@]p���H@Q�A��\C�3@]p���H?��@���C��)                                    Bw�j�  �          A(Q�@�Q���@}p�A��C�(�@�Q����?�A!�C�e                                    Bw�y0  �          A*=q@tz����@}p�A���C�ff@tz��(�?��A33C��3                                    Bw���  �          A)��@qG���\@��HA�\)C�y�@qG���\@p�A@z�C��=                                    Bw��|  �          A(  @����	p�@�\)A�=qC��@����=q@�HAUp�C��q                                    Bw��"  �          A)�@Vff�\)@�\)A���C�C�@Vff��
@ffAMG�C��                                     Bw���  �          A(��@~�R�p�@�p�A�{C�)@~�R���@z�A4��C�L�                                    Bw��n  �          A*�R@�  ��@�\)A��C���@�  ���@��A9p�C��q                                    Bw��  �          A%��@�����@��A�\)C�Z�@����@P��A��C��                                    Bw�ߺ  �          A!�@vff��
@L(�A��C���@vff��?�33@�G�C�Q�                                    Bw��`  �          A$Q�@�Q�� z�@�{A�ffC��
@�Q���@"�\AhQ�C��H                                    Bw��  �          A&=q@�z���p�@�B
=C��)@�z���@��A���C��R                                    Bw��  �          A(  @�����ff@�  B {C�R@������@�  A�Q�C�9�                                    Bw�R  �          A'33@�����@��B(C���@�����33@�z�B��C�s3                                    Bw�(�  �          A(  @������@�ffB�
C���@������@��A�\)C�+�                                    Bw�7�  �          A(Q�@�G����@�{B%�
C�&f@�G���ff@�\)A�Q�C�#�                                    Bw�FD  �          A'�
@�\)��@�G�B6�RC�G�@�\)�޸R@��B  C��                                    Bw�T�  �          A)G�@����  @�ffB<�C��3@����=q@��BffC��                                    Bw�c�  �          A*�R@��\���H@�B.G�C��H@��\��=q@���B
=C�aH                                    Bw�r6  �          A+�
@�p��Ǯ@�z�B.  C�ff@�p����R@��HB�
C��R                                    Bw���  �          A/33@�����G�@�\)B;�C�q@�������@ҏ\B�HC���                                    Bw���  �          A2=q@�ff���@��RB633C��\@�ff��p�@��BC�ٚ                                    Bw��(  �          A2=q@������@�G�B1�C�e@����R@��
B�C��\                                    Bw���  �          A#�@�����  @�  B2�\C���@�����z�@��\B=qC�
                                    Bw��t  �          A��@`����@��\B��C�ٚ@`����\)@\)AɅC�33                                    Bw��  �          A�@z���@�BC�
=@z���H@�  Aə�C��                                    Bw���  �          A�@&ff����@���B��C�c�@&ff�	@`��A���C�g�                                    Bw��f  �          A�@	����z�@�p�B	\)C��
@	���
{@h��A�{C���                                    Bw��  �          A@p���@��B�C�K�@p��33@u�A�G�C�U�                                    Bw��  �          Az�@���@�  A�  C��)@��
=@�A\  C�c�                                    Bw�X  �          A��?ٙ��Q�@*=qA��C�Y�?ٙ��{?(��@{�C�&f                                    Bw�!�  �          A!p�?�Q��
=@5�A�(�C�S3?�Q��G�?=p�@���C�'�                                    Bw�0�  �          A{@���@�(�AָRC��@���@   An�\C�Q�                                    Bw�?J  �          A!�@Q��p�@�\)A�z�C���@Q���\@5�A�  C��R                                    Bw�M�  �          A#33@N�R��\@�A�Q�C��@N�R��@Tz�A�  C���                                    Bw�\�  �          A%��@B�\��
@r�\A�(�C�Z�@B�\�p�?��A!G�C��                                    Bw�k<  �          A)��@@���G�@Z�HA�Q�C��q@@���!G�?�ff@ᙚC�S3                                    Bw�y�  �          A*{@G����@[�A��HC��@G�� ��?�=q@�{C���                                    Bw���  �          A,z�@X���
=@S33A��\C��@X���"�R?�@ǮC�9�                                    Bw��.  �          A+�
@Q����@<��A~�HC�B�@Q��#
=?O\)@��\C��=                                    Bw���  �          A,  @O\)�{@,(�Ah(�C��@O\)�#�?��@:�HC�˅                                    Bw��z  �          A-@Mp��"�H?�p�A(z�C�� @Mp��%녾L�Ϳ�=qC���                                    Bw��   �          A/
=@3�
�&�H?�
=Ap�C��=@3�
�(�Ϳ���8��C�t{                                    Bw���  �          A,Q�@\)�'�?��@�=qC��@\)�'\)��
=����C��                                    Bw��l  �          A+�
@/\)�%?�@5C�ff@/\)�$  ��33�C�z�                                    Bw��  �          A/
=@'��)��=�\)>�p�C��3@'��&{�	���5��C�
                                    Bw���  �          A,��@*=q�'33���
��ffC�%@*=q�#\)�G��A�C�O\                                    Bw�^  �          A)G�@)���"ff���:=qC�N@)�����(���h��C��=                                    Bw�  �          A*{?����\)@�33AͮC��?����#\)@!�A]�C��                                    Bw�)�  �          A0  ?�=q�!�@|(�A�Q�C�p�?�=q�+�?�  A�HC�1�                                    Bw�8P  �          A2�\?�Q��+\)@$z�AUp�C�y�?�Q��0(�>�z�?\C�Z�                                    Bw�F�  �          A0Q�@��((�@\)A<Q�C�@ @��,  <��
=���C�q                                    Bw�U�  �          A1�@Q��)@ffAC\)C�T{@Q��-=�G�?�C�/\                                    Bw�dB  �          A1p�@�\�*{@��A7\)C��@�\�-�#�
�8Q�C���                                    Bw�r�  �          A1G�@   �+�?�33AC�J=@   �.{��33��=qC�7
                                    Bw���  �          A1p�?��R�,z�?�
=A33C�8R?��R�.ff���>{C�+�                                    Bw��4  �          A3�?�
=�/\)?�33@���C��)?�
=�0(��aG�����C���                                    Bw���  �          A2�\@	���,��?޸RA(�C���@	���.�R�   �%C��3                                    Bw���  �          A1�@  �)�@A.=qC��q@  �-����+�C��H                                    Bw��&  �          A+
=?���"�\@O\)A�
=C���?���)?���@���C��                                    Bw���  �          A0��?�{�(��@>{AyC��\?�{�.�H?B�\@{�C��\                                    Bw��r  �          A1?����+
=@.�RAc\)C���?����0Q�?   @#33C��                                     Bw��  �          A/\)?�ff�)�@\)A<Q�C�&f?�ff�-��<�>#�
C�\                                    Bw���  �          A3�?�
=�,��@p�AK
=C�g�?�
=�1G�>aG�?�{C�L�                                    Bw�d  �          A/33?�(��)p�@{A;33C���?�(��-�<�>��C��H                                    Bw�
  �          A/�@���%G�@,��Adz�C��=@���*�\?��@9��C�W
                                    Bw�"�  �          A0��?��H�.�H?&ff@W
=C��=?��H�-p������
=C��3                                    Bw�1V  �          A1G�?����/�>L��?��C�� ?����,��� ���'�
C��\                                    Bw�?�  �          A2=q?�ff�0(�>�(�@(�C�H?�ff�-녿�ff���C�                                    Bw�N�  �          A$z�?�p��"�H�W
=��
=C�p�?�p���H�  �K
=C��f                                    Bw�]H  �          A-?�33�+
=>.{?aG�C�aH?�33�(  ��p��)�C�u�                                    Bw�k�  �          A.�R?�p��,�ý�\)��p�C��?�p��)G��\)�=�C��q                                    Bw�z�  �          A-G�?\�+��.{�c�
C�f?\�'���
�E�C��                                    Bw��:  �          A,z�?�
=�+\)�u���\C�%?�
=�'33�Q��K�C�9�                                    Bw���  �          A,  ?�Q��*�H��
=�  C�+�?�Q��&{�#33�[
=C�C�                                    Bw���  �          A(  ?O\)�'��W
=��z�C�9�?O\)�#���\�I�C�G�                                    Bw��,  �          A*=q?^�R�)p��������C�U�?^�R�$���   �YG�C�ff                                    Bw���  �          A&�\?�  �$�ÿaG���33C�?�  ��H�:=q��{C��q                                    Bw��x  �          A'�?W
=�&ff�Q���\)C�Q�?W
=� z��7��~=qC�g�                                    Bw��  �          A(Q�?z�H�'
=�G���  C��\?z�H�!G��5��z{C�Ǯ                                    Bw���  �          A(Q�?c�
�'
=�Y����(�C�l�?c�
�!��9����{C���                                    Bw��j  �          A&=q>����$�ÿ�
=��G�C��>������L����p�C��R                                    Bw�  �          A#\)?E��!��������  C�+�?E���R�J�H���RC�E                                    Bw��  �          A!p���{� (����\��=qC����{��>{��p�C���                                    Bw�*\  �          A"=q?@  � zῚ�H���HC�  ?@  �p��J=q��G�C�8R                                    Bw�9  �          A"�\?Tz�� zῧ����C�\)?Tz��G��P  ����C�y�                                    Bw�G�  �          A#�>���� �׿���*=qC���>������tz�����C�                                      Bw�VN  �          A�R��\��\�p��N{C�|)��\��������\)C�aH                                    Bw�d�  �          A��!G������X(�C�ÿ!G��p����H��(�C��3                                    Bw�s�  �          A"�R��{�(��Tz����\C�𤿮{�
�H���
���
C��                                    Bw��@  �          A z῝p���R�L(����\C�H���p��	���
=���
C��                                    Bw���  �          A"�R��  ����J�H��
=C�����  �  ��
=���
C�"�                                    Bw���  �          A �ÿ�33��S�
���C�׿�33�z���=q��  C���                                    Bw��2  �          A�H���H�Q��P  ��{C������H�\)�����(�C�K�                                    Bw���  �          A33�S�
��{��
=���
CwaH�S�
��p�����HCts3                                    Bw��~  �          A
=�b�\��{������z�CuE�b�\��z�����\)Cq�                                    Bw��$  �          A   �z=q��33��Q���
=Cr� �z=q����z��%�\Cn��                                    Bw���  �          A%����� �����
��
=Cs}q������p����H��
Co�{                                    Bw��p  �          A!p������
=������G�Co����˅���
�{Cj�\                                    Bw�  �          A�R��=q���H�����=qCbW
��=q��ff�ʏ\�#�HC\+�                                    Bw��  �          A ����ff��ff�׮�(��CX�=��ff�C�
��
=�@�COB�                                    Bw�#b  �          A Q������
�Å�(�Ca�3�����\��\�633CZ�{                                    Bw�2  �          Az���p���=q��G��  Cl{��p�����ff�*�RCf�)                                    Bw�@�  �          A33����z���Q���Ci^�����ff���)
=Cc�)                                    Bw�OT  �          A�R��33��\)�����=qCk@ ��33���
�˅�z�CfxR                                    Bw�]�  �          A\)�����  ��p�� �HCkk������z����
�$=qCfs3                                    Bw�l�  �          A��w
=��
=���
��=qCo+��w
=���R�����#=qCj�                                     Bw�{F  �          Ap��n{��{��p���  Cn�q�n{���������
=Cj�\                                    Bw�  �          A
=�z�H��ff�������Cl���z�H������
��ChB�                                    Bw�  �          A�
�|(��˅�����Cn:��|(���
=��ff��\Cj:�                                    Bw§8  �          A���=p����mp���\)CxB��=p��ҏ\����33CuǮ                                    Bwµ�  �          AQ��!G���p��W���  C{=q�!G���z���
=�ffCy8R                                    Bw�Ą  �          A���@  ��  �c33��G�Cx�)�@  �����R�Q�Cv��                                    Bw��*  �          A!�����\)��\)��RCZ�3����l����=q�2  CS�                                    Bw���  �          A$(��������z��\)CZ�����hQ���R�2��CQ��                                    Bw��v  �          A(z��\��
=���
��HC]���\�����G��6��CV\                                    Bw��  �          A((���33��p��ʏ\�33CZ{��33�xQ���ff�,�CRn                                    Bw��  �          A(z���z����������z�C[����z���G��޸R�%z�CT޸                                    Bw�h  �          A#
=��������{�
=CU�����R�\���$z�CMp�                                    Bw�+  �          A%��33�\(���(��(�CLaH��33�{��p�� ffCDL�                                    Bw�9�  �          A#
=�G��
=�����(�CB���G��xQ���33�Q�C:�
                                    Bw�HZ  �          A"�\�
=�����z���
=CC�=�
=��\)��  �  C=:�                                    Bw�W   �          A!�����{�����Q�CD�
��Ϳ��H����=qC>�                                    Bw�e�  �          A!���-p���z�� �RCFp��녿�������  C?p�                                    Bw�tL  �          A#��
=�:�H���H���\CG���
=��{��G��
p�C@Ǯ                                    BwÂ�  �          A$����=q�|(���  ��COxR��=q�1���z���\CH.                                    BwÑ�  �          A#\)���E��p����CH�����z�������CB�                                    Bwà>  �          A(�����:�H��ff�	33CG�����޸R��z��
=C?�q                                    Bwî�  �          A%������AG���
=�\)CI�����������(�CA5�                                    Bwý�  �          A$Q�������R��
=�z�CQ�f����C�
����CJ��                                    Bw��0  �          A1���ff��H�����Q�Cp޸��ff��������G�Cm)                                    Bw���  �          A/33�`�������=q��Q�Cx�
�`����ff���(�Cv33                                    Bw��|  �          A1��  �
=��\)����Cu�H��  ������=q�p�Cr�
                                    Bw��"  �          A1��~{�Q��������HCv=q�~{��z���  ��CsL�                                    Bw��  �          A2ff�}p�����=q��Cv0��}p���=q������HCs#�                                    Bw�n  �          A5G���  �
=��G��޸RCvxR��  � ����p��z�Cs��                                    Bw�$  �          A2�\�q��\)��33����Cw�3�q��p���\)���Ct�q                                    Bw�2�  �          A,(��������H����Ct������
=�ٙ����Cp�)                                    Bw�A`  �          A*�\����	p���
=����Cq�����������  �Cn��                                    Bw�P  �          A*{���������\���HCr�\������
=�\��Co��                                    Bw�^�  �          A*�H�����G����H��Cn(�������G���Q���Cj�                                     Bw�mR  �          A(����\)��p���z�����Cm�)��\)���
�����{Cj{                                    Bw�{�  �          A(Q���z����R������Cns3��z������  ��
Cj�                                     BwĊ�  �          A(Q�������33������HCn������������
��Cj.                                    BwęD  �          A'���Q����
��
=�ָRCm����Q��ۅ�Å��
Ci�
                                    Bwħ�  �          A(  ��\)�  ��z���=qCp33��\)��G���33�Cm�                                    BwĶ�  �          A'�
������{����Cq� �����(���p��	��Cn��                                    Bw��6  �          A'�
���
��
������Cp�����
��  ��Q��Cm��                                    Bw���  �          A(���������������\)Cq:����������Å���Cn                                      Bw��  �          A'�
��=q�	���z����
Ct����=q��������	33Cq�q                                    Bw��(  �          A)G��k����\)��Q�Cwk��k����
�����Q�Ct�                                    Bw���  �          A((��xQ��Q�������(�Cu���xQ���\)�ȣ���\Cr��                                    Bw�t  �          A((��|�������H���Cu��|�����ʏ\��
Cr                                    Bw�  �          A*�\�j=q���������Q�Cv���j=q��p���Q��
=Cs�                                     Bw�+�  �          A%��7
=�=q�����G�C{#��7
=�����
�%�RCxh�                                    Bw�:f  �          A*ff�5��	G���(���\)C{� �5���z����
�'�Cy
=                                    Bw�I  �          A,z��E�
=q�������CzW
�E��{����&ffCwz�                                    Bw�W�  �          A,���2�\����{����C|J=�2�\��Q���R�'�
Cy��                                    Bw�fX  �          A,z��;��(�������33C{��;����H����#Cx�f                                   Bw�t�  �          A,���S33��
��{��CyW
�S33��\�޸R� Q�Cv��                                   BwŃ�  �          A&=q�}p���\)�߮�+(�C�9��}p�����  �U\)C�Y�                                    BwŒJ  �          A%녿�G��ff����
C��H��G����
��\�<��C���                                    BwŠ�  �          A&�R��
�
=��\)��G�C���
��\�׮�!��C}                                    Bwů�  �          A(z��
�H��H��p��C�=�
�H��{���
�1��C}.                                    Bwž<  �          A)��p��
�\�����(�C���p���
=�����*=qC}}q                                    Bw���  �          A'�� ���z�������33C���� ����
=��\)�{C�
                                    Bw�ۈ  �          A)p���
=�G��b�\��ffC�%��
=�(�������=qC���                                    Bw��.  �          A((��˅���������Q�C�J=�˅�
�\��
=��C��                                    Bw���  �          A(z��33�z���ff���
C����33�	p���z���
C��3                                    Bw�z  �          A'����R��H�w
=��z�C�=q���R��������p�C��)                                    Bw�   �          A(���;�������{C{�3�;�������
=�33Cyk�                                    Bw�$�  �          A)�B�\�����(�����C{p��B�\� z���
=���CyL�                                    Bw�3l  �          A)�J�H��H������Q�Czu��J�H��z���33�
=Cx�                                    Bw�B  �          A)��C�
�p���Q���33Cz��C�
�����љ���\Cx�                                     Bw�P�  �          A@�����z�^�R����C�� @�����33����nffC��                                    Bw�_^  �          A=q@�����p�?�33A@Q�C�R@�����ff?���@�p�C�P�                                    Bw�n  �          A�@�(���33?�=qA4  C�)@�(���33?Y��@�
=C�y�                                    Bw�|�  �          AQ�@�33����?�  @ƸRC�"�@�33��\)���Ϳ!G�C��\                                    BwƋP  �          A=q@��
��z�?n{@��HC��\@��
��
=���L��C��                                     Bwƙ�  �          A�R@�=q����?h��@�\)C�aH@�=q���H�.{���C�5�                                    Bwƨ�  �          A��@�����
=?p��@�ffC�k�@����������O\)C�<)                                    BwƷB  �          AQ�@�Q���33>\@{C��H@�Q���녿B�\���RC���                                    Bw���  �          A33@�ff����>���@'
=C�:�@�ff��Q�!G���p�C�H�                                    Bw�Ԏ  �          A�
@�z���(�>8Q�?�Q�C��)@�z���녿\(���{C�                                   Bw��4  �          Ap�@�ff��(�>�  ?�{C�R@�ff��=q�n{����C�<)                                    Bw���  �          A=q@�33��=q=�G�?&ffC�O\@�33��
=��  ���C���                                    Bw� �  �          A��@�����>aG�?�=qC�.@����\)�������C�XR                                    Bw�&  �          Ap�@�=q��
=>�ff@*�HC���@�=q��{�L�����C�Ǯ                                    Bw��  �          A  @�\)��{�B�\��z�C���@�\)��G���(���HC���                                    Bw�,r  �          A=q@�\)���H�#�
�k�C�.@�\)����G��Q�C�|)                                    Bw�;  �          A=q@�=q��33�#�
���
C���@�=q��
=��(��Q�C��                                    Bw�I�  �          A��@��R��;�33��C�@��R�p�����0��C�aH                                    Bw�Xd  	�          A!�@���p��W
=���HC��
@����\��  � ��C�B�                                    Bw�g
  *          A{@��
�33�Ǯ��C��R@��
��
�����6{C��                                    Bw�u�  �          A33@��
=���H��
=C�"�@����333����C���                                    BwǄV  �          A�@����\�����ffC�\@��� Q��4z�����C��                                     Bwǒ�  �          A=q@�{���R��ff���C��H@�{�����@  ���C��=                                    Bwǡ�  �          A
�R@�������>#�
?��C��)@�����녿�\)����C�Ǯ                                    BwǰH  �          Ap�@��
��  �W
=��G�C���@��
���H���H�)�C���                                    BwǾ�  �          @�ff?�{��G�����!G�C��)?�{��
=�����HC�>�                                    Bw�͔  �          @�\)@���  �����\C�33@������C�
��33C��                                    Bw��:  �          @�(����
��  �{���C�uý��
�n{�Mp��#ffC�aH                                    Bw���  �          @��R�W
=��R�Y���Q�
C{W
�W
=��ff�s33�y�RCu
                                    Bw���  �          @�p��c�
�G��g
=�_��Cx�)�c�
�Ǯ�~{L�CpL�                                    Bw�,  �          @|(����
�ff�Fff�T�Cs�����
��p��\(��y=qCkO\                                    Bw��  �          @fff�Tz��"�\�\)� G�C{��Tz��z��+��H�Cx@                                     Bw�%x  �          @h�ÿ��
��p��0  �K��Cr�����
��Q��Dz��p\)Cjp�                                    Bw�4  �          @i����
=�#33��������Ch�\��
=����33�Cd�                                     Bw�B�  �          @��H��=q�$z��(���)33Cr�쿪=q���Dz��NffCl�q                                    Bw�Qj  �          @h�ÿ������=p��rG�Cg�쿅��:�H�I��{CW:�                                    Bw�`  �          @�p����
��J�H�Lp�Cv&f���
���H�c33�r�CnǮ                                    Bw�n�  �          @s�
� �׾aG��G
=�c�HC:J=� ��>�Q��Fff�b\)C)�                                     Bw�}\  �          @;�>�  ?�p���  ��B��
>�  ?�Q�s33���B�(�                                    BwȌ  �          @���@U�@1�?�Q�At��BG�@U�@ ��?�
=A�  B�
                                    BwȚ�  �          @��R@Z�H@��?�Q�A�(�BJz�@Z�H@n�R@+�A߅B=�                                    BwȩN  �          A
=@�@��\@�
=A�Q�B  @�@���@��HB�RA���                                    Bwȷ�  �          A�@ٙ�@���@�
=A���B{@ٙ�@��@��\B�A��                                    Bw�ƚ  �          A
=@�(�@��@�
=A�ffBG�@�(�@�@�33BffA�{                                    Bw��@  �          A�
@���@�
=@���A�{Bp�@���@�Q�@�G�B
�HB �                                    Bw���  �          A�
@�
=@���@���A���B!@�
=@��@�ffB�HB
��                                    Bw��  �          A33@��H@�G�@�p�B(�B&�@��H@S33@��BB�B��                                    Bw�2  �          A��@��H@��
@�  B.��B��@��H@7�@�p�BG(�A�\)                                    Bw��  �          A�@�z�@�
=@��RB'p�B�@�z�@A�@���B@p�A�                                      Bw�~  �          A�
@���@��\@�\)BQ�B��@���@N{@�ffB.z�A��                                    Bw�-$  �          A
=@�p�@{�@��B%�
B�
@�p�@/\)@љ�B<��A��H                                    Bw�;�  �          A�@���@Y��@�{B8�HB@���@�@�
=BMffA�\)                                    Bw�Jp  �          A��@���@^{@׮B?z�B
�\@���@Q�@���BT��A�{                                    Bw�Y  �          A��@��@k�@ָRB?�B�@��@ff@�G�BVA�                                      Bw�g�  �          A{@�G�@~{@�B<�B�\@�G�@(Q�@��BT�
A�ff                                    Bw�vb  �          A��@�z�@Z=q@��
B$=qA�Q�@�z�@(�@���B6\)A���                                    BwɅ  �          A��@��
@6ff@��HB$Q�A�
=@��
?�33@У�B2�HAh                                      Bwɓ�  �          AG�@�G�@�ff@��B�A���@�G�@Fff@ÅB�
A�=q                                    BwɢT  �          A�@�G�@��@�Q�B
G�B��@�G�@^�R@�G�B!Q�A��                                    Bwɰ�  �          A��@Ϯ@�Q�@�\)B�HA�@Ϯ@0  @��
B1�A�                                      Bwɿ�  �          A�H@Ϯ@�@�z�B��B	{@Ϯ@QG�@�(�B$��A��                                    Bw��F  �          A��@�  @xQ�@�\)B��A��H@�  @1G�@��
B#��A��\                                    Bw���  �          AG�@�@�ff@�G�B33B{@�@AG�@�\)B1  Aׅ                                    Bw��  �          AQ�@���@�{@ÅB&33B z�@���@L(�@��HB?��A��                                    Bw��8  �          A=q@�{@��\@�ffBQ�B\)@�{@=p�@�(�B#p�AŅ                                    Bw��  �          A(�@�@�ff@��
B	�HB
�R@�@U@��
B �RAۙ�                                    Bw��  �          A��@�{@��R@���B��B  @�{@c�
@ʏ\B&(�A�G�                                    Bw�&*  �          A�R@�{@���@�BBA�@�{@�=q@ڏ\B>��B#��                                    Bw�4�  �          A�@��\@�p�@���B�HB0�R@��\@�p�@�{B3�RB                                      Bw�Cv  �          A��@�{@�ff@��B   B.�H@�{@x��@�ffB<ffBQ�                                    Bw�R  �          A\)@���@��@ʏ\B$z�B-�\@���@j�H@�p�B@�\Bz�                                    Bw�`�  �          A�\@�p�@�@�
=B*G�BV�@�p�@��\@�ffBLffB8Q�                                    Bw�oh  �          A��@xQ�@��
@θRB*G�Ba��@xQ�@�Q�@�
=BM�
BE
=                                    Bw�~  �          Aff@�33@�33@ȣ�B#��BJ\)@�33@���@�\)BD�B+��                                    Bwʌ�  �          A�@{�@�Q�@�p�B#��Bg�@{�@���@�Q�BH\)BM�                                    BwʛZ  �          A\)@�p�@a�A�HB]G�B\)@�p�?��A\)BtffA�Q�                                    Bwʪ   �          A\)@n�R@��@�{BK  BV��@n�R@^�RAz�Bl�\B,(�                                    Bwʸ�  �          AG�@l(�@�@��
B9�RBc�@l(�@�{AG�B]z�BB�                                    Bw��L  �          A��@j=q@�33@�=qB'�BpG�@j=q@�ff@�BM{BVQ�                                    Bw���  �          A@G�@�@��
BB�8R@G�@�  @�
=B9Q�B�
=                                    Bw��  �          A{@b�\@�{@�Q�B8(�B^�
@b�\@tz�@�z�B[ffB<�
                                    Bw��>  �          A��@l(�@�\)@ϮB<�
BP(�@l(�@XQ�@���B^  B)�
                                    Bw��  �          A@�Q�@�Q�@���B7B-��@�Q�@Fff@���BS��B�                                    Bw��  �          A��@�G�@��@љ�B-��BNG�@�G�@���@�\)BOG�B,��                                    Bw�0  �          A{@�G�@�33@޸RB9Q�B/\)@�G�@I��@�\)BU��B\)                                    Bw�-�  �          A��@�z�@��@�Q�B6p�B=�@�z�@e@��
BU(�B�H                                    Bw�<|  �          A  @}p�@�{@�G�BKz�BG=q@}p�@G�A��Bk�B�
                                    Bw�K"  �          AQ�@�(�@��H@�\B:�BEQ�@�(�@fff@�{BY��B�H                                    Bw�Y�  �          A��@C33@�{@θRB%G�B�@C33@�G�@���BM�Bp33                                    Bw�hn  �          A�H@�33@��@���B2Q�BGff@�33@p  @�G�BRB"��                                    Bw�w  �          A��@�z�@z�H@�33BB�B=q@�z�@��@�\)BZffAǙ�                                    Bw˅�  �          A��@�ff@�ff@��B2�\B3��@�ff@^�R@�  BP{B��                                    Bw˔`  �          A�
@�=q@�ff@�
=B1{BSp�@�=q@��R@��RBSffB1�                                    Bwˣ  �          A   @��@���@�BB�HB;�\@��@N{A��Ba33B�\                                    Bw˱�  �          A�@��H@K�@�\B?{A�R@��H?�@�=qBP�\A~�H                                    Bw��R  T          A��@��@Q�@�
=B;�A��R@��?333@�  BE�@���                                    Bw���  �          A=q@�Q�@aG�@ۅB5�A���@�Q�@@�p�BI��A�\)                                    Bw�ݞ  �          A  @�=q@�@���B1�
A�=q@�=q?��@�  B>
=A                                      Bw��D  �          A��@�Q�>��H@���B"Q�@�  @�Q�8Q�@�  B!�\C��                                    Bw���  �          A\)@�\>��@�  B=q?�p�@�\�s33@�p�B�C�/\                                    Bw�	�  �          Aff@�Q�Q�@�\)B	(�C��=@�Q��ff@�
=B ��C��                                    Bw�6  �          A@��H��33@�{A�\)C��=@��H�#�
@�Q�A��
C�ff                                    Bw�&�  �          AQ�@���*�H@���A��C�q@���^{@k�A���C�q�                                    Bw�5�  �          Ap�@�  �z�@�33BffC��3@�  ��33@�(�B
Q�C���                                    Bw�D(  �          AG�@�ff=L��@�33B)G�>�@�ff��
=@��B%p�C�f                                    Bw�R�  �          Az�@�ff�0��@�BQ�C�,�@�ff����@�p�B{C���                                    Bw�at  �          A�@ڏ\���H@�z�BC��)@ڏ\�0��@�BG�C���                                    Bw�p  �          A��@����{@�z�BG�C��@���#�
@�
=A�G�C�w
                                    Bw�~�  �          A��@�  �g�@�=qAՙ�C��)@�  ���
@P��A�ffC�u�                                    Bw̍f  �          A
=@�{�N{@�\)A���C��@�{���@n�RA�33C��{                                    Bw̜  �          Aff@��
�7�@��RA�33C��@��
�n{@q�AɮC�5�                                    Bw̪�  �          A  @У��#�
@���B	C�C�@У��_\)@�A��C���                                    Bw̹X  �          Az�@���<��@�G�A��C�t{@���s�
@uAϮC���                                    Bw���  �          A
=@�G��)��@��
B�RC��q@�G��a�@~�RA��C�Ф                                    Bw�֤  �          A=q@����C�
@j�HAϙ�C�
=@����p  @>{A��C��                                     Bw��J  �          A(�@���Fff@xQ�AظRC��=@���u�@J=qA�=qC��                                     Bw���  �          A�
@���Q�@�z�A�(�C�k�@���?\)@w
=A��C�L�                                    Bw��  �          A�@�{�;�@`��AǮC��3@�{�e@5�A�G�C�XR                                    Bw�<  �          @�{@׮�(�@[�A��HC�@׮�6ff@:=qA��C��                                    Bw��  �          @��
@�{� ��@o\)A��C�` @�{�N{@H��A�Q�C���                                    Bw�.�  �          @��R@����.�R@s33A��C�t{@����\��@I��A��C���                                    Bw�=.  �          A (�@�z��i��@h��A�(�C��f@�z���=q@3�
A�  C�o\                                    Bw�K�  �          @�  @���[�@a�Aڣ�C��3@�����H@/\)A�33C��                                    Bw�Zz  �          @�\)@����@UA���C�5�@����@9��A���C��3                                    Bw�i   �          @�@�Q���@S33A�C��f@�Q��"�\@5A��RC�Y�                                    Bw�w�  �          @�@�\)��
=@>{A���C���@�\)�G�@'
=A��HC��H                                    Bw͆l  �          @��
@���>{@vffA�=qC�u�@���mp�@H��A�{C���                                    Bw͕  �          @���@�\)�0  @qG�A���C�/\@�\)�^�R@G
=A�\)C�^�                                    Bwͣ�  �          @�@�p���R@|��A�33C��H@�p��P  @VffA��HC��R                                    BwͲ^  �          @�ff@�33�.{@'
=A�p�C�e@�33�Mp�?�p�Axz�C��
                                    Bw��  �          @��@��
�J=q@,(�A�G�C�@ @��
�i��?�(�AiG�C���                                    Bw�Ϫ  �          @��
@ʏ\�hQ�@
�HA�z�C�
@ʏ\��Q�?�{A$(�C��R                                    Bw��P  �          @�{@�G���(�?�  A�HC��{@�G�����>�33@+�C�H�                                    Bw���  �          @���@�
=���?��
A z�C��q@�
=��p�=#�
>�{C�e                                    Bw���  �          @��
@�����?�=qA!p�C�aH@����p�>���@\)C�޸                                    Bw�
B  �          @�ff@�z����@
=qA���C��
@�z�����?�A��C��H                                    Bw��  �          @��R@�  ��p�@A|Q�C�q�@�  ��Q�?�ff@��\C�u�                                    Bw�'�  �          @�=q@������?�z�A+�
C���@����
=>��R@z�C�:�                                    Bw�64  �          @�
=@��H��
=?�z�AQ�C��q@��H��33=�\)?z�C�|)                                    Bw�D�  �          @��H@������?^�R@љ�C���@�������z��(�C���                                    Bw�S�  �          @陚@�z���
=>�ff@`��C�Ff@�z���{�.{���\C�XR                                    Bw�b&  �          @�{@�
=��p����
���C�]q@�
=���ÿ�����C��H                                    Bw�p�  �          @�\)@��H����>L��?��C�q�@��H��ff�Tz���33C���                                    Bw�r  �          @��
@����  =�\)?��C���@�����Ϳ�G��=qC��3                                    BwΎ  �          @��H@�����\>.{?�\)C�l�@������}p�� ��C��=                                    BwΜ�  �          @��@�\)����=�G�?\(�C�e@�\)��G���\)�ffC���                                    BwΫd  �          @�=q@������#�
��z�C���@����
=��  �#\)C��                                    Bwκ
  �          @�=q@����G�?E�@�G�C�*=@������8Q쿹��C��3                                    Bw�Ȱ  �          @�{@�(���p�>��@S�
C��@�(����Ϳ�R���RC��
                                    Bw��V  �          @�{@�  ��  �O\)�θRC�� @�  ��ff���R���C�p�                                    Bw���  
�          @�\@��H���\��\��(�C�^�@��H���H��z��Z{C�f                                    Bw���  �          @�  @��R���
=���?Q�C�ٚ@��R���׿�=q��\C�#�                                    Bw�H  �          @�  @��\��G��B�\��=qC�t{@��\��������1�C���                                    Bw��  �          @��
@�G���=q=���?L��C�U�@�G����R������C��                                     Bw� �  �          @�p�@�����>Ǯ@<(�C���@�����s33����C�                                      Bw�/:  �          @��@�33���?�  @�\)C��@�33�����
�=qC��                                     Bw�=�  �          @���@��\��z�@.�RA�p�C���@��\���
?�(�A/
=C���                                    Bw�L�  �          A
=q@�����(�@a�A��HC�~�@�������@  Aq�C��q                                    Bw�[,  �          A	�@�  ��  @-p�A��C���@�  �ƸR?�\)A�HC�g�                                    Bw�i�  �          A33@�z����H@(�Ac�C�o\@�z���p�?8Q�@�z�C��
                                    Bw�xx  �          A��@�G����ÿ8Q���z�C�l�@�G���ff�
=q�z�RC��                                    Bwχ  �          A�@���������lQ�C��R@���(��fff�˙�C���                                    Bwϕ�  �          A��@�����
�W
=���\C�G�@����Q���
��G�C��                                    BwϤj  �          Az�@�G���
=����6�\C��@�G����G
=��ffC�%                                    Bwϳ  �          A�\@��R��p��#�
��z�C�q@��R���H�(��qp�C�                                    Bw���  �          Ap�@�z���ff�L�����C��@�z���33��\�33C�˅                                    Bw��\  �          A
ff@�����þ�33�C���@���أ׿�Q��O\)C�4{                                    Bw��  �          A  @�=q��{>.{?�\)C���@�=q��G���z��(�C��                                    Bw���  �          A33@����p��O\)���\C��@���ٙ���H����C���                                    Bw��N  �          A�H@�Q���녿��H��HC�g�@�Q�����H�����C�W
                                    Bw�
�  �          A��@�(����H��(��0(�C��@�(����^{���RC���                                    Bw��  �          A�@�=q��p�?�ff@�ffC�q@�=q��
=���p  C�H                                    Bw�(@  �          A��@�=q��ff?��RA�C�Z�@�=q������n{C��                                    Bw�6�  �          Az�@����?&ff@�  C��\@���Q쿆ff�ϮC�                                    Bw�E�  �          A�@�ff��p����J=qC�%@�ff��{��=q�7�
C��3                                    Bw�T2  �          AQ�@�  ��\)<#�
=uC��)@�  ���ÿ�(��0(�C�8R                                    Bw�b�  �          A��@����
=�#�
���
C��f@����׿�
=�/\)C��                                    Bw�q~  �          A�@�z���\)�Ǯ�#33C���@�z������^=qC�q�                                    BwЀ$  �          A��@�����׾B�\���\C��=@�����׿�Q��K�C���                                    BwЎ�  �          A\)@�������>8Q�?�
=C���@�����(�����(z�C���                                    BwНp  �          AQ�@��R��׾���Dz�C�U�@��R��ff�p��i�C��H                                    BwЬ  �          Aff@z=q��\>�ff@K�C�t{@z=q�߮��(��
�\C��q                                    Bwк�  �          A Q�@c33��>�  ?�  C�&f@c33��G������&=qC�aH                                    Bw��b  �          AG�@b�\��>��@N{C��f@b�\��zῧ����C���                                    Bw��  �          @��@l���θR���\��HC��f@l����\)�0����33C��                                     Bw��  �          @�@Vff��{�8Q����C�H�@Vff�ʏ\�����C���                                    Bw��T  �          A z�@L(����
��\)���C��3@L(���z���P(�C�f                                    Bw��  �          @�33@Tz���\�Ǯ�4z�C��@Tz���G��33�s33C�f                                    Bw��  �          @�@A���z�z���{C��q@A��љ�������
C�ff                                    Bw�!F  �          @��@(��ȣ׿�{�y�C��H@(������S33��z�C���                                    Bw�/�  �          @�?�{��  �_\)���RC���?�{��Q���ff�3�C�h�                                    Bw�>�  �          @��׿L�����\)�s{Cx޸�L�Ϳ������
  Ch�q                                    Bw�M8  �          @��~�R@���������C�q�~�R@�=q�K����
C &f                                    Bw�[�  �          @�z���@�(��N�R��  C 0���@Ǯ���
�Qp�B��R                                    Bw�j�  �          @�{��(�@��R�1G����CQ���(�@��R�����%p�B���                                    Bw�y*  �          @�z���@�ff�4z���p�Cn��@�\)��p��8��B�p�                                    Bwч�  �          @�������@�p��*�H����CO\����@�p�����'\)C �q                                    Bwіv  �          @�����@���� ������C@ ����@�
=��z��p�C��                                    Bwѥ  �          @��\�˅?�{��=q�HCuÿ˅@���33�Z��B�\)                                    Bwѳ�  �          @������?J=q���
�=C�Ϳ��?�\�s�
�m�\C E                                    Bw��h  �          @ҏ\�.{@8����{�L��CE�.{@�Q����\� p�B�W
                                    Bw��  �          @�(��I��@W����\�?{C{�I��@�Q���33��
B��)                                    Bw�ߴ  �          @�33�{�@������H�,Q�Cu��{�@��\���� �\B�Ǯ                                    Bw��Z  �          @�=q��
=@��\��ff�(�C�)��
=@�33�_\)��z�C��                                    Bw��   �          Aff��p�@�z���
=��C���p�@���r�\�ޏ\C:�                                    Bw��  �          A���  @�33��p���C����  @��p  ��Q�C�3                                    Bw�L  �          @�z�����@s�
����!�C������@�ff��Q���ffC8R                                    Bw�(�  �          A	�����@�G���p��.=qC�����@�(���\)��RC\)                                    Bw�7�  �          A����{@l(����R�7z�CB���{@����33�
=CJ=                                    Bw�F>  �          @�\���\@H�����\�3��C
=���\@��
��(��C�R                                    Bw�T�  �          @�(�?!G��e��\� �\C���?!G��:=q�G��9ffC�{                                    Bw�c�  �          A��@=p���;�(��"�\C���@=p��=q�0  ���RC�5�                                    Bw�r0  �          A$(�@�p����?���@�=qC�R@�p��z῞�R�޸RC�)                                    BwҀ�  �          A*�H@������?��A{C�l�@����33����;�C�4{                                    Bwҏ|  �          A(��@���=q?��\@�{C�|)@����R��=q���C�s3                                    BwҞ"  �          A-�@��
�
=@8Q�A�33C��@��
��?�@:�HC��                                     BwҬ�  �          A*ff@������@e�A��HC�@�����\?�@�(�C�^�                                    Bwһn  �          A*=q@�\)���?���@�RC��@�\)������
����C�f                                    Bw��  �          A0��@����\@�A0��C�Ф@���=q��33����C��                                    Bw�غ  M          A2=q@��H��\@)��A\  C��f@��H�z�>#�
?O\)C�O\                                    Bw��`  
�          A4  @�(��{@Dz�A}��C���@�(��?�@8��C�S3                                    Bw��  �          A3�
@�(��  @Q�ADz�C��@�(���׾\)�8Q�C�ff                                    Bw��  �          A4(�@����@3�
Ag�
C��R@��33>���?�Q�C�+�                                    Bw�R  �          A2{@��\��\@?\)Ayp�C��@��\��?�@.�RC�\                                    Bw�!�  �          A2ff@����\@8��Ap(�C���@���p�>�
=@
�HC�E                                    Bw�0�  �          A2=q@�{��@C33A}�C�@ @�{�\)?��@5C��H                                    Bw�?D  �          A*{@�33�@��AP��C���@�33��H<��
=���C��                                    Bw�M�  �          A/�
@�Q���@z�AC
=C�o\@�Q��  �#�
�Q�C��                                    Bw�\�  �          A2ff@����  ?�{@��RC�4{@����33��(����HC�C�                                    Bw�k6  �          A2�\@��
�=q?z�@>{C���@��
�33���'�C���                                    Bw�y�  �          A.{@��R��\@��A:{C�h�@��R��\��\)��(�C��                                    Bwӈ�  �          A0  @��R��
?��AC�e@��R�ff�.{�aG�C�1�                                    Bwӗ(  �          A3�@��� Q�?�{@�{C��\@��� zῪ=q���C��                                    Bwӥ�  �          A3�
@��H��\?��R@�z�C���@��H�33�����C���                                    BwӴt  �          A6=q@��
�"{?���@���C�ff@��
� �ÿ�\)��HC�z�                                    Bw��  	�          A5@�{�&�H�G��z�HC��@�{����`����(�C�                                      Bw���  
�          A3
=@���%�������  C��)@����R�q���(�C��f                                    Bw��f  �          A0��@�z��"�\��\)��(�C�
@�z���R��������C��)                                    Bw��  �          A1p�@q��%��  ���C��@q����n�R��G�C���                                    Bw���  �          A*�R@�����Ϳ#�
�]p�C�&f@����z��O\)��=qC��R                                    Bw�X            A'
=@�p���H�#�
�aG�C���@�p��G��$z��dz�C���                                    Bw��  �          A-�@���p��aG���33C��q@����H�2�\�o
=C�B�                                    Bw�)�  �          A.�\@��\)������ffC���@��z��5��p��C��H                                    Bw�8J  �          A.{@�\)�ff��G��z�C���@�\)��H�A����C�=q                                    Bw�F�  �          A)��@�  �
=�(��Tz�C�W
@�  ��H�I����ffC�H                                    Bw�U�  �          A!@�Q��
=?��@�p�C���@�Q��
ff��{���C�
=                                    Bw�d<  �          A{@��H����?��@�  C��)@��H�������\�ǮC���                                    Bw�r�  �          A�\@�Q���  ?�p�Az�C�'�@�Q����
��R�r�\C��                                    Bwԁ�  �          A33@����G�@hQ�A�{C�aH@�����H@
=An�HC�Ff                                    BwԐ.  �          A+\)@����Q��(��Q�C�@ @����
=��ff����C�ff                                    BwԞ�  �          A,(�@�\)���޸R���C��f@�\)�=q��ff��Q�C��
                                    Bwԭz  �          A,��@����	녿��R�*ffC�� @��������G�����C�:�                                    BwԼ   �          A.{@���  �����33C��)@���	���dz����C��                                    Bw���  �          A)�@����  ���\����C��3@�����^{���RC��f                                    Bw��l  �          A"�R@���	G��z�H��G�C���@����
=�Tz�����C���                                    Bw��  �          A$(�@������ff��(�C��{@������^{��ffC��f                                    Bw���  �          A$(�@��\���������ffC�P�@��\�{�n�R��=qC�\)                                    Bw�^  �          AG�@�z����>�Q�@	��C��)@�z�����p��?�C��{                                    Bw�  �          A0��@�{�Q쿔z����C���@�{���q����\C��3                                    Bw�"�  �          A/�
@�������=q���C�p�@����=q�n�R���\C�\)                                    Bw�1P  �          AG�@z�H�
ff�J=q��\)C�.@z�H�G��L(���ffC��                                    Bw�?�  �          A-�@����z῞�R��=qC���@�������xQ�����C��                                    Bw�N�  �          @��?z�H���;�p��Q�C�Y�?z�H�����
=q��  C��)                                    Bw�]B  �          @�{?�
=�ƸR�(�����HC���?�
=����������C�"�                                    Bw�k�  �          A%�@�p���;���{C�z�@�p���{������C��q                                    Bw�z�  �          A.{@�Q��  �Z�H��ffC�
@�Q�����������C�K�                                    BwՉ4  �          A3�@����\�}p���\)C���@����������\)C��H                                    Bw՗�  �          A1��@�Q���R��=q��(�C��)@�Q����
�У����C��                                    Bwզ�  �          A/�
@�{����������C���@�{����Ϯ���C��)                                    Bwյ&  �          A0��@��R����������HC��R@��R���
��33�(�C�o\                                    Bw���  �          A/�@��\�����{��z�C��H@��\��\�����G�C�w
                                    Bw��r  �          A3�
@�����H���R��
=C�  @�����G���=q�)Q�C�H                                    Bw��  �          A.�H@{���
��
=����C��@{���33�����.z�C���                                    Bw��  �          A-@��������33��Q�C��3@�����(����1��C���                                    Bw��d  �          A1G�@z=q��\������C�u�@z=q��G���
�@G�C��\                                    Bw�
  �          A1@�����������RC��q@�����������A�
C���                                    Bw��  �          A2{@}p��G���G����C��@}p���=q�	��J��C�q                                    Bw�*V  �          A-��@��\���H��z���C���@��\��ff��R�EffC�˅                                    Bw�8�  �          A/�@\)��{��
=�%33C���@\)��  �(��]�
C�                                      Bw�G�  �          A+�
@�\)���H����+p�C�W
@�\)����=q�a
=C���                                    Bw�VH  �          A Q�@C�
��z���R�9��C�>�@C�
�o\)�33�s�C��H                                    Bw�d�  �          AG�?�{��
=����\��C��
?�{�*=q���
=C���                                    Bw�s�  �          A��@{��=q���H�T�
C�o\@{�0������{C��f                                    Bwւ:  �          A  @���������U{C���@��2�\���33C��                                    Bw֐�  �          Aff?������dp�C��\?�����\C��3                                    Bw֟�  �          Aff?ٙ��I���ff�
C�,�?ٙ��   �33��C���                                    Bw֮,  �          A\)?�G��z���
Q�C��?�G�?�p��z�k�BAff                                    Bwּ�  �          @��
?�
=?k���(�#�B\)?�
=@@�������{B�\                                    Bw��x  �          @�G�?���?.{�ۅL�A���?���@-p����H\)B��
                                    Bw��  �          @ۅ?�z�?n{��{
=B  ?�z�@4z�����y��B�p�                                    Bw���  �          @ۅ?�{�)����p�u�C��q?�{�(����p�C��                                    Bw��j  �          @�ff?����E������k(�C���?��Ϳ�ff�\��C��                                    Bw�  �          Aff?�\)��������ZffC���?�\)��ff��  ��  C��3                                    Bw��  �          A�?&ff���
�@������C�Z�?&ff���H��Q���HC�Ф                                    Bw�#\  �          A�?��R�   �_\)��z�C�h�?��R�����Q��#�C�\)                                    Bw�2  �          Ap�?�  �=q�Q���Q�C�� ?�  ��  ������C�7
                                    Bw�@�  �          A�?��\��Q��Q���z�C���?��\������p��#Q�C��
                                    Bw�ON  �          A�?�\)��
=�N�R����C�
=?�\)�˅��{��\C�
                                    Bw�]�  �          A�?���33�����RC��H?���  ��(����C��                                    Bw�l�  �          A��@#�
��\)��ff�((�C��@#�
���|(���{C��f                                    Bw�{@  �          A@
=q�(��  �k�
C�U�@
=q�����{� G�C�ff                                    Bw׉�  �          A��?�����R�)����Q�C��f?��������
�
�C��R                                    Bwט�  �          A?�p��   �9�����HC��?�p��ָR��\)�=qC�7
                                    Bwק2  �          A\)?�ff����Q���(�C�|)?�ff���������Q�C�ٚ                                    Bw׵�  �          A
�H?���33���Ep�C�y�?����
=�������
C�P�                                    Bw��~  �          A�@QG���z�\�1G�C�N@QG�����%���
C��                                    Bw��$  �          A@�����
?c�
@��C���@����녿�����C���                                    Bw���  �          AG�@������?�=q@�RC�@�����  ��
=��\C��=                                    Bw��p  �          A
�R@�33��p�?��\A�C�\)@�33��ff��ff��  C�K�                                    Bw��  �          A\)@��
���H?�p�A��C���@��
���fff���C���                                    Bw��  �          A�\@J=q��?�  @�=qC��R@J=q�
�H���4(�C��q                                    Bw�b  �          A�H@=p��=q?�@�p�C��
@=p���׿���*=qC�\                                    Bw�+  �          AQ�@%��?�=q@��HC��@%�(���Q���
C�Ф                                    Bw�9�  �          A��@�(��  ?�33A33C���@�(������H��C���                                    Bw�HT  �          A\)@��
�  ?ٙ�A ��C��q@��
�	��������Q�C�|)                                    Bw�V�  �          A��@�Q���?���A��C�=q@�Q��=q�����=qC�!H                                    Bw�e�  �          A��@��H�  ?�  A  C���@��H��׿�(���C�|)                                    Bw�tF  �          A\)@��
��ff?��RA��C��q@��
� (�����޸RC��f                                    Bw؂�  �          AG�@�z����H?�A$��C�\@�z���\)�\(�����C��{                                    Bwؑ�  �          A=q@�G���H?�p�A%C�+�@�G���Ϳ�  ��C��)                                    Bwؠ8  �          A@�����H?˅A  C��@����(�����ڏ\C��                                    Bwخ�  �          A��@������?�ffA�C�Ff@�����\��33��ffC�,�                                    Bwؽ�  �          A(�@�Q�����?�A	C��q@�Q����H��
=��z�C���                                    Bw��*  �          A(�@�p�� (�?�33A\)C��f@�p�� zΰ�
��  C���                                    Bw���  �          Aff@�����ff?���AQ�C��f@���������  ��33C���                                    Bw��v  �          A@�33��(�@z�AL��C��
@�33���;�ff�1G�C�y�                                    Bw��  �          A�\@��
���R?˅A�C��@��
��녿��\����C��H                                    Bw��  �          A�H@������?�33A��C�)@����p��Tz���{C�ٚ                                    Bw�h  �          A�@�\)��\)?��A
=C�S3@�\)��33�h����z�C�R                                    Bw�$  �          A�@����  ?�
=A#�C�}q@�����ͿL�����\C�4{                                    Bw�2�  �          A{@ə��ָR?�  A+�
C��)@ə�������]p�C�0�                                    Bw�AZ  �          A(�@�  ��ff?�G�A*�RC�{@�  ���Ϳ\)�VffC��f                                    Bw�P   �          A=q@�(����?�=qA3�C��H@�(���z���<(�C�e                                    Bw�^�  �          A��@�Q����\@�
AS�C�:�@�Q���ff=�Q�?\)C�T{                                    Bw�mL  �          A��@�ff��  ?���AG�
C���@�ff��녾#�
��  C���                                    Bw�{�  �          A  @����G�?��A2�RC���@����Q���H�A�C���                                    Bwي�  �          A�@�
=��{?�\)A@Q�C���@�
=��\)�aG���
=C��                                    Bwٙ>  �          A@߮���
@z�As33C���@߮���
?��@c�
C�>�                                    Bw٧�  �          A=q@�Q���33@
=qAaG�C��3@�Q���Q�>u?�ffC��                                    Bwٶ�  �          Az�@׮����?��AEp�C���@׮���
���
��G�C��                                    Bw��0  �          Ap�@�(���?�(�ANffC�� @�(���G�=�G�?5C���                                    Bw���  �          A�@׮���@{A��C��@׮����?��@e�C��R                                    Bw��|  �          A��@˅����@3�
A��C��
@˅����?Q�@�33C�B�                                    Bw��"  �          A��@�33��\)@*�HA�p�C���@�33���?(��@���C�(�                                    Bw���  �          A�@�33����@
�HAf{C��3@�33��{>u?�{C��q                                    Bw�n  �          A
=@�(����R@33AZ�\C���@�(���33>��?�  C��                                    Bw�  �          A
ff@������?��HAQG�C��@�������=��
?   C�%                                    Bw�+�  �          A33@����?�  A9�C�0�@����ff�W
=��33C��                                     Bw�:`  �          A�@�����z�?�A@Q�C�G�@������;\�\)C���                                    Bw�I  �          A�@�{��p�@��Ap��C��{@�{���
>��?�(�C��{                                    Bw�W�  �          AQ�@�z����H@�A`z�C�g�@�z���\)=�\)>�(�C�s3                                    Bw�fR  �          Ap�@ҏ\���H?��A:�HC��3@ҏ\���
��  ��33C�&f                                    Bw�t�  �          A��@��
�ƸR?���A�RC�J=@��
�ʏ\�J=q��(�C�                                    Bwڃ�  �          A��@�ff��  ?\A�
C���@�ff��z�=p����HC�|)                                    BwڒD  �          A�@Ϯ��{?�A@(�C�\)@Ϯ��\)��  ��z�C���                                    Bwڠ�  �          A
�H@�=q��\)@�
A\��C��q@�=q���
=�G�?@  C���                                    Bwگ�  �          A   @����p�@(�A~{C�y�@�����?�\@j�HC��                                    Bwھ6  �          @�ff@�{���H?�z�A@��C��@�{����=#�
>�\)C�
                                    Bw���  �          A�@�p����
?�  A,Q�C�!H@�p�����W
=��p�C�t{                                    Bw�ۂ  �          AQ�@�(�����?�
=A;�C���@�(����þ�\)��
=C��R                                    Bw��(  �          A�H@�  ��ff?��AUp�C��
@�  ��\)������
C�\                                    Bw���  �          Aff@�����=q?�
=A?33C�#�@������ÿ\)�}p�C���                                    Bw�t  �          @��@����
=?�  AJ�HC�>�@����
=�Ǯ�1�C���                                    Bw�  �          @��@�
=���?�(�A_�C���@�
=��  �����*=qC�#�                                    Bw�$�  �          @�@�(���(�?�  A\Q�C��\@�(���(���Q��3�
C�S3                                    Bw�3f  �          @�  @\)����@(�A��C�U�@\)��Q�>k�?�G�C�B�                                    Bw�B  �          @�z�@~�R��Q�?\A9�C�7
@~�R��z�L���\C���                                    Bw�P�  �          @�p�@�(���
=?^�R@�\)C��3@�(����
��z��)C�˅                                    Bw�_X  �          @�Q�@����Ϯ?�{Az�C���@����θR���
�Q�C�
=                                    Bw�m�  �          @�G�@�G���(�?\(�@���C�~�@�G����ÿ���*�\C��
                                    Bw�|�  �          @��@�\)��{>�ff@X��C��
@�\)��{��ff�Y�C���                                    BwۋJ  �          @��@�  �ƸR��=q��C�1�@�  ��ff��R���
C�Z�                                    Bwۙ�  �          @���@L���У�>aG�?�G�C��@L����������
=C��
                                    Bwۨ�  �          @�\@g����
>8Q�?�C���@g���Q��Q���
=C���                                    Bw۷<  �          @�Q�@y���Å�#�
�uC�G�@y����ff�{��ffC�5�                                    Bw���  �          @�G�@�=q��������C�xR@�=q��
=�(���  C��)                                    Bw�Ԉ  �          @���@����\?(��@���C���@���ff�����+\)C���                                    Bw��.  �          @�ff@n�R��=q?�ffAk\)C�� @n�R��=q�aG��33C��H                                    Bw���  �          @ᙚ@e�����?�@�(�C��R@e����H�У��\(�C�P�                                    Bw� z  �          @�\@�=q��  ?�=qAQ�C��@�=q��Q쿀  �=qC��                                    Bw�   �          @���@y����33?}p�A ��C���@y����녿��H�p�C��                                    Bw��  �          @�=q>��R��녿��T��C�B�>��R���R��z��{C�}q                                    Bw�,l  �          @���#�
��=q�33��
=C�P��#�
��33����33C��)                                    Bw�;  �          @޸R����=q�����\)C������������R���C��                                    Bw�I�  �          @��Ϳ�R�Ϯ����=qC�Ff��R��{��Q��#�C���                                    Bw�X^  �          @��ÿn{��{�*=q���
C��R�n{������Q��1\)C�z�                                    Bw�g  �          @�  ��\���aG���C{+���\�`�����SG�CsL�                                    Bw�u�  �          @���O\)��������Q�C�+��O\)����~{�=qC�L�                                    Bw܄P  �          @ƸR���H��z��Q���{C��쿚�H��{��=q�%�
C~Ǯ                                    Bwܒ�  �          @��H������Q���\����C�XR�����������.  C�                                     Bwܡ�  �          @�z�B�\����(Q���\)C�:�B�\��33���\�833C�
=                                    BwܰB  �          @��
��33��=q����33C|����33��ff�~�R��\Cy
=                                    Bwܾ�  �          @�(������  �-p�����C{�����=q����2�HCv�=                                    Bw�͎  �          @���G���(���=q�|��C{�q�G���  �\)�
=Cw��                                    Bw��4  �          @�=q����p��(Q���=qC{\)����\)��Q��*�\Cv@                                     Bw���  �          @�\)�=q��
=�+����HCx�=�=q��Q���=q�(ffCs
                                    Bw���  �          @�R�=q��Q���
=��
Cu^��=q�E��33�iG�Ch\                                    Bw�&  �          @�p���������\�33C~�=����|����Q��Z\)Cws3                                    Bw��  �          @�p������ff������G�C}�f�����
=��=q�S�Cw                                    Bw�%r  �          AG��u����'����C�` �u��  �����$
=C�s3                                    Bw�4  �          A\)�^�R���H�?\)��
=C����^�R��(������.
=C��\                                    Bw�B�  �          A{�@  ��ff�J=q����C�5ÿ@  ��p���33�1�C�aH                                    Bw�Qd  �          A�ÿ�
=�����N{��{C�����
=������H�2��C��                                    Bw�`
  �          A�H���H��33�Tz���Q�C�P����H������(��8\)C�Ф                                    Bw�n�  �          AQ�xQ����]p���  C�>��xQ���\)��Q��<�HC���                                    Bw�}V  �          A�ÿ������Dz����\C�Y�������H��33�,�HC�f                                    Bw݋�  �          Aff��Q������p��ZffC����Q��Ӆ��z���\C�                                    Bwݚ�  �          A������
�H�s
=CE�������\)��C|!H                                    BwݩH  �          AG���(�����6ff��p�C�z῜(���
=���\�)�HC�:�                                    Bwݷ�  �          AG���z����{�x  C��{��z��θR������C��f                                    Bw�Ɣ  �          A녿��H��33� �����C������H�ȣ���33��HC�u�                                    Bw��:  �          A{�˅��33�=q��  C�Ff�˅�ə���Q���HC�
                                    Bw���  �          AQ��G������{����C��G��ʏ\���H�(�C|O\                                    Bw��  �          A\)����G��-p����C�Uÿ����
�����#=qC}:�                                    Bw�,  �          A�������R�<����\)C�'������ff��
=�*  C|�                                     Bw��  �          A��  ��{�@  ����C}+��  ������+G�Cxc�                                    Bw�x  �          Az����陚�S�
��(�C������������7�\C{�                                    Bw�-  �          @���������z����C|�f����p����z��fp�CsL�                                    Bw�;�  �          A33��=q������H��33C�f��=q��ff�������C�
=                                    Bw�Jj  �          @�ff�G���(���
�p��C�3�G��ƸR��z��  C�h�                                    Bw�Y  �          @�33�!G���\)�z���z�C��!G���p�����%33C�U�                                    Bw�g�  �          @��þ\)�������C�Q�\)��\)�����!�\C�%                                    Bw�v\  �          @��\>�{��G���33��p�C�f>�{�p  �Y���(\)C���                                    Bwޅ  �          @��
=L��������  ��{C�N=L�������W���C�aH                                    Bwޓ�  �          @Ϯ?��˅������C�:�?�����B�\��33C��                                    BwޢN  �          @�{?����������ffC���?�������Fff��z�C�w
                                    Bwް�  �          @�33?����{<��
=�G�C��?���ڏ\�<(����C��=                                    Bw޿�  �          @�?��H��׿�\�s�
C�� ?��H��{�]p���(�C�'�                                    Bw��@  �          A ��@ ������<��
>\)C�>�@ ����(��E���ffC��)                                    Bw���  �          @���?�z�����(��K�C�>�?�z��ٙ��[���{C�ٚ                                    Bw��  �          @�(�?����  ���r�\C��{?�������e���  C�Ff                                    Bw��2  �          A ��?�(���p�����9��C�` ?�(���33�b�\�љ�C��                                     Bw��  �          A
=?���G�<#�
=�\)C��?�������N�R��  C���                                    Bw�~  �          A@����\>��?�=qC�B�@�����:=q��z�C��=                                    Bw�&$  �          @�ff@�
��33>��R@��C�p�@�
��\�1�����C�                                    Bw�4�  �          @��@\)���������C�&f@\)��z��W
=��G�C��                                    Bw�Cp  �          A Q�?�33�����Tz����C��q?�33�ٙ��y����
=C���                                    Bw�R  �          @��?�
=��  ��G��O\)C�p�?�
=���H�A���ffC�&f                                    Bw�`�  �          @��?�\)��?&ff@���C��3?�\)��p��p���
=C�N                                    Bw�ob  �          @�?c�
����?.{@�\)C�o\?c�
��G��Q���{C��)                                    Bw�~  �          @��?s33��ff>.{?��C���?s33�����1G���33C��                                    Bwߌ�  �          @�?����Q�<�>W
=C�.?������5����C��)                                    BwߛT  �          @ٙ�?�{��(���
=�c33C��\?�{��z��E��ffC��                                    Bwߩ�  �          @ڏ\?G���z῞�R�'�C�\)?G�����u�	p�C�H                                    Bw߸�  �          @�33<#�
��=q��(�����C�<#�
����7���
=C�\                                    Bw��F  �          @�=q��
=�˅��33�F�\C�
��
=��\)�xQ��  C��                                    Bw���  �          @�ff�\����Q����RC�H��\��(������*�C���                                    Bw��  �          @�(�>k�������(�C�]q>k��`�������F�
C��                                    Bw��8  �          @����Q���
=�&ff��\)C����Q��l(���Q��Jz�C�8R                                    Bw��  �          @��H������H�����HC�������<(����H�{
=C�H�                                    Bw��  �          @��ÿ�=q����l(��{C�
=��=q�W
=��=q�d(�Cxn                                    Bw�*  �          @��\<#�
�e�z=q�=��C��<#�
��z���G��{C�#�                                    Bw�-�  �          @��׾aG��,���J�H�E�C����aG���33��  u�C��3                                    Bw�<v  �          @�=q�z��;��0���*�C�n�z�\�n{�qCyE                                    Bw�K  �          @���>����7
=�G��<��C��>��Ϳ������k�C���                                    Bw�Y�  �          @��H?
=q�*=q�W��Lp�C���?
=q���\��p�  C��=                                    Bw�hh  �          @�  �aG��#�
�W��R�\C��׾aG��n{��(���C�>�                                    Bw�w  �          @��\����H�w��g�RC��=���
=����¤�
C��                                    Bw���  �          @��\���\�z��|(��n��Cs�����\�u��ffffC@�                                    Bw��Z  �          @��H��������XQ��g
=Cp.�����=q�vff=qCB0�                                    Bw�   �          @�(���Q��\)��=q�y\)C[�
��Q�?�������C$B�                                    Bw౦  �          @�����ÿ�
=����0(�CDW
����?!G���{�6�HC+!H                                    Bw��L  �          @�\)�Fff�G���ff�>=qCX=q�Fff���������cp�C9�                                     Bw���  �          @�\)�&ff�������kffCP��&ff?E���G��w  C#��                                    Bw�ݘ  �          @�(��S33�   ���H�]�\C<�\�S33?˅��33�M�
C\)                                    Bw��>  �          @�(��P�׿(����
=�UG�C?���P��?��
���\�L�C�\                                    Bw���  �          @�{��=q�W
=�_\)��HC?����=q?5�`���!ffC*�                                    Bw�	�  �          @�{��  �
=q�|���1ffC;����  ?�
=�s�
�)�C#��                                    Bw�0  �          @�G��W
=>B�\�mp��?ffC0�W
=?޸R�Q��#�HC��                                    Bw�&�  �          @�(��S�
��z��y���F=qC8��S�
?���j=q�5�C.                                    Bw�5|  �          @�
=�O\)�B�\���\�Q��CA8R�O\)?�33����K�
C ��                                    Bw�D"  �          @��R�1녿����=q�b�\C@:��1�?������V�C�                                    Bw�R�  �          @����\��  �����w�CN���\?h����G��y�C�                                    Bw�an  �          @�(���(��:�H����HCJ�{��(�?�{���H�HC��                                    Bw�p  �          @�G������.�R�p  �CffClB����ÿ^�R���B�CMh�                                    Bw�~�  �          @�G���(���33�����v(�C_�f��(�>\����C'aH                                    Bw�`  �          @��ÿ�  ���\��{aHCa\)��  ?\(������qC��                                    Bw�  �          @��ÿ�{�B�\��ff\)CM8R��{?�
=�����\C
^�                                    Bw᪬  �          @��
��
�u��(���C5�)��
?�
=���R�`ffC�{                                    Bw�R  �          @�����>8Q���\)�C/G���@�}p��R�HCL�                                    Bw���  �          @�z�Q�>�Q������C��Q�@Q�����k=qB�=q                                    Bw�֞  �          @�p���
==L����(�ǮC2Q��
=@  ����j�B�L�                                    Bw��D  �          @����^�R?0��������C� �^�R@C�
����b{B�Ǯ                                    Bw���  �          @�z�8Q�?^�R�ȣ��\CO\�8Q�@_\)�����_�RB�(�                                    Bw��  �          @�p�?�Q�?У�����qBW{?�Q�@~�R��G��>�B���                                    Bw�6  �          @��?�33?�\)���
L�Bj{?�33@��
��  �3\)B��f                                    Bw��  �          @��@g
=@G����\�2�A�=q@g
=@e�333���B3�                                    Bw�.�  �          @��R@��?��'
=����A�=q@��@(�ÿ�\)��z�A�
=                                    Bw�=(  �          @��@�p�?�{�>{��G�Aw�@�p�@!G�������Aأ�                                    Bw�K�  �          @�G�@�z�?�=q�i����HAQ�@�z�@#�
�3�
���A�\)                                    Bw�Zt  �          @�(�@�G�?���-p����Ahz�@�G�@
=��\)���\A�z�                                    Bw�i  �          @��H@�
=?�Q��z���=qA�G�@�
=@�Ϳ�p��LQ�A���                                    Bw�w�  �          @�
=@��?��R���
���HA_
=@��?�녿���3�
A�(�                                    Bw�f  �          @���@�(�?��
�
=q���A��\@�(�?�{>8Q�?�33A�p�                                    Bw�  �          @��R@��R?��R���H���A�p�@��R?�ff>W
=@�
A��H                                    Bw⣲  �          @��@�ff?�녾���.�RAn�H@�ff?�{>\@�Q�Aj=q                                    Bw�X  �          @�{@�?�ff?h��A33Ab{@�?E�?��An=qA\)                                    Bw���  �          @�\)@�Q�?��?��A/\)A���@�Q�?��R?�G�A�z�A]p�                                    Bw�Ϥ  �          @��
@��
@#33?�  A,Q�A��@��
?���@G�A���A�ff                                    Bw��J  �          @��@�
=@{?�=qA�G�A��@�
=?��
@ ��A߮A�
=                                    Bw���  �          @���@]p�@�H@1G�B33B�@]p�?s33@c�
B3�Av=q                                    Bw���  �          @�\)@u@�R@G�A��HBQ�@u?�=q@:=qBQ�A��H                                    Bw�
<  �          @�{@i��@>�R?���AzffB��@i��@@   A�A�                                    Bw��  �          @�ff@c�
@(��@�A�{BG�@c�
?�
=@Dz�Bz�A�\)                                    Bw�'�  �          @��?�
=@|(�@#33A�=qB��H?�
=@��@�G�BX  B\G�                                    Bw�6.  �          @�(�?��R@�(�?���A��B�\)?��R@Q�@O\)B(�B�\                                    Bw�D�  �          @��@\)@k�?�(�A��B_�@\)@!�@J�HB'
=B5�
                                    Bw�Sz  �          @�=q@s�
?�  @33A��Ař�@s�
?��@5B�A�R                                    Bw�b   �          @��\@�(�?�
=@z�A���A�ff@�(�>�Q�@\)A�@�p�                                    Bw�p�  �          @�@n{?���@��A��
A�G�@n{?333@/\)Bp�A*�R                                    Bw�l  �          @�Q�@8��@6ff?�A�
=B2ff@8��?�p�@:�HB#��A�33                                    Bw�  �          @��@p�@=p�@A�  BIG�@p�?�(�@L(�B;=qB                                    Bw㜸  �          @�  @Dz�@5?�\)A��B+G�@Dz�?���@.{B33A�p�                                    Bw�^  �          @�=q@7�@-p�?У�A�G�B-��@7�?ٙ�@*�HB��A���                                    Bw�  �          @�@)��@$z�?�z�A�z�B0�R@)��?���@7
=B-��A��                                    Bw�Ȫ  �          @�33@0��@.�R?�(�A�33B2@0��?�ff@>�RB-33A�\)                                    Bw��P  �          @���@.�R@�@�A�z�B'  @.�R?�G�@:=qB0=qAƸR                                    Bw���  �          @�  @�@@��?�33A�Q�BSQ�@�?�=q@C33B9  B��                                    Bw���  �          @�  @8Q�@�
?��RA���BG�@8Q�?p��@,��B'{A��H                                    Bw�B  �          @�
=@P��?�p�������A�(�@P��@ �׿���z�B(�                                    Bw��  �          @�ff@)��@^{?�z�A���BR\)@)��@@C33B#  B%�                                    Bw� �  �          @�z�@AG�@U�?���AU�B?Q�@AG�@\)@p�B �\B�                                    Bw�/4  �          @�=q@?\)@U>���@uB@��@?\)@5?��
A�z�B.(�                                    Bw�=�  �          @�  @*�H@6ff?�ffAqB;�R@*�H@z�@�RB�HB{                                    Bw�L�  �          @�G�@W
=@G����R��  B�@W
=@%����
���B=q                                    Bw�[&  �          @��@HQ�@�>B�\@0��B�R@HQ�?��R?�p�A�(�B�                                    Bw�i�  �          @�  ?\@[�@p�B{B�=q?\?�Q�@p��Bb��BO                                    Bw�xr  �          @�{>k�@Z=q@3�
Bp�B�\)>k�?�\@���B��=B�L�                                    Bw�  �          @��H>\)@r�\?�AϮB��
>\)@!�@W
=BS��B�Ǯ                                    Bw䕾  �          @�p��aG�@l��?˅A�
=B��f�aG�@$z�@FffBB�
B���                                    Bw�d  �          @��\@\)@B�\>�@�p�BVQ�@\)@\)?��A���B@G�                                    Bw�
  �          @x��@P��@�\>\@�p�B G�@P��?��?��\A��A�                                      Bw���  �          @xQ�@Mp�?���?8Q�A.ffA��\@Mp�?�z�?��A�\)A�\)                                    Bw��V  �          @���@n{?s33?�=qAz=qAe��@n{>�Q�?��A�\)@�ff                                    Bw���  �          @{�@l��?n{?W
=AE�Aa@l��>�G�?�A�p�@��H                                    Bw���  �          @�=q@n�R>u?ǮA��@hQ�@n�R��\?�  A���C�%                                    Bw��H  �          @���@U>W
=@ffB{@g�@U�c�
@�B  C��\                                    Bw�
�  �          @���@<(�?�@"�\B!=qA!�@<(��333@\)B��C�Q�                                    Bw��  �          @fff@p�?��?�z�B p�B�@p�?5@!G�B2
=A�33                                    Bw�(:  �          @n{@ ��?��@z�B�B�@ ��?#�
@*=qB733Ad��                                    Bw�6�  �          @p  @333?�\)@33B��A�33@333>�=q@p�B$��@��\                                    Bw�E�  �          @q�@4z�?��@(�B�\A��@4z�#�
@��B#��C��                                     Bw�T,  �          @c33?�
=@,��?�=qA�33BhQ�?�
=?�@(��B@�B3                                      Bw�b�  �          @dz�?W
=@P  ?�Q�A�B���?W
=@@#33B7=qB�ff                                    Bw�qx  �          @r�\@N�R���?�G�A�C��R@N�R����?��
A��C���                                    Bw�  �          @e�@C33���?��A���C���@C33��\?��AG�C��R                                    Bw��  �          @g�@:�H�Ǯ?��RA�z�C���@:�H��?��A��C�H�                                    Bw�j  �          @Y��@333�Ǯ?��A�z�C�l�@333���>u@�(�C��q                                    Bw�  �          @Vff@-p���
=?z�HA���C��@-p���Q�=�Q�?���C�,�                                    Bw庶  �          @[�@0  ��\)?L��AXz�C��@0  �녾#�
�)��C��\                                    Bw��\  �          @[�@/\)��{?O\)A\(�C���@/\)�G��\)�(�C���                                    Bw��  �          @N�R@.�R��>�  @���C�AH@.�R���Ϳ����\C��3                                    Bw��  �          @Q�@1G���Q�>�ff@�\)C�U�@1G��ٙ��\��ffC�33                                    Bw��N  �          @N�R@(�ÿ�
=?8Q�AN�RC���@(�ÿ��þ���&ffC��)                                    Bw��  �          @aG�@8Q��z�?(��A-��C�AH@8Q��   ������{C��                                    Bw��  �          @g�@I����z�?(�A\)C��@I����G��u�qG�C�k�                                    Bw�!@  �          @j�H@R�\��  ?�  A|��C���@R�\����>���@�p�C�=q                                    Bw�/�  �          @g
=@O\)���\?���A��C�@ @O\)���H?
=A��C���                                    Bw�>�  �          @h��@W��G�?�33A���C�s3@W���p�?&ffA$  C��R                                    Bw�M2  �          @a�@S�
�(�?�ffA��
C�� @S�
���
?#�
A&=qC�Y�                                    Bw�[�  �          @`  @[���  ?\)A��C��@[����H>\@�  C���                                    Bw�j~  �          @aG�@^{�#�
>�@��HC��{@^{��Q�>�{@��C�3                                    Bw�y$  �          @l��@h�ÿ��>�=q@�{C��{@h�ÿ(����
���RC�9�                                    Bw��  �          @^�R@;�>�  ?��A��@�z�@;����?ǮA�33C��
                                    Bw�p  �          @]p�@(Q�>�  @��B�
@�p�@(Q�O\)@�
B��C�o\                                    Bw�  �          @\��@ ��?J=q@�RB!(�A�  @ �׾�33@B*�C�                                    Bw泼  �          @`��@+�?!G�@��B�AU�@+���ff@(�B�\C�<)                                    Bw��b  �          @Y��@,(�?��@   B(�A8(�@,(���@G�B
=C�,�                                    Bw��  �          @hQ�@5?�R@�B�AD��@5��@
�HB�C�q�                                    Bw�߮  �          @dz�@'
=?�  @(�BG�A�33@'
=���@��B*33C�Q�                                    Bw��T  �          @dz�@&ff?��@	��B��A�Q�@&ff�#�
@(�B,�
C��=                                    Bw���  �          @Y��@"�\?�p�?�\)B{AΣ�@"�\>L��@�RB$�@�Q�                                    Bw��  �          @c33@&ff?n{@��B�A�G�@&ff�B�\@z�B&�C��                                     Bw�F  �          @Z=q@ ��?aG�@
=BA��@ �׾k�@�B(�C�h�                                    Bw�(�  �          @fff@-p�?�R@�\B��AO�@-p���@�
B�
C�j=                                    Bw�7�  �          @k�@8Q�>�@�RBp�A�@8Q�!G�@(�Bp�C���                                    Bw�F8  �          @k�@3�
=���@33B  @�@3�
��  @z�B{C�5�                                    Bw�T�  �          @k�@(�þ�33@!�B-��C�@ @(�ÿ�  @�
Bz�C�(�                                    Bw�c�  �          @_\)@Q�8Q�@��B6��C���@Q쿨��@z�B�
C�}q                                    Bw�r*  �          @8��@��  ?�=qB#�C���@���?��RB  C�1�                                    Bw��  �          @5�@	����  ?���B�RC���@	���xQ�?�G�A��C��f                                    Bw�v  �          @333@�<�?��RB ��?0��@��.{?���A��
C��3                                    Bw�  �          @1G�@33��?\B�\C���@33�@  ?���A�RC��R                                    Bw��  �          @.{@녾�{?޸RB C�J=@녿�\)?�\)A�(�C��H                                    Bw�h  �          @0��@
=q>B�\?�z�B�@�z�@
=q��R?�ffB
�
C��3                                    Bw��  �          @-p�@G���?޸RB =qC��)@G���p�?��A�  C�J=                                    Bw�ش  �          @(��@Q��?�{A�\)C�u�@Q�#�
?h��A�ffC�w
                                    Bw��Z  �          @%�@   �#�
?�\A7\)C���@   ��\)>�(�A�C��R                                    Bw��   �          @&ff@%��#�
���
���HC���@%�    ��Q��
=<��
                                    Bw��  �          @*=q@$zἣ�
���:=qC��f@$z�>u����&�\@��                                    Bw�L  �          @(��@#�
>�{��(���@��
@#�
?   �W
=��33A2�\                                    Bw�!�  �          @�R@ff>�=q�#�
�r�R@�
=@ff?
=q��G��#�AO�                                    Bw�0�  �          @��@�>k����6{@��@�>�G����R��G�A&�R                                    Bw�?>  �          @+�@(Q�=��
>��@J=q?�@(Q�    >#�
@e�C���                                    Bw�M�  �          @\)@(���33�8Q���C��
@(��aG����
����C�u�                                    Bw�\�  �          @&ff@(���
=�+��qG�C�&f@(��L�ͿJ=q����C�w
                                    Bw�k0  �          @$z�@ff�W
=��z����C�R@ff>��H�����z�AQ                                    Bw�y�  �          @&ff?�녾�p���(��F(�C���?��?�R��z��=�RA��
                                    Bw�|  �          @'�?��Ϳ.{��=q�:
=C�h�?���>�\)��Q��H{A�
                                    Bw�"  �          @'
=@
�H�.{���H���C�G�@
�H���
����ffC�˅                                    Bw��  �          @!�@
=q�xQ�c�
����C��@
=q��
=��  ��ffC�~�                                    Bw�n  �          @#�
@
=q�Tzῇ���{C�� @
=q�aG�������
=C��                                    Bw��  �          @#�
@ff�p�׿�{���
C��@ff��z῵���C�{                                    Bw�Ѻ  �          @,(�@��u�Q����HC��@���ff��
=�ѮC���                                    Bw��`  �          @2�\@�
���׿
=�D��C��R@�
�k���
=�ʸRC��                                    Bw��  �          @7
=@{���������p�C��3@{��z��p��{C�U�                                    Bw���  �          @Dz�@{��G��33�(�C�c�@{?���   �$ffAt                                      Bw�R  �          @:�H@�R=L�Ϳ��Q�?��H@�R?k��Ǯ���A���                                    Bw��  �          @5�@&ff�������\��Q�C���@&ff>k�������
@��                                    Bw�)�  �          @>{@1녾8Q�Q���
=C�q@1�>u�O\)����@��                                    Bw�8D  �          @\)?�\)��G��aG���\)C���?�\)�G��.{��p�C��R                                    Bw�F�  �          @��@zᾔz῜(���ffC��@z�>�{���H��G�A                                    Bw�U�  �          @'
=?���?#�
��33�	(�A��R?���?��R�h������Bff                                    Bw�d6  �          @,��@�
>u�ٙ���@ָR@�
?����\)��{A�{                                    Bw�r�  �          @5@��>k���Q�����@�@��?fff��33��A���                                    Bw遂  �          @;�@z��ff��
=�)  C��3@z�?
=q��z��&��Ai�                                    Bw�(  �          @3�
@	���L�Ϳ�ff���C��{@	��=u��  �Q�?Ǯ                                    Bw��  �          @:�H?�Q�� �׿����ffC�f?�Q쿙����(��.��C�N                                    Bw�t  �          @C33?����%��\��
=C��=?����z�˅���C���                                    Bw�  �          @Dz�?����(��fff���
C�c�?��ÿ�Q��(��"  C�l�                                    Bw���  �          @^{?�{�2�\�������C�H?�{�����=q�1C���                                    Bw��f  �          @Fff?�ff�1�=�@ffC�Y�?�ff�\)��  ��Q�C�q�                                    Bw��  �          @l��?�
=�?\)������  C���?�
=����H�(z�C�}q                                    Bw���  �          @e?�=q�>{�
=�{C��
?�=q�33���H���C�>�                                    Bw�X  �          @i��?����H�ÿc�
�b{C�w
?�����
��
��\C�Q�                                    Bw��  �          @|��?�  �g���33���
C�� ?�  �&ff�1G��3(�C��                                    Bw�"�  �          @|(�?˅�`  ����(�C�7
?˅�B�\��p���Q�C��                                    Bw�1J  �          @j�H>8Q��R�\������33C���>8Q���@  �\33C��f                                    Bw�?�  �          @s33���
�]p����H���
C�` ���
��
�=p��O(�C�{                                    Bw�N�  �          @|��?k��j=q�Tz��E��C��?k��2�\� ���"
=C�q                                    Bw�]<  �          @�Q�?E���(����H����C�C�?E��W�����Q�C�n                                    Bw�k�  �          @�Q�?�ff���
=���?���C�'�?�ff�h�ÿ���\)C��                                    Bw�z�  �          @�
=?��
�~�R>.{@Q�C���?��
�c�
��ff��G�C��                                    Bw�.  �          @�=q?��
���H��z��l(�C�:�?��
�h���Q���
=C��3                                    Bw��  �          @��R?(�������p���9p�C��?(���`���C33�"�C�N                                    Bw�z  �          @��R>���p������33C��>��J�H�XQ��9��C�U�                                    Bw�   �          @���?�R�������\�x(�C��q?�R�U�U�2  C�<)                                    Bw���  �          @�\)?�����\)�xQ��=p�C�3?����[��B�\� Q�C�q                                    Bw��l  �          @��?������������]G�C���?����Mp��Dz��'\)C�7
                                    Bw��  �          @�G�?����
=�fff�:�RC�Ff?���N�R�6ff��C�XR                                    Bw��  �          @�(�?=p�����33��p�C�&f?=p��!��q��\\)C�                                      Bw��^  �          @�?Tz���Q��33��z�C��?Tz��9���a��E��C��q                                    Bw�  �          @�
=?����G�������\C���?���8Q��G��(C���                                    Bw��  
-          @�ff?��p���Q���Q�C��H?���R�l���P�RC���                                    Bw�*P  �          @�ff?k��y��������C��H?k��{��Q��lp�C�B�                                    Bw�8�  �          @�\)����j=q�9���(�C�˅��녿�G����\�RC�k�                                    Bw�G�  �          @�\)���Z=q�N{�,p�C�.�������\)�C{�                                     Bw�VB  �          @�(����8Q��c33�J(�C��3���B�\��Q��HCkG�                                    Bw�d�  �          @�  ��p��Vff�(Q��ffCy�H��p��У��|(��z�Ch�                                    Bw�s�  �          @��\�
�H�{�0���&�RCa�q�
�H�z��`  �ez�CB�H                                    Bw�4  �          @�  ?��H�mp��������\C���?��H�#33�A��7\)C�ٚ                                    Bw��  �          @��@ff�U��{�{�C�@ff�
=�'
=�Q�C���                                    Bw럀  �          @�{?��l��>��R@�G�C�=q?��W���ff���C�T{                                    Bw�&  T          @��\?�����  �0���Q�C�U�?����H���$z���C���                                    Bw��  �          @�?�33���
�O\)��C���?�33�Z=q�7
=�=qC�#�                                    Bw��r  �          @��?��H���\�Q�� Q�C���?��H�W��6ff�G�C�}q                                    Bw��  �          @�=q?�(����
�����RC�H�?�(��Fff�XQ��2p�C���                                    Bw��  �          @�G�?����
=������\)C���?���1G��j�H�H
=C��                                    Bw��d  �          @��?���w
=�����ffC���?���G��tz��]Q�C�O\                                    Bw�
  �          @��H?�{�p�������33C�7
?�{��|(��k��C���                                    Bw��              ��O���O���O���O���O���O���O���O���O���O���O�                                  Bw�#V              ��O���O���O���O���O���O���O���O���O���O���O�                                  Bw�1�              ��O���O���O���O���O���O���O���O���O���O���O�                                  Bw�@�              ��O���O���O���O���O���O���O���O���O���O���O�                                  Bw�OH              ��O���O���O���O���O���O���O���O���O���O���O�                                  Bw�]�              ��O���O���O���O���O���O���O���O���O���O���O�                                  Bw�l�  	e          @��?��W
=��� {C�w
?�����h���gz�C�1�                                    Bw�{:  �          @�Q�?���E�33��C��?����ff�a��`ffC���                                    Bw��  �          @���?�33�_\)�ff���C��R?�33���R�b�\�]�
C���                                    Bw옆  �          @�Q�?O\)���\�Ǯ���\C���?O\)�1��XQ��E��C�+�                                    Bw�,  �          @�z�>��H��zῪ=q���
C�\)>��H�<(��Mp��<\)C���                                    Bw��  �          @�p�?0���w
=��{���RC�
?0���#33�S�
�M=qC���                                    Bw��x  �          @��R>���=q�z���=qC�@ >���������kz�C�}q                                    Bw��  �          @��
?8Q������
��{C��?8Q�� ���s33�]�
C��                                    Bw���  �          @�\)?������J=q�%G�C���?���N{�0  �Q�C�f                                    Bw��j  �          @��
?�{��녾u�K�C��{?�{�Z=q�{���C���                                    Bw��  �          @���?�ff��p��z���ffC��?�ff�U�$z��33C��q                                    Bw��  �          @�Q�>������G���p�C��\>��\)�o\)�aG�C���                                    Bw�\  �          @��H?��H����=u?O\)C�O\?��H�c33������(�C�g�                                    Bw�+  �          @��?����~�R?�@��C�Y�?����mp��\��ffC��R                                    Bw�9�  �          @��\?J=q��{��G���z�C�T{?J=q�Z�H�p���C�}q                                    Bw�HN  �          @��
���
��p���(�����C��
���
�AG��HQ��8(�C��f                                    Bw�V�  �          @�=q��Q������(���ffC�����Q��%�p  �\G�C��                                    Bw�e�  �          @�녿�\�AG��333��
Co����\��p��{��u  CV޸                                    Bw�t@  �          @�@{�n{?   @�G�C�l�@{�^�R��z���
=C�J=                                    Bw��  �          @�=q@ff�e>�p�@��RC��)@ff�S�
���H��  C��R                                    Bw푌  �          @�(�@!��a�?�@��
C���@!��U���ff���C���                                    Bw��2  �          @��\@333�e�>��@�(�C��@333�U��\)��G�C���                                    Bw���  �          @��@XQ����?�p�A�Q�C�Ff@XQ��Dz�?�@ӅC��q                                    Bw��~  �          @���@}p���33?�A��RC��@}p���z�?��
AR�HC��                                    Bw��$  �          @�=q@\)��(�?�33A�C���@\)��(�>��H@ȣ�C��                                     Bw���  �          @�=q@��ÿ��R�8Q��33C�h�@��ÿ����fff�6ffC�&f                                    Bw��p  �          @���@\)��\���H����C�xR@\)���
��Q����HC��=                                    Bw��  �          @��@z�H�	��>��R@z=qC���@z�H�G��L���$Q�C�b�                                    Bw��  �          @�ff@k����?   @�\)C�/\@k����G�� ��C���                                    Bw�b  �          @�33@fff�?(�A{C�xR@fff��!G��G�C�}q                                    Bw�$  �          @��@p����
>�p�@���C��\@p�׿�(��333���C�5�                                    Bw�2�  �          @���@hQ��
=q?
=@��C���@hQ��
�H�\)��C��R                                    Bw�AT  �          @�=q@dz���
?@  A z�C��{@dz������H�У�C�0�                                    Bw�O�  �          @�@Tz���?p��AO�C�|)@Tz��\)��{��\)C��R                                    Bw�^�  �          @�=q@`  ��?Q�A/�C���@`  �p������C�s3                                    Bw�mF  �          @��\@]p��Q�?��\AZ=qC��
@]p��%������|(�C��=                                    Bw�{�  �          @��H@Z=q�!�?G�A%C���@Z=q�%�z���  C�j=                                    Bw  �          @��@j�H��?�ffA`z�C�1�@j�H������ffC��                                    Bw�8  �          @��R@g
=��?\(�A4��C�Y�@g
=�\)��(����C��
                                    Bw��  �          @�
=@`���0  >��R@�Q�C��R@`���"�\����b{C��                                    Bw  �          @�  @fff�,(�>L��@#33C���@fff����z��o\)C��3                                    Bw��*  �          @���@b�\�0��>u@E�C�@b�\�!G���z��o
=C�H�                                    Bw���  �          @�
=@hQ��%��{���HC�=q@hQ�����=q��\)C�{                                    Bw��v  �          @�G�@i���+����
��Q�C��@i���
�H������\)C���                                    Bw��  �          @�
=@e�)����Q���=qC���@e����\)��(�C���                                    Bw���  �          @�@hQ��!녾\)����C���@hQ��Q쿰�����C���                                    Bw�h  �          @�ff@h���>{���Ϳ�p�C�aH@h���!녿Ǯ��33C��
                                    Bw�  �          @��@S�
�J�H>�@���C�)@S�
�?\)���k33C���                                    Bw�+�  "          @�G�@\���;��#�
��G�C�Ф@\���"�\���H���\C��                                    Bw�:Z  �          @��\@fff�333��(���z�C��@fff�{��G����HC�.                                    Bw�I   �          @�p�@b�\�  ������RC���@b�\����  ����C��q                                    Bw�W�  �          @��@W
=���
����  C�  @W
=�&ff�p���C��H                                    Bw�fL  �          @��@e�zᾨ����33C�
=@e�У׿����p�C�˅                                    Bw�t�  �          @�z�@qG����Ϳ�����C��H@qG��+��33��G�C���                                   Bw  �          @�G�@y�����ÿ�=q�k
=C��@y���(��˅���C���                                   Bw�>  �          @���@`  ����˅��  C���@`  ����33��ffC��                                    Bw��  �          @|��@_\)�\���
���HC��@_\)?�Ϳ�p�����A�                                    Bw﯊  �          @��\@G
=��\)��Q���
=C�=q@G
=��ff�\)�=qC��                                    Bw�0  �          @�
=@(���7��	������C�P�@(�ÿ�
=�R�\�>Q�C��=                                    Bw���  �          @�Q�@
=�S33��(���p�C���@
=����Vff�?C���                                    Bw��|  �          @�\)@,(��G
=��\��  C�w
@,(���=q�Dz��-p�C��                                    Bw��"  �          @��@E��2�\�ٙ����C��@E���=q�6ff�  C�e                                    Bw���  �          @��@?\)�1녿�\��{C���@?\)����:�H�#��C�`                                     Bw�n  �          @�
=@C�
����
=��z�C�@C�
��z��8Q��%�\C���                                    Bw�  �          @�p�@:�H��=q�7��'(�C��@:�H>���I���<(�@�p�                                    Bw�$�  �          @��@"�\��\)�Fff�7�\C��H@"�\>��`  �W��@<��                                    Bw�3`  �          @��
@��=q�:�H�)=qC���@��&ff�n�R�m  C���                                    Bw�B  �          @�33?�z��-p��Fff�5z�C���?�z�Tz������fC��                                    Bw�P�  �          @��?����@  �1�� ��C��?��Ϳ�p��y����C���                                    Bw�_R  �          @���?�ff�E��)����RC�h�?�ff��\)�u��33C��)                                    Bw�m�  �          @�{?�
=�9���0���%�\C�3?�
=��z��u�W
C��=                                    Bw�|�  �          @���?��\�B�\�p��{C�O\?��\��
=�h���yffC��                                    Bw��D  �          @~�R>�=q�  �3�
�LffC�w
>�=q���c�
�HC��R                                    Bw��  �          @n{�Q�>�z��.�R�B��C-!H�Q�?�����R�z�C+�                                    Bw�  �          @tz��=q>.{�Vff�u�C.� ��=q?�ff�5��?33Cp�                                    Bw�6  �          @����\����a��o
=C;:���\?\�L���M��C^�                                    Bw���  �          @��� �׿5�Z�H�h{CGs3� ��?����Tz��^=qC                                    Bw�Ԃ  �          @�p��1녿�R�h���O�
C@���1�?�  �^{�B��C�                                    Bw��(  �          @�p��'
=����w��RQ�CP��'
=?333����a(�C%�                                    Bw���  �          @��
�G������H�UffC]���G�>������}ffC-�=                                    Bw� t  �          @�����\�   �qG��?�Cc����\���
��Q��{\)C;�                                    Bw�  �          @�
=�fff��=q�@���  CK���fff=�G��Y���-�C233                                    Bw��  �          @�z��J=q�\)�?\)��CW@ �J=q����mp��DC<xR                                    Bw�,f  �          @�p��'
=�*=q�L���"�Ca�\�'
=�=p����H�b
=CC�                                    Bw�;  �          @��H�!��2�\�B�\���Cc�\�!녿n{�����`�CH33                                    Bw�I�  �          @�33���o\)��z���\)Cn
=����
�`  �;Q�C`                                    Bw�XX  �          @�=q�'��xQ쿑��ZffCk���'��3�
�9���
=Cc
                                    Bw�f�  �          @����   �u��
=��\)Cl���   �HQ��  ���HCgu�                                    Bw�u�  �          @��R��R�u��
=��Q�Co����R�(���HQ��(�\Ce                                    Bw�J  �          @�z�\�}p���{��\)Cy  �\�!��dz��Iz�Co�                                    Bw��  �          @���:�H���Ϳ�ff���RC�׿:�H�.�R�g
=�O�C
=                                    Bw�  �          @��\����\)���\����Cw�R����6ff�Dz��,  Cp.                                    Bw�<  �          @�녿��������s33�@z�Cu}q�����C�
�4z����Cn��                                    Bw��  �          @�{���R���ÿ����e��Cy�R���R�>{�<(��%�Cs^�                                    Bw�͈  �          @�(���(���녿�{�k�
C}LͿ�(��?\)�>{�*Q�Cw�{                                    Bw��.  �          @��R�����vff����dz�Cz�׿����5�333�&\)Ct��                                    Bw���  �          @��ÿ�Q��w�������C|�3��Q��,(��G
=�:�\Cv.                                    Bw��z  �          @��Ϳs33�qG����H��33C�
�s33�#�
�HQ��C=qCy�f                                    Bw�   �          @��H��ff��(��J=q�(��C��ff�Mp��.{�\)C{��                                    Bw��  �          @��H�xQ����z����C�t{�xQ��W
=�#�
��C}�)                                    Bw�%l  �          @�p��B�\��\)�xQ��L(�C��׿B�\�Mp��;��&(�C�P�                                    Bw�4  �          @�=q�L����z�p���Hz�C�� �L���I���5�$�
C��                                    Bw�B�  �          @�������p��aG��=�C��q���Mp��3�
�#C��\                                    Bw�Q^  �          @���z���녿L���(��C����z��W
=�3�
�33C��                                     Bw�`  �          @��׾�z���G��������C�R��z��E�Q��:Q�C�Y�                                    Bw�n�  �          @�G����
��
=������C�zὣ�
�7��aG��Kz�C�<)                                    Bw�}P  �          @�(���33����G��~=qC���33�P  �QG��4=qC��3                                    Bw��  �          @�
=��z���z�:�H�{C�)��z��^{�1��Q�C��)                                    Bw�  �          @��Ϳ��\���׾���W�C�E���\�e��
���
C~#�                                    Bw�B  �          @�G��(�����#�
���C��H�(��g��p���z�C�0�                                    Bw��  �          @�\)�������B�\�!�C��H����b�\�(���p�C�+�                                    Bw�Ǝ  �          @��ÿs33��z�u�N{C��=�s33�`  ��R���HC~��                                    Bw��4  �          @�p��(���33������ffC����(��g
=�{�\)C�,�                                    Bw���  �          @����(���
=�
=��C�
�(��g
=�,(��=qC�/\                                    