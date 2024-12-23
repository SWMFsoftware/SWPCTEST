CDF  �   
      time          *   Conventions       ACDD-1.3, Spase v2.2.3     title         /DSCOVR Magnetometer Level 2 One Minute Averages    id        Doe_m1m_dscovr_s20170908000000_e20170908235959_p20170909023240_pub.nc   naming_authority      gov.noaa.swpc      program       DSCOVR     summary       }Interplanetary magnetic field observations collected from magnetometer on DSCOVR satellite - 1-minute average of Level 1 data      keywords      _NumericalData.ObservedRegion.Heliosphere.NearEarth, NumericalData.MeasurementType.MagneticField    keywords_vocabulary       Spase v2.2.2   
references        �; DSCOVR TIME SERIES DATA AVERAGES ALGORITHM THEORETICAL BASIS DOCUMENT, v2.4; GSE TO GSM COORDINATE TRANSFORMATION ALGORITHM THEORETICAL BASIS DOCUMENT v2.1      metadata_link         �http://www.ngdc.noaa.gov/docucomp/page?xml=NOAA/NESDIS/NGDC/STP/Space_Weather/iso/xml/satellite-systems_dscovr.xml&view=getDataView&header=none    license       Spase.Access Rights.Open   institution       NOAA   source        DSCOVR Magnetometer Level 1    platform      'Deep Space Climate Observatory (DSCOVR)    
instrument        +boom-mounted triaxial fluxgate magnetometer    history       ,DSCOVR real-time telemetry processing system   	algorithm         FDSCOVR MAGNETOMETER LEVEL 1B DATA ALGORITHM THEORETICAL BASIS DOCUMENT     algorithmVersion      B      algorithmDate         
2015-10-15     processing_level      Level 2    processing_level_description      11-minute average using Hodges-Lehmann M-estimator      date_created      2017-09-09T02:32:40.938Z   date_calibration_data_updated         2017-08-18T00:00:00.000Z   time_coverage_duration        P01D   time_coverage_start       2017-09-08T00:00:00.000Z   time_coverage_end         2017-09-08T23:59:59.000Z   time_coverage_resolution      PT1M   creator_name      Doug Biesecker     creator_type      person     creator_institution       DOC/NOAA/NWS/NCEP/SWPC     creator_email         doug.biesecker@noaa.gov    creator_url       http://www.swpc.noaa.gov/      publisher_name         National Geophysical Data Center   publisher_type        institution    publisher_institution         DOC/NOAA/NESDIS/NGDC   publisher_email       william.rowland@noaa.gov   publisher_url          http://www.ngdc.noaa.gov/dscovr/   records_maximum         �   records_present         �   records_data        �   records_fill             records_missing                    time                description       "date and time for each observation     
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
short_name        overall_quality    C_format      %d     units         n/a    lin_log       TSpase.NumericalData.Parameter.Structure.Element.RenderingHints.ScaleType.LinearScale        7lBu���  �          A�33A  A�p��5���Q�Bz�HA  Ak�
�s�
�$�
Bg��                                    Bu��f  �          A��@��RA�
=�,Q����B�@��RAx���n{�!�B{��                                    Bu��  �          A�z�A�A�{�����
B���A�A}���b=q��BzQ�                                    Bu�쿲  �          A��\A{A�\)�Q���ffBtG�A{Aj�\�V{�Q�Bb�
                                    Bu���X  �          A���A�A����  ��BsffA�ApQ��J�H�
=BcQ�                                    Bu����  �          A�{A"=qA�����H�ŅBqz�A"=qAqG��Vff���B`G�                                    Bu���  �          A��RA,z�A�(��E��  Bh�A,z�A]G����H�*Q�BPG�                                    Bu���J  �          A�p�A*ffA�z���\���Bv��A*ffA���N{���Bi(�                                    Bu���  �          A��HA,��A�
=�lz���BbQ�A,��AF{��{�@
=BC�                                    Bu���  �          A�{A�
AS�����B{BS��A�
A�����jp�B�                                    Bu��&<  �          A�\)A(  A`����  �7  BT��A(  Ap����R�`
=B&��                                    Bu��4�  �          A�A*�HA~�R��=q�!\)B`��A*�HA8�����H�M
=B={                                    Bu��C�  �          A�p�A�HAmp������0�
B`�HA�HA#�
��G��\=qB7��                                    Bu��R.  �          AǅA\)ADQ������O��BWffA\)@�Q���  �x=qB{                                    Bu��`�  �          A���A�R@������
�qBp�A�R?p���˙�.@�z�                                    Bu��oz  �          A�ffA�@ڏ\��  k�BA�?=p���\)k�@���                                    Bu��~   �          A�  A��A�������x�HB.p�A��@.�R��(���A���                                    Bu���  �          AԸR@�=q@�G���Q�B"��@�=q>����  �?�
=                                    Bu��l  �          AΣ�@��@����ffffBp�@�녿�Q�����3C�]q                                    Bu���  �          A�(�@�33@�
=��G���B�@�33��G���p��HC�|)                                    Bu����  �          AՅ@�ff@����G�8RB\)@�ff����p��C�C�                                    Bu���^  �          A�(�@陚?�R��33=q@�33@陚�������G�C�'�                                    Bu���  �          A���A (�?����
�HA!p�A (���������fC�^�                                    Bu���  �          A�p�A
ff@;����z�A��A
ff�6ff����C��q                                    Bu���P  �          A�{@޸R@=q���
(�A��H@޸R�n�R�Ə\�RC��f                                    Bu���  �          A�G�@��
@Q��ͅL�A�p�@��
�|(���  �HC�u�                                    Bu���  �          A��@�=q?\(���
=��@�{@�=q��p����RW
C��R                                    Bu��B  �          A�AQ�@��H��=q��Aң�AQ쿔z������=C�n                                    Bu��-�  �          A�z�@���W
=�¸RW
C�Y�@���33��=qC��                                    Bu��<�  �          Aƣ�@!�������W
C���@!��V�H�����a�C�U�                                    Bu��K4  �          A�ff@{�6�\����wz�C��H@{��
=��Q��?�\C��)                                    Bu��Y�  �          A�(�@p���z���z��C��f@p���hz�����b�C�AH                                    Bu��h�  �          A�33@w
=����(�C�t{@w
=�]������j�
C��                                    Bu��w&  �          A�@l���p���
=(�C���@l���g
=��Q��dffC�/\                                    Bu���  �          A�p�@Y�����θR\C��@Y���i�����c��C���                                    Bu��r  �          A���@P  �\)���H.C��{@P  �o�
�����_p�C��                                    Bu��  �          A�33@>�R�ff����{C�AH@>�R�n�\��{�_�
C��f                                    Bu�  �          A�{@7��33���H�C�s3@7��t����{�YC�P�                                    Bu���d  �          A�z�@
=q����p�
=C�\)@
=q�w
=��Q��Y�RC��)                                    Bu���
  �          A��@N{�ff��Q��HC��@N{�o
=��{�Zp�C��                                    Bu��ݰ  �          A���@u�p���(���C��)@u�iG����\�Z�HC�`                                     Bu���V  �          A�\)@c33�  ��Q��C��@c33�k
=��ff�YQ�C���                                    Bu����  �          A���@x���Q���{
=C��
@x���f=q�����Y��C��\                                    Bu��	�  h          A�z�@�H@N{���BT�@�H?��
�ff
=A���                                    Bu��H  �          A��
A
�HAQ��H���/G�BA�A
�H@��H�iG��VffB�                                    Bu��&�  �          A��RAp�@����
=�h��A�=qAp�>�  ��=q�v?�(�                                    Bu��5�  �          A�33A*=q@�{��ff�e�\A�\)A*=q?}p���p��w33@�=q                                    Bu��D:  �          A�{@���������G�{C�� @����0�����^ffC���                                    Bu��R�  �          A�z�#�
�ep���
=�Q��C�녽#�
��z��g33���C��                                    Bu��a�  �          A�ff��{�������1�C��R��{��33�?
=���
C�                                      Bu��p,  �          A�z�@#33�G������C�~�@#33�O�
��33�O�C��=                                    Bu��~�  �          A���@�������p�C��
@��+����h�
C�q                                    Bu��x  �          A�
=?��
�\)��  ��C�G�?��
�F�\�q���I�C���                                    Bu��  �          A�{?����"�H����e�HC�?����_
=�Q��,
=C���                                    Bu���  �          A���?�ff�733��G��[��C���?�ff�s��O��!��C���                                    Bu��j  �          A�z�@=q�:ff����X{C��{@=q�v�R�Nff�\)C�o\                                    Bu���  �          A���>�  �C��~�H�Q��C���>�  �}�D���=qC�s3                                    Bu��ֶ  �          A��R@	����{����� C���@	���1�p  �S�
C�y�                                    Bu���\  �          A�?5�\)���
�}�RC�t{?5�B{�]���B��C��=                                    Bu���  �          A�{?z��33����u��C���?z��Mp��Y��:�C�K�                                    Bu���  �          A��
>�z���
��\)�y��C��>�z��W
=�k��>�C��)                                    Bu��N  �          A���Ǯ�1p�����f{C����Ǯ�r�H�`z��*�C�C�                                    Bu���  �          A��Q��>�R��z��XC���Q��|  �O\)���C��                                    Bu��.�  �          A��
@q������{�}p�C��@q��a����E  C�|)                                    Bu��=@  �          A�Q�@�����\)(�C�
@���o�����JQ�C��                                    Bu��K�  �          A�z�@��������L�C���@���m��(��JQ�C���                                    Bu��Z�  �          A�ff?�(��$�����H�r  C��?�(��j�\�qp��6C��)                                    Bu��i2  �          A�@tz��Ӆ�h���y\)C�@tz��"{�E��C(�C�S3                                    Bu��w�  �          A{�
@�ff����C��N�C��\@�ff�\)�&=q�'Q�C��q                                    Bu���~  �          A��Aff���H�;��>�RC�FfAff��
=�"=q�  C�                                      Bu��$  �          At��@�p��љ��N�H�hz�C��H@�p���R�,���4�\C���                                    Bu���  �          AH��?p����\)�%�b��C��{?p���
=�(��'=qC��                                    Bu��p  >          AJ{����\)�'�
�a(�C����\)����%
=C���                                    Bu���  �          Amp���(��$z��'\)�3�C��3��(��Jff��p�����C��3                                    Bu��ϼ            Al  ���
��
�7��N(�C�+����
�:�\��
�ffC�C�                                    Bu���b  h          A]p��O\)�
�\�+��K�
C�T{�O\)�2�\�p���C���                                    Bu���  T          AM���#�
���!�O�\C�g��#�
�$������C��=                                    Bu����  |          A^�R��
=�Q��)�FffC��=��
=�7���(��	�RC��{                                    Bu��
T  �          Am����
=�$���)��5�HC����
=�K\)����
=C��=                                    Bu���  h          A[��������(z��J33C��f����0Q������
C��)                                    Bu��'�  �          A8�����׮���O=qCz����=q��
=�CO\                                    Bu��6F  �          A+��z���ff����U�Cx�q�z��   ��{��C}ٚ                                    Bu��D�  �          A ���33��{����E
=Cs�H�33���
�����RCyk�                                    Bu��S�  �          A&{��
=������z��>��Ch�H��
=��33�����Cp!H                                    Bu��b8  �          A%��\(���ff��R�R��Cl���\(�����  ���Ctn                                    Bu��p�  �          A!G��S33�Å�����9z�Cq�)�S33��=q������HCw)                                   Bu���  �          A���Q���\)������Cl33��Q�����AG���(�Cp
=                                   Bu��*  h          A�H������H�J=q���Cfn�����G�?�\)@�  Cf@                                     Bu���  h          A=q��\)��R�
=q�K33Cn����\)�33=���?
=Co��                                    Bu��v  ,          A$z������ff�.�R�v�HCtQ�������;�  ���CuL�                                   Bu��  �          A^=q�����=��p����RCt�\�����I녿�=q���Cu��                                   Bu����  �          AZ�H�����A��33����Czp������Nff��Q����C{�\                                    Bu���h  �          AZ�H�����B{��������C{!H�����O���������C|E                                    Bu���  �          AW33�����;�
��\)����Cx������IG���33��
=Cz8R                                    Bu����  h          AY������>�\��\)���Cy�R�����K�
������\)Cz�3                                    Bu��Z  �          AW33����9��(�����CxT{����G�
�Ǯ��{Cy�q                                    Bu��   �          AA������&�H��p���  CxT{�����3�
��Q����HCy�                                     Bu�� �  h          A>�\�\���(z�������RC{ٚ�\���3�
������33C|�                                    Bu��/L  �          A=��G��,���u����C}޸�G��6�H�E��mp�C~��                                    Bu��=�  T          A9��n{�)��7
=�d��Cz�H�n{�/
==�?(�C{@                                     Bu��L�  |          AN�\�����7��u���{Cxu������A��\)� ��Cyu�                                    Bu��[>  �          AO���Q��2=q�\)��p�Ct�R��Q��<�ͿL���a�Cu��                                    Bu��i�  �          AE����ff�(���n�R���RCs�\��ff�2�H�333�QG�Cu�                                    Bu��x�  h          A7�
�������e����Cn�����
=�c�
��
=CpaH                                    Bu��0  h          A%p�������R�8Q���=qCj�������
=q���9��Cl8R                                    Bu���  �          A>{�ə���P  �|Q�Cl�q�ə��"{���z�Cn)                                    Bu��|  |          AA��p����XQ���ffClE��p��"�R����8Q�Cm�                                     Bu��"  h          AJ=q���
�$Q��X���x(�Cm33���
�,�;�(���Q�Cn�                                    Bu����  
�          A<����(���
�C33�o�Cn�H��(��#33�u��z�Cp
=                                    Bu���n  h          A@Q������G��[���z�CnaH�����&=q�z��0��Co�=                                    Bu���  T          A0(����
�z��j=q��Cks3���
�\)��33��G�Cmz�                                    Bu����  �          @�
=�=p���33�33���\Cj+��=p���Q�Tz��(�Cl��                                    Bu���`  �          @��������  ��G�Cg�q�����R�.{����Ci�{                                    Bu��  h          Ap���\)���8����{Cf����\)��
=�k�����Ch�\                                    Bu���            A"�R���H��ff�0  �}�Ch�{���H��\���H�2�\Cjk�                                    Bu��(R  �          A��=q���H���R��G�Ceh���=q����?L��@�33Ce��                                    Bu��6�  z          A8������33?��R@�Cf������{@w
=A��
CdQ�                                    Bu��E�  �          A9p���(��?�
=@��HCf8R��(���H@g�A��Cc�                                    Bu��TD  �          A@����R�  ?�G�@�Q�Ch�\��R�(�@w�A��HCf�\                                    Bu��b�  |          AJ{���
�!?\@��Ci�����
�Q�@���A��Cg��                                    Bu��q�  �          APz���{�$��@�A�Ci:���{�Q�@�{A�=qCfT{                                    Bu��6  �          AI�����33?˅@��Ch�����p�@��HA��Cfk�                                    Bu���  �          AG33���� ��?�@��Cj�{����  @��RA�z�ChE                                    Bu��  �          AF{����R?aG�@��\Cg�\���Q�@eA���Ce��                                    Bu��(  �          AI�����&=q>�p�?�Ck��������@S33At(�Cj��                                    Bu���  �          AD�������$  >8Q�?Q�Cl�������z�@EAh��CkJ=                                    Bu���t  �          AI���Ϯ�-G�>.{?@  Co
=�Ϯ�%G�@P  AnffCm�
                                    Bu���  �          AH  �����,z�L�;k�CoǮ�����%p�@A�Aa�Cn�                                     Bu����  �          AP���׮�2�R>�ff@   Cn���׮�)�@hQ�A�G�Cmz�                                    Bu���f  �          AP  ��\)�3�
>aG�?xQ�Cp\��\)�+33@[�Au��Cn�{                                    Bu��  �          AVff��G��;\)<�>�Cp�{��G��333@X��Aj�\Co�q                                    Bu���  �          AT(������5p�>�Q�?��Co)�����,  @fffA}G�Cm�                                    Bu��!X  �          AW����2{?��@���Cl\���%��@�\)A�ffCj)                                    Bu��/�  �          Ad���Ǯ�J=q��ff����Cs�R�Ǯ�H��@
�HA��Cs��                                    Bu��>�  �          AlQ����F�R�(��(�Cp:����@��@@��AB=qCo��                                    Bu��MJ  �          Am��z��;�?��R@�  Chh��z��,��@��\A��Cf
                                    Bu��[�  �          Aip�����C�?�33@�Q�Cmk�����5�@���A�
=Ck�                                     Bu��j�  �          Ae�����E��?�G�@�G�Cpff����4��@���A�
=Cn.                                    Bu��y<  �          Ar=q���
�E�@q�Ag\)Cm����
�+�@�
=A�  Ci��                                    Bu���  �          Axz�����H��@�z�A�p�Cm�=����+�@��
A�CiQ�                                    Bu����  �          Av=q���R�=��@�  A��
Cl�3���R�G�A33BG�Cg(�                                    Bu���.  �          A}����\�*{AffB	�Cj����\��A:{B=�C`��                                    Bu����  �          A�z���{�'\)A(Q�BG�Cj�{��{���AR{BQ�C^޸                                    Bu���z  �          A��陚�(z�A%G�B�CkE�陚���AO�BP{C_�H                                    Bu���   �          A��\�����-A�RBp�Ck�R�������AG
=BF�
Cau�                                    Bu����  �          A�p���\)�)�A"ffB�HCh�3��\)���HAL��BH�
C]�f                                    Bu���l  �          A�{�   �+�
A'
=B�RCiO\�   ���ARffBK
=C]�
                                    Bu���  �          A�ff��33�(  A*{Bp�Cj���33���
ATQ�BQQ�C^#�                                    Bu���  �          A�  ��Q��(  A-G�B!=qCkW
��Q��ٙ�AW\)BV�C_(�                                    Bu��^  �          A�=q����&=qA'�
B�Ci�������G�AQBP�HC]��                                    Bu��)  �          A�������!��A&�\B�Ci33�������AO33BQp�C\ٚ                                    Bu��7�  �          AiG��ۅ��HA  B�ChxR�ۅ��  A8  BPffC[�q                                    Bu��FP  �          As��ָR�=qA&ffB,33Ch��ָR���AIG�B^CZ�H                                    Bu��T�  �          A<  ������p�A	�B<�Cf޸�����S�
A z�Bl(�CUn                                    Bu��c�  �          A,Q����H��  @�  B!33Cg�����H���HA
{BS��CZ�
                                    Bu��rB  �          A8�����R��  @���B�HCg�����R��G�A�B633C]��                                    Bu����  �          AO��ڏ\��  AB,��C_�{�ڏ\�aG�A&ffBV33COJ=                                    Bu����  �          Ab{��\)��33A��B+�HC_����\)�w
=A4��BUG�COO\                                    Bu���4  �          AU���\��
=A
=B;33CZ�3��\� ��A/�B^ffCG��                                    Bu����  �          A�
=��
=��(�ALQ�BQ\)CZxR��
=���HA`z�Bq�RCBG�                                    Bu����  �          Ay���Q���33AC\)BM��CY���Q��{AV�\Bm
=CAz�                                    Bu���&  �          Ag33���ý���AT��B��C5#�����@|��AK
=Bz33C0�                                    Bu����  �          Al������#33AO\)Bv
=CIB����?��
AQ�B{\)C&޸                                    Bu���r  �          Arff���
�\��AN�HBj=qCM޸���
?+�AU�Bwz�C.��                                    Bu���  �          A�����FffAZ{Be�CH����?�p�A^�RBm�C+h�                                    Bu���  �          A|Q���
��z�A4z�B7�\C[\��
�EAM��B[�\CH�                                    Bu��d  �          Aa��R����A�RB�C`��R��p�A'
=B>G�CS�                                    Bu��"
  |          Ai���p����@��
A�p�Cd�f�p���
=A�B$\)C[�                                    Bu��0�  �          AiG���G��陚A#
=B:p�CeE��G��s33A?33Bi�RCS!H                                    Bu��?V  �          AZ�R������\A��B
=Cg��������p�A'�
BJ��C[8R                                    Bu��M�  �          A�(��p  �r=q�>{�,z�C��p  �t��?�\)@أ�C�!H                                    Bu��\�  �          AyG���
=�f�\�����G�Cy8R��
=�ap�@P  AB{Cx��                                    Bu��kH  �          A�\)����c\)��33��=qC�箿���33�B�\�+�C�=q                                    Bu��y�  �          At  �����b=q��33���HC��
�����q���+��"�\C�
=                                    Bu����  �          Aw���=q�aG�������z�C�Ф��=q�l  >aG�?Y��C��=                                    Bu���:  �          Av{�����n{�7��.ffC�n�����pQ�?�Q�@��HC�p�                                    Bu����  �          A`  ?fff�D����=q��(�C�
?fff�[�
���z�C��                                     Bu����  �          An�H@=q�K33����33C�]q@=q�e�?\)�9C��H                                    Bu���,  �          As�?����B=q��
�(�C��
?����a��\)�|  C�:�                                    Bu����  �          Ax���\)��(��^�RǮCy�R�\)�#\)�4Q��<�C��3                                    Bu���x  �          Av{�=p���z��g�
L�C���=p����C33�SQ�C��{                                    Bu���  �          Ar�R�(���XQ��l  C����(�����
�N�R�j33C���                                    Bu����  �          Ap��>aG��s�
�f=qG�C��f>aG���H�F�H�b��C��                                    Bu��j  �          Ap��?s33�_\)�h��{C��q?s33��{�J�H�g(�C�j=                                    Bu��  �          Amp��5�����&ff�T�C�c׿5�*�R��(��
ffC�R                                    Bu��)�  �          Am�?������Y��HC���?�������8z��WffC���                                    Bu��8\  �          Ap��@'
=�{�i�L�C�J=@'
=��  �P(��p�\C�9�                                    Bu��G  �          AxQ�?��R��G��d����C�8R?��R� ���:�H�C�
C�7
                                    Bu��U�  �          A�  @AG����x���C���@AG��޸R�`���v��C��
                                    Bu��dN  �          A�=q@���8Q��v�HǮC�f@�������f{8RC�H                                    Bu��r�  �          A���@h�ÿL����\)�
C�˅@h����(��xz��C�T{                                    Bu����  �          A�z�@�z����yC�!H@�z������`  �l�C�Ф                                    Bu���@  �          A�ff@�������|z�33C��{@�����{�c��d�C�ff                                    Bu����  �          A��\@�{Az��"ff�#ffBP�@�{@���I�YffBff                                    Bu����  �          A|  @��
Ab�H��33��G�B���@��
AM������B~�                                    Bu���2  �          Aq�@��AU�?Tz�@Mp�B��{@��AM�c33�]�B~
=                                   Bu����  �          Ap��@mp�AQp�@���A\B�\)@mp�Af{?��@�B�{                                    Bu���~  �          Au�@   AO33@�
=A�{B�z�@   Al(�@Dz�A:{B���                                    Bu���$  �          A��@�33A_33@�33A���B���@�33An�H>�?�(�B��{                                    Bu����  �          A��
@�\)A^�R@�Q�A�B�z�@�\)Ao33?#�
@��B�ff                                    Bu��p  �          A��@��RAf{@���A�Q�B�@��RAzff?��H@�
=B��                                    Bu��  �          A���@��RAg\)@���A�
=B�ff@��RAv�H>�{?��HB��R                                    Bu��"�  �          A��@~�RAs�@��
Aj�\B��R@~�RA{�������  B���                                    Bu��1b  �          A~�H@K�AlQ�@���A�{B��3@K�Ax(��\���B���                                    Bu��@  �          A}?�=qAmG�@�p�A�
=B�?�=qA{33�#�
�\)B�Q�                                    Bu��N�  �          A|�׿J=qAr�H@�Av{B�  �J=qA{33����~{B���                                    Bu��]T  �          A~�\�;�Aqp�@e�AQp�B����;�Av�R��33���BɅ                                    Bu��k�  �          A|(�?c�
AS33@��A�Q�B�G�?c�
Ap��@=p�A1�B�8R                                    Bu��z�  �          Az=q@
=AR�\AA�z�B�Ǯ@
=Aq@P  A@z�B��                                   Bu���F  �          A{�
?�=qAXQ�@���A��B��{?�=qAu��@5�A%B�ff                                   Bu����  �          A}p�?�AX��A   A��B��?�Aw33@@  A.�RB��)                                    Bu����  �          Ay��@'�AQp�A ��A���B�aH@'�Ap��@L(�A<��B�=q                                    Bu���8  �          A|��@��AO33A�B(�B�{@��Ar{@w�Ab�RB�
=                                    Bu����  �          A���@���AMA��Bz�B�{@���Aq�@|��Ac33B���                                    Bu��҄  �          A�Q�@�p�AD  A��B  B�k�@�p�Am@�(�A��B���                                    Bu���*  �          A�33@'�AE�A$��B
=B�
=@'�AqG�@���A��RB�Q�                                    Bu����  �          A�z�?���A-�A@  B>{B���?���Ac�
@�(�Aߙ�B�p�                                    Bu���v  �          A�(�?��A*{AIp�BF�RB�?��AdQ�A�A�G�B��)                                    Bu��  �          A�z�?�A-p�AJ=qBC��B�
=?�Ag�
A33A�z�B�                                    Bu���  �          A�@k�AT��AQ�B�RB��@k�Aw�
@mp�AQ�B�L�                                    Bu��*h  �          A���=L��@�  A2�\B\�
B�.=L��A1p�@��HB��B�p�                                    Bu��9  �          Apz���\)��G�ATQ�B|�RCC5���\)@8��AQ�Bv�C��                                    Bu��G�  �          Av�H����A=qA>�RBQ�B��ÿ���AJ�RA ��Bp�B���                                    Bu��VZ  �          A�Q��G�@��Af�RB���Bъ=��G�A333A4  B3(�B���                                    Bu��e   �          A33>�Q�@�\)Af�\B��fB���>�Q�A4Q�A3�B3\)B�ff                                    Bu��s�  �          A|��=�@�z�Aj�\B��fB��\=�A%��A=�BC(�B��                                    Bu���L  �          Az=q�Q�@���Ak
=B���B��H�Q�A�RAAp�BM  B���                                    Bu����  �          A��Ϳ�{@���ApQ�B��3Bܔ{��{A�RAE��BK  B�=q                                    Bu����  �          A~{���\@l��At��B�W
B��Ϳ��\AQ�AP��B_ffB�k�                                    Bu���>  �          A|z����@?\)Ar�HB��C �����A�AS33Be�
B��                                    Bu����  �          Az{�:=q@�{Ak�
B���B�u��:=qA��AEBQ��Bה{                                    Bu��ˊ  �          Az�H��  @�Ao�B��
B�k���  A�AG�BS�B�#�                                    Bu���0  �          Aw�
�n{@���Am��B�(�B̊=�n{A
=AF�RBUffB��\                                    Bu����  �          Av=q�ٙ�@�G�Ah��B�#�B��ٙ�Ap�A@z�BN�HBȏ\                                    Bu���|  �          Amp��c33@_\)AW33B�ffC���c33@�\)A5�BQ�B���                                    Bu��"  �          Ahz�����(�A4z�BM�
C6����@c�
A+\)B?�
CW
                                    Bu���  �          AUG���H���HA
=B/C<�\��H?�\)A�B-��C(�=                                    Bu��#n  �          A&�R�
�H���@'
=An�\CO���
�H�X��@�=qA��HCIT{                                    Bu��2  �          A%p��Q���z�@
=qAB=qCQ��Q��s�
@p  A��CKs3                                    Bu��@�  �          A$���������#�
�aG�CU}q������?�(�A0��CS��                                    Bu��O`  �          A   �p����H�L�Ϳ���CT�H�p����?��HA33CSB�                                    Bu��^  �          AQ����
��33?�
=@��HCRO\���
�xQ�@.�RA�ffCNB�                                    Bu��l�  �          A)���33��\)���Ϳ
=qCV�=�33��(�@�\A2{CT�                                    Bu��{R  �          A%p������ff���=p�CWxR�����  ?У�A�CV�=                                    Bu����  �          A���  ����=���?#�
C].��  ��
=@��Ac�C[�                                    Bu����  �          A0����z����	���333Cc��z���R?Tz�@��\Cc�H                                    Bu���D  �          A5G�����\)�Ǯ��CcW
�����?��R@�33CcaH                                    Bu����  �          A.{���H��z�?�@�C_O\���H��
=@o\)A��C[�\                                    Bu��Đ  �          A+33��\��=q?�p�A,��Cb�3��\�˅@�=qA�G�C]�                                    Bu���6  �          A,����
=� ��@
=AJffCf(���
=���@�33A��C`                                    Bu����  �          A'33��
=����@��HA�  C`����
=���@��HB!(�CU�3                                    Bu����  �          A�H�5@
=qA=qB�G�C�\�5@�
=@�  BNffB�\                                    Bu���(  �          AS�
��z�@1G�AL��B��3B�R��z�@�
=A.�RB_ffB���                                    Bu���  �          Ad  ���\@��ATQ�B�(�B�  ���\A=qA)G�B@�B�ff                                    Bu��t  �          AdQ�aG�@�{AR�HB��B��q�aG�A�A$��B8�B���                                    Bu��+  �          Al  ��@�G�A[�B��B��\��A�HA-��B>{B�.                                    Bu��9�  �          Al  �5@���AZ�HB��{B��H�5A Q�A,(�B;�
B�
=                                    Bu��Hf  �          Aj{�#�
@�\)AT��B�aHB�#׿#�
A&�HA#
=B1(�B���                                    Bu��W  �          AL�ÿ��H@���A.ffBiB�G����HA!�@��B{Bď\                                    Bu��e�  �          AV�R���@љ�A9p�Bp(�B�\���A%p�A{B{B³3                                   Bu��tX  �          Ac��L��@��AO�
B�.B�.�L��A{A ��B6
=B�Q�                                    Bu����  �          Aj�H?J=q@�p�AY��B�(�B�L�?J=qA ��A*ffB:G�B���                                    Bu����  �          Aj�H=�Q�@��RAX  B�(�B��=�Q�A$��A&�HB5��B��                                    Bu���J  �          Ao
=?^�R@�ffAZ{B�aHB�\)?^�RA)�A'\)B2ffB��{                                    Bu����  �          AeG�>\)@��AQB�
=B��>\)A Q�A!B5{B�ff                                    Bu����  �          AV=q�}p�@��
AA�B�p�B��f�}p�A33A�B,p�B���                                    Bu���<  �          AJ�R��p�@���A/
=Bp�RBʣ׿�p�AQ�@��Bp�B�W
                                    Bu����  �          AJ�\��Q�@�{A.{Bo�Bɮ��Q�A��@�G�B�B���                                    Bu���  �          AM�����@��A:�\B��qBˊ=����Ap�AffB0�
B�\)                                    Bu���.  �          AX�ÿ���A{A"=qBL{B�����A5G�@˅A陚B�W
                                    Bu���  �          Al�þL��@�=qAFffBg{B��L��A>=qA	�B{B��                                    Bu��z  �          Ak�
��p�@�AI�BkBʞ���p�A9��AB��B�                                    Bu��$   �          Am��!�A�A733BL��B��
�!�AHz�@���A�\)B��
                                    Bu��2�  �          Al���;�A\)A8��BN{B���;�AF�R@�A�B΀                                     Bu��Al  �          AmG��(�A��A8  BKffB�(��(�AK33@�A�Bɳ3                                    Bu��P  �          Aj�\��{A33A;�BU��B�k���{AG�@��A���B�{                                    Bu��^�  �          Anff?.{@��
AIBgB��?.{A@��A
=B��B��=                                    Bu��m^  �          Ap(�@Q�@�RAJffBg�HB��@Q�A7\)A�B�
B��                                    Bu��|  �          Ak\)@E@��
A=Bo�
B|�
@EA"�RA
=qBz�B�.                                    Bu����  �          A[33��(�@�G�A5Ba�\C
+���(�A�A	p�B{B��                                    Bu���P  �          AhQ��޸R@�p�A:�RB[
=C�)�޸RAz�A��BQ�C5�                                    Bu����  �          Ab=q��{@��A<(�Bd�\C����{A	�A�HB#��B���                                    Bu����  �          ALQ���
=@Mp�A
=B>�
C���
=@ҏ\@�B�
Cs3                                    Bu���B  �          AN�R��\)@Z=qA��B>�
C�H��\)@��@�Q�B\)C��                                    Bu����  �          AO�
���
@���AffBF��C=q���
@�G�@��HB  C\)                                    Bu���  �          AUG�����@��\A Q�BC{CL�����@��
@�p�BC�\                                    Bu���4  �          AaG��ۅ@c�
A<��Bc  C���ۅ@��\A(�B)��C:�                                    Bu����  �          A[�
��  @#33A:ffBh�HCL���  @�33A(�B5�C�
                                    Bu���  �          AYp���ff@33A2�HB]\)C$�)��ff@ƸRA(�B1C.                                    Bu��&  �          AX�����?�  A7\)Bg{C(����@�=qA�B=�HC�                                    Bu��+�  �          AX����  >��A6ffBf
=C0�R��  @���A%p�BG��Cs3                                    Bu��:r  �          Ak\)��z�@P  AW\)B���C}q��z�A�A2{BH=qB�.                                    Bu��I  �          AtQ���(���G�AZffB�.C4����(�@�
=AIB`�HC��                                    Bu��W�  �          An�H�n�R>�G�AeB��C-E�n�R@�  AP��Bv33B�3                                    Bu��fd  �          Ap����ff��Q�Ab�HB�
=C8�\��ff@��RAS
=Bz(�Cz�                                    Bu��u
  �          A`z�?z�@P  AP��B���B�?z�A��A,  BS�B���                                    Bu����  �          Abff@AG�@\��AUp�B��BC=q@AG�AffA.�RBJ��B��                                     Bu���V  �          Ae�?��
?���A`��B�ǮBG��?��
@�{AC\)BkB���                                    Bu����  �          Ah��?�{?���Ae��B�
=BT��?�{@��AG�Bl��B��                                    Bu����  �          Af�H?�\)@7�A`Q�B�8RB�\)?�\)A�\A<  B[�HB�aH                                    Bu���H  T          Ai�?(�?�33Ad��B�B�L�?(�@��AG�
BpffB�B�                                    Bu����  �          AiG�?����G�AeB�33C���?��@���AUB���B���                                    Bu��۔  �          Ah��@"�\?��HAc�
B��A�(�@"�\@�  AIp�Bp�
B���                                    Bu���:  �          AqG�@�?�ffAi�B��B(�@�@�ffAK\)Bi�B���                                    Bu����  �          Ap��@=q�#�
AlQ�B�u�C�w
@=q@��\AY�B�(�B�\                                    Bu���  �          Ap��@(�ÿB�\Aj�HB���C��R@(��@�z�A\Q�B�p�B{Q�                                    Bu��,  �          Ah  @G��#�
A_�B��fC�+�@G�@��AQ�B�� B�.                                    Bu��$�  �          Ai@P  ?8Q�Aa�B��AF�H@P  @�G�AJ�\Bs�Bz�                                    Bu��3x  �          AtQ�@`�׾.{Al  B�=qC��)@`��@�  AYp�B~��Bjz�                                    Bu��B  �          Apz�?�{���Ak�B�u�C�y�?�{@i��Ag�B��)B�L�                                    Bu��P�  �          Ah  ?�{�xQ�A^=qB�C�� ?�{@G�AdQ�B���B`�                                    Bu��_j  �          Aep�?���aG�AT(�B�  C�aH?��@
=AX��B�B�B}33                                    Bu��n  ,          A���@   ?�A�ffB�{A��@   @�\)Aj�HBt(�B�#�                                    Bu��|�  �          A��
@�z�@HQ�A�B��qB{@�z�A��AUBQ��B��\                                    Bu���\  �          A��R@�
=@�ffAxQ�B��)B(�@�
=A!AH  B<ffBr                                      Bu���  �          A�z�@��@{�A|Q�B�
=B�@��A�AM�B@
=Bo=q                                    Bu����  �          A��R@�ff@��Aj�RBg
=B��@�ffA/\)A2�HB ��B_G�                                    Bu���N  �          A��A Q�@��AV�HBJ�
B,��A Q�AE�A�B p�Bc��                                    Bu����  �          A�\)@�G�@��A\Q�BN��B8�
@�G�ALz�A{B=qBm�H                                    Bu��Ԛ  �          A�  A#\)AhQ�@ ��A�B[��A#\)Ad���g��:=qBY�
                                    Bu���@  |          A���A/�AS33@���Axz�BI  A/�A`  ���
�S�
BO�\                                    Bu����  �          A�33A*ffAi@_\)A.�HBW��A*ffAl(��1��
=BX                                    Bu�� �  �          A��A-p�Ab�H@�ffAk�
BR\)A-p�Am�\��
=BW�                                    Bu��2  �          A�  A,��Abff@�ffA�  BRz�A,��As�
�����BZ��                                    Bu���  �          A�33A,  At��@~�RA@(�B[��A,  Ay��)����\)B]��                                   Bu��,~  �          A�A0��Ak33@���A]G�BTQ�A0��At(������BXp�                                   Bu��;$  �          A���A((�Ax(�?�Q�@�p�B_�\A((�AmG����H�n�RBZ                                    Bu��I�  �          A�p�A+
=A�{@"�\@�  Ba{A+
=Az{��G��Lz�B^�                                    Bu��Xp  �          A��A/�Ap  @k�A3\)BW33A/�Ar�H�5�	�BX�                                    Bu��g  �          A��A+\)Ar�H@�ffAn�RB[(�A+\)A}��\��G�B_�H                                    Bu��u�  �          A�(�A,(�As
=@�
=Ao33BZ�RA,(�A~{��\����B_�                                    Bu���b  �          A��A4z�As�@(��@�{BU��A4z�Ao
=�z=q�<��BS                                    Bu���  �          A��A$��A~�H�����G�BdffA$��AX���
�H��{BR��                                    Bu����  �          A�33AA����^{�$��Bn�
AAX(��   ���RBZQ�                                    Bu���T  �          A��AffA33��=q�u�Bn  AffAF{�4(���BS=q                                    Bu����  �          A��RAQ�Ay�����RBj�\AQ�A_���ff���RB_{                                    Bu��͠  �          A�{A
=A=��A{A�B]z�A
=Ab�\@�A
=Bo�                                    Bu���F  �          A�
@�
=@�33AW�Bf�\B?��@�
=A6�\AG�B�\B}�\                                    Bu����  �          Av�R@�@[�A^{B�u�B��@�A
=A2�\BB{B��                                    Bu����  �          Aq������ffA1G�B=ffCg(������#�
AVffB{{CIǮ                                    Bu� 8  �          Al����z���Q�AC�
B`Ck����z�z�HA_
=B�p�C?�f                                    Bu� �  �          AtQ�����
A8  BE�Cl�����'�A^�\B��CMǮ                                    Bu� %�  �          Am��%���=qA\  B���Co&f�%�?��Ad��B�C                                    Bu� 4*  �          AlQ��(����RA]B��{CwG���(�?˅Ah��B�=qC�                                    Bu� B�  �          Ah���K�����AN�RB{Cq#��K�>k�AbffB��\C/Ǯ                                    Bu� Qv  �          Ag\)�s33����AFffBl{CoT{�s33�
=qA_
=B�=qC<
                                    Bu� `  �          Ad���Y����
=AH��Bx\)CoO\�Y��>#�
A\��B�W
C1\)                                    Bu� n�  �          Ah  �|(��Q�A0  BF{Cu33�|(��A�AYp�B���CY��                                    Bu� }h  �          AL(���\���
A1�Buz�Cw޸��\��33AG33B���C<��                                    Bu� �  �          APz�?��>��A'�B��A�Q�?��@���AQ�BuffB���                                    Bu� ��  �          Ad��@�z�AG33?#�
@&ffBw@�z�A8z�������HBpG�                                    Bu� �Z  �          Au��@�(�AV�R����z�Bx{@�(�A5p�������G�Bgff                                    Bu� �   �          Aq@˅AX  ��p���G�B���@˅A5��=q��Bs{                                    Bu� Ʀ  �          Al��@j�HAI���
���B��{@j�HA���6=q�K  B���                                    Bu� �L  �          Afff@0��AA������B�Q�@0��@���<(��[ffB�\                                    Bu� ��  �          AiG�@�\)AO
=������
=B�@�\)AQ��!���/Q�B��=                                    Bu� �  �          Afff@l(�AO������z�B�B�@l(�AQ��"ff�3\)B��                                    Bu�>  �          Ah��@}p�ATz���=q��{B�Ǯ@}p�A   ����)��B���                                    Bu��  �          Aq@�(�A`���u��j=qB�B�@�(�A0(��Q��  B��                                    Bu��  �          Ak\)@N{A_��[��W
=B�{@N{A1�{�=qB��3                                    Bu�-0  T          Ah  @G
=A`�׿��H��  B�\@G
=A<����33���B��                                    Bu�;�  �          Aj�H@���A_���\)�陚B��@���A<z���  ��
=B�\                                    Bu�J|  �          Ah��@�{AX  � ���\)B��@�{A1��{�Q�B�\                                    Bu�Y"  �          Aqp�@��RAg33�������B��@��RAG33��ff��z�B���                                    Bu�g�  �          As
=@���Ad(�������B��@���A>ff�=q�  B�\)                                    Bu�vn  �          Az�H@�Ak�
�%��\)B�@�AB{�  �B���                                    Bu��  �          Al(�@��\A`  ��R�33B��=@��\A9��{��RB�W
                                    Bu���  �          Af�H@��
AW��33�\)B��@��
A3\)����G�B�.                                    Bu��`  �          Ao�@�z�A`�ͿУ���Q�B���@�z�A>�\���
���B�ff                                    Bu��  �          Au�@���Ab�H��\��B�#�@���A=p�� �����HB��                                    Bu���  �          Ar{@��Ab{��(���=qB�L�@��A@��������RB���                                    Bu��R  |          AX��?���33?�RA�C�3?��#�
?5Aԣ�C�+�                                    Bu���  �          Ag�
�����`��@P��APQ�C��ÿ����2�HA{B\)C�G�                                    Bu��  �          Afff����^�\@`  A`��C�Y�����.�HAz�B z�C���                                    Bu��D  �          AX  �)���M�@QG�A`(�C�(��)��� ��A	p�B\)C:�                                   Bu��  �          A(��<#�
�Q�@��HAң�C��<#�
����A�BRp�C��                                   Bu��  �          A�?z��w
=@�  BDffC�=q?zῺ�H@��B�p�C���                                    Bu�&6  �          @XQ�?�z�@(�����+�BO�\?�z�@����H��{B?��                                    Bu�4�  �          @��@���@_\)>���@c33B#�\@���@QG���  �Yp�BQ�                                    Bu�C�  �          @���?�\)@��?��
A'33B��R?�\)@��ÿ����pQ�B��                                    Bu�R(  |          A<�þ\)�?�Bp�C�H��\)���\@+�B�  C��)                                    Bu�`�  �          A`z���\�Zff@!�A&=qC�� ��\�1p�AB33C���                                    Bu�ot  �          AaG����
�Y��@E�AJ�\C��=���
�,��AG�B
=C��
                                    Bu�~  �          A`  ��G��M�@�33A�z�C��׿�G���HA$��B?��C�T{                                    Bu���  �          AM����6�H@�33A�Q�C�T{������RA!�BO�C�%                                    Bu��f  h          APzΐ33�8Q�@��A��HC�(���33���A&ffBUQ�C��                                     Bu��  �          AMp���ff�7
=@���A�p�C�` ��ff���
A$��BT�HC�{                                    Bu���  �          A�
��\)���H@��HB\)C��쿏\)��(�A�HBtp�C�3                                    Bu��X  �          A33>�����
@ۅBO�
C���>���ٙ�A��B�k�C��                                    Bu���  �          A=q?�\)<#�
@��B�z�>8Q�?�\)@N�R@�(�Bq�HB}�                                    Bu��  �          Ab�R@
=AYG�@<(�A@��B�G�@
=AW
=�`���f�HB�{                                    Bu��J  �          A_
=@[�AF{@��A�G�B�\@[�AX�Ϳ#�
�'
=B���                                    Bu��  �          A�
=@XQ�A{33@~{A]�B��q@XQ�A|���dz��G�B��H                                    Bu��  |          A���@n�RA�=q@�Q�A���B�8R@n�RA�=q�:=q��B���                                    Bu�<  �          A��\@�z�Am��@���A��B��
@�z�A~�\���R���B���                                    Bu�-�  �          A~�\@XQ�A?�A�\B{B�z�@XQ�Ar�H@XQ�ADQ�B��H                                    Bu�<�  �          A}p�@qG�AU��@�33A�B�� @qG�Aj�\�&ff�p�B�33                                    Bu�K.  �          A��R?�\)Ak�
@�\)A�33B��{?�\)Ax  ��
���B�G�                                    Bu�Y�  �          A��?��HAw
=?^�R@L(�B�33?��HAb{��������B�33                                    Bu�hz  �          A�@��APz�A  A홚B�W
@��Au?��@�G�B�\)                                    Bu�w   |          A�
=@�  Am�@���A��RB�(�@�  A|�Ϳ��
����B��q                                    Bu���  �          A���A�A^ff@�z�A�\)Boz�A�A}��>�
=?�{B|�                                    Bu��l  �          A���A33A��Aap�B=�
B%�\A33A`��A	��A�B]��                                    Bu��  �          A��\A Q�@�ffAdQ�BA�HB(�A Q�AV=qA=qA�G�BT��                                    Bu���  �          A�  A$z�@�33An=qBJ�B�RA$z�AK33A#
=A��BL
=                                    Bu��^  �          A��
Aff@�(�At(�B`G�A�AffA+
=A:ffB(�BB�R                                    Bu��  �          A�
=A%p�@�\Ak33BD�HBG�A%p�ATz�A�RA���BPQ�                                    Bu�ݪ  �          A��
A.�R@��
A^=qB<p�B A.�RAH  AffA���BC�                                    Bu��P  �          A��A'��:�HAK33BE�RC�5�A'�@Q�AIBC�HA���                                    Bu���  �          A�=q@�Q쿮{A~{B��3C��@�Q�@�z�Ak\)Bb\)B=q                                   Bu�	�  �          A�ffAE�K�AR�\B7z�C���AE@QG�AR{B7
=AmG�                                    Bu�B  �          A�33AE��C�
AZffB<Q�C�fAE�@g�AX(�B9�
A��H                                    Bu�&�  �          A�{A:=q�Mp�AZ�HBBG�C�J=A:=q@`  AY��B@�HA�{                                    Bu�5�  �          A���A=p��mp�AX  B=��C�K�A=p�@?\)AZ�RB@��Ab�\                                    Bu�D4  �          A��A=p��(Q�AY�BA=qC�� A=p�@�Q�ATz�B:�
A�                                    Bu�R�  �          A��AD(��]p�A\(�B<�
C��AD(�@VffA\��B=Q�Atz�                                    Bu�a�  �          A�33A8Q��|(�A\��BB=qC���A8Q�@<��A`��BF�Ae��                                    Bu�p&  �          A�\)A@���\)A_�
B?{C��
A@��@@  Ac�BC�\A_�
                                    Bu�~�  �          A�{A8���ϮA[�
B8G�C�T{A8��?0��Ar�RBR�
@Z=q                                    Bu��r  �          A���@0����(�@s33AD(�C���@0���W�A7
=B��C�˅                                    Bu��  �          A��
@P����ff@c33A9G�C�j=@P���V=qA2{B��C��
                                    Bu���  �          A�\)@���h��Ap�A܏\C��@�����A_�BTQ�C�,�                                    Bu��d  �          A�=q@|�����
@��HA\��C�t{@|���R�RA>�RB#�RC�XR                                    Bu��
  �          A���@�=q��G�@��Af�HC���@�=q�Lz�A?�B#p�C�L�                                    Bu�ְ  �          A��@�{��  @n{A?\)C�O\@�{�T  A4z�B�RC�AH                                    Bu��V  �          A�(�@c�
��
=@EA�C��=@c�
�]�A.�\B33C�1�                                    Bu���  �          A�(�@�p���{@<(�A=qC���@�p��]G�A+�Bp�C�aH                                    Bu��  �          A���@tz���=q?�\)@���C�9�@tz��e��A��BC�q�                                    Bu�H  �          A�33@�\)���R@s33ADQ�C�&f@�\)�M�A3
=B  C���                                    Bu��  �          A�z�@�{��z�@�  A�{C�&f@�{�<z�A@  B)(�C�`                                     Bu�.�  �          A��@θR�t  @�A�G�C�z�@θR�-��A@(�B.33C�b�                                    Bu�=:  �          A�p�@��v�\@�G�A�\)C��@��0��A?�B-�C��
                                    Bu�K�  �          A�33@����up�@��
A���C��3@����-G�AC�B2�C��                                    Bu�Z�  �          A�z�@����o�
@�\)A�33C���@����'\)AB�RB6�C�w
                                    Bu�i,  �          A��H@��
�m@�=qA�(�C�0�@��
�*�\A8��B,C��\                                    Bu�w�  �          A��@����c�
@�33A�{C���@�����
AE�B;z�C��                                     Bu��x  �          A��@ʏ\�_�@���A��C�0�@ʏ\��AO
=BG��C���                                    Bu��  �          A�=q@�ff�]�@�
=A�G�C��@�ff�
=AH  BC�C�]q                                    Bu���  �          A��@#�
�o�
@���A�(�C��R@#�
�,Q�A9�B9�C��\                                    Bu��j  �          A�
?�
=�|Q�?�
=@�Q�C��?�
=�Tz�A	G�B��C��R                                    Bu��  �          A�G�>W
=��
=�=p��(Q�C�]q>W
=�hQ�@�\A��C�g�                                    Bu�϶  �          A���?��R��
>�  ?c�
C�7
?��R�^�\@�z�A뙚C���                                    Bu��\  �          Ay�?���x��?�@C��?���U�@�
=A��C�7
                                    Bu��  �          Ax��?�Q��w33?Tz�@Dz�C�1�?�Q��RffAffA��C��3                                    Bu���  �          Aup�?��t��>��H?�=qC�?��S
=@�G�A�z�C�9�                                    Bu�
N  �          As33=����r�H>��?��C�0�=����S�@�A��C�7
                                    Bu��  �          AmG�=��l��>�Q�?���C�9�=��Lz�@�{A�C�B�                                    Bu�'�  �          Ajff�\�i����ffC�C׾\�P(�@�z�A�=qC�,�                                    Bu�6@  �          Af�H��ff�d��=���>\C�箿�ff�G�@߮A�\C�u�                                    Bu�D�  �          A`�׿�33�^�H>�  ?��\C��H��33�A�@�ffA��C��                                    Bu�S�  �          AZff���H�Y�>#�
?&ffC�����H�=p�@�\)A��C��{                                    Bu�b2  �          AXz�>���X(��\)��C�Q�>���>{@�A�33C�\)                                    Bu�p�  �          AX(�@ff�Tz�?
=@ ��C�H@ff�5G�@޸RA�(�C�ٚ                                    Bu�~  �          AX  @tz��Mp�?˅@�  C�H�@tz��'33@��
B	�\C�
=                                    Bu��$  �          AV�\@����C\)?�\)@�p�C���@����=q@��HB��C��                                    Bu���  �          AW\)@�Q��A�?c�
@r�\C�@�Q��!@�z�A��C���                                    Bu��p  �          AR=q@��\�Fff?��@�\)C��@��\�!G�@�(�B�C��                                    Bu��  �          AO33@����>{?�Q�@��C��{@������@�Q�B�C�H�                                    Bu�ȼ  �          AK\)@����5�@z�HA�C��@���� Q�A\)B3C�ff                                    Bu��b  |          AJ{?333�AG���p���C��?333�8(�@�p�A��HC���                                    Bu��  �          AK
=>#�
�B�H�^{�~{C�` >#�
�E�@;�AU�C�^�                                    Bu���  �          AE��?+��@Q��Q��2�HC��R?+��:ff@s33A�z�C��                                    Bu�T  �          AC�
��z��<���K��p��C�O\��z��=��@@��Ad(�C�O\                                    Bu��  �          AD(�?�=q�?33�����\C���?�=q�5p�@��RA�p�C��
                                    Bu� �  �          AEG�?��B�\����ÅC�W
?��3�
@�=qA�z�C��q                                    Bu�/F  �          AD��?����A��33�p�C��3?����8Q�@�z�A�\)C���                                    Bu�=�  �          AC�?��H�=G��0���Qp�C���?��H�:�\@Z=qA���C��3                                    Bu�L�  �          A;
=?����5����H�?�C���?����1�@^�RA��HC�                                    Bu�[8  �          A&{?��=q@Mp�A��
C�4{?����@�G�B=33C���                                    Bu�i�  �          A{?�G����?.{@�{C�
?�G����@�p�B{C��3                                    Bu�x�  �          A�H?\)�ff>�?=p�C���?\)�G�@��
A��C���                                    Bu��*  �          A)��#�
�(�Ϳ���>�RC��{�#�
�33@�\)A���C���                                    Bu���  |          A,�Ϳ��,  �&ff�\��C������R@�  A���C�q�                                    Bu��v  �          A/33�z��-�����H�˅C�|)�z�� Q�@��A��C�\)                                    Bu��  �          A#�
>��
�"ff>�=q?\C��>��
�
=@�Q�A�p�C�                                    Bu���  �          A�
?�ff��?�{A (�C�!H?�ff��z�@�p�B  C���                                    Bu��h  �          A��@�33�'
=@��B"�
C���@�33?(��@�p�B4��@�p�                                    Bu��  �          A=q@X����Q�@�33B �C�L�@X���.{A�B�C��                                     Bu���  �          A"�R@�����\)@أ�B(ffC���@����33A�Bz��C��                                     Bu��Z  �          A(��@�p����H@�\)B<��C��f@�p���(�AB�\)C��q                                    Bu�   �          A1�@�{��{A	BKG�C�� @�{��(�A"�RB���C�<)                                    Bu��  �          A:{@�����\@�p�A�33C���@������HA Q�B?C��f                                    Bu�(L  �          A0��@�����\�#�
�uC�E@����	@���A��
C���                                    Bu�6�  �          A"�R@X����R?���A'�C��@X����@ə�B
=C��f                                    Bu�E�  �          AQ�@���=q?�z�@ٙ�C�'�@�����@�{B��C��=                                    Bu�T>  �          A��?��H��?�ff@�ffC���?��H��p�@�z�B�
C�%                                    Bu�b�  �          A&�\>8Q��%녾aG����RC�~�>8Q��p�@��A�{C���                                    Bu�q�  �          A&�H?���!��?5@{�C�B�?���=q@�p�B�C�L�                                    Bu��0  �          A$��@B�\�  ?��
@�Q�C���@B�\��@���B��C�}q                                    Bu���  �          A*=q?�
=�$��?��HA��C�N?�
=� ��@���B
=C��)                                    Bu��|  �          A)@,(��"�R?�z�@�z�C�h�@,(��p�@�=qB=qC�33                                    Bu��"  �          A)�@/\)�!?��
AffC���@/\)���H@ӅB{C��                                     Bu���  �          A,  @	���&�R=�?&ffC�Ф@	���33@��HA�
=C��q                                    Bu��n  �          A.�R@[��%G��^�R��G�C�/\@[��@�ffA�Q�C�\                                    Bu��  �          A(��@Mp�� Q쾙���У�C��H@Mp����@���A�Q�C��                                    Bu��  �          A-@,(��'�<#�
=L��C�1�@,(����@���A�{C�Ff                                    Bu��`  �          A6�R?����4��?�ff@�  C�U�?�����@��HB(�C��                                    Bu�	  �          A6ff?�Q��3�
?J=q@�  C�J=?�Q����@�33B��C�*=                                    Bu�	�  �          A*=q?ٙ��&�R?}p�@��C���?ٙ���
@��
B�HC���                                    Bu�	!R  �          A�
?޸R�@eA�p�C��?޸R���\@�=qBL�HC�N                                    Bu�	/�  �          A=q?������@���A�C��q?�����
=A33Bk\)C��=                                    Bu�	>�  �          AG�?n{��@tz�A�C���?n{����@��\BT�\C���                                    Bu�	MD  �          A�R?�{�@��HA�z�C�q�?�{��G�@�33Bc(�C���                                    Bu�	[�  �          A?��G�@i��A�
=C���?����\@��
BQC��\                                    Bu�	j�  �          A�
?�33��@Q�Ag�C�+�?�33�Ӆ@���B1=qC��                                    Bu�	y6  �          A�H?�{�G�@��AX  C�e?�{��z�@�B.�C��3                                    Bu�	��  �          AQ�?����ff@��AK
=C�^�?�����Q�@��
B+
=C��3                                    Bu�	��  �          A!G�?�Q���?G�@�{C�c�?�Q��
=@��B  C�q                                    Bu�	�(  �          A'�?�=q�%>�33?��C��?�=q��
@��B C�O\                                    Bu�	��  �          A%p�?z��$��>��?�C��q?z���@��RA��C��f                                    Bu�	�t  �          A�?�\)�p����
��G�C���?�\)��@�  A�z�C�h�                                    Bu�	�  �          A"ff?�33� �ͽ�\)��p�C�C�?�33�
�H@��A�z�C��f                                    Bu�	��  �          A&{?�{�$Q쾨�ÿ���C��H?�{�(�@��RA�z�C�G�                                    Bu�	�f  �          A'33?B�\�&ff����?\)C�
?B�\��@��HA��HC�Z�                                    Bu�	�  �          A���Q���R�^�R��\)C�����Q���@�=qA�C��q                                    Bu�
�  �          A �Ϳ
=q���Q���{C�s3�
=q��
@�z�A�  C�G�                                    Bu�
X  �          A&�R?�=q��
�����"�RC�.?�=q�(�@b�\A���C�n                                    Bu�
(�  �          A&�\?��H���33�6�\C��{?��H�@UA�ffC�Ǯ                                    Bu�
7�  |          A+
=?���%녿�p��,(�C���?����R@fffA�z�C�                                    Bu�
FJ  �          A+33?����#��,(��ip�C�?����"�\@;�A33C��                                    Bu�
T�  �          A   ?\���%��n{C�� ?\���@,��AyC���                                    Bu�
c�  �          A   ����p���ff��C�E����@|(�A���C�!H                                    Bu�
r<  �          Aff�\�ff����H  C�⏾\�{@G�A�
=C���                                    Bu�
��  �          A
=<#�
����+��{33C��<#�
���@&ffAs�C��                                    Bu�
��  �          A=q?
=��׿�{�0(�C��?
=�=q@S�
A���C��R                                   Bu�
�.  �          AQ�\�  �:=q��\)C��
�\��H@G�AXQ�C��)                                   Bu�
��  �          A�R��  ����R�\����C����  ��?��HA'
=C���                                    Bu�
�z  �          A�p�����u����C���p���\)?��H@�\)C�.                                    Bu�
�   �          A�?�R��\��33�@(�C���?�R�	@=p�A���C�
=                                    Bu�
��  �          A�R?�=q�	��\)�(��C��\?�=q�\)@C�
A�(�C���                                    Bu�
�l  �          A�\<��
�=q>#�
?k�C�3<��
��H@��A��C�
                                    Bu�
�  �          A�þ#�
�zᾣ�
� ��C��H�#�
�@�Q�A��C�o\                                    Bu��  �          A
=��z���?���A5p�C�%��z����@�{B)�RC��q                                    Bu�^  �          A�R�\)�  @%Az=qC����\)�ҏ\@�  B;{C�c�                                    Bu�"  �          A&{�c�
�   @'
=AiG�C�t{�c�
��ff@���B6G�C�z�                                    Bu�0�  �          A�����?�\)AF{C��׿�����@��B*z�C}Y�                                    Bu�?P  �          AG������\)@P��A��RC��������G�@�p�BJ��Cz��                                    Bu�M�  �          A{��33��@X��A��C�����33����@��BO��Cz:�                                    Bu�\�  �          AQ�������@���A�p�C��������G�@�Bc��Cx��                                    Bu�kB  �          A33������@�Q�A�\)C��
�����G�@�{Br33C~Q�                                    Bu�y�  �          Ap��(����33@O\)A��
C���(����=q@ָRBXQ�C��                                    Bu���  �          Aff�!G�����@i��A�=qC��)�!G���G�@���Bc��C��                                    Bu��4  �          @��
�+�����@�  A�\)C���+��fff@��
Bw��C���                                    Bu���  �          @�\�����ʏ\@���B =qC�9������Tz�@�\)Bzz�C|33                                    Bu���  �          @�  ���R��z�@��B!��C�Zᾞ�R���@�\)B�p�C���                                    Bu��&  �          @�ff<#�
��(�@�G�B1��C��<#�
��G�@�
=B��RC�{                                    Bu���  �          @�{?�R��\)@�=qB@��C���?�R��G�@�  B�Q�C���                                    Bu��r  �          @�z�?E���{@�\)B3�C�n?E���\)@ڏ\B��{C��R                                    Bu��  �          @��?�=q����@�
=B-�C�1�?�=q��(�@ҏ\B�ǮC��                                    Bu���  �          @��>��R��33@�B)��C��q>��R��z�@���B��\C��q                                    Bu�d  �          @޸R>#�
��z�@\)B�C��\>#�
�.�R@��HB�W
C���                                    Bu�
  �          @�녽�Q�����@�ffB&Q�C�|)��Q����@��B�{C��                                    Bu�)�  �          Aff@�
�ڏ\��G��_\)C�ff@�
����@L(�Aԏ\C�g�                                    Bu�8V  �          A  @.{�����3�
��z�C���@.{���?�{A,z�C�ff                                    Bu�F�  �          A��@8Q��(��������C�U�@8Q����@�ffA���C���                                    Bu�U�  �          AG�@@����\���yG�C�#�@@����@��AaC��                                    Bu�dH  �          A=q@:�H�33�6ff���C���@:�H�
=?��RAD(�C�J=                                    Bu�r�  �          A  @u��\)���
�C�.@u�� (�@HQ�A�33C�Ǯ                                    Bu���  �          A  @����Ϳ:�H��{C�f@���p�@��
A�33C���                                    Bu��:  �          Az�@g
=�33?��H@�
=C���@g
=���@��RBG�C�b�                                    Bu���  �          A\)@a���Ϳ�G��  C�5�@a���@L��A��
C��                                    Bu���  �          A@`���=q��G��(��C��f@`������@�G�A��C�q                                    Bu��,  �          Ap�@#33�\)>#�
?n{C�� @#33��Q�@�
=A�ffC�q                                    Bu���  �          A��?����{?(�@i��C�e?�����p�@�{B�\C�Z�                                    Bu��x  �          Ap�?:�H���?�
=A\)C�>�?:�H��p�@�33B!�C���                                    Bu��  �          A
=?�Q����?Y��@���C��=?�Q���p�@�\)B��C�e                                    Bu���  �          A�R?Ǯ�Q���,��C���?Ǯ�p�@��
A�\C�H�                                    Bu�j  �          A=q?��
��?:�H@�(�C���?��
���H@���B�C��=                                    Bu�  �          A�H���
=?�{A�\C�H�����@��HB%\)C��                                     Bu�"�  �          A(������33?���A�C�(�������\)@�ffB#�RC���                                   Bu�1\  �          A  �c�
�=q@#�
A{33Cw  �c�
����@��HB0��Cn^�                                    Bu�@  �          Aff������{@p�Ak�
CnQ��������R@ȣ�B"�Cd�                                    Bu�N�  �          A��������R@�RAj�\Cm�������R@ə�B {Cb�H                                    Bu�]N  �          A�P  ��H?Y��@��Cz��P  ��z�@�B
��Cu�\                                    Bu�k�  �          Ap������G��k���  C�z�����ff@�z�A�C���                                    Bu�z�  �          A=q���
��Ϳ����G�C�XR���
�	G�@s�
A���C���                                    Bu��@  �          A  ��G���
���H���
C�^���G���@vffA��\C��R                                    Bu���  �          A�\���
�Q�p�����HC�/\���
�	G�@�\)A��C��f                                    Bu���  �          A���\��
���6=qC�y���\��@X��A���C�g�                                    Bu��2  �          A������z��	���O�C��쿅��(�@E�A�  C���                                    Bu���  �          A{���
�(�����4  C��3���
���@S33A���C�T{                                    Bu��~  �          Ap��{�ff��� z�C�.�{�
ff@[�A�  C��                                    Bu��$  �          A
==�����H�>{���C�T{=����@�A_�C�Q�                                    Bu���  �          A\)?z����˅�Q�C���?z��
�\@a�A���C��f                                    Bu��p  �          A  ?����  �O\)��G�C�˅?���� ��@��\A��C�q�                                   Bu�  �          A�
?У���ÿ0����G�C��?У�� ��@��RA�G�C��{                                   Bu��  �          A
=?�=q��
�#�
��C��q?�=q���
@�Q�A�  C���                                    Bu�*b  �          A�R?�p���
        C�P�?�p����H@���A��C�>�                                    Bu�9  �          Ap�?�\)�ff��\)��(�C�H?�\)����@�G�A�Q�C�ٚ                                    Bu�G�  �          A�H?�ff�  �k���33C��H?�ff���R@��RA��C��H                                    Bu�VT  �          Ap�?�
=�G���=q�2�HC�=q?�
=�
�R@QG�A��\C�|)                                    Bu�d�  �          Az�@
=��H�J�H��\)C�b�@
=�  @�
AB�\C�%                                    Bu�s�  �          Aff?�33�{��H�h��C��?�33�Q�@2�\A���C��
                                    Bu��F  �          A�H?���33��  �+33C�]q?����@Y��A��C���                                    Bu���  �          A\)?�Q�����U�C��{?�Q���@@  A�  C��                                    Bu���  �          A�\?�����������C�=q?�����H@z=qAď\C��H                                    Bu��8  �          A=q?�\)��
�.{���C�7
?�\)�
=@��\A܏\C��                                     Bu���  �          A  @�=q�z��J�RC�\)@�	�@>{A�G�C��3                                    Bu�˄  �          A\)@5���ÿ���*�HC��@5��	�@S33A��
C��                                    Bu��*  �          A33@�R��\��(��;33C��3@�R���@Mp�A���C�޸                                    Bu���  �          A�@����\��ff��33C��@���
=@qG�A���C�y�                                    Bu��v  �          A�R@E��
{=#�
>aG�C��3@E�����@��
A�Q�C�u�                                    Bu�  �          A�?��H�(��!G���Q�C��f?��H��  @�(�A�{C�8R                                    Bu��  �          A�\@��ff��(��,��C��{@���Q�@��
A�z�C��H                                    Bu�#h  �          A�R?�z���R�@  ����C��?�z���\@�  A�G�C��
                                    Bu�2  �          A  @%��  �����HC�7
@%�� z�@j�HA��C��                                    Bu�@�  �          A=q@5�
=q�E����
C��@5��
=@|��A�
=C�3                                    Bu�OZ  �          Az�?��H��׿�\�7\)C��f?��H��\@C33A���C��f                                    Bu�^   �          A�>L���
�H�
=q�_�C��>L����
@333A�C���                                    Bu�l�  �          A녾�  �\)�����!p�C�7
��  ��H@[�A��HC�+�                                    Bu�{L  �          AQ�=#�
������tz�C�)=#�
���@���A�33C�                                      Bu���  �          A�׿8Q��
=q?�33@��HC����8Q���{@��HBC��3                                    Bu���  �          A�H�.{��
?��@�C���.{��  @�Q�B33C�>�                                    Bu��>  �          A�
��  ��R?+�@�
=C����  ��{@�=qBffC��                                    Bu���  �          A'�?�
=�G��E����C�ٚ?�
=�33@(��Aj�HC��=                                    Bu�Ċ  �          A+�?��!G��G���G�C�c�?��#
=@/\)Al��C�U�                                    Bu��0  �          A z�?�����R��
�U�C��?�����\@Mp�A�G�C���                                    Bu���  �          A�����=q?�  AH��C�q����@���B2�C�h�                                    Bu��|  �          A(��?����%�#�
�`��C���?������@��A��
C�8R                                    Bu��"  �          A2=q@p��(�����6=qC���@p��!�@r�\A�z�C��)                                    Bu��  h          A&�H@;���H�J�H��=qC���@;���\@
=AR�\C�l�                                    Bu�n  �          A%@L���G��Mp���Q�C�xR@L�����@G�AJ=qC�8R                                    Bu�+  �          A!�?�Q���Ϳ�{���HC���?�Q���@���Aʏ\C�&f                                    Bu�9�  �          A��?����������Tz�C�� ?����33@���A�{C�g�                                    Bu�H`  �          A�?k��(�?=p�@���C���?k���@��\B�C���                                    Bu�W  �          A#�
?�\)�\)�|(����HC��q?�\)�=q?˅Az�C���                                    Bu�e�  �          A%G�?L��� Q�����E�C�K�?L���=q@`  A�33C�b�                                    Bu�tR  �          A=q?(���Q쿋��ϮC��R?(���	�@�p�A�{C�,�                                    Bu���  �          A�\?!G��=q������C��{?!G���(�@�z�A�G�C�C�                                    Bu���  �          A�?�
=�{�8Q쿕C�\)?�
=��33@��HA�Q�C�<)                                    Bu��D  	�          A�>aG��{@UA�(�C�� >aG���G�@��BX\)C�0�                                    Bu���  �          A�׽L���33@H��A��C��3�L�����@�G�BU=qC���                                    Bu���  "          A�H?����\)?
=@s�
C��?����ᙚ@���B=qC�Ф                                    Bu��6  
�          A{@��33���r�RC��@��
ff@&ffA�{C�3                                    Bu���  �          A   �mp�?��\A��B�(�C!&f�mp�@��@޸RB3��B�33                                   Bu��  �          A*�H��p�@|(�A�RBQffC����p�@��\@�  A��\B�Ǯ                                   Bu��(  �          A&�H���\@�Q�@��RB=qB������\A(�?
=@Tz�B�z�                                    Bu��  �          A(Q����@���A33Bh�B�3���A��@�33A�G�Bє{                                    Bu�t  �          A5녿�Q�@��RA��Bc��BӔ{��Q�A"=q@��Aʏ\B��H                                    Bu�$  
b          A4  ��@�
=A�\BR(�B�(���A#�@��A��B�                                      Bu�2�  
�          A0  ��33@��Ap�B=\)B͔{��33A'�@<(�Ax  B��f                                    Bu�Af  
�          A0Q�fffA   @�
=B+�B�Ǯ�fffA,  @�A*=qB��                                    Bu�P  
�          A.ff�=p�@�Q�@���B7��B�.�=p�A((�@#�
AZ�HB�                                      Bu�^�  �          A,  �L��A�@�  A���B����L��A+���z��ffB��=                                    Bu�mX  
�          A%p�����A	@��Bz�B\����A$  =��
>�ffB�B�                                    Bu�{�  �          A?^�RA�\@�
Aa��B��f?^�R@���(Q����HB���                                    Bu���  T          A\)@���@>{��
=�](�Bp�@��Ϳ�G����l��C���                                    Bu��J  
�          A
=@.�R@8����  �u�B:Q�@.�R������p��C�
=                                    Bu���  �          A\)@�{>�33��=q�m
=@��R@�{�`  ����AC�{                                    Bu���  T          AQ�@Vff������  C�>�@Vff�����p��*��C��                                     Bu��<  
�          A�@���G���ff�T��C���@���������
=C��{                                    Bu���  �          A��@�\)?����
=�c�A��
@�\)��H����\�C���                                    Bu��  �          A
�\@~{@�  ��(��>�B;��@~{>.{����zz�@{                                    Bu��.  �          AG�@�p�@�{����BM  @�p�?޸R��{�c�HA��                                    Bu���  �          @�(�@B�\@�(��Z=q���Br�@B�\@.{��Q��Z�HB'�                                   Bu�z  �          @�=q?�33@����(���z�B���?�33@)�������[�HBx�                                   Bu�   �          @�녾aG�@��@:�HA��
B����aG�@ə��
=q��z�B�{                                    Bu�+�  �          A��<(�@5@�Q�BuC���<(�@�@�=qB	33B��                                    Bu�:l  �          Aff�c�
@��H@���B,��B�W
�c�
@���?ǮA1B��)                                    Bu�I  �          A&{�s�
@��Az�BYQ�C�H�s�
A��@���A�{B�aH                                    Bu�W�  �          A@����=q@�p�A!p�Bd
=CG���=qA��@�(�A�=qB��                                    Bu�f^  �          A>=q����@0  A+
=B�
=CxR����A ��@�BQ�B�{                                    Bu�u  �          A"�H���?c�
AQ�Bd��C*�����@��@�
=B&(�C��                                    Bu���  �          A'\)����?
=Ap�BK�C.�H����@�=q@�Q�B
=C��                                    Bu��P  �          A#33��33���
@��BK�RC4:���33@��@ӅB$G�C��                                    Bu���  �          A���\)?�AffBd�RC!u���\)@���@�\)B�C�=                                    Bu���  �          A���k���ffAz�B��CGz��k�@fffABfffC��                                    Bu��B  �          A#33���@�@�(�B)��C	&f���@��R@=p�A�Q�B�#�                                    Bu���  �          A(  �b�\@�\)@�ffBJ�B�Ǯ�b�\A{@q�A���B�z�                                    Bu�ێ  �          A�@ ��@u�@�ffBl  Byz�@ ��@��H@���A�\)B�ff                                    Bu��4  �          A\)?W
=@�
=@��B<33B���?W
=@��H?�z�Ao�
B�z�                                    Bu���  �          @�\)��(�@˅�B�\���HB��q��(�@����c�
��B�W
                                    Bu��  �          @��?���@����i���
�\B�k�?���@�
����u�B_�                                    Bu�&  �          A ��@P  @#33���}ffB=q@P  �  ����C��                                    Bu�$�  |          A[33@��@%�Ip�z�A���@�������@Q��y��C��
                                    Bu�3r  �          A]��@���@Z=q�G33��Bp�@����q��Ep��}�\C�(�                                    Bu�B  �          Aep�@n{@���LQ��{33B^{@n{����Z�H�qC�W
                                    Bu�P�  �          A\��@~{@`���L  ��B%��@~{�vff�Jff�RC��3                                    Bu�_d  �          Af�R@�@S33�TQ���B�R@�����O�{C��                                    Bu�n
  �          A���@���@~{�{\)
=B$�@�����G��v=qu�C��
                                    Bu�|�  �          A��H@��@��R����=qBD(�@�����
���
C���                                    Bu��V  �          A���@�ff@�(���8RBM\)@�ff�l�����R�HC��H                                    Bu���  �          A�\)@�=q@����=q�}�Bn�@�=q�.�R���L�C�3                                    Bu���  �          A�z�@�  @�G��}G�#�BUG�@�  �W
=������C���                                    Bu��H  �          A���@�(�@���vff�u�Bc  @�(������=q�HC���                                    Bu���  �          A�(�@�ff@�\)�w��xQ�B\Q�@�ff�%��p�\)C��3                                    Bu�Ԕ  �          A�  @�=q@�(��w�
�x��BN�@�=q�8Q���  {C�4{                                    Bu��:  �          A�=q@���@˅�xQ��y��BN�H@����:=q��{G�C��                                    Bu���  �          A�
=@��
A ���r{�lz�B{��@��
���\���R�C�o\                                    Bu� �  �          A�33@�{@��s\)�m�Bx��@�{�����R  C���                                    Bu�,  �          A��H@�
=A{�p���jBz33@�
=��z���z�8RC�J=                                    Bu��  �          A�G�@�z�@�
=�r�H�mQ�Bl  @�z��=q����ǮC��)                                    Bu�,x  �          A��@�
=@����r�H�k��B]�@�
=�޸R�����HC��=                                    Bu�;  �          A�33@�z�@�
=�p(��i33Baz�@�z´p���z��qC��
                                    Bu�I�  �          A�p�@��@�
=�qG��j{Bb�
@�녿\����33C���                                    Bu�Xj  �          A�
=@�33@�\)�r=q�lz�B^��@�33�޸R��Q�p�C���                                    Bu�g  �          A�ff@�=q@�p��s
=�o�BZ�H@�=q��\��\)�3C��                                    Bu�u�  �          A��@���@���r�\�p�BW\)@����
=�����)C�޸                                    Bu��\  �          A�@�G�@����q�o��B[\)@�G��   ���R��C�1�                                    Bu��  �          A�33@�(�@�ff�m��i��Bf��@�(��������#�C�
                                    Bu���  �          A�33@���@����r=q�r��BS
=@�������\)  C��{                                    Bu��N  �          A�G�@��H@�
=�x���}33B;��@��H�\(����8RC��
                                    Bu���  �          A���@�ff@��t  �v33BL(�@�ff�+�������C�XR                                    Bu�͚  �          A�z�@�{@ָR�r�R�t��BV��@�{�����G�C��                                    Bu��@  �          A��\@�Q�@��H�s��u�
BR��@�Q��!G����33C���                                    Bu���  �          A��\@�ff@�G��rff�s��BW@�ff��
���B�C�|)                                    Bu���  �          A�  @�  @�{�q��s\)B^\)@�  ��������
C��q                                    Bu�2  �          A��@��@�=q�p���s{Bd��@��� ����  ffC�)                                    Bu��  �          A��@�\)@�\)�p���tz�Be�@�\)������=C��                                    Bu�%~  �          A��H@���@��H�lz��o  Bip�@��׿����G�W
C��                                   Bu�4$  �          A�z�@�=q@��
�iG��j�
Bz�R@�=q��=q��=qu�C��3                                    Bu�B�  �          A�z�@S33A
{�ep��d�
B��@S33���R���
�{C�U�                                    Bu�Qp  �          A�=q@{A�
�a��`=qB�
=@{>�������¤�HA�
                                    Bu�`  �          A��@Q�A���_��^
=B�\)@Q�>���Q�£��A0��                                    Bu�n�  �          A�p�@��A�\Q��Y��B��@��?Tz���(�¤p�A�Q�                                    Bu�}b  �          A�
=?��A���\���[\)B��3?��?B�\��  ¦.A���                                    Bu��  �          A�
=?�p�A{�\(��Z\)B��?�p�?\(���(�¦�HAԸR                                    Bu���  �          A�
=@;�A���`���a�RB�\)@;�=u������?��                                    Bu��T  �          A���@j=qA(��ap��b�RB�p�@j=q��  �����)C��                                    Bu���  �          A��H@z�HA�
�`z��a=qB�p�@z�H�k����\C�N                                    Bu�Ơ  �          A�Q�@�=qA���_
=�`ffBz�@�=q��{���
�C��f                                    Bu��F  �          A�  @��R@����_�
�b��Bl�
@��R�5��ff��C��3                                    Bu���  �          A��@�(�A��_��bBv(�@�(��������k�C�l�                                    Bu��  �          A��@q�A�\�^�\�a�
B���@q녾k���  ǮC�K�                                    Bu�8  �          A�\)@��@��R�\���_�
Bjff@������~�\�)C���                                    Bu��  �          A���@�@����Yp��[�
BU�R@��0���yG��C��f                                    Bu��  �          A��\@�p�@�
=�XQ��Z��BV@�p�����x���qC��q                                    Bu�-*  �          A�Q�@�ff@����W33�Y�\BV��@�ff��\�xQ��=C�n                                    Bu�;�  �          A�=q@��@�Q��W��Z�RBO�@���@  �v�\�RC�c�                                    Bu�Jv  �          A��@��@��H�U�Xz�BN��@���(��u8RC�{                                    Bu�Y  �          A�p�@�z�@�ff�T(��WQ�BR\)@�z���uG��
C��                                    Bu�g�  �          A�G�@�@�Q��S33�V  BRff@���p��t���\C�1�                                    Bu�vh  �          A�
=@���@�\)�Qp��T�BO�H@�����{�s\)�=C�j=                                    Bu��  �          A���@�  @�p��O�
�R��BKff@�  �����qG��C�~�                                    Bu���  �          A�Q�@��@���QG��Uz�BO�@���\�rffǮC�+�                                    Bu��Z  �          A�(�@�G�@�\)�L���P  BSp�@�G�<��qp�\)>��R                                    Bu��   �          A�=q@��HA ���J�H�LQ�BN�H@��H>#�
�p(�.?�z�                                    Bu���  �          A�(�@���@��M���P��BR��@������q��\)C��H                                    Bu��L  �          A��@�
=@��H�K��O=qBN33@�
=���o
=ǮC��                                     Bu���  �          A�
=@��@�G��R=q�Z
=BVz�@�녾��H�r=q�=C�t{                                    Bu��  �          A�z�@�ff@�z��W�
�d�B]  @�ff���\�s�G�C�+�                                    Bu��>  �          A�{@�
=@�ff�V=q�cffB]��@�
=�h���r�H33C��                                    Bu��  �          A�@�{@���T(��`��Bh�@�{�
=q�t  ��C���                                    Bu��  �          A
=@��@���S\)�_��Bg��@���   �s\)33C�                                      Bu�&0  �          A~�\@���@�\)�R�H�`  Bq�@��;�{�tz���C�˅                                    Bu�4�  �          A}��@tz�AG��Qp��^B�u�@tz�<#�
�v=q(�>#�
                                    Bu�C|  �          A}p�@��@�{�TQ��d  Bn�\@���!G��s33�3C���                                    Bu�R"  �          A{�
@a�Az��K��Z�HB���@a�>\�r�R��@�
=                                    Bu�`�  �          Aw\)>�{A.=q�/�
�5  B�k�>�{@aG��p���{B���                                    Bu�on  �          Aup�>�33A)p��1p��9Q�B�B�>�33@Mp��o�
�3B��q                                    Bu�~  �          Av�R?�{A��;��F(�B�z�?�{@��r�\(�BZ�H                                    Bu���  �          Aup�?Tz�A,���-p��4(�B�B�?Tz�@a��n=q��B��R                                    Bu��`  �          At��?�p�A%�2�R�;��B�u�?�p�@?\)�o
=�\B�Q�                                    Bu��  �          As�?�\)A=q�;\)�I
=B���?�\)@ff�pQ�¡
=Bc�\                                    Bu���  �          Ar{?�{A�\�;��KQ�B���?�{?�z��nff¡BG��                                    Bu��R  �          As�
@�A�H�<(��J�\B��3@�?�z��o33�fB,�R                                    Bu���  �          At  @"�\A�
�A��Q{B�z�@"�\?�\)�o�8RA�G�                                    Bu��  �          At��@�RAz��<  �H��B��R@�R@ ���o�
ffB(=q                                    Bu��D  �          At��@  A�;
=�GQ�B���@  @
=�o��qB,�                                    Bu��  �          Au�@
=A(���.�R�5�B�Q�@
=@Tz��l��B�Be�H                                    Bu��  �          As�@z�A'�
�-p��5�B���@z�@S�
�k�Q�Bg��                                    Bu�6  �          Ar�\?�Q�A)�+
=�3\)B��)?�Q�@`  �jffB�B�\)                                    Bu�-�  �          ApQ�?�A,Q��%��.�B�
=?�@s�
�g\)��B�8R                                    Bu�<�  �          Am?}p�A3\)�
=�"��B���?}p�@�G��a���\B��                                     Bu�K(  �          Amp�?=p�A8z������B��3?=p�@�Q��_33�B�L�                                    Bu�Y�  �          An{?0��A2�R���%
=B��?0��@�ff�c
=��B�\)                                    Bu�ht  �          Am�?\(�A.ff�!p��*��B�?\(�@��\�dQ�p�B�W
                                    Bu�w  �          An{?��A*=q�%G��0  B�?��@o\)�e���=B�\                                    Bu���  �          An=q?�=qA  �1���@�
B��q?�=q@%�h��p�BZ�
                                    Bu��f  �          Amp�@G�AG��5��G��B��\@G�@�h��k�B7�H                                    Bu��  �          Am�@  A�@Q��X�
B���@  ?p���i¡�A�33                                    Bu���  �          Al(�?�z�A=q�:{�O��B���?�z�?˅�h�� ��BQ�                                    Bu��X  �          Ak33?���A���733�M  B��?���?�=q�g� ��BC{                                    Bu���  �          Ak33?�G�AQ��7��M33B���?�G�?�ff�g� Q�B6��                                    Bu�ݤ  �          Ak33@z�A���2{�E  B�  @z�@{�ep�B.��                                    Bu��J  �          Aj{@(�Az��1G��E33B�z�@(�@�R�dz�\)B6�                                    Bu���  �          Ai��?�A�R�6ff�MQ�B��3?�?�G��ep�B*
=                                    Bu�	�  �          AhQ�?��RAz��(  �9�B���?��R@=p��`��z�B`ff                                    Bu�<  �          Ag33?���A���&ff�7��B���?���@E�_��qBf�H                                    Bu�&�  �          Af�R?��HA���&�\�8��B�ff?��H@A��_\)Bd�R                                    Bu�5�  �          Ag\)?�G�A$Q��!��1B���?�G�@fff�_\)B���                                    Bu�D.  �          Ag\)?}p�A&ff��
�.�HB�.?}p�@q��^�R��B���                                    Bu�R�  �          Af�R?��A+����'p�B���?��@�  �\(�W
B�{                                    Bu�az  �          Af�H?fffA'33��R�-�\B�(�?fff@xQ��]�  B��)                                    Bu�p   �          Ag�
?�
=A&�H��
�.ffB�{?�
=@tz��^�R��B��                                    Bu�~�  �          Ag�?��A z��%p��6�B�ff?��@S33�`Q���B�u�                                    Bu��l  �          Ae?�=qA�H�$(��6�RB���?�=q@QG��^ff�B��)                                    Bu��  �          Ad  ?�33A�
�*�H�B�B�?�33@{�^ff�qBQ�                                    Bu���  �          Ab�H@�\@��\�:=q�\�RB���@�\?E��`  ¢L�A��
                                    Bu��^  �          Aa�?�A�6ff�WffB�k�?�?����_
=¡�)A��                                    Bu��  �          Aap�?�p�A
�\�/�
�L�HB�ff?�p�?����]�p�B:�                                    Bu�֪  �          A`��?\A�H�(Q��B
=B�=q?\@!G��[��
Bk�
                                    Bu��P  �          A_\)?���A  �"{�:
=B��=?���@@���X����B��
                                    Bu���  �          A^�H?�\)Aff�#33�<�\B�ff?�\)@8Q��X��Q�B��                                    Bu��  �          A^{?uA���'�
�D\)B��)?u@��Z{L�B��H                                    Bu�B  �          A[�
?Y��A���
�5
=B���?Y��@S�
�Tz��B�ff                                    Bu��  �          AY�?B�\Aff���,�B�G�?B�\@q��P���B�k�                                    Bu�.�  �          AY��?:�HA!p��G��'��B�Ǯ?:�H@�=q�O33�\B���                                    Bu�=4  �          AZ�\?�  A+\)��R�G�B�Q�?�  @�{�K
=�B��                                    Bu�K�  �          AY�?W
=A'��	G����B���?W
=@���K\)�B��{                                    Bu�Z�  �          AXQ�?��HAG����1B���?��H@\���P(���B�Q�                                    Bu�i&  �          AW�
>��RA"ff�=q�$�
B�� >��R@���L��L�B���                                    Bu�w�  �          AXQ�?�RA���33�,ffB�?�R@r�\�Nff��B�p�                                    Bu��r  �          AW�?�RA��\)�,\)B�Ǯ?�R@s�
�N�\�RB��                                     Bu��  �          AV�H?
=A���
�-�B��?
=@mp��N{z�B�{                                    Bu���  �          AU�?s33A Q����$�B�(�?s33@�{�J�R�{B�k�                                   Bu��d  �          AV�\>B�\A���=q�,
=B��
>B�\@u��MG��B�z�                                   Bu��
  �          AV{<�A������+p�B���<�@w��L��\)B��                                    Bu�ϰ  �          AU�>�A���H�3ffB�k�>�@[��N�RB�B���                                    Bu��V  �          AUp�?^�RA�R����8=qB�(�?^�R@Fff�N{�fB��                                    Bu���  �          AT  ?���AG�����>p�B�8R?���@,���Nff�\B{��                                    Bu���  �          AS
=?���A��  �>�B�ff?���@-p��M�G�B��R                                    Bu�
H  �          AS�?��A���Q��>��B��3?��@,���N{�B~Q�                                    Bu��  �          AR=q?��Az���H�=��B�?��@.�R�Lz�aHB��                                    Bu�'�  �          AQ?�{A�
���9(�B���?�{@AG��K\)��B���                                    Bu�6:  �          APQ�?��RA  ���0�RB��R?��R@\���G�
=qB��                                     Bu�D�  �          AM�?���A��
�7p�B��?���@B�\�F�H
=B��                                    Bu�S�  �          AQ?�p�AG��=q�0��B���?�p�@`  �IG��B�L�                                    Bu�b,  �          AQp�?�33Az���6B�p�?�33@H���I��{B�
=                                    Bu�p�  �          AP  >�Q�A   ��z���HB���>�Q�@�
=�=G�W
B�(�                                    Bu�x  �          AN�\�AG�A@(��hQ����\B�.�AG�A	p��=q�4\)Bڨ�                                    Bu��  �          AMp��J�HA?�
�S�
�o33Bє{�J�HA�����.p�B��
                                    Bu���  �          AK\)�Z=qA>�H�.�R�F�\B���Z=qA�����#�Bݙ�                                    Bu��j  �          AJ�R��G�A2=q�����߅B�{��G�@ָR�*�R�g=qB���                                    Bu��  �          AJ{��G�A6{��G���z�B�����G�@�\)�$  �Y�\BǮ                                    Bu�ȶ  �          AJff��Q�A7����
���B�\)��Q�@���"ff�Up�B�{                                    Bu��\  �          AIp���  A<  ��ff��(�B ��  A���C��B��H                                    Bu��  �          AI�����HA:{��  ��  B�Q쿺�H@����H�IB�
=                                    Bu���  �          AIp���G�A9p���ff���B��Ϳ�G�@�\)���M{B�
=                                    Bu�N  �          AH  ��p�A5���Q�����B�W
��p�@�33�33�SQ�B�k�                                    Bu��  �          AHQ���\A2�R������\)Bȳ3��\@��H�!�Wz�B�{                                    Bu� �  "          AG�
��
=A2�H�������B����
=@��!�X��BΔ{                                    Bu�/@  �          AG�
����A4z����R��p�BǞ�����@��=q�Q��Bѳ3                                    Bu�=�  �          AH  �\A5p�������B�G��\@�(����S�B�G�                                    Bu�L�  �          AG�
��Q�A4  ��{��z�B£׿�Q�@�\)� ���W
=Bʙ�                                    Bu�[2  �          AG\)��
A7���z���33B�aH��
@�����F�Bъ=                                    Bu�i�  �          AF=q�	��A2{�����{B��)�	��@�\)���Q�B��                                    Bu�x~  �          AG
=� ��A7\)��������B��f� ��@���\)�F33B��)                                    Bu��$  �          AFff��  A;��e��
=B����  A
=�=q�7�B�k�                                    Bu���  �          AF�\��A=p��N{�p��BŮ��A��	��0  B���                                    Bu��p  �          AF=q� ��A8���|������BǮ� ��A=q��=z�BϮ                                    Bu��  �          AF=q�33A5��������B�k��33@�{�  �H=qB���                                    Bu���  �          AE���p�A1G�������=qB�G���p�@�ff����R�Bҽq                                    Bu��b  �          AD����
A1�������Q�B�{��
@�Q��
=�Pp�Bӳ3                                    Bu��  �          AD  ��A0�����H���B�G���@����N��B�L�                                    Bu���  �          AE�(�A.ff��p����
Bʮ�(�@��
� ���YffB�L�                                    Bu��T  �          AF�\�33A-����=q��G�B����33@�Q��"ff�[�\Bٮ                                    Bu�
�  �          AE���A-���(���=qB�(���@��
��
�W��B��H                                    Bu��  �          AE����RA+���=q�ָRB�
=��R@���!p��[Q�B��)                                    Bu�(F  �          AE��HA)�������ffBͽq��H@��
�$���b
=B݊=                                    Bu�6�  �          AG��{A#���{�B�#��{@�{�-��p��B��f                                    Bu�E�  �          AH(���A#���=q�G�Bͣ���@�(��.�H�s�B��                                    Bu�T8  �          AI��(��A-p���(���{B�\)�(��@�z��&ff�^  B�aH                                    Bu�b�  �          AJ�R�7
=A0����\)��33B�\�7
=@�  �"{�U
=B�k�                                    Bu�q�  �          AK33�333A:�H���
��G�B�  �333A��  �;{B٣�                                    Bu��*  �          AJ{�G
=AA���H��G�B�Ǯ�G
=AQ���33�z�B�B�                                    Bu���  �          AIG��i��A>=q?�(�@�
=B���i��A1���ff���RB�L�                                    Bu��v  �          AG��S33A3�@���A�  BԳ3�S33A<z����(�B�B�                                    Bu��  �          AE��Z�HA��@�
=BB�z��Z�HA<��?�@�{B�B�                                    Bu���  �          AC
=�.�RA�@���B�B��
�.�RA9@\)A<��B�z�                                    Bu��h  �          A@Q��1G�A�@陚B�RB����1G�A8  @ ��A�\B�{                                    Bu��  �          A>ff�P  A!G�@��A��B׳3�P  A6=q�8Q�^�RB���                                    Bu��  �          A<  �Q�A�
@�Q�B�RBή�Q�A5�@�
A!��B�8R                                    Bu��Z  �          A8�ÿٙ�A��@��B+\)B�#׿ٙ�A0��@:�HAj{B�z�                                    Bu�   �          A/��,��A��@dz�A�z�BҸR�,��A%��������B�G�                                    Bu��  �          A.ff�>�RA�H��
=�(��B�ff�>�R@�����ff���B���                                    Bu�!L  �          A1p����A�
���\�噚B�\)���@�G��\)�`��B�u�                                    Bu�/�  �          A6�H�z�AQ���=q��
B�Ǯ�z�@����!G��x��B�=                                    Bu�>�  �          A9G��2�\A�H���
���B����2�\@��
���i�HB��f                                    Bu�M>  �          A8  �4z�Aff��p��(�B�(��4z�@����!���v��B�p�                                    Bu�[�  �          A2=q�6ffA�\��  ��HBڀ �6ff@~{����~{B�Q�                                    Bu�j�  �          A/33��ff@Ϯ@أ�B�B�����ffA�H@8Q�A{�B�                                    Bu�y0  �          A8z���Q�@U�A33B_
=C޸��Q�@��@׮B�\B�8R                                    Bu���  �          A(�Ϳ��
�W
=A"=qB�z�C=Y����
@��
Az�Bx(�B��)                                    Bu��|  �          A*ff��\)���A&ffB�W
C_�R��\)@qG�Az�B�k�B���                                    Bu��"  �          A,  ��p�@@  A$Q�B��B�\)��p�@�  @�(�B3��B�B�                                    Bu���  �          A)p���\@�A"�\B��{C�)��\@�p�@�ffBDG�Bѽq                                    Bu��n  �          A0���  ?�A*ffB��3CB��  @��
A��BJ�
Bُ\                                    Bu��  �          A3\)�33@�=qA�BhB����33A33@���A�z�Bў�                                    Bu�ߺ  �          A8�ÿ�p�A$  ��33��(�B�8R��p�@�Q�����R�B���                                    Bu��`  �          A<���P��A.�H�<(��g33B�8R�P��AQ���\)�$�B�\                                    Bu��  �          A;�
��Q�A5G��G��
=B�p���Q�A����33��HB�.                                    Bu��  �          A@(���A8����H�:ffB�녿�A������B���                                    Bu�R  �          ADz���A=���0  B��ÿ��A=q���
�
=Bʔ{                                    Bu�(�  �          AA��k�A733�\��Bף��k�A�\��{��B޽q                                    Bu�7�  �          A@���^{A2�\�/\)�R�HBօ�^{A	G���(��  B���                                    Bu�FD  �          A8�׿�33A4z�n{���B��׿�33A���\�Q�B��q                                    Bu�T�  �          A5��\)A3�
�������B�����\)A�H��ff�33B�Ǯ                                    Bu�c�  �          A7��W
=A7
=>\)?333B���W
=A#
=��ff��ffB�\)                                    Bu�r6  �          AB�H<��
A@�ÿ��H���B��)<��
A����
�=qB���                                    Bu���  �          AB�\>�A@(���\�=qB���>�A
=��z��G�B��                                    Bu���  �          A<��>��A2�R�i����z�B�.>��A33��\�6�B�p�                                    Bu��(  �          A<  >�
=A/33���R���B���>�
=@�Q�����BG�B���                                    Bu���  �          A8Q�?:�HA&=q������\)B�?:�H@�{�ff�R�\B�{                                    Bu��t  �          A5?
=A�
��33��
=B�=q?
=@�z���^\)B�p�                                    Bu��  �          A1�?��\A33��  �=qB���?��\@�{�=q�|  B���                                    Bu���  �          A4  ?
=qA�\������B��=?
=q@�p�����hffB�z�                                    Bu��f  �          A0��?}p�A(���=q��\B��?}p�@��H�(��x�B�{                                    Bu��  �          A1�?�\)A
�H��  ��\B�L�?�\)@�33��
=qB���                                    Bu� �  �          A,Q�?(�A����H�
=qB�(�?(�@�G��\)�w33B�L�                                    Bu� X  �          A4��>�p�A\)�����  B��q>�p�@�z��G��^�B�aH                                    Bu� !�  �          A9p�?(��A"�H��\)��(�B��{?(��@�G�����]��B�u�                                    Bu� 0�  �          A1�>���A"�H���\���\B���>���@�{����D(�B�8R                                    Bu� ?J  �          A%p�?G�A��\)��=qB���?G�@�33��(��GffB���                                    Bu� M�  �          A��?��A���  ��(�B�aH?��@�Q������a��B���                                    Bu� \�  �          A�@*=q@��H�����I33Bt�@*=q?��\���A��                                    Bu� k<  �          A@w
=�Ǯ�(�G�C�)@w
=���H���
�R�C��3                                    Bu� y�  �          A"=q@hQ���R���.C��
@hQ������p��.=qC��\                                    Bu� ��  �          A!��@Mp��W��33�z(�C��3@Mp������ff��C�8R                                    Bu� �.  �          AG�@z�@�����Z��B��f@z�?Q���\� A�ff                                    Bu� ��  �          A"�\@�\@����
=�Q�B��@�\@���{�t�
Bx                                      Bu� �z  �          A$  @-p�@����
=��RB���@-p�@���{�p�Bg\)                                    Bu� �   �          A$  @!�@����R�p�B��@!�@�(��ff�q�Bp=q                                    Bu� ��  �          A&{@��Aff��
=��B�u�@��@���=q�k��B�
=                                    Bu� �l  �          A%G�?�Az���33��
=B�Q�?�@�G��(��^33B�=q                                    Bu� �  �          A!�@ffA
=�����{B���@ff@\�����J
=B���                                    Bu� ��  �          A!p�@�A  ��G����B��=@�@�  ��H�c=qB�#�                                    Bu�!^  �          A!p�@   A�H��  ��  B�
=@   @��R��a�\B}
=                                    Bu�!  �          A#33@{A\)�����G�B�u�@{@�(��33�VQ�B�\                                    Bu�!)�  �          A#�@
=A�R�������
B�p�@
=@��R� z��O33B�{                                    Bu�!8P  �          A#\)@�A�
��
=�ÅB��@�@����G��G=qB��=                                    Bu�!F�  �          A"�\@#�
A=q��{����B��)@#�
@\���R�E�RB�\)                                    Bu�!U�  �          A"=q@{A��������=qB��R@{@�33��
=�OffB��=                                    Bu�!dB  �          A#33@z�A���
=���B��q@z�@�ff��ff�L�
B��                                    Bu�!r�  �          A"�R@�AG���ff�ϙ�B�p�@�@�{����Lp�B�#�                                    Bu�!��  �          A"�R@\)Ap���\)��
=B��{@\)@�{���MQ�B��                                    Bu�!�4  �          A!�@z�AG���(����B��=@z�@�
=���H�J��B��=                                    Bu�!��  �          A"�\@�Aff��Q���ffB�� @�@��H��Q��G(�B��{                                    Bu�!��  �          A��@�A
=q�y����=qB�aH@�@�����=q�A��B�(�                                    Bu�!�&  �          A��?�{A��S�
��
=B�L�?�{@����ָR�9{B�ff                                    Bu�!��  �          Ap�?�ffA��U���RB��?�ff@�{��(��7(�B�Ǯ                                    Bu�!�r  �          A�?�
=A  �"�\��G�B���?�
=@ə�����*�RB��)                                    Bu�!�  �          A(�?�=qA�R�5���B�
=?�=q@����  �0\)B�33                                    Bu�!��  �          A�
?�{AQ��%���G�B��3?�{@ə���{�+�\B�                                      Bu�"d  �          A	p�?\@�p��1���(�B�G�?\@�����
=�1��B��                                    Bu�"
  �          A{@z�@��R�mp����B��{@z�@���ָR�DB��f                                    Bu�""�  �          A@E@�\)��ff��Q�B�u�@E@�������H�Bk��                                    Bu�"1V  �          A�
@<��@���������B�8R@<��@�������X��BZp�                                    Bu�"?�  �          A�\@5@��
��G�����B���@5@w
=��(��X�BV�
                                    Bu�"N�  �          A��@g�@���������Bl=q@g�@S33��G��\��B)p�                                    Bu�"]H  �          A33@u@�
=�����RB[�H@u@,(�����a=qB
=                                    Bu�"k�  �          A�@h��@��
���H���B_��@h��@/\)��{�_{B
=                                    Bu�"z�  �          A�@]p�@��R���R��Ba��@]p�@#33��\)�e�RB�                                    Bu�"�:  �          @�33?��H@�G��dz����HB�?��H@\������^(�B~��                                    Bu�"��  �          @�z�@L��@Dz����K(�B/p�@L��>�(���
=�zz�@�\                                    Bu�"��  �          @�33@6ff�����=qB�C��{@6ff�>�R�����Pz�C�ٚ                                    Bu�"�,  �          @��?����mp������4Q�C��H?������H��
����C���                                    Bu�"��  �          @��?n{�e�33���\C�9�?n{��\)������C�+�                                    Bu�"�x  �          @��
?��
�333��\�
�C�5�?��
�`�׿^�R�G�C�k�                                    Bu�"�  �          @z=q?
=q�a녿Q��M�C�e?
=q�a�?E�AC\)C�b�                                    Bu�"��  �          @Ǯ>�\)���ÿQ���{C�T{>�\)����?�A��HC�aH                                    Bu�"�j  �          @�
=?\��!G��(G�C���?\�L(����
��
=C��H                                    Bu�#  �          @�(�@N{?����
�oz�A�R@N{��=q�����z{C��                                     Bu�#�  �          @��@e�?�\)�ʏ\�e�HA�(�@e���G��У��q33C�"�                                    Bu�#*\  �          @��@s�
@Dz�����Lz�Bff@s�
>L����G��r@>{                                    Bu�#9  �          A	��@$z�@��H����"ffB�G�@$z�@G
=���R�y��BI��                                    Bu�#G�  �          A
=@�@أ���Q���B�u�@�@y����(��l��Bk                                      Bu�#VN  �          A�
@G�@�������B�Ǯ@G�@�����{�bffB}��                                    Bu�#d�  �          A�@hQ�
=���H\)C�aH@hQ��o\)��(��O\)C��                                    Bu�#s�  �          AG�@�\)�У����eQ�C��
@�\)���
�����,��C��                                    Bu�#�@  �          A=q@��H�0����33�W�C�}q@��H��33��  ���C���                                    Bu�#��  �          Az�@�\)��z��Ϯ�7�C��=@�\)�ָR��G�����C��)                                    Bu�#��  �          A��@�{��G���{�M��C�\)@�{�,����=q�2�
C���                                    Bu�#�2  �          A{@���@j=q����A��B�@���>\����e��@���                                    Bu�#��  �          A��@�33@��\���H�5(�B��@�33?p����{�`�A'�                                    Bu�#�~  �          A@�
=@p����  �9p�BQ�@�
=?����ff�^�H@ҏ\                                    Bu�#�$  �          A{@�33@�(�����$�\B.��@�33?�{��(��ZffA�z�                                    Bu�#��  �          AG�@�p�@�
=��
=�{B:@�p�@����33�Z(�A�G�                                    Bu�#�p  �          A��@���@�����Q�� �B9��@���@����[Q�A�Q�                                    Bu�$  �          A��@��R@��H������B+��@��R@��z��H�A�p�                                    Bu�$�  �          Aff@��\@���������B2(�@��\@%���
=�F��A�
=                                    Bu�$#b  �          A{@�ff@�������{B;�@�ff@ �����R=qA�
=                                    Bu�$2  �          A\)@�Q�@���ʏ\�.Q�BH�R@�Q�@�\��(��l33A�z�                                    Bu�$@�  �          Az�@�33@�Q������*\)BI��@�33@����z��i{A���                                    Bu�$OT  �          A(�@�33@��
��{�'�B@�@�33@
=��  �c\)A�33                                    Bu�$]�  �          A\)@�{@�p���G��BD�@�{@#�
��  �Z=qA���                                    Bu�$l�  �          AG�@�p�@�p�����Q�B?��@�p�@���p��[�A�                                      Bu�${F  �          A�
@�(�@�G������ �RBI�@�(�@����R�`G�A陚                                    Bu�$��  �          A��@���@����=q� 
=BJz�@���@ ����  �_�A�                                    Bu�$��  �          A�@�ff@�ff��=q���BVz�@�ff@:�H��p��]�B\)                                    Bu�$�8  �          A
�H@j�H@�ff����B(�BC�\@j�H?�G���
=�z\)A��                                    Bu�$��  �          A{@~{@������B\Q�@~{@:=q���b{B�                                    Bu�$Ą  �          A�@�z�@�ff����0G�BB��@�z�?�=q��ff�j�A�
=                                    Bu�$�*  �          A��@��H@=p�����M=qB�\@��H>���޸R�n=q@33                                    Bu�$��  �          @��R@Vff@�G���p��A�BIQ�@Vff?�ff��G��{�A�G�                                    Bu�$�v  �          @�ff@S33@u�����C�HBE(�@S33?�33�ۅ�|{A�z�                                    Bu�$�  �          @���@r�\@�33��  �,�B<�H@r�\?У���ff�e��A�                                      Bu�%�  �          @�ff@g�@c�
��p��0\)B2=q@g�?��
���d�A���                                    Bu�%h  �          @�\@?\)@U��{�J�B@�@?\)?^�R��=q�33A�\)                                    Bu�%+  �          @�z�@|(�@��
��{�.B9�@|(�?�=q��(��e��A�G�                                    Bu�%9�  �          A�\@C�
@�������By��@C�
@`  �Ӆ�[��BC=q                                    Bu�%HZ  �          A@"�\@Ϯ���\��z�B�B�@"�\@�=q�ʏ\�N�Bn{                                    Bu�%W   �          A  @E@�(���=q�+��Bk�@E@�R�����t(�B{                                    Bu�%e�  �          A(�@X��@S33�׮�[��B1{@X��>�{��  .@�                                    Bu�%tL  �          Aff@B�\@��
���)�Bm�@B�\@!�����rffB                                      Bu�%��  �          A�R@8Q�@�G���33�P{BY�@8Q�?�
=���\A��
                                    Bu�%��  �          A=q@i��@Q���=q�eBp�@i������R�{��C��                                    Bu�%�>  �          A�H@j=q?�G���(��v{A�(�@j=q����G��q(�C���                                    Bu�%��  �          A   @g�@(��љ��dz�A�\)@g��z���(��wC�w
                                    Bu�%��  �          @�z�?��R@p  ��Q��i  B��q?��R?^�R��RA���                                    Bu�%�0  �          @�\)@   @R�\���
�_��BS{@   ?(���p�.A\Q�                                    Bu�%��  �          @���?�p�@�����p��XG�B�33?�p�?\��B�BL�H                                    Bu�%�|  �          @��?�ff@���G��#p�B�Q�?�ff@O\)���
�|(�B�u�                                    Bu�%�"  �          @�\)?J=q@�����R�G�B�\?J=q@n�R�ָR�qffB���                                    Bu�&�  �          @�
=?�ff@��R��G���\B��?�ff@fff�׮�s�\B���                                    Bu�&n  �          @�ff?��@�{��z��ffB�?��@i�����H�k�B�k�                                    Bu�&$  �          @��?��H@�(�����%33B���?��H@Mp���33�}��B��                                     Bu�&2�  �          @�(�?�(�@��
�����$p�B�z�?�(�@N{����|�B�z�                                    Bu�&A`  �          @�z�?��H@��R��p�� ��B�#�?��H@U��  �x�B�\)                                    Bu�&P  �          @�33?��
@����G��ffB���?��
@_\)��p��u�B�G�                                    Bu�&^�  �          @��?z�@��
��
=��B���?z�@e���(��u(�B�                                    Bu�&mR  �          @��?p��@�ff��=q��RB�
=?p��@n{��Q��n  B���                                    Bu�&{�  �          @�  ?}p�@�����G��Q�B��?}p�@W���33�w��B�8R                                    Bu�&��  �          @�?\@�
=�����B�8R?\@`������l��B�8R                                    Bu�&�D  �          @���?5@�G����\�#p�B�� ?5@P�����H�|�RB��\                                    Bu�&��  �          @�Q�?���@��H���
�!��B��
?���@R�\��z��x�B�
=                                    Bu�&��  �          @�{?�\)@������\�!�HB�B�?�\)@QG��ҏ\�y(�B�aH                                    Bu�&�6  �          @��
?��\@�\)����#(�B��?��\@N{��G��z�B��H                                    Bu�&��  �          @�33?��
@�\)����+G�B�� ?��
@;��ӅaHB�Ǯ                                    Bu�&�  �          @�?��
@����Q��+��B��?��
@7
=���H�=qBw\)                                    Bu�&�(  �          @陚?��@�Q����\�0�\B��f?��@,����33��Bq\)                                    Bu�&��  �          @�?�Q�@�  ����633B��)?�Q�@'
=����3Btz�                                    Bu�'t  �          @��
?�
=@�{��(��Gz�B�� ?�
=?�(���z�ǮBF=q                                    Bu�'  �          @�
=?�p�@�������8{B�(�?�p�@G��Ϯ=qBD                                      Bu�'+�  �          @�?�Q�@�(����R�-
=B��H?�Q�@8Q�������B�{                                    Bu�':f  �          @���?s33@�33��(��-�B���?s33@8Q���{��B���                                    Bu�'I  �          @�33?B�\@��
���H�,p�B�33?B�\@:�H�����B���                                    Bu�'W�  �          @�\)?E�@�\)��(����B��?E�@U��33�v�B�8R                                    Bu�'fX  �          @��?s33@�\)��� 33B�p�?s33@U���z��vG�B�G�                                    Bu�'t�  �          @�(�?���@�p���(��%�\B�k�?���@L���љ��zz�B�\                                    Bu�'��  �          @��?@  @�������%�B�8R?@  @N�R��
=�{�B��
                                    Bu�'�J  �          @�
=?Tz�@�������%p�B�aH?Tz�@L(���p��{Q�B��
                                    Bu�'��  �          @��?�33@�������'��B�ff?�33@E��
=�|�B�#�                                    Bu�'��  �          @�ff?�33@�����R�#�RB���?�33@K���33�w�
B�ff                                    Bu�'�<  �          @�{?�ff@��R��Q��&Q�B���?�ff@Dz���33�y=qB�{                                    Bu�'��  �          @�?˅@�33�����
=B�  ?˅@S33���mz�B���                                    Bu�'ۈ  �          @�?�ff@��
��{�$�
B�Q�?�ff@A���  �u�RB{�                                    Bu�'�.  �          @��
?Ǯ@�����R�%�\B�?Ǯ@@����Q��v(�Bzff                                    Bu�'��  �          @�33?�33@�Q���  �(  B��=?�33@:=q��Q��w�Bq��                                    Bu�(z  �          @��?ٙ�@�(���ff�/{B���?ٙ�@.{��z��}�Bh33                                    Bu�(   �          @��?���@�������9\)B�=q?���@����u�BPz�                                    Bu�($�  �          @�Q�?�(�@�ff��(��<Q�B��3?�(�@�������BR��                                    Bu�(3l  �          @��
?�\)@�������?�B�\)?�\)@����G��BY�                                    Bu�(B  �          @���?��@�ff��ff�;p�B���?��@��\)�=Bt�\                                    Bu�(P�  �          @�  ?�G�@������0��B���?�G�@������|=qBX��                                    Bu�(_^  �          @Ӆ?@  @�R����qB�G�?@  =�G���G�¦ǮA�                                    Bu�(n  �          @У�?\@6ff��z��p�HBx
=?\?(���G��HA�                                    Bu�(|�  �          @�Q�?�33@c33���R�Y33B�33?�33?�����
�BQ�                                    Bu�(�P  �          @�33?�{@[���(��]G�Bv=q?�{?�z��Ϯ�RB {                                    Bu�(��  �          @��?�=q@Z�H��33�g��B���?�=q?�=q��{Q�B�
                                    Bu�(��  �          @�z�?�\@K���33�hp�Bs�H?�\?\(���33��AУ�                                    Bu�(�B  �          @��
?�33@[���z��\��Bt(�?�33?��Ϯ#�A��                                    Bu�(��  �          @�(�@@s33���\�K\)Bt@?���ʏ\� Bff                                    Bu�(Ԏ  �          @�p�?�=q@P�������_\)Br�?�=q?�=q��=q�)A�                                    Bu�(�4  �          @�?�=q@8�������l�RBuQ�?�=q?:�H��{��A��                                    Bu�(��  �          @Ӆ?�(�@Dz���  �a�Be{?�(�?fff��\)��A�
=                                    Bu�) �  �          @У�@��@XQ���Q��Iz�BZz�@��?�����(��{A���                                    Bu�)&  �          @���@(�@�  ��z��6  Bu33@(�@��Q��y
=B.                                    Bu�)�  �          @���@@h������Cp�Bp�\@?ٙ�����
=B�\                                    Bu�),r  �          @�z�@�@hQ��(���  Be33@�@!��dz��8{B=�                                    Bu�);  �          @��R@z�@��Ϳ����(�B}�
@z�@j�H�G���p�Br33                                    Bu�)I�  �          @���?��@tz�5��BQ�?��@Tz�� ����=qBr33                                    Bu�)Xd  �          @��R?У�@r�\?0��A�HB��{?У�@r�\�0���Q�B��{                                    Bu�)g
  �          @��?�@�
=>�(�@�ffB���?�@�33��=q�`(�B���                                    Bu�)u�  �          @���?5@���?z�@���B��R?5@��H�k��G
=B�p�                                    Bu�)�V  �          @�p�?��@`�׿�G���(�B��?��@6ff�=q��Bp=q                                    Bu�)��  �          @�(�?���@U�o\)�0(�Bn�H?���?�����p��p��B,ff                                    Bu�)��  �          @��@!�@U������/�\BSQ�@!�?�(����h��B	�                                    Bu�)�H  �          @�@'�@b�\�~{�(Q�BV
=@'�?�
=��ff�b��B��                                    Bu�)��  �          @��@%@Q�����3Q�BN��@%?У������jB
=                                    Bu�)͔  �          @��@�@E���\)�AQ�BZ�@�?���G��zB33                                    Bu�)�:  �          @���@�@������O�\B@@�?Q�����=qA�                                    Bu�)��  �          @���?��?�  �[��[��B�?��>aG��o\)�|G�@��                                    Bu�)��  �          @�{@1녿Tz��.�R�-{C��R@1녿��H�G����C�(�                                    Bu�*,  �          @s33?��?\�*�H�?�Bp�?��?�\�A��e
=Ap��                                    Bu�*�  �          @���?��R@33�N{�UffBkQ�?��R?Q��n�R� B�                                    Bu�*%x  �          @~�R?�  ?���Tz��e33Bx�?�  ?!G��p��.B(�                                    Bu�*4  �          @q�?Y��?���`  �
BP33?Y���.{�j=qW
C�]q                                    Bu�*B�  �          @p��<�?O\)�g��HB��q<����j�H¥8RC��                                    Bu�*Qj  �          @i��>\?����U���B��>\>#�
�fff¦�A��R                                    Bu�*`  �          @]p�?=p�>�\)�Q�
=A�{?=p��Y���J�H�C�^�                                    Bu�*n�  �          @`��?�p����H��Q�C�Ǯ?�p����:=q�d(�C��{                                    Bu�*}\  �          @h��?�녾B�\�[��fC�@ ?�녿���J=q�s�C�%                                    Bu�*�  �          @]p�?���>Ǯ�G
=u�Ayp�?��׿0���C33�|�HC��=                                    Bu�*��  �          @j=q?�(�>�=q�[��AG�?�(��fff�Tz��)C�˅                                    Bu�*�N  �          @~�R?��ÿ^�R�mp�B�C��f?�����
�L���X{C��R                                    Bu�*��  �          @\)?�p����ep�C�U�?�p��33�@  �C�\C�R                                    Bu�*ƚ  �          @��?�{�����n{�\C��H?�{���HQ��LQ�C��3                                    Bu�*�@  �          @�33?�
=�G��S33�Z�
C�%?�
=�@���(��33C���                                    Bu�*��  �          @�33?�ff���L���O��C�c�?�ff�Mp��  ���C�                                    Bu�*�  �          @n�R?�Q��*�H�  ���C��)?�Q��P�׿�p�����C���                                    Bu�+2  �          @e�?����*=q������C�z�?����HQ�fff�r=qC��H                                    Bu�+�  �          @tz�?(�?�p��P  �q�B��\?(�?\)�h��p�B+G�                                    Bu�+~  �          @r�\?fff?&ff�c�
�\B�?fff���dz��C�                                    Bu�+-$  �          @|(�?�p�?W
=�b�\��A�p�?�p��\�g
=#�C��                                    Bu�+;�  �          @���?��H?h���^{�s\)Aޏ\?��H��z��e�(�C�.                                    Bu�+Jp  �          @��@�?���P  �U�\A�z�@���Q��Z=q�e�C��                                     Bu�+Y  �          @���@\)?�p��G��K  A��
@\)>��Vff�`��@X��                                    Bu�+g�  �          @���@p�?�  �J�H�G��BQ�@p�>�p��^�R�e  Ap�                                    Bu�+vb  �          @���@��?����6ff�-�\B�H@��?O\)�S33�Rp�A�Q�                                    Bu�+�  �          @�@��?�Q��:=q�133B"�H@��?c�
�X���YffA��                                    Bu�+��  �          @�p�@ff@�\�:�H�3�B0�@ff?z�H�[��_�RAǮ                                    Bu�+�T  �          @�z�@	��?�(��K��J�B	�@	��>�Q��_\)�h(�A�H                                    Bu�+��  �          @�G�@{?�p��I���>\)A��R@{>�p��]p��X��A	p�                                    Bu�+��  �          @�@O\)?333�8���$�AC
=@O\)��=q�=p��)�C���                                    Bu�+�F  �          @��R@U�?�G��*�H�z�A�p�@U�>����;��$�@�33                                    Bu�+��  �          @�ff@8Q�?����0����RBff@8Q�?u�O\)�;�\A���                                    Bu�+�  �          @�\)@C33?�{�333�\)A�Q�@C33?�R�J�H�6
=A7�
                                    Bu�+�8  �          @�{@H��?�=q�5�Q�A��@H��>�33�G��2��@��                                    Bu�,�  �          @�ff@?\)?�G��2�\�=qA�@?\)?E��L���8Q�Ag33                                    Bu�,�  �          @�33@0��@ ���*�H��HBQ�@0��?�ff�J�H�<
=A���                                    Bu�,&*  �          @�33@K�?�ff��
�33A�{@K�?xQ��0�����A�p�                                    Bu�,4�  �          @�@@>{��
��z�B[�@@
=q�9���0  B833                                    Bu�,Cv  �          @�(�@!�@>{���H��  BF�@!�@(��3�
� 
=B#G�                                    Bu�,R  �          @�  @�\@S33���R����B]\)@�\@   �<(��#��B>ff                                    Bu�,`�  �          @��
?���@s�
�������\B��?���@B�\�;���\BlG�                                    Bu�,oh  �          @�G�@4z�@���(����B!{@4z�?�
=�P  �7z�A�\)                                    Bu�,~  �          @��@:�H@,���0���Q�B*�
@:�H?�
=�^{�7p�A��
                                    Bu�,��  �          @�G�@?\)@ff�AG��33B{@?\)?���aG��@33A�33                                    Bu�,�Z  �          @�{@;�@0���+����B-(�@;�?�\�Z=q�3z�A��                                    Bu�,�   �          @�p�@5@Tz��  ��Q�BE�
@5@(��K��!Q�B"��                                    Bu�,��  �          @�  @1G�@5�&ff�(�B6�H@1G�?���W
=�4z�B                                    Bu�,�L  �          @��R@7
=@p��2�\��
B#  @7
=?�(��Z=q�;{A�p�                                    Bu�,��  �          @�z�@*=q@L(��$z���BH�@*=q@�R�[��2��B (�                                    Bu�,�  �          @��\?�Q�@������^=qB�  ?�Q�@fff����
=Bv�R                                    Bu�,�>  �          @��
?ٙ�@�������}�B���?ٙ�@k��%��  B��=                                    Bu�-�  �          @�33?�G�@x���p���B��{?�G�@<(��b�\�;��B{(�                                    Bu�-�  �          @��\?�
=@��\���Џ\B�\)?�
=@N�R�QG��+p�B�.                                    Bu�-0  �          @��?��
@��R�޸R���
B�\?��
@^{�=p����B�aH                                    Bu�--�  �          @�=q?p��@�33���\�D(�B�?p��@�������\B�{                                    Bu�-<|  �          @��>�ff@�
=�aG��0z�B�z�>�ff@~�R�p�����B��                                    Bu�-K"  �          @��
?��@��
�(���{B���?��@P  �U�*p�B}
=                                    Bu�-Y�  �          @�33@
=q@u�A��	��Br�@
=q@.�R����Ep�BN�R                                    Bu�-hn  �          @��H?���@|(��B�\�
z�B~�?���@4z����H�H(�B]p�                                    Bu�-w  �          @�33@G�@p��w
=�I�BJ�R@G�?���p��x��A�ff                                    Bu�-��  �          @�ff@�@4z�����A�BL=q@�?�Q���
=�q33B��                                    Bu�-�`  �          @�ff@��@L(��u�4{B`ff@��?�\)��(��i�
B$ff                                    Bu�-�  �          @��@<��@   �l(��.��B!�@<��?�G������Tp�A�\)                                    Bu�-��  �          @�(�@g�@p��HQ��33B��@g�?�33�n{�/ffA��                                    Bu�-�R  �          @�33@�@P���b�\�&�
B\33@�@�����\
=B'�                                    Bu�-��  �          @��
@C33@>{�P����B0@C33?�����  �@��A��                                    Bu�-ݞ  �          @�{@P��@:=q�O\)�(�B'33@P��?�ff�}p��;33A癚                                    Bu�-�D  �          @�
=@B�\@B�\�XQ���B4  @B�\?����(��Dz�A�ff                                    Bu�-��  �          @�
=@>{@Dz��Z�H�B7��@>{?�33���Gz�B��                                    Bu�.	�  �          @��@5�@HQ��Mp����B?�R@5�@���  �C�HB��                                    Bu�.6  �          @�Q�@�H@L���XQ�� G�BS��@�H@33���SG�B �
                                    Bu�.&�  �          @�33@5�@N{�N{�BB�\@5�@
=�����C=qB                                    Bu�.5�  �          @�G�@�@��n{�>z�B6�H@�?��H�����h\)A���                                    Bu�.D(  �          @�
=@�@@���l(��4�B[\)@�?��
����g��B 
=                                    Bu�.R�  �          @�33@��@j=q�2�\�\)Bn�
@��@*=q�o\)�>�BM33                                    Bu�.at  �          @�p�@33@fff�8���33Be�@33@%�tz��?z�BA��                                    Bu�.p  �          @��?�33@k��:=q�\)Bz�H?�33@)���w
=�GG�BY�
                                    Bu�.~�  �          @�\)?ٙ�@p  �.�R�33B�8R?ٙ�@1��mp��C  Bj(�                                    Bu�.�f  �          @���@��@Q��<���(�Bc��@��@���q��JG�B:��                                    Bu�.�  �          @�(�@0  @W
=�J=q�  BJ��@0  @�\��  �@�HB�                                    Bu�.��  �          @�p�@Fff@J�H�G��\)B6�\@Fff@��z=q�8�\B	\)                                    Bu�.�X  �          @�z�@I��@B�\�I����HB0�@I��?��R�y���9Q�B(�                                    Bu�.��  �          @��R@U@8���K���
B#z�@U?��xQ��6
=A�z�                                    Bu�.֤  �          @�\)@N{@8���U��B'��@N{?����G��>A��H                                    Bu�.�J  �          @�
=@*=q@hQ��G
=�
�BV�@*=q@$z������=��B/�
                                    Bu�.��  �          @��
@:�H@1��b�\�%{B.(�@:�H?У���{�M��A�G�                                    Bu�/�  �          @�\)@2�\@333�]p��$�B4��@2�\?�
=���
�N��A��H                                    Bu�/<  �          @�{@!�@2�\�dz��-�RB?33@!�?����
=�Y��B��                                    Bu�/�  �          @�  @&ff@(Q��j�H�3{B5{@&ff?��H�����\G�A��                                    Bu�/.�  �          @�(�@%@\)��  �@=qB/�R@%?�p���G��g{A�{                                    Bu�/=.  �          @��H@5�@��~�R�@p�B\)@5�?p�����`p�A�G�                                    Bu�/K�  �          @�Q�@7
=@z��n�R�5��Bff@7
=?�33����X
=A�                                    Bu�/Zz  �          @�  @4z�@#33�g��.z�B(G�@4z�?�33��ff�Tz�A�\)                                    Bu�/i   �          @��\@*�H@#33�u��833B/(�@*�H?��������_G�A�\)                                    Bu�/w�  �          @�G�@   @Q���(��NG�B!�@   ?\(�����o�HA��
                                    Bu�/�l  �          @�G�@@33��(��M�HB2
=@?��
���
�s�
A�(�                                    Bu�/�  �          @���@Y��@	���L(����B=q@Y��?�33�j�H�6z�A�                                      Bu�/��  �          @��H@Fff?�Q��aG��/��B Q�@Fff?\(��z�H�J�Ay�                                    Bu�/�^  �          @�{@H��@��b�\�,{B�@H��?��
�\)�Iz�A��                                    Bu�/�  �          @��@=p�@   �g
=�5�B�@=p�?c�
�����Q��A�z�                                    Bu�/Ϫ  �          @���@>{@#33�Z=q�$�B"ff@>{?�p��\)�H�
A�{                                    Bu�/�P  �          @��\@@  @G��u�:�HB��@@  ?\(���  �V��A~�H                                    Bu�/��  �          @��@N{?�\)�x���9{A���@N{?333��  �Q�AC�
                                    Bu�/��  �          @�{@tz�@^{����ǮB(�
@tz�@)���Q����B{                                    Bu�0
B  �          @�z�@�\)@.�R����=qB(�@�\)?�Q��Fff���Aģ�                                    Bu�0�  �          @�=q@{�@B�\�   ���
B
=@{�@{�P  �(�A��                                    Bu�0'�  �          @�{@`��?�=q�w
=�4{A��@`��>�G���z��E�
@�\                                    Bu�064  �          @��@_\)@�
�s�
�-
=A��R@_\)?k���\)�F\)Ak�
                                    Bu�0D�  �          @�{@Mp�?���G��@z�A��@Mp�>����H�T�
A��                                    Bu�0S�  �          @��
@U?����q��3{A��
@U?333��(��I��A<                                      Bu�0b&  �          @�G�@Vff?\�p���6\)A�G�@Vff>�
=�����H(�@�z�                                    Bu�0p�  �          @�=q@Vff?���r�\�5�AУ�@Vff?����H�I\)A�                                    Bu�0r  �          @���@w�@
�H�L���\)A�{@w�?����j�H�(��A��                                    Bu�0�  �          @��@�{@:�H�����{BG�@�{@��'
=����A�                                      Bu�0��  �          @�@�(�@>{���g
=B�
@�(�@{����z�A��\                                    Bu�0�d  �          @��R@�p�@3�
��Q���p�A�Q�@�p�@\)�����Q�A���                                    Bu�0�
  �          @��@��
@,(����n{A�@��
@���ff����A˅                                    Bu�0Ȱ  �          @���@�ff@/\)���
�*�HA�@�ff@ff��p���=qAԸR                                    Bu�0�V  �          @���@���@,(��B�\���A뙚@���@Q쿼(��v=qA�Q�                                    Bu�0��  �          @���@�G�@*�H�(�����A��@�G�@�ÿ�{�c�
A�(�                                   Bu�0��  �          @��H@���@,(��n{���A�(�@���@��\)��33AϮ                                   Bu�1H  �          @���@�ff@%����_�A�z�@�ff@����R���\A£�                                    Bu�1�  �          @�=q@�@#33�У����A�G�@�@G������G�A���                                    Bu�1 �  �          @�  @��H@<(��h���=qA�{@��H@%������A��\                                    Bu�1/:  �          @�{@��@B�\�z�H�(�A���@��@*=q��\���\A�ff                                    Bu�1=�  �          @��@��
@9������/�A�{@��
@�R�����Q�A���                                    Bu�1L�  �          @��@���@8Q�Q�� ��A�=q@���@#33�Ǯ�xQ�A��                                    Bu�1[,  �          @��@��R@+���
=�c�
A�G�@��R@���ff��G�A�G�                                    Bu�1i�  �          @���@��@0  ���
�up�A��
@��@�R�p���Ař�                                    Bu�1xx  �          @���@�  @.{�������A�  @�  @�� ���ͮA�z�                                    Bu�1�  �          @�33@��?���R��ffA���@��?�Q��9�����HA_
=                                    Bu�1��  �          @�ff@���?��\�Q��
=AJ�\@���=����[����?��                                    Bu�1�j  �          @��@���?��Vff�
ffA��@���>���g
=��R@���                                    Bu�1�  �          @�@�?��O\)�p�A���@�?=p��dz���HA(�                                    Bu�1��  �          @�@�p�?�p��N{���A�33@�p�?Q��dz���HA�H                                    Bu�1�\  �          @�ff@��?����AG���A��H@��?�=q�Z�H���AMp�                                    Bu�1�  �          @���@��H@��E���(�A�
=@��H?���`  �33A`                                      Bu�1��  �          @�{@�(�?�{�E��
A�{@�(�?z�H�^{�AIp�                                    Bu�1�N  �          @��
@��?�ff�H����A�{@��?(���[���\A
=q                                    Bu�2
�  �          @��@�ff?��
�I���G�A�  @�ff?aG��`�����A3\)                                   Bu�2�  �          @��\@�(�?У��G����A��@�(�?@  �[���
A�
                                   Bu�2(@  �          @��@�(�?ٙ��J=q��\A�
=@�(�?O\)�_\)�z�A=q                                    Bu�26�  �          @�33@�33?�Q��B�\���HA��@�33?����\(��p�AR�\                                    Bu�2E�  �          @��@���?����@  ���A��@���?�  �W��=qAG�                                    Bu�2T2  �          @��H@�Q�?���AG����A��@�Q�?   �P���@ʏ\                                    Bu�2b�  �          @�33@��\?�{�9����A��
@��\?���I���	=q@�(�                                    Bu�2q~  �          @�33@���?�ff�/\)���HA��@���?��\�G
=�z�AL                                      Bu�2�$  �          @���@�{?�z��8������A�  @�{?Y���N{��A-��                                    Bu�2��  �          @��@��?����5��{A��
@��?G��J=q�	{A�\                                    Bu�2�p  �          @�33@���?�=q�0  ���HA��@���?�ff�G���AQ�                                    Bu�2�  �          @�Q�@��?�Q��:�H��A�
=@��?^�R�P  �	��A)                                    Bu�2��  �          @���@�z�?Ǯ�:=q��\A��@�z�?@  �Mp��(�Az�                                    Bu�2�b  �          @��@�?���;���z�A���@�?����Tz��=qAY�                                    Bu�2�  �          @�
=@�\)?�\)�@�����\A�
=@�\)?��
�Y����AN�H                                    Bu�2�  �          @���@�?����@  �G�A�Q�@�?�{�Y����
An�R                                    Bu�2�T  �          @�
=@��?�33�AG����A�=q@��?���Z=q��Af�R                                    Bu�3�  �          @���@~{?�33�Fff���A�Q�@~{?���^�R�!p�Ajff                                    Bu�3�  �          @���@q�@G��G
=��A���@q�?�z��aG��&�A�(�                                    Bu�3!F  �          @�Q�@o\)@33�QG���RA��\@o\)?����o\)�,�HA��\                                    Bu�3/�  �          @���@|��@z��QG��  A�G�@|��?��l(��'p�A���                                    Bu�3>�  �          @�\)@x��@	���L����
A�p�@x��?�G��h���&��A�                                      Bu�3M8  �          @�
=@n�R@�X����A�ff@n�R?�z��tz��1z�A�                                      Bu�3[�  �          @�  @w
=@�R�N{�Q�A�ff@w
=?���k��(
=A�G�                                    Bu�3j�  �          @���@l��@\)�QG��(�B�@l��?����r�\�-z�A�z�                                    Bu�3y*  �          @�\)@g�@z��XQ���HB�@g�?����w
=�3��A�p�                                    Bu�3��  �          @���@tz�@z��P  �  A�@tz�?��n�R�)A���                                    Bu�3�v  �          @�  @o\)@�
�QG��ffA���@o\)?�z��o\)�,z�A�33                                    Bu�3�  �          @��@z�H@ ���W���\AظR@z�H?���p���+
=Ax��                                    Bu�3��  �          @�(�@mp�@G��c�
�33A��@mp�?�ff�����6z�A�ff                                    Bu�3�h  �          @�(�@s�
@{�Tz����B��@s�
?�ff�u��+��A�33                                    Bu�3�  �          @�(�@b�\@5�S�
�z�B@b�\?�z��z�H�0�A���                                    Bu�3ߴ  �          @�@p  @/\)�P���G�B�\@p  ?�=q�u�*�A�ff                                    Bu�3�Z  �          @��
@k�@B�\�>{����B
=@k�@(��h���!p�A�=q                                    Bu�3�   �          @�
=@Y��@S�
�+���B0�@Y��@!��Z�H��B                                    Bu�4�  �          @��
@|(�@
=�N{��A�\)@|(�?�p��mp��%�A��R                                    Bu�4L  �          @�  @`��@'
=�8���  Bz�@`��?�ff�\���$Aٙ�                                    Bu�4(�  �          @�\)@`  @!G��>{�
ffB��@`  ?ٙ��`  �(33A���                                    Bu�47�  �          @��R@^{@�H�B�\��HB\)@^{?�=q�c33�+��A�{                                    Bu�4F>  �          @���@Y��@)���C33��B�@Y��?�ff�g
=�,�A�                                      Bu�4T�  �          @���@k�?��H�P���G�A�{@k�?�=q�h���.=qA��                                    Bu�4c�  �          @���@e�@Q��QG����A��@e�?�  �l(��1
=A��                                    Bu�4r0  �          @��
@n{@   �Tz���A�{@n{?�\)�mp��.��A��                                    Bu�4��  �          @�z�@n�R?�(��U�Q�A޸R@n�R?�=q�n{�/  A���                                    Bu�4�|  �          @��
@dz�@���S�
�Q�B�R@dz�?����qG��2\)A���                                    Bu�4�"  �          @��@l��?�p��P���Q�A���@l��?aG��e�-Q�AUp�                                    Bu�4��  �          @��R@l��?��W
=�!  A�  @l��?���fff�/��A33                                    Bu�4�n  �          @�@y��?�=q�E�z�A���@y��?��Tz�� �@�
=                                    Bu�4�  �          @��R@k�?��H�L(����Aƣ�@k�?^�R�`���+\)AT(�                                    Bu�4غ  �          @�
=@s�
?У��L(��(�A�G�@s�
?L���_\)�'p�A=G�                                    Bu�4�`  �          @�{@~�R?�p��P����A�p�@~�R?^�R�e��%(�AF=q                                    Bu�4�  �          @��R@w�?�z��]p���A�33@w�?B�\�p���.�\A1�                                    Bu�5�  �          @�@�33@���;���  A�ff@�33?�z��W��A�{                                    Bu�5R  �          @�\)@�z�@�\�C�
�33A�\)@�z�?�p��^{���Az�\                                    Bu�5!�  �          @��@���@	���1G���z�Aʏ\@���?�z��Mp���HA��                                    Bu�50�  �          @�z�@��
@33�6ff��AӅ@��
?��
�Tz��	ffA��H                                    Bu�5?D  �          @�
=@��@	���C�
���\A�@��?���_\)�  A�
                                    Bu�5M�  �          @�  @�
=@33�Dz�����A�p�@�
=?��R�^�R��
Ak
=                                    Bu�5\�  �          @�  @��H?���U��HA�
=@��H?��\�l����AH��                                    Bu�5k6  �          @�  @��?�{�XQ��	A�\)@��?z�H�n�R�z�AB�R                                    Bu�5y�  �          @�Q�@�p�?����S�
���A��@�p�?u�i�����A9��                                    Bu�5��  �          @���@��H@�\�=p���p�A���@��H?�G��W
=��
AiG�                                    Bu�5�(  �          @�G�@��\@(��7
=��\A�G�@��\?�
=�S33�  A�z�                                    Bu�5��  �          @�\)@�(�@\)�%��Q�A�G�@�(�?�ff�C�
���HA��R                                    Bu�5�t  �          @�\)@�=q@Q��(Q��Џ\A�=q@�=q?�
=�HQ���  A�G�                                    Bu�5�  �          @�Q�@��R@\)�#33��z�A�ff@��R?Ǯ�@����z�A�                                    Bu�5��  �          @�G�@�Q�@��(�����A�\)@�Q�?��;���=qA��                                    Bu�5�f  �          @Å@�=q@��(���{A�ff@�=q?��H�;����
A��                                    Bu�5�  �          @�{@���@\)�ff��ffA�{@���?����7��ݙ�A�                                      Bu�5��  �          @�@�33@{�{��=qA��H@�33?��?\)��G�A�(�                                    Bu�6X  �          @ƸR@��@Q��%��
=A�@��?�Q��E���=qA�z�                                   Bu�6�  �          @�\)@�@��(����=qA��
@�?�=q�G
=��
=A��                                   Bu�6)�  �          @�\)@�
=@  �#33��A��R@�
=?����AG���  A�Q�                                    Bu�68J  �          @��
@��@�
� ����Q�A�Q�@��?���?\)���A��                                    Bu�6F�  �          @�@�=q@�\�*�H���A�z�@�=q?˅�H������A���                                    Bu�6U�  �          @�@�  @�\�333��  A�
=@�  ?Ǯ�QG���A�ff                                    Bu�6d<  �          @ȣ�@�
=@
=q�.�R�Ώ\A���@�
=?�Q��J=q���Aw\)                                    Bu�6r�  �          @Ǯ@�@
=q�,����33A��@�?��H�HQ���A{33                                    Bu�6��  �          @�
=@�33@p��0����p�A���@�33?��R�Mp���
=A�ff                                    Bu�6�.  �          @ƸR@�\)@�ff��=qA���@�\)?��H�5���{A�
=                                    Bu�6��  �          @�  @��@%���R��p�A��
@��@�\�#33��p�A�{                                    Bu�6�z  �          @�
=@���@G���G����A�z�@���?��
�\)��
=A�G�                                    Bu�6�   �          @���@���@33�z����A��@���?޸R�#�
���HA��                                    Bu�6��  �          @�
=@�{@���   ��(�A���@�{?�(���R���A���                                    Bu�6�l  �          @��
@��H@
=q�z����
A��
@��H?�{�!G���Q�A��
                                    Bu�6�  �          @�@�(�@G��G�����A�33@�(�?�p��   ��
=A��\                                    Bu�6��  �          @�\)@�z�?��H����
=A�
=@�z�?�(��{����Aj=q                                    Bu�7^  �          @ƸR@�z�@����eG�A�ff@�z�?�z��p���G�A���                                    Bu�7  �          @ƸR@��\@z��  ���A�z�@��\?˅�(���G�A
=                                    Bu�7"�  �          @�\)@��R@�
������HA���@��R?�ff����p�A�=q                                    Bu�71P  �          @��
@�=q@z�����(�A�Q�@�=q?��Q����A�(�                                    Bu�7?�  �          @�(�@���@
�H������RA��H@���?˅�)����p�A�Q�                                    Bu�7N�  �          @�p�@���@������A���@���?\�#33�îA|Q�                                    Bu�7]B  �          @ƸR@��H@���������A��@��H?�{�-p��ϙ�A�                                      Bu�7k�  �          @�p�@�z�@�
��33��A�@�z�?�ff������\A��
                                    Bu�7z�  �          @��H@�p�@ �׿�Q��3�A�z�@�p�@
=q�޸R���HA���                                    Bu�7�4  �          @\@�@p������'\)A��@�@Q��33�|Q�A�                                    Bu�7��  �          @�p�@�p�@�\��{��(�A�
=@�p�?�����ffA�{                                    Bu�7��  �          @��
@���@�R��ff���HA�\)@���?�  �G���ffA�G�                                    Bu�7�&  �          @\@�z�@�
��\)�w33A�@�z�?�\)�����HA���                                    Bu�7��  �          @���@�p�@�����|��A�{@�p�?�������A��R                                    Bu�7�r  �          @���@��@
=��=q�%�A��\@��@�\�����w�A�p�                                    Bu�7�  �          @��
@�=q@-p���=q�H��Aי�@�=q@z������A�z�                                    Bu�7�  �          @�=q@���@'
=�����\��Aң�@���@��� ����G�A�33                                    Bu�7�d  �          @��
@�Q�@\)�333��33A\@�Q�@�׿�G��?\)A�=q                                    Bu�8
  �          @��@���@,�;\)��G�A��
@���@%�B�\���HAȸR                                   Bu�8�  �          @�z�@���@5���=q�G�A�@���@(�������{Aƣ�                                   Bu�8*V  �          @�=q@�(�@8Q��z��r�HA�p�@�(�@�H����33A���                                    Bu�88�  �          @�
=@�z�@,�Ϳ��
�c\)AԸR@�z�@G��
=���HA��\                                    Bu�8G�  �          @��@��R@4zῺ�H�V�RA�ff@��R@�������A�                                    Bu�8VH  �          @���@��@8Q�fff�\)A�G�@��@%����c�A�{                                    Bu�8d�  �          @�Q�@���@0  �W
=��\)A�
=@���@�R���H�W�A��R                                    Bu�8s�  �          @�Q�@��@%��u���A�G�@��@녿��
�bffA��                                    Bu�8�:  �          @���@�z�@*=q�=p���\)A�(�@�z�@�H��=q�D(�A��                                    Bu�8��  �          @�G�@���@*=q�333��33A�33@���@�H����=A�p�                                    Bu�8��  �          @ƸR@�G�@'
=����p�A��
@�G�@33��{�p��A�Q�                                    Bu�8�,  L          @�  @�33@   ��z��*�RA�z�@�33@
=q�ٙ��}G�A�
=                                    Bu�8��  �          @�
=@�ff@,�Ϳ��
�>=qA�z�@�ff@���\)��{A��H                                    Bu�8�x  �          @�\)@�\)@%����H�X��A�33@�\)@
�H�G���
=A�z�                                    Bu�8�  �          @�ff@�
=@!G���p��\��AŅ@�
=@ff�G���=qA�Q�                                    Bu�8��  �          @���@��@������FffA�
=@��@�
�������
A�z�                                    Bu�8�j  �          @���@��H@�������A���@��H@G������mG�A���                                    Bu�9  �          @��
@���@33��p��:�\A�z�@���?�����p���A�\)                                    Bu�9�  �          @\@��@ff�У��x��A�\)@��?�z��Q���{A��H                                    Bu�9#\  �          @Å@��H@��ff��G�A�G�@��H?�{��\��z�A��                                    Bu�92  �          @��@��R@(���Q��Yp�A���@��R@�\��(���p�A�{                                    Bu�9@�  �          @ƸR@��R@#�
��Q��W�A��@��R@
=q�   ��ffA���                                    Bu�9ON  �          @���@��R@!녿���A�AƸR@��R@
=q��=q����A��H                                    Bu�9]�  �          @�z�@�Q�@=q���H�6�RA���@�Q�@�
�޸R���A�Q�                                    Bu�9l�  �          @��@�@&ff����@��A̸R@�@�R�������A��H                                    Bu�9{@  �          @ƸR@���@#33��(��5G�AƏ\@���@�Ϳ��
����A�{                                    Bu�9��  �          @Ǯ@�=q@(�ÿp���
{A��H@�=q@ff�\�ap�A�G�                                    Bu�9��  �          @ȣ�@�z�@'
=�aG�� Q�A���@�z�@�����V=qA�Q�                                    Bu�9�2  �          @ə�@��
@.�R�L���陚A���@��
@{��z��NffA���                                    Bu�9��  �          @�ff@�
=@7�������A݅@�
=@*�H��
=�/
=A�(�                                    Bu�9�~  �          @�
=@��
@(�þ����@  A���@��
@\)�k����A��                                    Bu�9�$  �          @Ǯ@���@(Q쾙���-p�A��
@���@\)�c�
��A�z�                                    Bu�9��  �          @��@��@2�\�8Q�У�A�33@��@*�H�O\)��=qAυ                                    Bu�9�p  �          @���@�=q@&ff�8Q�У�A�(�@�=q@\)�E���A��R                                    Bu�9�  �          @�  @���@'������0��A��H@���@�R�c�
��
A��                                    Bu�:�  �          @�{@���@(�ÿ�R��Q�A˅@���@����H�4��A���                                    Bu�:b  �          @�33@��@8�ÿ#�
��  A�z�@��@*�H���
�B�HA�G�                                    Bu�:+  �          @�33@�\)@ff��  �<��A��@�\)@   ��  ��A�z�                                    Bu�:9�  �          @Å@�33@   ����i�A�ff@�33@��z����HA��
                                    Bu�:HT  �          @���@��
@0  �����vffAᙚ@��
@33�(���Q�A�                                    Bu�:V�  �          @��@�p�@'������`  A���@�p�@{� ����33A�                                    Bu�:e�  �          @�Q�@��\@7�����J�RA뙚@��\@\)��
=���A��H                                    Bu�:tF  �          @��@���@,�Ϳ���!A�(�@���@Q��33�~{A��                                    Bu�:��  �          @��@�(�@%��G����Aͮ@�(�@�\�����p��A�ff                                    Bu�:��  �          @�33@���@(Q�}p��A�@���@������n�HA��H                                    Bu�:�8  �          @��@���@0�׿�{�(��A�G�@���@(���(�����A�Q�                                    Bu�:��  �          @���@�33@%����!A�
=@�33@녿У��z=qA���                                    Bu�:��  �          @�G�@��@%����
�C�A�G�@��@{����A�G�                                    Bu�:�*  �          @�  @��@���
=�5��A�G�@��@���H��=qA���                                    Bu�:��  �          @Å@�@#33���0  A�p�@�@p���(����HA���                                    Bu�:�v  �          @��H@��@"�\����,��A�33@��@p���Q���G�A�                                    Bu�:�  �          @���@��@Q쿫��MG�A�33@��@   ��������A�                                      Bu�;�  �          @���@��
@z῰���S�A���@��
?�Q��\)��33A�
=                                    Bu�;h  �          @���@��@�ÿ�{�P  A�=q@��@ �׿�\)���\A���                                    Bu�;$  �          @���@��\@(�����T��A���@��\@�
��z����A��H                                    Bu�;2�  �          @�  @��@�H��Q��]G�A��
@��@G��������
A���                                    Bu�;AZ  �          @��
@�@�ÿ��H�>�HA�@�@�\��(���p�A�=q                                    Bu�;P   �          @�33@��R@���{�.�RA�ff@��R@
=�����{A��R                                    Bu�;^�  �          @�(�@�p�@!녿�\)�0(�AУ�@�p�@�Ϳ����\A��R                                    Bu�;mL  �          @��R@�
=@.{�n{�
=A�  @�
=@��\�m��A��
                                    Bu�;{�  �          @�p�@��@0�׿W
=��RA��@��@\)�����c�A�=q                                    Bu�;��  �          @�p�@���@(�ÿ\)��AԸR@���@(���33�3�AƏ\                                    Bu�;�>  �          @���@���@&ff��\���A�{@���@=q����*ffA��H                                    Bu�;��  �          @�p�@��
@�ÿ�R��
=A��@��
@���33�3\)A�
=                                    Bu�;��  �          @�@���@*�H��\)�!G�A֏\@���@%��.{�ҏ\AЏ\                                    Bu�;�0  �          @���@���@&ff��\)�+�A��@���@{�^�R��A�z�                                    Bu�;��  �          @�p�@��@*�H�������A��
@��@\)�����&�HA�33                                    Bu�;�|  �          @�{@���@�ͽu�z�A¸R@���@���R����A�
=                                    Bu�;�"  �          @�{@��H@'
=���
�8Q�AЏ\@��H@!G��+��У�A�ff                                    Bu�;��  �          @�(�@�ff@��=L��?
=qA��@�ff@	����ff��p�A�=q                                    Bu�<n  �          @�@��H?�
=>�p�@a�A�ff@��H?��H��Q�^�RA��R                                    Bu�<  �          @�@�z�?�����G�A�z�@�z�?�p��
=q����A���                                    Bu�<+�  �          @��H@�  ?���
=���\A���@�  ?�\�Y���G�A�z�                                    Bu�<:`  �          @�33@�z�@�������A��
@�z�?��R����#�
A�{                                    Bu�<I  �          @�(�@�p�@
�H�333���HA��\@�p�?�����
=�9��A�=q                                    Bu�<W�  �          @�z�@�p�@��aG����A�
=@�p�?�{����R�HA��                                    Bu�<fR  �          @�(�@���@Q�B�\����A�p�@���@�ÿ��
�J�RA�                                      Bu�<t�  �          @��\@�  @=q�
=q��z�A��H@�  @p�����,��A��H                                    Bu�<��  �          @��\@�p�@33����U�A�=q@�p�?�
=����G�A��                                    Bu�<�D  �          @��H@�
=@�\���\�HQ�A��@�
=?�
=��G����\A��H                                    Bu�<��  �          @��
@�ff@�H��  �D��AǮ@�ff@�
���
����A�G�                                    Bu�<��  �          @��@�
=@%������A��@�
=@=q����&�RA�Q�                                    Bu�<�6  �          @��\@��H@#33��
=�:�RAԏ\@��H@�Ϳ�p�����A�G�                                    Bu�<��  �          @�33@�=q@-p����\� ��A���@�=q@����\)����A�z�                                    Bu�<ۂ  �          @�33@��
@*=q�n{��RA�p�@��
@��\�q��Aƣ�                                    Bu�<�(  �          @��@�z�@ �׿�
=�9�A�ff@�z�@
�H��p�����A�33                                    Bu�<��  �          @�33@���@%�Y���=qAՙ�@���@zῷ
=�c
=A�(�                                    Bu�=t  �          @��@�ff@Q쿃�
�"�\AĸR@�ff@���ff�w�A�(�                                    Bu�=  �          @��@���@zῦff�O
=A�33@���?��H�޸R���
A��                                   Bu�=$�  �          @��\@���@E��z���
=B ��@���@7
=���
�K�A�=q                                   Bu�=3f  �          @��\@�p�@   �h���(�A�=q@�p�@p���(��i�A��                                    Bu�=B  �          @���@�(�?�Q쿘Q��>�HA���@�(�?�\)��ff�y�Ad(�                                    Bu�=P�  �          @�G�@��?�33��Q��>{A�G�@��?��ÿ���w\)A[�
                                    Bu�=_X  �          @���@�33?��R��ff�&{A�\)@�33?�Q쿽p��l��A�z�                                    Bu�=m�  �          @��H@�ff@#33�5�߮Aх@�ff@zῥ��K�
A�ff                                    Bu�=|�  �          @�p�@���@7
=�������A�  @���@(�ÿ�  �BffA���                                    Bu�=�J  �          @���@��@>{�z���z�A�R@��@0  ��G��D��A��
                                    Bu�=��  �          @�z�@��H@8�ÿ+�����A��H@��H@)����=q�Pz�A�ff                                    Bu�=��  �          @��@��@9���&ff�ȣ�A�z�@��@*=q��ff�L(�A�z�                                    Bu�=�<  �          @�z�@��@4z�
=q���HA���@��@'
=��Q��;\)A�ff                                    Bu�=��  �          @��H@��@33�����G�A�p�@��?Ǯ��
���A���                                   Bu�=Ԉ  �          @���@��
?�Q�����  A�  @��
?�Q���\��(�A|                                      Bu�=�.  �          @���@��?��������A�Q�@��?�G��'���(�Ac�                                    Bu�=��  �          @�  @��H?��
�!���33A��@��H?���8Q����AS�                                    Bu�> z  �          @�Q�@��H?��!G��ϮA�{@��H?�Q��8Q���(�A]G�                                    Bu�>   �          @�  @�?�
=�����\)A��R@�?���1G���\AA�                                    Bu�>�  �          @���@�{?�p��,(�����A_�@�{?\)�9����Q�@�                                      Bu�>,l  �          @��@�
=@.{��p��D��A�@�
=@ff����(�A���                                    Bu�>;  �          @���@�33@?\)�Tz��  A��@�33@-p���G��r�RA�                                    Bu�>I�  �          @��@�{@8Q�z�H��A��@�{@$z�У�����Aۮ                                    Bu�>X^  �          @�=q@�@333���
�K�A�R@�@�H��33��
=A�
=                                    Bu�>g  �          @��@�
=@0  ��33�6ffA�@�
=@����G����A�Q�                                    Bu�>u�  �          @�=q@�G�@#33��{�X��A�Q�@�G�@	�������RA���                                    Bu�>�P  �          @��@�\)@ �׿�����  A�Q�@�\)@�
�	�����A�(�                                    Bu�>��  �          @���@���@�R��\����A�ff@���?��R��
��z�A�z�                                    Bu�>��  �          @���@��R@p��G�����A�Q�@��R?���R���A���                                    Bu�>�B  �          @��@�ff@z��Q�����A�
=@�ff?���(����A�\)                                    Bu�>��  �          @�=q@�Q�@�׿�z���\)A���@�Q�?�  �����ffA��                                    Bu�>͎  �          @���@�\)@{��\)��\)A�{@�\)?��H����
A���                                    Bu�>�4  �          @���@�=q@p���(����
A�ff@�=q?޸R�(����A�p�                                    Bu�>��  �          @���@�=q@{��33��z�A���@�=q?�G��Q�����A��                                    