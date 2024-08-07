CDF  �   
      time          *   Conventions       ACDD-1.3, Spase v2.2.3     title         /DSCOVR Magnetometer Level 2 One Minute Averages    id        Doe_m1m_dscovr_s20180826000000_e20180826235959_p20180827032242_pub.nc   naming_authority      gov.noaa.swpc      program       DSCOVR     summary       }Interplanetary magnetic field observations collected from magnetometer on DSCOVR satellite - 1-minute average of Level 1 data      keywords      _NumericalData.ObservedRegion.Heliosphere.NearEarth, NumericalData.MeasurementType.MagneticField    keywords_vocabulary       Spase v2.2.2   
references        �; DSCOVR TIME SERIES DATA AVERAGES ALGORITHM THEORETICAL BASIS DOCUMENT, v2.4; GSE TO GSM COORDINATE TRANSFORMATION ALGORITHM THEORETICAL BASIS DOCUMENT v2.1      metadata_link         �http://www.ngdc.noaa.gov/docucomp/page?xml=NOAA/NESDIS/NGDC/STP/Space_Weather/iso/xml/satellite-systems_dscovr.xml&view=getDataView&header=none    license       Spase.Access Rights.Open   institution       NOAA   source        DSCOVR Magnetometer Level 1    platform      'Deep Space Climate Observatory (DSCOVR)    
instrument        +boom-mounted triaxial fluxgate magnetometer    history       ,DSCOVR real-time telemetry processing system   	algorithm         FDSCOVR MAGNETOMETER LEVEL 1B DATA ALGORITHM THEORETICAL BASIS DOCUMENT     algorithmVersion      B      algorithmDate         
2015-10-15     processing_level      Level 2    processing_level_description      11-minute average using Hodges-Lehmann M-estimator      date_created      2018-08-27T03:22:42.926Z   date_calibration_data_updated         2018-08-09T00:00:00.000Z   time_coverage_duration        P01D   time_coverage_start       2018-08-26T00:00:00.000Z   time_coverage_end         2018-08-26T23:59:59.000Z   time_coverage_resolution      PT1M   creator_name      Doug Biesecker     creator_type      person     creator_institution       DOC/NOAA/NWS/NCEP/SWPC     creator_email         doug.biesecker@noaa.gov    creator_url       http://www.swpc.noaa.gov/      publisher_name         National Geophysical Data Center   publisher_type        institution    publisher_institution         DOC/NOAA/NESDIS/NGDC   publisher_email       william.rowland@noaa.gov   publisher_url          http://www.ngdc.noaa.gov/dscovr/   records_maximum         �   records_present         �   records_data        �   records_fill             records_missing                    time                description       "date and time for each observation     
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
short_name        overall_quality    C_format      %d     units         n/a    lin_log       TSpase.NumericalData.Parameter.Structure.Element.RenderingHints.ScaleType.LinearScale        7lBvW8{�  �          A�ff�*�\?��=G��>��C+��*�\�O\)�>�R�@z�C8^�                                   BvW8�f  �          A�(��(Q�>���@���C�C1p��(Q����>=q�?��C>�                                    BvW8�  �          A�=q�/33?Tz��:ff�:�RC/���/33�����8���9
=C<T{                                    BvW8��  �          A����6�H?u�4  �1�HC/8R�6�H��33�3\)�0��C:��                                    BvW8�X  �          A���+
=>��R�Ap��B
=C2^��+
=�p��>=q�=��C?�                                    BvW8��  �          A�G��-�>�
=�?33�>�RC1�\�-����<Q��;{C>�\                                    BvW8Ӥ  �          A����0  ?z��=�<z�C0���0  ��33�;��9��C=�=                                    BvW8�J  �          A���)���p��C
=�C=qC;�3�)��~�R�9��7G�CH��                                    BvW8��  �          A�z��4  =#�
�;�
�8�
C3���4  �=q�7�
�3��C@{                                    BvW8��  �          A�\)�3�?�Q��=G��9{C,���3�����=�9�HC9k�                                   BvW9<  �          A�{�-G�?�G��EG��A�C,\�-G������E��B��C9�=                                   BvW9�  �          A���*�\>����H���F�C1�H�*�\�\)�E�B�C?�H                                    BvW9+�  �          A��
�=p�?�
=�5�.C.T{�=p���p��5���.��C9�                                    BvW9:.  �          A����:ff?s33�;\)�4G�C/\)�:ff���
�:ff�3
=C;}q                                    BvW9H�  �          A����C�?�
=�/��&Q�C+��C���
=�2=q�)G�C5��                                   BvW9Wz  �          A���G�
@���&�H�ffC)0��G�
>\)�+
=�"G�C3\)                                   BvW9f   �          A�p��Jff@���#��{C)���Jff=L���'���C3                                    BvW9t�  �          A���C�
?���/��&�HC-� �C�
��  �0(��'�\C8��                                    BvW9�l  �          A�{�Dz�?���/��&�
C/
�Dzῥ��/\)�&\)C9��                                    BvW9�  �          A��\�Lz�?�G��&ff�(�C/z��LzῚ�H�%��C9ff                                    BvW9��  �          A���R=q?����"=q�G�C/:��R=q�����"=q�Q�C8�                                    BvW9�^  �          A��Jff?����-���!�C.
=�Jff��G��.{�"�C8�\                                    BvW9�  �          A�=q�G\)?�  �2�\�&C.E�G\)����2�R�'  C9@                                     BvW9̪  |          A�z��>ff@33�:�\�/�\C){�>ff�k��>{�3��C5�                                    BvW9�P  �          A��H�>�\?����=G��2ffC-\�>�\�����=��3�C9E                                    BvW9��  �          A�G��:ff@
=q�@���5�HC)� �:ff��ff�C��9z�C6=q                                    BvW9��  �          A����7\)@,���AG��6��C&�q�7\)=u�E��<�
C3��                                    BvW:B  �          A�{�733@ ���@(��7�C*�733����B�\�:�RC6��                                    BvW:�            A���6�R?�
=�Ap��9��C,�)�6�R��Q��A�:�C9�                                    BvW:$�  �          A�G��7\)��p��AG��9�C5ٚ�7\)�<���;��2�
CBk�                                    BvW:34  �          A�Q��8(�?0���B�H�:G�C0�
�8(���Q��@���7��C=�{                                    BvW:A�  �          A����:�H?Q��>�\�6  C/���:�H��G��<���4  C<�\                                    BvW:P�  �          A��H�:�R>���B=q�8ffC1���:�R�	���?33�4�
C>p�                                   BvW:_&  �          A����0���N{�@z��933CDE�0������0���&�COu�                                   BvW:m�  �          A��
�-p�����G33�A
=C@s3�-p������:=q�0��CL�)                                    BvW:|r  �          A�33�8��?xQ��AG��8��C/33�8�Ϳ�z��@  �7G�C<0�                                    BvW:�  �          A�{�>ff��(��G�
�9z�C6��>ff�G��A���2�CB�3                                    BvW:��  �          A��
�9���{�L  �?  C5��9��E�E��7�CB�R                                    BvW:�d  �          A��
�:ff?B�\�J�\�=G�C0E�:ff� ���HQ��:��C=�                                    BvW:�
  �          A�G��4Q�?��N�H�C�C1aH�4Q���
�K��?�\C?�\                                   BvW:Ű  �          A�G��1��?E��P���F33C0��1����Nff�C=qC>��                                    BvW:�V  �          A�
=�*ff?�G��V{�Mp�C.�)�*ff��Q��Tz��K=qC>L�                                    BvW:��  �          A����$��?���X���RffC.(��$�ÿ�
=�W\)�PG�C>��                                    BvW:�  �          A���� Q�?�p��\���V�C+��� Q�����\���V�RC<�f                                    BvW; H  �          A�
=�)�?�Q��V�R�Np�C-���)����
�U���M
=C=��                                    BvW;�  �          A�\)�1?Ǯ�P  �D�
C,  �1��=q�PQ��E\)C:��                                    BvW;�  �          A�  �*�\?��H�V�R�LQ�C)�{�*�\���
�XQ��Nz�C9��                                    BvW;,:  �          A��
���@�33�q��nCh����?n{�z�\�{C-�                                    BvW;:�  �          A��R��@���s
=�n�
CQ���?����}p�z�C*��                                    BvW;I�  �          A�����@k��i��affC����>�p��pQ��lz�C1�f                                    BvW;X,  �          A�G��&=q@@���_
=�PC#޸�&=q����d(��W�C4�{                                    BvW;f�  �          A������@O\)�c33�W�C!�\���<#�
�h���_C3�                                    BvW;ux  �          A��\���@���g��]�HCL����?Y���pz��kffC.�f                                    BvW;�  �          A��\��@����e��Z  C� ��?����n�H�h�\C-(�                                   BvW;��  �          A�G��{@����h  �\��C��{?p���qp��jC.&f                                    BvW;�j  �          A���ff@�{�h���]ffCh��ff?W
=�q��j�HC.�                                    BvW;�  �          A���@~{�ip��]C����?(��q���j
=C033                                    BvW;��  �          A�\)���@vff�j�H�`�RC����>���r�\�l��C1                                    BvW;�\  �          A�G��ff@n{�g��\G�Cp��ff>\�o
=�g33C1�3                                    BvW;�  �          A�G��(�@e�ip��_  C�
�(�>aG��pQ��iQ�C2�H                                    BvW;�  �          A���ff@l(��j�R�`Q�C
=�ff>����q��k=qC2!H                                   BvW;�N  �          A�����@���f�H�[ffC&f���?@  �o�
�hp�C/\)                                    BvW<�  �          A�
=� (�@�33�c��W�C��� (�@N{�up��r�C)                                    BvW<�  �          A�����{@����jff�a(�C�f��{@#�
�z{�z\)C!�\                                    BvW<%@  �          A�����@�
=�k\)�cQ�C	�3��@>{�|�����CO\                                    BvW<3�  �          A�33���R@�ff�i��^��C8R���R@\)�x���w�C"��                                    BvW<B�  �          A�  � z�@����j�\�^\)C{� z�@"�\�z=q�v�
C"h�                                    BvW<Q2  �          A���R@���l���c(�C8R��R?����xQ��t��C+
                                    BvW<_�  �          A��
��@����o��fffC8R��?B�\�x���u(�C.�f                                    BvW<n~  �          A��� ��@;��xQ��t�C��� �׿0���|z��{��C8��                                    BvW<}$  �          A����@����r=q�k33CE��?0���{\)�zffC/#�                                    BvW<��  �          A�{�=q@�p��o
=�e�C��=q?�\)�y�v�C,h�                                    BvW<�p  �          A�=q��G�@�p��nff�c�RC����G�@Dz���=qǮCk�                                    BvW<�  �          A�Q���R@��
�m�b�C	u���R@AG�����RCB�                                    BvW<��  �          A�\)���H@�=q�f�\�Z�C����H@s�
�{\)�{�\C�q                                    BvW<�b  �          A�
=��Q�@��
�f=q�Z�HC����Q�@��H�|(��}z�C�{                                   BvW<�  �          A�p���p�A ���e��Yp�C �\��p�@����}p��~�\C�H                                    BvW<�  �          A�p���=q@���h(��_G�C5���=q@1G��yG��z�C�H                                    BvW<�T  �          A�z���
@,(��h���_ffC$+���
�B�\�l(��d��C8�\                                    BvW= �  �          A�ff���@Z�H�g��^p�C�\��ͽ#�
�m��g�C4=q                                    BvW=�  �          A�ff��@�33�hz��_��C���?W
=�r=q�n�C.��                                    BvW=F  �          A����Q�@����h���_p�C���Q�?�G��s33�oz�C-u�                                    BvW=,�  �          A��	�@~{�o��g  C#��	�>�Q��w��t
=C1�
                                    BvW=;�  �          A�����@���\���M�\C����@9���nff�e��C"8R                                    BvW=J8  �          A��@��]��O33C���?��
�k33�a�\C)�                                     BvW=X�  �          A��
�"�\@����X���G�C�{�"�\?�Q��f=q�Y33C)0�                                    BvW=g�  �          A��(��@��H�R{�@{C!H�(��@ff�`Q��R�C(�                                     BvW=v*  �          A�� ��@�z��]G��M33C:�� ��?�  �hz��\p�C,�                                    BvW=��  �          A�p�� Q�@���]G��M�
C�\� Q�?�z��h(��\�RC-h�                                    BvW=�v  �          A�G��\)@���c\)�W�C33�\)@��r{�m��C&��                                    BvW=�  �          A�33���R@��
�f�\�Z�CY����R@0���x(��u�C ٚ                                   BvW=��  �          A����Q�@�(��g��]=qC
�=��Q�@@  �z{�z��C5�                                   BvW=�h  �          A��\��p�@���h  �Z
=C���p�@�\)���~��C��                                   BvW=�  �          A��\����A�\�ip��\  B�
=����@�{���H�{C.                                   BvW=ܴ  �          A�(�����@��
�o�
�f\)CJ=����@dz����\�\C^�                                    BvW=�Z  �          A�����R@ʏ\�h(��^
=C�����R@*=q�y���y��C �                                    BvW=�   �          A�{��\)@��f�\�[�Cz���\)@\(��{
=�{��C��                                   BvW>�  �          A�z���33A�ep��Vz�B�����33@�z����H� C�q                                   BvW>L  �          A��
���
A��h  �W�B�  ���
@�33��{C
                                    BvW>%�  �          A�33��R@ָR�mp��a��C	{��R@:�H��(�33C�                                    BvW>4�  �          A�
=����@�Q��nff�b�C
������@-p���=q�\)C�)                                   BvW>C>  �          A�����\)@�\)�pQ��e�
CY���\)@
�H��(�#�C#�)                                    BvW>Q�  �          A�33��33@�Q��pz��e33C�\��33@�H�����C!�                                     BvW>`�  �          A�����H@�z��o�
�c�RC����H@�
��=q�~�RC#�                                    BvW>o0  �          A������H@��
�t���i��CY����H?�(���  �fC%�                                   BvW>}�  �          A��H��@Å�p���fG�CL���@  ���R�HC#�                                   BvW>�|  �          A��H����@�p��r=q�h(�C5�����@���p�B�C"W
                                   BvW>�"  �          A������@�ff�s33�h{C8R����@����G�C$�H                                   BvW>��  �          A�=q��=q@��
�t���h�C���=q@����\�
C#s3                                    BvW>�n  �          A�ff��z�@�G��k��[33C	\)��z�@L(���  �z�\CT{                                    BvW>�  �          A�z���ff@�(��h���V��C
)��ff@Tz��}��v
=C\)                                    BvW>պ  �          A�����\)@�(��d���TC�\��\)@�33�|���x��Cu�                                    BvW>�`  �          A�z����R@�
=�c\)�S��C�����R@mp��y��u(�CG�                                    BvW>�  �          A�Q����A�H�]�L�
CǮ���@�\)�w\)�qz�CaH                                    BvW?�  �          A��\��
=@陚�d���U�\C�{��
=@`���z�\�vG�C��                                    BvW?R  �          A�����p�@�\�e���V�CG���p�@aG��{��w(�CQ�                                    BvW?�  �          A��H�ff@�33�c��S{C
��ff@Tz��x���q��C�\                                    BvW?-�  �          A��R�  @��
�b{�Qz�C8R�  @Vff�w\)�p=qC��                                   BvW?<D  �          A���� ��@��c�
�S�HC
�
� ��@S�
�y��s�C�                                   BvW?J�  �          A������@��b=q�Q��C�=���@h���x���s
=CL�                                   BvW?Y�  �          A��H���\@�(��d  �S�HC�3���\@c33�zff�t��C�)                                   BvW?h6  �          A��H��(�@�(��e�V  C	�H��(�@QG��{
=�u�
Cs3                                    BvW?v�  �          A�
=���R@���c�
�SG�C	p����R@^{�y��s��Cs3                                    BvW?��  �          A������H@���c\)�S33C�H���H@c�
�y��t�\C�\                                    BvW?�(  �          A��H��p�@��H�a��P=qC8R��p�@qG��x���r33C��                                   BvW?��  �          A�
=��(�@�Q��b�H�R  C\)��(�@j=q�y��sC�                                   BvW?�t  �          A�����ff@��d  �R�C����ff@g
=�{
=�s��C�{                                    BvW?�  �          A��
��G�@�33�h���Xz�C	�f��G�@H���~=q�x��C�                                    BvW?��  �          A�z�����@��iG��Wp�C	)����@QG��33�x=qC@                                     BvW?�f  �          A�Q���z�@����h���WffC����z�@Z�H���y\)C�f                                    BvW?�  �          A�z�� ��@�R�e��R�C	#�� ��@`���|���s�Cff                                    BvW?��  �          A�z���ff@����l���\z�C(���ff@E��33�}�HCn                                    BvW@	X  �          A�Q����H@��H�g��UC
���H@u��{�z��Cc�                                    BvW@�  �          A��\���@��
�h���Vz�C� ���@u�����{�C.                                    BvW@&�  �          A�  ���@���d���R�RC�����@{��}��w�Cc�                                   BvW@5J  �          A��
��
=@�ff�d���R��C\��
=@n{�}��vG�CE                                   BvW@C�  �          A�=q��\)@��jff�Zz�C�q��\)@Z=q���R�~\)C��                                    BvW@R�  �          A��R��ff@ڏ\�s�
�e��C���ff@'
=����Cc�                                    BvW@a<  �          A�ff��(�@�{�t���g��C����(�@p���{G�C W
                                   BvW@o�  �          A�z���G�@�z��pQ��`��C
�H��G�@{���
��HC!�)                                   BvW@~�  �          A��R��(�@�G��j�H�Y
=C
8R��(�@<(���{�y33C��                                   BvW@�.  �          A�Q���\)@�\)�k��Z��C	�f��\)@7���=q�{(�C��                                    BvW@��  �          A�Q����H@����i�X=qC�����H@Q���Q��z��C��                                   BvW@�z  �          A����{@��r�R�f=qC
+���{@(������{C#�                                   BvW@�   �          A�=q���@�(��qp��cQ�C	�=���@����z��C!ٚ                                   BvW@��  �          A������@�\)�nff�\�HC�3����@AG���=q�\)C�
                                   BvW@�l  �          A�G���  @���p  �_(�C	W
��  @*�H��ff��
C aH                                   BvW@�  �          A����  @�z��nff�\��Cc���  @:=q��{�~�RC�                                     BvW@�  �          A�33��33@�  �n�R�](�C	Y���33@0������~�C �                                    BvWA^  �          A�����{@�z��v�R�jQ�C=q��{@G����  C!G�                                    BvWA  �          A�G����
@����G��{z�Cc����
?޸R��{��C"�                                    BvWA�  �          A�p����@�  ��  �}p�C  ���?�33������C"�                                    BvWA.P  �          A�\)��{@�{�����y�C.��{?�{���#�C!{                                    BvWA<�  �          A�
=��Q�@�G��~=q�u
=C^���Q�@ �����\��C                                     BvWAK�  �          A��H����@ҏ\�}��s(�C������@�
��  ��C �                                    BvWAZB  �          A��H��ff@���zff�oQ�C���ff@
�H����z�C ��                                    BvWAh�  �          A����ҏ\@����tz��f33C���ҏ\@.�R����Ck�                                    BvWAw�  �          A�33���@�
=�o33�^  CW
���@8Q������CxR                                    BvWA�4  �          A�
=�p�@��d  �O33C
��p�@Tz��|  �q=qCG�                                    BvWA��  �          A�����@�33�fff�Q�C
u����@H���}�s(�CJ=                                    BvWA��  �          A�
=� ��@��iG��V\)C
�{� ��@6ff�\)�wQ�C �=                                   BvWA�&  �          A��R����@���r=q�cz�C
s3����@	�����H�{C#��                                   BvWA��  �          A������A�\�e�RB�\)���@������k�C��                                    BvWA�r  �          A��H��z�@��H�n�H�^=qC:���z�@<(������C��                                    BvWA�  �          A��R���H@���mG��\=qC.���H@J�H���R(�C�                                    BvWA�  �          A��H�ָR@�G��tQ��f{C�f�ָR@!�����Q�CO\                                    BvWA�d  �          A�z���(�@�z��n�H�_=qC����(�@   �����|��C%Ǯ                                    BvWB

  �          A������@��
�o\)�_�C�)���@:�H��G�Q�Ch�                                   BvWB�  �          A�ff����@�ff�uG��hz�C=q����@����33��C�\                                    BvWB'V  �          A����@陚�lQ��]�C=q��@8Q���ffC�                                    BvWB5�  �          A�����@�p��m��_�C�{���@.{��=q(�C�                                   BvWBD�  �          A����@�33�p(��b33CJ=��@'
=��33k�C^�                                   BvWBSH  �          A�{���@�=q�qp��cC����@#33��Q�Cz�                                    BvWBa�  �          A���\@Å�|Q��up�C�H�\?����H\)C&�H                                    BvWBp�  �          A����\)@��
�v�\�k�C����\)?�G�����u�C%\)                                    BvWB:  �          A����H@��
�q��eQ�C�����H@z�����u�C#�3                                    BvWB��  �          A����ff@Ǯ�u�j��C
{��ff?У���  33C&Ǯ                                   BvWB��  �          A��
���@�  �r=q�ep�Cٚ���?ٙ���Q���C')                                    BvWB�,  �          A�=q��Q�@Ǯ�tQ��g�RCQ���Q�?У���G�B�C'Q�                                    BvWB��  �          A�ff���
@��H�s��f  C	=q���
?�(����C$��                                   BvWB�x  �          A�z���(�@�ff�r�H�dCǮ��(�@����k�C#��                                   BvWB�  �          A�=q���@�  �r�H�eQ�C#����@����
C#:�                                    BvWB��  �          A�{��(�@ٙ��o\)�`��C	W
��(�@{��=q\)C#E                                   BvWB�j  �          A�{��@�
=�v�\�k\)C!H��?�ff��33G�C+�f                                    BvWC  �          A�ff����@�p��t���h=qC�R����?�  ��p�Q�C(aH                                   BvWC�  �          A�z���  @���r=q�c�C	s3��  @   ��\)ǮC$�
                                   BvWC \  �          A��R��\@�{�r=q�c�C�
��\@������ C"Q�                                    BvWC/  �          A�z���\)@���qG��b��C����\)@Q����
ǮC!0�                                    BvWC=�  �          A�������@�Q��q�b��C\����@z���  �3C!                                    BvWCLN  �          A�ff��p�@�  �s
=�e\)C�R��p�?����=q�fC*E                                    BvWCZ�  �          A�=q��@�  �s��f��C����?�����\�3C*J=                                    BvWCi�  �          A���=q@�G��rff�f
=CY���=q?�=q�����RC'�
                                    BvWCx@  �          A�33���
@�G��t  �i�Cٚ���
?�����(���C+�                                    BvWC��  �          A��
��33@���o33�g�RC����33?�z���  �C+                                    BvWC��  �          A��R����@�33�hz��_(�C޸����?�ff�z�H�|C(��                                    BvWC�2  �          A�\)��@��
�n�H�g�C\)��?u�~�R�fC,�                                     BvWC��  �          A�����@����r�\�n
=C� ���?h����33L�C,}q                                    BvWC�~  �          A�z��陚@�33�jff�b=qC
���陚?�p��}�k�C&��                                    BvWC�$  �          A�ff���@�(��n{�gz�C
=���?�
=��(���C(��                                    BvWC��  �          A�z���  @�p��qp��m
=C
����  ?�z���\)�C*:�                                   BvWC�p  �          A�z���z�@�(��r�R�n�C5���z�?�����ff\)C(J=                                   BvWC�  �          A�Q���  @���s��p�HC
:���  ?}p���(���C+Y�                                    BvWD
�  �          A��\��\)@�z��s��p�Cu���\)?������z�C(J=                                    BvWDb  �          A��\����@�\)�tQ��q�RC
=����?�{�����C'J=                                   BvWD(  �          A����=q@�33�x  �u�
C)��=q?h����Q�=qC+s3                                   BvWD6�  �          A�=q��@�G��n�H�i��C� ��?��R��
=C'h�                                    BvWDET  �          A�=q��ff@�\)�o\)�j=qC	{��ff?����
=C(�                                    BvWDS�  �          A�33��z�@�=q�s
=�m��CJ=��z�?�
=���z�C'h�                                    BvWDb�  �          A�=q��  @ə��q��nffC�=��  ?�z����\�C'B�                                    BvWDqF  �          A�  ���@�G��q�o
=C�3���?�z����
B�C)��                                    BvWD�  �          A��H��\)@�33�qp��k�HC����\)?�����ff��C'^�                                    BvWD��  �          A�����33@�  �qG��iC@ ��33?�����G�.C#��                                    BvWD�8  �          A�������@�ff�r{�m  C�����?�  ����L�C#��                                    BvWD��  �          A�p���{@�R�o�
�m\)B�� ��{@G���
=CaH                                    BvWD��  �          A�{��Q�@���l���lB�#���Q�@����\z�C��                                   BvWD�*  �          A�ff��(�@�(��o��o�RC��(�?�(���
=��C(�                                     BvWD��  �          A����  @Ϯ�l���l�C� ��  ?���������C%                                   BvWD�v  �          A�������@��
�l���m=qC{����?�(�����C#aH                                    BvWD�  �          A����{@��H�m�n33C }q��{?�33�����C                                     BvWE�  �          A�����ff@�=q�k�
�l  C(���ff?���ff�C$Y�                                    BvWEh  �          A�G����H@�z��r�H�s(�B�k����H@z����aHC�                                     BvWE!  �          A�  ����@�{�r�H�p�B�����@����.C�                                    BvWE/�  �          A�(���G�@�{�t  �q�HB�G���G�@z����
aHC��                                    BvWE>Z  �          A����\)@ڏ\�u��tffB�=q��\)?�Q���p���C!=q                                    BvWEM   �          A���z�@���s��r��B�{��z�?�Q������HC!�\                                   BvWE[�  �          A����=q@�
=�t���s��C� ��=q?\(����  C+��                                   BvWEjL  �          A��H��p�@��R�tz��q��C��p�>�����{C2��                                    BvWEx�  �          A�ff��{@����w��w\)CǮ��{?����  B�C.B�                                    BvWE��  �          A�  ����@��
�w��x�RC
޸����>L��������C2�                                    BvWE�>  �          A�p����
@���v�\�x�C�=���
���
���C4                                    BvWE��  �          A���љ�@�z��tQ��u�\C�H�љ�<����H�qC3�                                    BvWE��  �          A�G���z�@�ff�v�\�yQ�C8R��z�W
=��p��C5�f                                   BvWE�0  �          A���G�@���{�
��C����G��333����=qC:��                                    BvWE��  �          A��R���
@����q���xffC�3���
=L���33C3�=                                    BvWE�|  �          A��
���@�{�n�\�v
=C	� ���>\�}��\C0aH                                   BvWE�"  �          A�Q���  @��\�k\)�u(�C�f��  =�Q��x��8RC3&f                                   BvWE��  �          A�
=���H@�(��`���g�C�=���H?O\)�q�C-:�                                    BvWFn  �          A�������@����b�R�i��C�H����>�
=�q��C0z�                                    BvWF  �          A�z�����@����ap��jp�Cc�����?�G��u�G�C(�                                    BvWF(�  �          A�Q���G�@ȣ��c
=�k�C�q��G�?���w33�C&��                                   BvWF7`  �          A�����ff@�{�h���u��Cu���ff�L���u��C4z�                                   BvWFF  �          A�����ff@�33�k�
�zp�C� ��ff>�=q�z�R��C1!H                                    BvWFT�  �          A�G���=q@���k�
�y{C
�R��=q<��y��{C3��                                    BvWFcR  �          A�\)��33@�\)�i���tCc���33>8Q��x  \C2Q�                                    BvWFq�  �          A��R���R@�\)�l  �{p�C5����R=��z�\�=C2��                                    BvWF��  �          A�ff��  @u�o\)p�CG���  ���
�v=q#�C@��                                    BvWF�D  �          A�33����@aG��yL�CW
���Ϳ�ff�~ff�3CJ5�                                   BvWF��  �          A����\)@ʏ\�`(��dp�C����\)?�\)�t��8RC(\                                   BvWF��  �          A�����\@����aG��eQ�C+����\?�\)�y�{C"(�                                    BvWF�6  �          A�Q����@�{�l���q(�B�ff���?���  =qC �)                                    BvWF��  �          A�{��p�@����d���effB�(���p�@.{������C�=                                    BvWF؂  �          A�����{A���b=q�_��B��{@L(����H=qC�                                     BvWF�(  �          A�Q���{A  �_��\p�B�Q���{@H���~�\L�C��                                    BvWF��  �          A������A���d���]�\B�����@E������Cٚ                                    BvWGt  �          A����
A=q�g
=�_{B�q���
@E��G���C�
                                   BvWG  �          A�������A��`���W�B������@g�����C�H                                   BvWG!�  �          A�ff���RAG��]G��X��B�z����R@N{�}�W
C}q                                    BvWG0f  �          A�\)��G�A   �[��Y{B��3��G�@;��y��fC)                                    BvWG?  �          A�  ��=qA��[33�V�B�����=q@H���z�\8RC�                                    BvWGM�  �          A����\A33�[\)�W�B�p����\@U�|  � C��                                    BvWG\X  �          A����=qA�R�W
=�U(�B�G���=q@w
=�z�\33C�
                                    BvWGj�  �          A���z�A��V�H�U�B�
=��z�@\)�{33��C                                    BvWGy�  �          A�G��8Q�A=q�V�\�Q�B�z��8Q�@�Q�����B�ff                                    BvWG�J  �          A�p��@��A���V�H�R
=B���@��@��R��u�B��                                    BvWG��  �          A�\)�0  A"=q�TQ��N��B�L��0  @����~�H� B�aH                                    BvWG��  �          A���A%��S��L�Bͽq��@���\)W
B��                                    BvWG�<  �          A���h��A{�T���Nz�B�p��h��@���}��3B�                                      BvWG��  �          A�G��aG�A��T���O�B�p��aG�@��}��u�B��                                    BvWGш  �          A�\)�c33A Q��W
=�N�B�
=�c33@�����z�8RB���                                    BvWG�.  �          A���Q�A  �X���O�B�.��Q�@�Q���  z�C
!H                                    BvWG��  �          A�{����A��UG��J\)B�����@����3333C\)                                    BvWG�z  �          A���z�A�H�W
=�MQ�B�8R��z�@���Q�p�Cp�                                    BvWH   �          A��s33A ���W\)�Mz�B�W
�s33@�G�����p�C c�                                   BvWH�  �          A�Q�����A!p��TQ��H�RB�\����@��
�
=��C{                                    BvWH)l  �          A�=q��ffAQ��X���N�\B�  ��ff@�ff���HL�C��                                    BvWH8  �          A�  ����A=q�]p��U�B�.����@\)���
L�C	)                                   BvWHF�  �          A�(��fffA   �Yp��O�Bۙ��fff@�z����
8RB���                                    BvWHU^  �          A����|��A33�Y��O\)B�Q��|��@�=q���
33C�)                                    BvWHd  �          A�����(�A�
�[33�PG�B�ff��(�@��\���
u�CG�                                    BvWHr�  �          A��R�q�A&�\�U��I
=B���q�@��\�����B�B�                                   BvWH�P  �          A��ÿ�A>�R�G��7�RB�W
��@����}�{BӮ                                    BvWH��  �          A�
=����AA�Fff�6G�B������@�\)�}�
=B�p�                                    BvWH��  �          A��ÿ���A<  �J=q�:�Bŏ\����@љ����HB���                                    BvWH�B  �          A�녿�\)A;��Hz��:�\Býq��\)@�G��}��B���                                    BvWH��  �          A�G���=qA:{�Hz��;��B�
=��=q@�ff�}G��)B�Q�                                    BvWHʎ  �          A�녿�ffA;33�F�R�9�B�p���ff@�G��|(�p�Bҳ3                                    BvWH�4  �          A�=q�n�RA(Q��Rff�F��B�
=�n�R@�p���(���B���                                    BvWH��  �          A�33�UA*=q�P���E�HB��f�U@�����#�B�z�                                    BvWH��  �          A����C33A)��P  �F��B�
=�C33@�G��
={B���                                   BvWI&  �          A����(�A&{�UG��MffB�k��(�@���33aHB�=                                    BvWI�  �          A�
=���A'��Up��Lz�B�G����@�Q�����
=B�\                                    BvWI"r  �          A�\)��\)A-�S\)�IB�Ǯ��\)@�����u�B�p�                                    BvWI1  �          A��
�p��A1p��R=q�F�
B���p��@�z����8RB��                                    BvWI?�  �          A�=q���A.�\�T���I��B��3���@�z����Rz�B�L�                                    BvWINd  �          A�=q��
=A+33�V�R�L  B�uÿ�
=@�z������B�(�                                    BvWI]
  �          A�녿�z�A+��V�H�L��B��ῴz�@�������BҞ�                                    BvWIk�  �          A�\)��A'33�V�H�N
=Bˏ\��@�z���ff��B��                                    BvWIzV  �          A���ffA%p��Z�\�Q�
Bǳ3��ff@�{���B��f                                    BvWI��  �          A����q�A!p��X  �M��B�{�q�@�  ���33C                                   BvWI��  �          A��H��G�A��T���HffB�#���G�@W��y33C�\                                    BvWI�H  
�          A�=q��=qA\)�UG��I�HC��=q@1��vff�|(�C33                                    BvWI��  \          A����\)Ap��T���J�B���\)@fff�{33
=C�R                                    BvWIÔ  �          A�����p�A���R�\�I�\B�3��p�@u�zffC�)                                    BvWI�:  �          A�
=��ffA���P  �EB���ff@�(��y��p�C{                                    BvWI��  �          A��
���\A���N�R�B33B�z����\@�(��y�C
                                   BvWI�  �          A������A�H�Up��IQ�B�����@�33��33C��                                    BvWI�,  �          A��R���A���]G��S�B�
=���@E����R��C:�                                    BvWJ�  �          A������RA{�T���G�B�Q����R@�G��~�\�\C��                                    BvWJx  �          A�G�����A���U���H�\B�ff����@z�H�~�H�C��                                    BvWJ*  �          A�����G�A  �S�
�Fz�B��f��G�@z�H�|��
=C�                                   BvWJ8�  �          A�G���{A
=�R{�C�HB�����{@x���{
=C޸                                   BvWJGj  �          A�=q��{A��E�7  C +���{@�{�o�
�q\)C�)                                    BvWJV  �          A�  ���Aff�A���2{B�����@��n�\�o33Ch�                                    BvWJd�  �          A�����{A z��QG��BffB�#���{@�p��~{(�C!H                                    BvWJs\  �          A��
��(�A\)�P  �@�B�33��(�@�(��|Q���Cu�                                   BvWJ�  �          A�{��\)A"�\�N�H�>�B�����\)@��\�|����C��                                   BvWJ��  �          A�=q����A-p��G
=�4�
B�(�����@�(��yp��{z�C	��                                    BvWJ�N  �          A�  ���\A$���Nff�=�B����\@�{�}�aHC(�                                    BvWJ��  �          A�z���33A ���Nff�=Q�B�=��33@��R�{��
=C�                                    BvWJ��  �          A�ff��=qA*�H�J=q�8ffB�8R��=q@��
�{��  C
��                                    BvWJ�@  �          A��\��(�A�
�Qp��@B�\��(�@����~ff�{C�                                    BvWJ��  �          A�z�����A#
=�N�H�=�B�33����@�G��}�u�C��                                    BvWJ�  �          A��R��(�A��S�
�C\)B�{��(�@�ff��(�p�Cp�                                    BvWJ�2  �          A�Q����
A (��P���@�B��
���
@���}�C�
                                    BvWK�  �          A�ff��ffA#�
�K��=z�B�.��ff@��
�z�\��C�                                    BvWK~  �          A����p�Ap��O\)�C(�B��H��p�@����{��HC�                                     BvWK#$  �          A������A�Vff�I(�B�� ����@b�\�\)�qC��                                    BvWK1�  �          A��R��ffA33�W�
�L\)B�k���ff@G
=�~=q��CY�                                    BvWK@p  �          A�z����A��X���N�HC �����@"�\�{�=qC!H                                    BvWKO  �          A����G�@�=q�\���T�C���G�?ٙ��z{G�C&k�                                    BvWK]�  �          A�z�����@����Yp��SQ�C!H����?�Q��x��(�C$�                                    BvWKlb  �          A��
����A���W\)�R  C O\����@�\�x���qC E                                    BvWK{  �          A�\)����A�T  �N33B�8R����@R�\�{�
�HC
                                    BvWK��  �          A������A=q�U��O��B�k����@C33�{�p�C�3                                    BvWK�T  �          A�33���
A
�H�U��Q{B��
���
@5��z�HG�CB�                                    BvWK��  �          A��R���A���S��N�
B������@?\)�yp��C�                                    BvWK��  �          A�
=���A
�H�S�
�N��B�
=���@7
=�y��=C�q                                    BvWK�F  �          A�
=��
=A��Qp��K��B�����
=@J�H�x��ffC�3                                    BvWK��  �          A�z����HAQ��Q�L��B�Q����H@>{�w�
#�C
=                                    BvWK�  �          A�{���A33�N�R�I�HB������@L(��v=qffC.                                   BvWK�8  �          A������RA{�O��I(�B�
=���R@U�x  ��C��                                    BvWK��  �          A�=q���RA33�M��GG�B�����R@\(��v=q.C��                                    BvWL�  �          A�Q���
=Ap��LQ��FQ�B�����
=@Vff�t����C�                                    BvWL*  �          A��\��G�A  �L���F=qB�
=��G�@^�R�vff�C�q                                    BvWL*�  �          A�=q���HA�H�J�H�D��B�=q���H@k��u���C�
                                    BvWL9v  �          A�
=��33A���J�\�FQ�B�����33@U�s\)B�CG�                                    BvWLH  �          A�������AQ��J=q�F�B�W
����@S33�r�H��C�                                    BvWLV�  �          A������A���Jff�F��B��=���@S33�s
=� Cs3                                    BvWLeh  �          A������RAff�J{�F{B������R@X���s��
CE                                    BvWLt  �          A��R���A�H�Jff�F�
B�aH���@Y���t  �qC��                                    BvWL��  �          A��R����Ap��I�E��B�������@U�s
=�{C�q                                    BvWL�Z  �          A�ff����A33�H���E=qB��f����@N{�qG�B�C��                                    BvWL�   �          A�=q��A(��Hz��E�B�����@QG��qG��C�                                    BvWL��  �          A��ƸRAQ��D���A=qB���ƸR@W
=�m�8RC�{                                    BvWL�L  �          A���˅Az��D  �?��B�Q��˅@XQ��mG�33C                                    BvWL��  �          A���{A(��B{�=B����{@hQ��m�\)C��                                    BvWLژ  �          A��θRA��Ap��={B��{�θR@`  �k�
�~
=C��                                    BvWL�>  �          A�  ��G�A
=�@���;�B��H��G�@e��k��|��CW
                                    BvWL��  �          A�Q��У�A�?��9��B��3�У�@p  �k��{�
C�                                    BvWM�  �          A�����Q�A��A�:  B���Q�@q��nff�|C�{                                    BvWM0  �          A�G��љ�A�\�Ap��:(�B����љ�@n{�m�|z�C^�                                   BvWM#�  �          A��H��\)A���@  �9
=B����\)@j=q�k�
�z33Cn                                    BvWM2|  �          A�(��޸RA���@���7�HB�G��޸R@j�H�l���x(�C33                                    BvWMA"  �          A��H���HA��Bff�8p�B��{���H@o\)�o33�y�CW
                                    BvWMO�  �          A����A��B�H�7z�B��
��@r�\�p(��x��CL�                                    BvWM^n  �          A����
=AG��B�H�7(�B����
=@r�\�pQ��x��Cs3                                    BvWMm  �          A��R�ᙚA���D���7��B����ᙚ@n{�q��x�
C.                                    BvWM{�  �          A������HA�
�@Q��2\)B�  ���H@~�R�o
=�s=qC�                                     BvWM�`  �          A�����
=A���@(��2�B���
=@����o\)�t\)C��                                    BvWM�  �          A�z���RA���G��8p�B��
��R@i���t���x�RC+�                                   BvWM��  �          A�z�����A33�Ap��1{B�=q����@��
�q���r�C�H                                    BvWM�R  �          A�����RA ���?��.�B����R@�  �p���q33CO\                                    BvWM��  �          A�����(�A!G��>ff�-{B�=q��(�@�G��o�
�n�HC�H                                    BvWMӞ  �          A�����(�A!��<  �*\)C \��(�@��\�m���k=qC33                                    BvWM�D  �          A�33���
A�
�Fff�2p�B�����
@\)�v�\�s\)CaH                                    BvWM��  �          A�(����A��j=q�W�B����@�R�����RC��                                    BvWM��  �          A�����  AG��p  �`{B�8R��  ?�\)�����fC&�{                                    BvWN6  �          A�33���\A
ff�o
=�]�B������\?�
=��p��C#33                                    BvWN�  �          A�����{A���n�R�]�RB�.��{?��������C$J=                                    BvWN+�  �          A������A=q�f�R�Q��B�{����@1G�����W
CO\                                    BvWN:(  �          A�\)���\A33�c\)�M�HB������\@:=q���  C}q                                    BvWNH�  �          A�����p�A�R�ap��LB�����p�@:=q���R33C��                                    BvWNWt  �          A��H���A=q�c�
�O�HB�\���@%���H�C��                                    BvWNf  �          A�ff����Az��\���G��B�\)����@G�����L�C�
                                    BvWNt�  �          A�����A'
=�Q���:�HB�G����@�  ��{k�C�H                                    BvWN�f  �          A�33�ҏ\A!��S��>ffB�\�ҏ\@i�����L�C�                                    BvWN�  �          A�33��(�A ���U���A�B�Ǯ��(�@aG����R��C�                                    BvWN��  �          A�\)��(�A+\)�O�
�9��B�\��(�@�  ��Q���C:�                                    BvWN�X  �          A��H���
A((��MG��7�B�aH���
@�(���z�.C                                      BvWN��  �          A��\��{A*�H�Ip��3�HB�{��{@�(��~�\�}\)CǮ                                   BvWN̤  �          A�z���p�A.�R�F=q�0\)B�����p�@���}p��{G�C                                    BvWN�J  �          A�z����
A,���E��0  B��H���
@�=q�|z��y��Cc�                                    BvWN��  �          A�
=����A.�R�F�R�0�B�3����@�(��}��z��C�                                    BvWN��  �          A�����  A/��E��.��B�(���  @�
=�|���y�C                                    BvWO<  �          A�
=��G�A,Q��F�\�/��B�W
��G�@�\)�|���x��C��                                    BvWO�  �          A�ff���A,  �G33�1�B������@�{�}p��{ffC�f                                    BvWO$�  �          A�{����A.�\�E��/�
B�Ǯ����@��
�|���{\)C8R                                    BvWO3.  �          A�Q���(�A)��L(��7ffB���(�@�����\G�C��                                    BvWOA�  �          A��
�ӅA-�D���0(�B���Ӆ@�=q�|(��{�CQ�                                    BvWOPz  �          A�(���  A.�\�Bff�,�\B�ff��  @�p��z=q�v�CQ�                                    BvWO_   �          A������HA.�H�E��.�
B�\���H@�33�|���y�C�                                    BvWOm�  �          A��\�ָRA>=q�6�H��RB��
�ָR@��H�v�R�p{C
�                                    BvWO|l  �          A�����p�A@���2�\�33B�����p�@\�t  �kp�C
�3                                    BvWO�  �          A�����ffAN�H�&�H�Q�B�  ��ff@�{�o��d�RC�H                                    BvWO��  �          A��\��p�AV�H����Q�B����p�@���i�\z�C{                                   BvWO�^  �          A�{��(�AU��=q�z�B���(�@����g\)�Y��C�q                                    BvWO�  �          A��
��(�A^�H�p�����B� ��(�A
=q�c\)�U33B��3                                    BvWOŪ  �          A����Q�A2{�2�R�
=B�����Q�@��R�n{�i�
C=q                                    BvWO�P  �          A�������A@���0Q��G�B�R����@��H�rff�k�C
�                                    BvWO��  �          A�{���
A&ff�G��2�HB������
@}p��|  �z��C��                                    BvWO�  �          A����G�A!�J{�5z�B��{��G�@hQ��|(��z�C��                                    BvWP B  �          A����(�A$���H  �3��B�aH��(�@u�{��{{C��                                    BvWP�  �          A����  A3�
�>{�(�B����  @�ff�yG��w
=C�3                                    BvWP�  �          A�
=���AQ��O��=��C\���@,(��{��|=qC T{                                    BvWP,4  �          A�����A��K
=�8�
B��=��@Vff�{��}��C��                                    BvWP:�  �          A�ff��G�A��H���6z�B��f��G�@Y���yp��z�
C��                                    BvWPI�  �          A�{�ڏ\A(  �C��1Q�B�{�ڏ\@��H�yp��{�
C�                                    BvWPX&  �          A���{A<���2�H���B�=q��{@�
=�s\)�q��C
h�                                    BvWPf�  �          A�(���z�A)���D  �1�\B����z�@���zff�}��C�                                    BvWPur  �          A�33���
A��I�:{C�
���
@/\)�v{�x�HC 33                                    BvWP�  �          A�G���(�A=q�@���2�RB��\��(�@e��r�R�y{CO\                                    BvWP��  �          A�
=��p�A   �B�H�5�B�aH��p�@g��up��~�RC�                                     BvWP�d  �          A��\���A)�3��$p�B��)���@��\�l  �o�C�\                                    BvWP�
  �          A�����G�A'�
�9�+��B�����G�@�G��p���w��C��                                    BvWP��  �          A�Q����A%�<���/�B������@��\�r�\�|{C�                                    BvWP�V  �          A�
=��A%�;��-
=B��\��@�33�q���w�RC^�                                    BvWP��  �          A���أ�A*ff�:�R�+  B��H�أ�@�(��r�H�x
=C{                                    BvWP�  �          A�(����A&ff�=��-��B�\���@���s�
�w��C��                                    BvWP�H  �          A�ff��z�A$(��?��/  B�����z�@xQ��tz��w��CxR                                    BvWQ�  �          A������HA&ff�?\)�.(�B��\���H@�  �uG��x33C�\                                    BvWQ�  �          A��
����A-p��8Q��)�RB�#�����@��H�r=q�z
=Cc�                                    BvWQ%:  �          A��R���AP(��z����B�=q���@����e��d�B�                                    BvWQ3�  �          A�{��\)AK��   �  B�q��\)@��i��m33B�.                                    BvWQB�  �          A��\����AQ����
�{B������@��
�h���j{B�z�                                    BvWQQ,  �          A}����A{�;\)�@  B��q����@���c���C �\                                    BvWQ_�  �          A������A$���*ff�%B����@��b{�u�\C��                                    BvWQnx  �          Avff����A)���=q��B������@����U��r
=C	�                                    BvWQ}  �          A}p����
A=�\)�p�Bޅ���
@˅�\Q��q33B���                                    BvWQ��  �          A������A=p��"�\�G�B�33����@�Q��f=q�s��CaH                                    BvWQ�j  �          A�
=����A&{�3��)B�W
����@�\)�k
=�x\)C
                                    BvWQ�  �          A�p���z�Az��9G��2��B�G���z�@aG��k�
�~�RC!H                                    BvWQ��  �          A�p��أ�Az��A�>�B�B��أ�@Q��lQ�.C �f                                    BvWQ�\  �          A�����G�A=q�;�
�7�B�33��G�@6ff�ip��|��C.                                    BvWQ�  �          A}���  A+�
�"ff�=qB�G���  @���^�\�u=qC                                      BvWQ�  �          A|�����HA8(��G��p�B������H@�G��Xz��j�RC�=                                    BvWQ�N  �          A�33��\)AF{�G��(�B�����\)@�G��W��cB�8R                                    BvWR �  �          A�{��G�A=G�����ffB�(���G�@�33�ap��p��C��                                    BvWR�  �          A�z���
=A2�H�&ff�p�B�.��
=@�  �ep��vG�C	xR                                    BvWR@  �          A�z����\AMG��Q��	�B�#����\@�33�d���h�B�Ǯ                                    BvWR,�  �          A���ffAVff�{�G�B܊=��ff@����c��d(�B��                                    BvWR;�  �          A��
��ffAb{���
��Bڔ{��ffA�
�W
=�Rz�Bힸ                                    BvWRJ2  �          A�����ffAXQ��Q���\)B�\��ff@�p��c33�a�B��\                                    BvWRX�  �          A����z�Ae���\��B��H��z�Aff�`(��Y�\B�                                    BvWRg~  �          A�(����Ag33��\��G�BԽq���A(��aG��Z�HB�p�                                    BvWRv$  �          A���z=qAq�����ӅB���z=qA�\Q��Q��B�G�                                   BvWR��  �          A����^{Ax  ��\)��B�8R�^{A)G��T���H=qB�B�                                   BvWR�p  �          A�\)�c33Az�\������
=B͏\�c33A,���S33�D��B�\)                                    BvWR�  �          A���l(�A{���Q����B�ff�l(�A-�S\)�D(�B�z�                                    BvWR��  �          A����o\)Aw\)������B�(��o\)A'
=�W\)�J{B�\)                                    BvWR�b  �          A�z��S33Aw�
�޸R���
B�\�S33A(���T���I{Bֽq                                   BvWR�  �          A���QG�Al  �
�R����B�  �QG�A���g�
�a{Bۅ                                   BvWRܮ  �          A�33�C33A������\�c\)BȔ{�C33AO
=�9���$ffBΏ\                                    BvWR�T  �          A���^{A~ff��ff��
=B̞��^{A0Q��Tz��C��B���                                    BvWR��  �          A�p��"�\A��
�C33�z�BĀ �"�\Aap��,Q����B�ff                                    BvWS�  �          A�{����A���*=q�  B��f����Ag��(���p�B=                                    BvWSF  �          A�(��
=A��
�ff��  B��{�
=Aj{�$���\)B�k�                                    BvWS%�  �          A�z���A�p��1��B���Af{�*ff��RB�k�                                    BvWS4�  �          A��Ϳ�{A�p��W
=�+33B�
=��{Aa�2�H���B�\                                    BvWSC8  �          A����{A�p��`���2�RB����{A`z��5���\B�\                                    BvWSQ�  �          A�����A�G��p�����B��H���Ak��(  ��\B���                                    BvWS`�  �          A�p��ǮA�
=�4z���HB��ǮAhQ��,����B�8R                                    BvWSo*  �          A��Ϳ�G�A��R�'
=���B����G�Ai��)���RB��
                                    BvWS}�  �          A�����A����#33�
=B�p����Ag\)�((���B�Q�                                    BvWS�v  �          A�녿�  A�ff�  ��p�B�
=��  Ak
=�$�����B��R                                    BvWS�  �          A��R��Q�A�33�33��z�B��R��Q�Ahz��$Q����B�\)                                    BvWS��  �          A�G���
=A�
=�1���RB�G���
=Adz��+
=��RB�p�                                    BvWS�h  �          A�33��(�A�z��L(��$Q�B�𤿜(�A`z��0���\)B��                                    BvWS�  �          A�����A�G��G
=��
B��=���Ab=q�0Q����B�k�                                    BvWSմ  �          A�ff�\)A�
=����G�B��)�\)Aj�H�'����B�\                                    BvWS�Z  �          A��H>��
A��
�Q���Q�B���>��
Am��%��
��B��=                                   BvWS�   �          A�33�L��A��\��G���Q�B�B��L��At  ���{B��                                    BvWT�  �          A�����
A�33�����W�B����
AxQ�����G�B�\)                                    BvWTL  �          A�G�>��A�G��#�
��B�{>��A�  �	G��ᙚB���                                    BvWT�  �          A��=#�
A�������B��q=#�
A��
=��z�B��R                                    BvWT-�  �          A���\)A��\����B�p���\)A~{��R��\B��                                    BvWT<>  �          A��R��Q�A�  ��G���\)B�����Q�Av{�
=��\B��3                                    BvWTJ�  �          A�G�?L��A���?:�H@��B���?L��A�=q� ����33B�k�                                    BvWTY�  �          A�?Q�A�33?�33@�33B��?Q�A�����R���RB�u�                                    BvWTh0  �          A��R?���A��?���@���B��?���A���p���
=B�L�                                    BvWTv�  �          A�G�?�G�A��@�@���B���?�G�A�(��ָR���B�
=                                   BvWT�|  �          A�z�@>�RA�33@xQ�A>ffB�\)@>�RA��\��{��=qB�                                   BvWT�"  �          A�=q@P��A�33@�p�AfffB�Q�@P��A���(��W�
B�ff                                    BvWT��  �          A��\@C33A�{@�G�A_
=B�Ǯ@C33A�  ����`z�B�                                    BvWT�n  �          A�33@��A���@n�RA6ffB�(�@��A�\)��{��  B���                                    BvWT�  �          A���?�33A���@@��AffB��
?�33A�z��ƸR��33B�aH                                    BvWTκ  �          A�{?��A�z�@"�\@�B��?��A�  ��
=���B�L�                                    BvWT�`  �          A��
?E�A�{@.{A�B�Q�?E�A�Q��љ����B�{                                    BvWT�  �          A�>��A���@��@��B�� >��A����ᙚ���\B�W
                                    BvWT��  �          A�Q�?�ffA�33@�@ÅB���?�ffA��\�����HB�33                                    BvWU	R  �          A�Q�?�\)A�
=?�p�@��B��3?�\)A�=q�������
B�\                                    BvWU�  �          A�ff?���A���?��H@j=qB�=q?���A�����Ə\B�aH                                    BvWU&�  �          A�?�A�ff?�Q�@�z�B��H?�A�p���G����RB�{                                    BvWU5D  �          A�33?��HA�\)@��@��
B��\?��HA��
�޸R����B��)                                    BvWUC�  �          A��R@o\)Ax��@�(�A��B���@o\)A�G��
=q��(�B�Ǯ                                    BvWUR�  �          A�  @7
=A��@�(�A�\)B�� @7
=A�p��P���)B��                                    BvWUa6  �          A��
?�
=A��\@Q�A-G�B�?�
=A�Q���=q���
B�ff                                    BvWUo�  �          A�=q@$z�A�
=@{�AO\)B��R@$z�A�����p��w33B��=                                    BvWU~�  �          A��@   A���@z=qAN�\B�(�@   A�G����x��B���                                    BvWU�(  �          A�
=@*�HA33@�A�33B�  @*�HA���������B��                                    BvWU��  �          A��@�A{�@��HA�ffB��@�A���� ���أ�B��f                                    BvWU�t  �          A���?�A�p�@?\)A!p�B�p�?�A�ff����z�B���                                    BvWU�  �          A�ff>�(�A�\)��p���(�B�.>�(�AqG�����ffB��q                                    BvWU��  �          A�G�>#�
A�\)�~{�MG�B���>#�
AUp��>{�&��B���                                    BvWU�f  �          A���?=p�A�����o
=B�.?=p�AP���HQ��/=qB��=                                    BvWU�  �          A�G�?�RA���]p��0(�B�
=?�RA]�9���B��                                    BvWU�  �          A���p��A�\)�{��H(�B���p��AX���?��%��B��                                    BvWVX  �          A���@,��A�(�?�@p��B�z�@,��A~=q��R����B��R                                    BvWV�  �          A���@\(�A�z�@mp�A@z�B�33@\(�A�������33B�                                    BvWV�  �          A�(�@i��A��H@eA<(�B��\@i��A��
��G����HB�                                    BvWV.J  �          A��H@�  Aq�@޸RA�p�B�Q�@�  A�ff��p����B�k�                                    BvWV<�  �          A�=q@��HAvff@��A�{B�B�@��HA�녿����l��B��                                    BvWVK�  �          A��
@��
Anff@��HAՅB��{@��
A��׾Ǯ���
B�Q�                                    BvWVZ<  �          A���@���Aq�@���A�33B�@���A��
�녿���B�W
                                    BvWVh�  �          A��\@�  Aq��@��A�{B��\@�  A�Q��G���Q�B�                                      BvWVw�  �          A�{@�Q�At(�@��HAͅB��\@�Q�A�(��O\)�(��B��                                     BvWV�.  �          A�\)@\)As�@�RAʸRB���@\)A�p��k��AG�B�z�                                    BvWV��  �          A���@tz�Alz�A z�A�  B�@tz�A��\�L�Ϳ+�B�ff                                    BvWV�z  �          A�  @�{Adz�A�\A�RB�� @�{A��\>�Q�?��HB�                                    BvWV�   �          A�33@���AX��A��B�B�
=@���A���?��R@�\)B�W
                                    BvWV��  �          A�p�@���AbffAp�A�ffB��
@���A�\)>�Q�?���B��                                    BvWV�l  �          A�{@���Ao�@�z�A���B�G�@���A�\)�aG��:�HB�u�                                    BvWV�  �          A��@�p�Ak�@�(�A��B�\)@�p�A����{��\)B��                                    BvWV�  �          A���@�ffA`  A
�\A��
B�\@�ffA���?.{@�B��                                     BvWV�^  �          A���@���AYG�A�A�G�B��@���A�p�?���@e�B�B�                                    BvWW
  �          A�z�@��HAP��A�B�B��@��HA�?�G�@�{B�u�                                    BvWW�  �          A���@ə�AF=qA�B��B|=q@ə�Az�H@'
=AQ�B�B�                                    BvWW'P  �          A�
=@���AlQ�@љ�A��RB���@���A��׿Ǯ���B��)                                    BvWW5�  �          A��R@U�A�G�@\��A7\)B�k�@U�A�����{��\)B���                                    BvWWD�  �          A�z�@Y��A���@�(�A\��B��@Y��A�����  �qG�B��=                                    BvWWSB  �          A�(�@B�\A�z�@uAM�B�8R@B�\A�ff������33B��f                                    BvWWa�  �          A��@:�HA���@^�RA:�HB�@:�HA����(���
=B�z�                                    BvWWp�  �          A���@1G�A�33@(Q�A�B�aH@1G�A�  ��G���33B�\)                                    BvWW4  �          A��H@=p�A��
@33@�p�B�� @=p�A�  ��
=��p�B�
=                                    BvWW��  �          A�=q@8��A���?�(�@�(�B���@8��A|���߮��{B�Q�                                    BvWW��  �          A�\)@p�A��
?��@p  B�aH@p�Ax������̣�B���                                    BvWW�&  �          A�Q�?��HA��?�\)@mp�B��?��HAxQ�������z�B�
=                                    BvWW��  �          A�Q�?#�
A��>�?ǮB��
?#�
Av�H����ffB�G�                                    BvWW�r  �          A���=�\)A�p����ǮB��==�\)An�\�z�����B�u�                                    BvWW�  �          A���<��
A�\)�=p���HB��)<��
Alz��(�� Q�B��
                                    BvWW�  �          A��R���A����p����B������Ad���"ff�Q�B�=q                                    BvWW�d  �          A�{��=qA�\)��\)�k�B�\)��=qAo�
�����
B�
=                                    BvWX
  �          A����z�A�녿�33�r�\B�����z�Afff����=qB�{                                    BvWX�  �          A����A�
=��Q��~�RB��{���Adz�������B�{                                    BvWX V  �          A��R�+�A�Q�k��A�B�ff�+�Ah���{�
=B�=q                                    BvWX.�  �          A����k�A��H�#�
��B�\�k�Ap���
{��{B�                                     BvWX=�  �          A�{�L��A�<#�
<�B�G��L��Ar�\�
�R���
B�{                                   BvWXLH  �          A����A��þ�ff��  B���Amp��z���Q�B�ff                                    BvWXZ�  �          A�33��z�A�  ��{��
=B�  ��z�Ad���(���\B�B�                                    BvWXi�  �          A�zῢ�\A�  ������B�aH���\Ao33�	���HB��                                    BvWXx:  �          A����xQ�A�zῆff�g�B�.�xQ�AVff�ff�(�B�L�                                    BvWX��  �          A~ff�+�Ayp���33���B�z��+�AM����	B˔{                                    BvWX��  �          Av�R��G�At�׾W
=�L��B����G�AR=q������
B�8R                                    BvWX�,  �          Av�H���Aup�=L��>.{B�(����AU�����\B�                                      BvWX��  �          Aw����Av�\>\)?�B�G����AV�R��=q��=qB�Ǯ                                    BvWX�x  �          Aw�����Avff?z�@Q�B�33����AZ{��{�݅B��                                    BvWX�  �          A��\�L��A��
?�33@�G�B�k��L��An{����p�B��=                                    BvWX��  �          Ayp��\Ax��?n{@Z�HB��;\A^�R�޸R��ffB��                                    BvWX�j  �          Au�ٙ�Aq���h���[�B��
�ٙ�AI��p���
B�W
                                    BvWX�  �          At���p�Am�(Q��=qB����p�A8���33���B�
=                                    BvWY
�  �          AtQ��p�An�R�=q���B��)�p�A;\)������B�\)                                    BvWY\  |          A~�\�<(�Aq��I���8��B����<(�A8(��$���#��BЙ�                                    BvWY(  �          A�����A^�\��\���B�{����A�T���XQ�B�R                                    BvWY6�  �          A��\���RAi���������B��
���RAG��AG��?�RB�.                                    BvWYEN  �          A���|(�Am����z���  BѸR�|(�A$Q��>=q�<�B���                                    BvWYS�  �          A�����\)Af=q���R���
B֔{��\)Ap��Bff�C�
B��                                    BvWYb�  �          A
=��Ak�����q�B�p���A*ff�/�
�.ffB��                                    BvWYq@  �          A��H���Aj�R��������B��)���A%���6=q�4��B���                                    BvWY�  �          A~ff���HAp���)���G�B�(����HA;
=����=qBܽq                                    BvWY��  �          A���  ApQ��@���.=qB�Q���  A7��"�\�  B���                                    BvWY�2  �          A�������As33�(���
=B�{����A<����R�p�B��
                                    BvWY��  �          A�\)��=qAuG���z����B�33��=qADz����B���                                    BvWY�~  �          A����\��Atz���z����
B�k��\��A-��;
=�6�HB�(�                                    BvWY�$  �          A����.�RAq�������B�p��.�RA$Q��F�R�E�
Bѽq                                    BvWY��  |          A�
=�j=qAdz���
=��z�B��j=qAG��S\)�X�B�
=                                    BvWY�p  �          A������AQ����RB�\����@�  �Y��_��B��
                                    BvWY�  �          A�(���ffALQ��p����B�Q���ff@�{�dz��o��C ��                                    BvWZ�  �          A�\)����AS33����ffBܽq����@��
�_��i
=B�\                                    BvWZb  �          A�{���
A^=q�����G�Bڙ����
A���U��X�\B�R                                    BvWZ!  �          A�Q�����Aap���\����B�B�����Ap��Zff�Z
=B�#�                                    BvWZ/�  �          A�ff���RA[�
�����
=Bۮ���R@���a���d\)B�                                    BvWZ>T  �          A�(���G�AY���ff��(�Bܣ���G�@�  �h���k
=B��{                                    BvWZL�  �          A�{��=qAT����
���B��)��=q@��g��o  B���                                    BvWZ[�  �          A�\)��z�AQ��  ��
B�\��z�@�33�iG��t=qB�(�                                    BvWZjF  �          A�����
=A[
=��33��z�B�.��
=@�
=�W��_p�B�{                                    BvWZx�  �          A�\)��(�Aa���ff�ȏ\B�G���(�A
�R�R=q�T�
B�.                                    BvWZ��  �          A�
=��G�AZ=q��z���=qBڸR��G�Aff�P���XQ�B��H                                    BvWZ�8  �          A�{��  A^�R�޸R�ʏ\Bٳ3��  A��P���U33B�                                     BvWZ��  �          A�33��33AZ�H����\)B�
=��33@�{�W�
�]�\B���                                    BvWZ��  �          A�{��\)A\(������ܸRB�����\)@���X���\�B��H                                    BvWZ�*  �          A�p����HA]G���\)���B�k����HA(��S�
�W{B�L�                                    BvWZ��  �          A�
=���AYp���  ���
B�\)���@�G��X���_��B��                                    BvWZ�v  �          A���p�AV{��z�����B�u���p�@����YG��cz�B�=                                    BvWZ�  �          A�G����HAU�   ��G�B������H@�R�Z�R�g  B�W
                                    BvWZ��  �          A��H��(�AU���
���
B�B���(�@����X���e33B�W
                                    BvW[h  �          A������AX����Q�����B�.����@���X���cp�B�{                                    BvW[  �          A��
��{AXQ���ff���B�k���{@��[\)�f��Bힸ                                    BvW[(�  �          A�ff���\A_���ff��B�u����\A{�T���Z��B�                                    BvW[7Z  �          A�=q��(�A^�R��ff��  B����(�Ap��TQ��Z�B�k�                                    BvW[F   �          A�ff���A`  �����HB�.���A�\�T���ZffB�33                                    BvW[T�  �          A�Q���=qAc\)��G����B��
��=qAz��W�
�Z�B�3                                    BvW[cL  �          A�p���
=A]�������Q�Bٮ��
=A��X(��]G�B�                                    BvW[q�  �          A����A\  ������p�B��f���@�ff�YG��^(�B���                                    BvW[��  �          A�Q���{A[33���\��(�B۞���{@���[\)�`
=B�=                                    BvW[�>  �          A�{��\)AU� (���(�B��\��\)@��[
=�`{B�Ǯ                                    BvW[��  �          A�G�����AVff��=q��{B�����@��X���_{B��                                    BvW[��  T          A�������AU��33��G�B������@�Q��X���_��B�33                                    BvW[�0  �          A����G�AW
=� ����=qB�{��G�@�
=�\(��c33B���                                    BvW[��  �          A�Q����A\����G�����Bܞ����A ���XQ��[33B���                                    BvW[�|  �          A�(���A`������(�Bڮ��A�R�UG��W(�B��                                    BvW[�"  �          A�ff���HAa��  ��(�Bۮ���HA	G��S\)�S��B�aH                                    BvW[��  �          A��\���
Abff��z�����B�Ǯ���
A
�R�R=q�R(�B�(�                                    BvW\n  �          A�  ����Ai���
����B�������A��N�R�J  B�Ǯ                                    BvW\  �          A�
=���Ak\)��=q��(�B۳3���A�H�O
=�H\)B�                                    BvW\!�  �          A��H��p�Ak������\)B�aH��p�Az��L���E�RB�8R                                    BvW\0`  �          A�
=����Ak�
�ə����Bۏ\����A��N�H�H  B�u�                                    BvW\?  �          A�����HAk\)��(���\)B��H���HAff�O��H�B�(�                                    BvW\M�  �          A����(�Al�����
����Bݣ���(�A��Ip��A
=B�{                                    BvW\\R  �          A������An=q��(���z�B�B�����A�H�M��F�B���                                    BvW\j�  �          A�p����RAm���33��
=B����RA{�F{�?�RB뙚                                    BvW\y�  �          A�(�����Anff���H���
B�������A\)�F�\�?{B�Ǯ                                    BvW\�D  �          A�
=����ApQ����\��(�B�  ����A%��@���6
=B�\)                                    BvW\��  �          A��R����Ar{�������B�B�����A!��J�H�?��B�aH                                    BvW\��  �          A�
=���Ar�\������=qB��H���Aff�PQ��F�B��                                    BvW\�6  �          A�\)��(�Ar�R��{���B�W
��(�A{�Q��FQ�B���                                    BvW\��  �          A�=q���At��������z�B�#����A
=�S\)�G�\B�L�                                    BvW\т  �          A�G���G�Ar�H������G�B�  ��G�Az��T(��JffB�#�                                    BvW\�(  �          A�����Atz���p���p�B�33���A�UG��KQ�B垸                                    BvW\��  �          A�p����\Av=q��p���G�B������\A#33�O33�C�RB枸                                    BvW\�t  �          A����Ax  ��\)��ffB؀ ���A(Q��I��<B���                                    BvW]  �          A�����Aw���\)��Q�B�\)���A(  �I��<Q�B���                                    BvW]�  �          A����
=As���p���\)B�(���
=A$���F�H�:{B���                                    BvW])f  �          A���Aqp����\��=qB����A��K��>p�B�k�                                    BvW]8  �          A�����
Aq�����z�B�Ǯ���
A Q��K\)�?��B�=                                    BvW]F�  �          A�����\)Anff��{��Q�B�Ǯ��\)AQ��K��?��B�                                      BvW]UX  �          A�33��
=As33������33Bۙ���
=A!�K��?��B��
                                    BvW]c�  �          A�����Arff���R��(�B�G����A��M��A�RB�=q                                    BvW]r�  �          A�Q���Q�Aup������(�B��)��Q�A!��O�
�B�B��                                    BvW]�J  �          A�����{Ap����������B۽q��{Ap��Nff�C�B��)                                    BvW]��  �          A�����\)Ag\)��(���B��f��\)A�\�T���Lz�B��3                                    BvW]��  �          A�
=��ffAj{��ff����B����ffA(��W33�K�B�                                      BvW]�<  �          A�33��  AmG���(���{B�W
��  A��Q��B�B��f                                    BvW]��  �          A�����Ar�R�Å���B������A�\�P  �@�B�                                    BvW]ʈ  ~          A�����z�Av�H��33��z�B����z�A&=q�K33�<33B��                                   BvW]�.  �          A�
=����Aj�R��
=�ϙ�B��{����A
�\�b{�U(�B��{                                    BvW]��  �          A�����33Aqp�����p�B�W
��33A�R�Z�H�K�HB��                                    BvW]�z  �          A�{���
Avff��(����B�����
A!���R=q�B�RB�33                                    BvW^   �          A�{���RAyp��ʏ\��
=B�=q���RA"ff�V�\�D�B�R                                    BvW^�  �          A�z����Ax  �У����
B�k����A��Xz��E�
B��
                                    BvW^"l  �          A����Q�As��أ�����B�
=��Q�A��Y�H�RB��                                    BvW^1  �          A�(���33As\)��{��ffB�{��33AQ��T���E��B���                                    BvW^?�  �          A�33��Ap���������RB���Aff�S33�Ep�B�#�                                    BvW^N^  �          A�G���33Aqp���{��z�B�  ��33A���Pz��A��B�Ǯ                                    BvW^]  �          A�G�����Ap����G���z�B������Ap��U��G�RB�Q�                                    BvW^k�  �          A�33���\As���=q��Q�B�=q���\A���S��E�RB�\                                    BvW^zP  �          A������Av�R���
����B�����A%��K��;��B�(�                                    BvW^��  �          A����Q�Ap(���=q���B�=q��Q�A�\�Q�B�HB��
                                    BvW^��  �          A�=q���
Ao��ָR��=qB�z����
A�H�V�H�H=qB���                                    BvW^�B  �          A�p����Ap����\)���HBޔ{���A��^ff�OQ�B��)                                    BvW^��  �          A�=q�ÅAqG���(���33B�{�ÅA���]p��L�RB��                                     BvW^Î  �          A�  ��ffAup������Q�Bᙚ��ffA z��R=q�?{B�u�                                    BvW^�4  �          A�
=��(�AtQ������
=B�\)��(�A Q��PQ��>�\B���                                    BvW^��  �          A�z���z�Ar=q��{��(�B�aH��z�A��M���<
=B�\)                                    BvW^�  �          A�33��{As\)��
=��  B�z���{A Q��N�\�;�B�z�                                    BvW^�&  �          A����ҏ\Ao���ff��(�B�p��ҏ\A���S
=�B�B�                                    BvW_�  �          A����ȣ�Al����p���=qB���ȣ�A���[��M{B�k�                                   BvW_r  �          A�G����
An�\�߮���\B�B����
A�
�Z{�J33B�.                                   BvW_*  �          A��R�ʏ\Aq�����z�B�p��ʏ\A(��R=q�B
=B��                                    BvW_8�  �          A�����  Au��z���ffB�u���  A'
=�G��4p�B�                                    BvW_Gd  �          A�33���
Au���  ��  B�R���
A#��LQ��9p�B���                                    BvW_V
  �          A����G�Avff��33��33B�\��G�A%��J�H�6��B�ff                                    BvW_d�  �          A�����Ax  �������\B�p����A)��G\)�2��B�W
                                    BvW_sV  �          A�\)�ۅAt(���{��=qB�aH�ۅA#\)�K
=�7��B�Ǯ                                    BvW_��  �          A�(���\)Ao33�������B��)��\)A\)�H  �9�
B��                                    BvW_��  �          A�����{Al�������RB����{A���M��?Q�B���                                    BvW_�H  �          A������An�\��  ��B� ���A  �Lz��=��B��)                                    BvW_��  �          A�G���z�Anff��{����B�ff��z�Aff�H  �:��B���                                    BvW_��  �          A��\���Ar�R������\)B�=q���AE����\�Q�B�                                    BvW_�:  �          A�  �ۅA`z�������p�B���ۅA�;\)�4��B�u�                                    BvW_��  �          A�����
=Af=q�hQ��L��B����
=A(Q��'����B�                                    BvW_�  �          A������
Ap�þ���z�B�
=���
AK33�����ffB���                                    BvW_�,  �          A����z�Av�\<#�
<��
B�
=��z�AT  �����
=B�z�                                    BvW`�  �          A�{����Ar=q��p����B�����A@  ��H�	�B���                                    BvW`x  �          A�\)��z�Avff�����{B�33��z�AHz�����Q�B�{                                    BvW`#  �          A�
=��ffAqp��g
=�C33B���ffA2{�,�����B���                                    BvW`1�  �          A������Ar�H��\)�}G�B������A*=q�<���+�
B�                                      BvW`@j  �          A��R��(�Ar�R��{�{�B���(�A*ff�<Q��+�B���                                    BvW`O  �          A����33Aw�
����Z=qB���33A3��7
=�${B�q                                    BvW`]�  �          A�
=��  Au�����XQ�B�����  A2ff�5G��"�HB�=q                                    BvW`l\  �          A�p�����Ax���o\)�F{B��
����A7��2=q�{B�
=                                    BvW`{  �          A����  A{��U��0Q�B�z���  A=��.{�z�B�u�                                    BvW`��  �          A�p���{A33�333�Q�B�����{AD���(����B�G�                                    BvW`�N  �          A�{�ָRA�
=���Ϳ��B�(��ָRAZ�H������B�B�                                    BvW`��  �          A�z���G�A��
���
�L��B�B���G�Ab�R��\��
=B�.                                    BvW`��  �          A�Q���G�A��
�p���E�B��f��G�AW������B�                                    BvW`�@  �          A�����(�Az=q��z��ƸRB�z���(�AG�
����(�B�                                     BvW`��  �          A�z���\)A~{�+��Q�B�k���\)AD���&=q�(�B��                                    BvW`�  �          A�(���33A}��W
=�1�B�#���33A?33�/��(�B���                                    BvW`�2  �          A���\)A~=q�P  �+\)B�k���\)A@Q��.{��B�                                    BvW`��  �          A�
=���A}G��|���Q�B�u����A9��733�$�
B�\                                    BvWa~  �          A�ff�߮Ax���<�����B�aH�߮A>=q�'33��\B��)                                    BvWa$  �          A����\)Ax(��333���B�k���\)A>�H�$���B�                                    BvWa*�  �          A���Aup���
��ffB����A@���z��
�B�W
                                    BvWa9p  �          A�p���{Aup������z�B���{AA��{�p�B�{                                    BvWaH  �          A�����RAu���R��  B�ff��RA@���33�
�B�q                                    BvWaV�  �          A�p�� (�Aq����ff��p�B��)� (�AC��  ���B�p�                                    BvWaeb  �          A����(�Az�H��
���RB��)��(�AEG��33��\B�                                    BvWat  �          A�Q���Q�Apz��p���{BꞸ��Q�A?
=�p��
=B�
=                                    BvWa��  �          A�z���=qAuG�������B�\��=qAG��(���33B�Ǯ                                    BvWa�T  �          A�����Ar�H?�G�@���B枸��A[����
��33B�B�                                    BvWa��  �          A�p���ffAj�R@j�HAK�B����ffAh  �����n�\B�.                                    BvWa��  �          A�(���\)AX��@��
Aģ�B����\)Ar�\�s33�R�\B�G�                                    BvWa�F  �          A���ȣ�A[�
@�\)A�B�
=�ȣ�Aq녿�����=qB�                                      BvWa��  �          A�����G�Aa@���A�ffB�Q���G�Arff��
��{B�p�                                    BvWaڒ  �          A�33��(�A_�@�  A�B�W
��(�Aqp���z���B�.                                    BvWa�8  �          A�����HAc�@��
A�B�aH���HAq���ff��B��                                    BvWa��  �          A�Q��θRAh  @��A�{B��θRAl���Z=q�>�HB��                                    BvWb�  �          A�(���\)Aj=q@hQ�AJ�HB�ff��\)Ag\)�����pQ�B��                                    BvWb*  �          A������Ab�H@.�RA
=B������AY��=q��(�B�\                                    BvWb#�  �          A����33Ae�@�A  B�\��33AY���Q����B�33                                    BvWb2v  �          A|����
=Adz�?�@z�B�\)��
=AI��\)�ɮB�{                                    BvWbA  �          Ap����\)AX��?E�@:�HB�33��\)AA�����=qB�                                    BvWbO�  �          Avff��ffAXQ�@%�A�B�8R��ffAO������=qB�\                                    BvWb^h  �          A�{��z�AO33@�z�A��B�R��z�Alz᾽p����B�{                                    BvWbm  �          Ao\)�\(�@ǮA>�RBl�\B����\(�A6ff@�z�A���BՅ                                    BvWb{�  �          Aw33>�Q��=qAt  B��HC�33>�Q�@��
Af{B�=qB�                                    BvWb�Z  h          A|  ?���Z�HAs�B�aHC�:�?��@�\)AmB�B��H                                    BvWb�   �          AdQ��
=�G�A^�\B�(�C���
=@���AR�\B��)B��                                     BvWb��  �          A:�R�j=q�  @���B��Cv���j=q����A  BmG�Ce�)                                    BvWb�L  �          A  �,�����H@�
=B�HCw�q�,���+�A�B���C`�H                                    BvWb��  �          AE�� (��:=qA�\B9
=CG�� (�?�(�A�\B?�C&(�                                    BvWbӘ  �          Ab�\������AF�HB�ffCEJ=���@��RA:{Be�HC��                                    BvWb�>  �          Aj�R�u�   A[�B��C;Y��u@�
=AABh�B�G�                                    BvWb��  �          Ax����@{�AN=qB`�HC����A{A�RB�B��                                    BvWb��  �          A����
=A{AN�\B;��C
=�
=A[�@�{A��B���                                    BvWc0  �          A����RA5p�A_�B-��C����RA��\@�z�A��RB�z�                                    BvWc�  �          A�=q�G�A-Av�\B<ffC��G�A���@��
A��
B�(�                                    BvWc+|  �          A�
=�  A/�A~�HBC�RB��=�  A��
AQ�A�Q�B��)                                    BvWc:"  �          A����
=A)A�\)BSQ�B�� ��
=A�G�A��A�(�B�u�                                    BvWcH�  ,          A���(�A%G�@ffA;�B�G���(�A!��I���|��B�.                                    BvWcWn  �          At  ��33A.�\�)G��/�\B{��33@�z��i�B�G�                                    BvWcf  �          AQG���p�A��	��$�B�W
��p�@����C��=B�L�                                    BvWct�  �          A_\)��A;����H���HB����@�\)�(  �DQ�B�k�                                    BvWc�`  �          A\������A;���ff���\B�ff����A ���  �/Q�B�G�                                    BvWc�  �          AK
=��Q�A.�\��Q�����B���Q�A���ff���B�L�                                    BvWc��  �          AG�
���A*�R>���?���B����A�H������B�ff                                    BvWc�R  �          AN=q��A-�@0  AEG�B�u���A+�
�AG��YG�B���                                    BvWc��  �          AXQ���  A3�
@C�
AR=qB�  ��  A4(��=p��K\)B��H                                    BvWc̞  �          AM�����HA%��@!�A6�\B������HA#��>{�W
=B�k�                                    BvWc�D  �          AUp���33A&=q@q�A�Q�B��\��33A.=q��z��Q�B�
=                                    BvWc��  �          ATz����
A#�@��A�
=B�����
A.=q��=q���HB�#�                                    BvWc��  �          AR{��{@��A�B�C#���{A&{@l(�A�Q�B�p�                                    BvWd6  �          A[���A\)A�\B  C�H��A2�H@>�RAI�B��3                                   BvWd�  �          AT���׮A�@���B��C��׮A2=q@-p�A;�
B�W
                                    BvWd$�  �          AR{��A�@�ffA�G�B�\)��A/�
?���@�\)B�u�                                    BvWd3(  �          AG�����A��@�(�A�33B�������A(�׾�
=����B�=                                    BvWdA�  �          AF�H��  A  @�G�A�  B����  A(��>���?\B�8R                                    BvWdPt  �          AF=q��G�AG�@�(�A��B�aH��G�A*�R>�p�?��HB���                                    BvWd_  �          AJ�R��33A33@�{B
\)B�����33A.ff@�\Az�B�k�                                    BvWdm�  �          AM���z�A\)@���A��RB��3��z�A+��G��`  B�\)                                    BvWd|f  �          AJ�R���A@��
A��\B�B����A&=q������ffB�{                                   BvWd�  �          AMp����A�\@&ffA=p�B��{���A=q�*=q�B=qB���                                   BvWd��  �          AE���(�A��@!�A>�HB�#���(�AQ��*=q�H��B�Q�                                    BvWd�X  �          AG���(�A((��Ǯ��\B�u���(�A
=��G��ӮB�{                                    BvWd��  �          AIp��޸RA'���(����HB�#��޸RA=q����ѮC                                     BvWdŤ  �          AF�R��A"{?Y��@|(�B�Ǯ��A���������B��)                                    BvWd�J  �          ADQ���\)A   @
�HA#\)B��H��\)AQ��C�
�g33B�#�                                    BvWd��  �          AA��ʏ\A�@{A<��B�Ǯ�ʏ\A=q�1��UG�B�8R                                    BvWd�  �          A=����A!G�@33A�B�L����Az��L(��zffB���                                    BvWe <  �          A4����{A�H�P  ��z�B�3��{@�=q��33�*G�B�\                                    BvWe�  �          A>{��  A(�?��RA��B��)��  A�AG���(�B�G�                                    BvWe�  �          AiG���z�@���A9�BS�CQ���z�A(Q�@���A�B�k�                                    BvWe,.  �          AW33��@�\)A�B=  C����A(  @���A���B���                                    BvWe:�  �          AUp�����@�p�A�B+G�C޸����A+33@��A���B�                                    BvWeIz  �          AQp���z�@�ffA ��B�C����z�A.{@G
=A[33B���                                    BvWeX   �          AH���ϮA=q@�G�B\)C �\�ϮA(��@Q�Az�B�.                                    BvWef�  �          AF�H���
A33@�G�B��B�����
A'�?��A�
B�                                    BvWeul  �          AJ=q��{A��@���A�ffC \��{A)p�?��@�=qB��{                                    BvWe�  �          AJ{�ӅA(�@�  A��B�{�ӅA+33?�33@��RB�k�                                    BvWe��  �          AMG��У�A�\@�{A��B�ff�У�A.�R?��R@��HB�                                    BvWe�^  �          AY�����
A�RA ��B��C����
A1�@A�AO�B�z�                                    BvWe�  �          AO�
�ٙ�@�\)A�B$
=C:��ٙ�A#�@~{A�\)B�.                                    BvWe��  �          Aip���=qA
ffA33B�HC!H��=qA<��@W
=AU��B��                                    BvWe�P  �          AiG���p�A  AQ�B�\C���p�A9G�@QG�AT(�B�                                      BvWe��  �          A4Q���ff@_\)A(�B>=qC���ff@�=q@�Q�A�Cp�                                    BvWe�  �          AD����(�?fffA&ffBh�C+����(�@��A
{B3�RC	k�                                    BvWe�B  �          AG�
���>�A/�
BwC2�����@�
=Az�BGC�3                                    BvWf�  �          AL(�����>8Q�A6�RB~C28R����@�
=A=qBK��C��                                    BvWf�  �          AZ�\��
=?!G�AHQ�B�� C-+���
=@�z�A*=qBN33C !H                                    BvWf%4  �          Ac���?�(�AN�\B�(�C%����@��A)�B@�RB�Ǯ                                    BvWf3�  �          A`z���Q�?!G�AJ=qB��C.\��Q�@�{A+�
BHG�C��                                    BvWfB�  �          Ab�\��(�>��ALQ�B���C0+���(�@��A/\)BJC
=                                    BvWfQ&  �          AZff��p�>�G�ABffB|
=C/�R��p�@ȣ�A&�\BG�C�                                    BvWf_�  �          A_���
=>�Q�ADQ�Bx��C0�)��
=@�Q�A(��BF(�C�3                                    BvWfnr  �          A`  ����@G�AAp�Br�C"�\����@�(�A��B.�HC�\                                    BvWf}  �          Ad������@Q�AEG�Bo
=C�H����AG�A33B ��B���                                    BvWf��  �          A`���ڏ\@���A*�HBN(�C���ڏ\A��@��A�B�{                                    BvWf�d  �          AZff���A�Ap�B=qC�)���A1�@FffAR{B���                                    BvWf�
  �          Aa�����A
=A33B�B�{����AJ�\@�A  B��                                    BvWf��  �          AtQ���ffA:{A�B�\B�=q��ffAbff?˅@��B��                                    BvWf�V  �          At�����AD  @�{A�G�B�Q����Ag
=?Tz�@EB��                                    BvWf��  �          Av�R��\)ALQ�@�
=A�p�Bܮ��\)Aj�R>.{?#�
B�Ǯ                                    BvWf�  �          Aw
=��p�APQ�@�33A���B�k���p�Ak\)��=q�z�HB�33                                    BvWf�H  �          Aw��k�AY@θRA��HB�8R�k�Ap�׿c�
�Q�B�u�                                    BvWg �  �          AiG��EAL��@ə�A̸RB���EAc�
��R���B�p�                                    BvWg�  �          Aj{�-p�AX  @�A�p�Bʨ��-p�Ac\)�
=q�(�Bɏ\                                    BvWg:  �          Af�\�O\)AT��@��RA���B�ff�O\)AZ�H�,(��-G�BΣ�                                    BvWg,�  �          Ah  ���HA[
=@�Q�A�B�#׿��HA^�H�C33�Dz�B��                                    BvWg;�  �          Ah���'
=A_�@@��A>�HB���'
=A[\)�����BɅ                                    BvWgJ,  �          An{��=qAY�?˅@ƸRB޸R��=qAK����
��
=B�p�                                    BvWgX�  �          Ak�����ATQ��`  �[�
B߀ ����A�
��R�33B��)                                    BvWggx  h          A`Q��ʏ\A5��ff��p�B�8R�ʏ\A(���=q�ԸRB��)                                    BvWgv  �          Ac����R@��A��B2�C�f���RA�@���A�\)C                                    BvWg��  �          Ajff� ��A:�H@Q�AQ�B�8R� ��A4z��l���o\)B��                                    BvWg�j  �          Ac33���A;�
����B������A$�����
���
B��{                                    BvWg�  �          Ac���A5G��u�aG�B��\��A
=��{��
=Cp�                                    BvWg��  �          A^�H��RA#��(��!G�C�H��R@��\��Q���\)C}q                                    BvWg�\  �          A]���A������=qC\)��@����
=��RC�                                     BvWg�  �          Ah���z�A����H���C��z�@��
�\)�33C�=                                    BvWgܨ  �          Ac�
��  AEp�����  B�L���  A$����z��陚B�aH                                    BvWg�N  �          Ad  ��\)AA��
=q�
=qB����\)A%���{�Ώ\B���                                    BvWg��  �          Ac
=�ʏ\AI����33����B�W
�ʏ\A&�H��{��(�B�u�                                    BvWh�  �          Ab�R��z�AI���  ���
B�
=��z�A%�������HB�=q                                    BvWh@  �          Ac���{AI��`  �dQ�B♚��{A������B�3                                    BvWh%�  �          Ac
=��z�AH  �����z�B����z�A$  ���H��z�B��)                                    BvWh4�  �          Ac�
���
AH(��1G��4  B�#����
A��p���B�\)                                   BvWhC2  �          Aa��ϮAA��>{�C�B�=�ϮA  ����Q�B��                                   BvWhQ�  �          A_33��33AB{�AG��HQ�B�ff��33Az����  B���                                    BvWh`~  �          Ac33��p�AA�>{�AB����p�A������
=B�Q�                                    BvWho$  |          Ad�����A�
�p���B�R���@����@���g�C�                                     BvWh}�  �          Ab�\�߮A.�\��
=��
=B�Q��߮@���
=�4{C�3                                    BvWh�p  |          Aep����RA0z���=q��33B�q���R@��6�R�T{C��                                    BvWh�  �          AeG��ʏ\A(����G���
=B��H�ʏ\@���6=q�R��C�                                    BvWh��  �          Af=q��A�H��  �G�C�\��@���2ff�J�Cz�                                    BvWh�b  �          Ac�
���A��p���B������@�  �8z��Z�
C��                                    BvWh�  �          A\�����\A,����  � p�B�W
���\@�p��733�d��B��                                    BvWhծ  �          A\z����A*=q��Q���\B�Q����@����9���d33C J=                                    BvWh�T  �          A]�qG�A
�H�!p��;Q�B�
=�qG�@>{�O�Q�C                                    BvWh��  �          AU���
A+������p�B�p����
@�����H�1�HC ��                                    BvWi�  �          AN=q��(�A ��@Q�A
=B��\��(�A=q�2�\�K�
B�u�                                    BvWiF  �          AO
=���
A"{?:�H@O\)B������
A���������C33                                    BvWi�  �          AS
=���A,Q�?}p�@���B�� ���A   ���
���HB�p�                                    BvWi-�  �          AS�����A7
=��
=����B� ����A
=��p���  B�                                     BvWi<8  �          AQp���Q�A5��R�p�B�q��Q�A�������B�=q                                    BvWiJ�  |          AX�����A9��{����B�����A�����/��B�#�                                    BvWiY�  �          A`���c33A   ��H� G�B�{�c33@�  �H��k�B���                                   BvWih*  �          Ad(��q�A  � ���4��B�aH�q�@dz��S
=  C��                                   BvWiv�  �          Ae�r�\A\)��-��Bޙ��r�\@�=q�S�k�C�                                    BvWi�v  �          AhQ��<��A$���Q��)p�B����<��@�z��V�\k�B��f                                    BvWi�  �          Ah���7
=A��-�B��B��7
=@Fff�]p��C��                                    BvWi��  �          Ag
=�333@�Q��DQ��i�B߀ �333?z��a�#�C(=q                                    BvWi�h  �          Ah  ��p�@���C\)�e�B�aH��p�?�{�d��¡��C                                    BvWi�  �          Af�H�{Ap��/��F(�B�p��{@C33�^�R�B�(�                                    BvWiδ  �          AmG�>��?�ff�j�R§ǮB�Q�>�����H�\  � C�]q                                    BvWi�Z  �          Aq녿�\@,���j�R�qB�\)��\����dz�8RC��                                     BvWi�   �          AR�H����@����A�\B�\)���ÿ8Q��S33¥#�CL�{                                    BvWi��  �          AJ=q�(�@�ff�,(��jG�B��f�(�?���Fff=qC$�{                                    BvWj	L  �          A]�0��@���G\)ffB�p��0�׿k��Xz�ǮCFc�                                    BvWj�  �          Ayp����@�ff�O\)�aQ�B����?:�H�n�H
=C*u�                                    BvWj&�  �          A|����z�@�\)�O33�\�
B���z�?�(��r�\=qC#�=                                    BvWj5>  �          Aw���
=@����F�H�Z{B�����
=?���i�p�C"�3                                    BvWjC�  �          A`  ���A�H�\)�
=B��f���@����;33�d
=C��                                    BvWjR�  �          Ab{�C�
A=q���0��B�=q�C�
@�z��Q�(�B���                                    BvWja0  �          Ab�R�K�A1p��G��  B�
=�K�@�\)�C��p�HB�(�                                    BvWjo�  �          As���p�AP  ��33��\)B�z���p�A��8���E�\B�B�                                    BvWj~|  �          As\)��G�AO
=�������Bڮ��G�Az��<z��J�B�                                   BvWj�"  �          Ar�\����A:=q��z����B������@ڏ\�D���Y�C{                                   BvWj��  �          AtQ���33A=�����
B�� ��33@��H�L(��b�RB��                                    BvWj�n  �          Aw33��AB=q�33��RB����@�G��P(��e��B�aH                                   BvWj�  �          Aw
=�p��AK
=��������B�\�p��@����LQ��_��B��                                    BvWjǺ  �          Aw33�a�ALQ���ff����B��)�a�@��H�MG��`�RB�ff                                    BvWj�`  h          As�����AY��33��33B������AQ��.=q�7p�B���                                    BvWj�  �          Aip��e�A2ff�33�p�B׏\�e�@�=q�LQ��tp�B���                                    BvWj�  �          Ae��s33A;������(�B���s33@��;�
�\��B�ff                                    BvWkR  �          Aip����A8�Ϳ�p���z�B�\)���A�R��\)��B�                                    BvWk�  �          At  ����Aa�?�
=@��
B߽q����AS���  ��p�B�=q                                    BvWk�  �          As�
���A`��>�33?���B�L����AK���ff���B�p�                                    BvWk.D  �          Aq�ȣ�AZ�\��=q��  B�L��ȣ�A8Q������
B�\                                    BvWk<�  �          At  ��33A^ff��=q��=qB�\)��33A?�������{B���                                    BvWkK�  �          AuG���G�A_���Q��˅B�Ǯ��G�A<(���
=��=qB�\)                                   BvWkZ6  �          At(���z�A]���7
=�,��B�Q���z�A2=q�33�ffB�                                    BvWkh�  �          Av{���
Ae������\)Bـ ���
A=��{��\B���                                    BvWkw�  |          At  ��AN�R������{Bݽq��A�H�1�=��B�                                   BvWk�(  �          Ap����
=AB�H���H���B�B���
=@�\�C
=�XB�
=                                    BvWk��  �          ApQ���  AD�������B�=q��  @����?��T=qB���                                    BvWk�t  �          Al�����AE����(����HB��)���A�\�6=q�K�B�(�                                    BvWk�  �          Am����AO\)�����p�B�Q�����A{����%�\B��)                                    BvWk��  �          At(���p�AZ=q��33�yp�B�W
��p�A'33��R���B���                                    BvWk�f  �          Ar�H���HAW
=�����B�#����HA#��33�33B�Q�                                    BvWk�  �          Aw33�s33Ag��hQ��Z=qB�u��s33A6�R����\)B��)                                    BvWk�  �          Aw33����Ad���C�
�7�B��H����A8Q��(��ffB���                                   BvWk�X  �          Ax  ��
=Af=q�%��\B����
=A<���	���B��                                    BvWl	�  |          A{��*=qAY���(����B�\�*=qA���IG��T�RBԽq                                    BvWl�  �          Aw���AO
=� Q�����BȸR��Aff�M�bG�B�\)                                    BvWl'J  �          At(��fffAD  ����B��fffA Q��9��S�B�aH                                    BvWl5�  �          As�����Ac\)��(���=qB�������AB�\��  ��p�B��                                    BvWlD�  |          Ar�R��
=A;���
=����B�
=��
=@�R�@���RffC p�                                    BvWlS<  �          AiG���AO��Ǯ�͙�B�\��A��4  �Mp�B��)                                    BvWla�  �          Ajff���APz��ʏ\��=qB�B����A(��5p��M
=B�=q                                    BvWlp�  �          Alz��ffAXz���p����RB�{��ffA  �/\)�?�HB�\                                    BvWl.  �          Anff���
A8  �p���\Bݙ����
@����G�
�d��B���                                    BvWl��  �          Aqp��n�RA,���(��"  B���n�R@�G��W\)�~z�B��                                    BvWl�z  �          An=q�7
=A"=q�'\)�3(�BӀ �7
=@����\���
B�.                                    BvWl�   �          Ar�H���RA
=�F�R�]�B��ÿ��R@��mp�.B�
=                                    BvWl��  �          Am��?�(�@�\)�D���bffB�33?�(�?�
=�h��¡�BS                                      BvWl�l  �          An�H?�{A��6{�GG�B��R?�{@k��ep��B�Ǯ                                    BvWl�  �          Av�\�xQ�A
=�;\)�Q�HB�aH�xQ�@Dz��fff��B�\                                    BvWl�  �          Av=q��{@���Y��zp�C �q��{�\(��j�\�3C>��                                    BvWl�^  �          Ap���U@����]��B����U��ff�g���CP@                                     BvWm  �          Ab=q����?fff�S\)z�C(� ��������EG��wG�Cb                                    BvWm�  �          A�{?��A|Q��*=q���B�  ?��AR=q��
�HB�33                                    BvWm P  �          A���?�{A�G�������B�L�?�{A]G��=q�p�B��)                                    BvWm.�  �          A
=?B�\Ax���S33�?�B�p�?B�\AJ�H�G��(�B�.                                    BvWm=�  |          A|�Ϳ�\)Ad�������ffB��ÿ�\)A"�H�@  �F
=B��\                                    BvWmLB  �          Az�R��=qA\����\)���B���=qA33�F=q�Q�B��                                    BvWmZ�  �          Ax�׿���AYp�������B�LͿ���A33�G
=�T��Bģ�                                    BvWmi�  �          Ay����AW33���
��\B�(����A��IG��W��Bʊ=                                    BvWmx4  �          A����AQ�������BǊ=���A�H�W�
�gQ�B���                                    BvWm��  �          A|(��%AP���{� ��B�ff�%A��Qp��affBօ                                    BvWm��  �          A|���-p�AX��������Bʣ��-p�Ap��Ip��T  B�33                                    BvWm�&  �          At  �*=qA^=q���H���\Bɮ�*=qA$Q��.ff�7{B�
=                                   BvWm��  �          Au��"�\AiG��tz��g�B�Ǯ�"�\A:=q����B̞�                                   BvWm�r  �          Av=q��Am�o\)�a�B��ÿ�A>�H���B���                                    BvWm�  �          AtQ�<�An�R�K��@Q�B���<�AC����RB�                                    BvWm޾  �          Aq�?�Q�Ag��n�R�f{B��?�Q�A9��R�p�B��f                                    BvWm�d  �          An�R?���Ag33�_\)�Xz�B�L�?���A;
=��H�{B�=q                                    BvWm�
  �          Ao�
��=qAbff��z���Q�B��3��=qA/
=�!p��)�\B�aH                                    BvWn
�  �          Alz�z�HA`����������B���z�HA0(���
�%z�B�(�                                    BvWnV  �          Ak\)��
=Abff�Z=q�W\)B��=��
=A7��\)�{B�8R                                    BvWn'�  |          Ak33��=qAY����������B�
=��=qA#\)�&�R�5B�                                    BvWn6�  �          An=q�:�HAP  ����33B�aH�:�HAff�=p��S�HB�Q�                                    BvWnEH  �          Ag��#�
A?33���R��\B�#׿#�
@�33�B�R�g�B���                                    BvWnS�  �          Ad��?�A8�������RB�W
?�@���:{�e�RB�33                                    BvWnb�  �          Af�\@  AT����33��{B���@  A"=q�=q�.\)B���                                    BvWnq:  |          Aap�@ ��A*{��p��B���@ ��@�ff�9G��n��B�u�                                    BvWn�  h          A^=q?�G�A=q����/\)B�aH?�G�@���L  �=B�                                    BvWn��  �          A_33?(��A"=q�p��*\)B��\?(��@�{�J�R=qB�(�                                    BvWn�,            A^{?��A6=q��z����\B��{?��@�{�+\)�W�B�8R                                    BvWn��  �          Ae�@�RA.=q�����B��
@�R@�G��J{�x��B��                                    BvWn�x  �          Ad�ÿ@  AF�\��33��
=B�녿@  A���)�HG�B��                                    BvWn�  ,          AeG���33AO���z����B=��33A�\�#
=�8ffB�p�                                    BvWn��  h          Afff�
=qAP(����H���RB��)�
=qAG���R�2\)B�Ǯ                                    BvWn�j  h          Ag
=�^�RAMp��˅��Q�B��q�^�RA�R�0Q��H\)B��
                                    BvWn�  �          Ah  >���AC���p�� \)B�=q>���Ap��?\)�_��B���                                    BvWo�  �          Amp�?n{A;\)���p�B��)?n{@��H�N�H�t(�B���                                    BvWo\  �          Ak\)@P  A1G���
��\B�\)@P  @У��K
=�p�\B~33                                    BvWo!  T          Ai���g
=ADz����
�ә�BԽq�g
=A
�H�,(��C�B��                                    BvWo/�  h          Aj�H�UAV=q����G�B����UA$z��=q�)��B��                                    BvWo>N  �          Afff�hQ�AW\)�g��h��B�33�hQ�A.{�33���B��f                                    BvWoL�  �          Ah���G�A^�H�#33�!B�33�G�A<  ����(�Bѳ3                                    BvWo[�  �          Ai����\)Afff����ᙚB��쿯\)AG�
��z����
B�z�                                    BvWoj@  �          Ah�ÿ���Ab�R�.{�,z�B�����A>�\�=q�=qB�Q�                                    BvWox�  �          Ah  ��AaG��6ff�5��B���A<z����
\)B�k�                                    BvWo��  �          Ae��z�A]G��Mp��N�HBýq��z�A6�\�
=�\)B�                                      BvWo�2  �          Ac���z�AV�H���
��
=B����z�A)���G��$�B���                                    BvWo��  �          Aep��ٙ�A`�׿�����ffB��Ϳٙ�AB�\��Q����RB��                                    BvWo�~  �          Ah(���33Ac33�0���/\)B�=q��33ALQ��Ǯ��ffB��                                    BvWo�$  �          ApQ���Aj�R@#33A��B����Ag�
�\���T��B��                                    BvWo��  �          Ak�
�<��Ae녿+��(Q�B�33�<��AO
=�����ʣ�Bͮ                                    BvWo�p  �          AlQ��2�\Ag33���
��  B����2�\AN{��(��ծB�ff                                    BvWo�  �          Al���&ffAg�
��G���z�B�\)�&ffAMG���33���HB��                                    BvWo��  �          Aj�R�(�Ae�����G�B�G��(�AK\)�����{Bɽq                                    BvWpb  �          Af�H�XQ�A]G���R��\B�z��XQ�A=����R���B��
                                    BvWp  �          Ae���Mp�AY�G
=�HQ�BΊ=�Mp�A5���R�33BӮ                                    BvWp(�  �          Af�R���AM��r�\�t��B�Q����A%��(��\)B�p�                                    BvWp7T  �          Ag�
�B�\A\  �K��K33B���B�\A6�H�z���B�Ǯ                                    BvWpE�  �          Aj�\���HA]p���(����B�{���HA2ff��H�33B��H                                   BvWpT�  �          Ak33��\)Af�R���HB��쿯\)AF{��  ��
=B��{                                   BvWpcF  �          Aj{�Ab�\��R���Bƽq�AAp���Q�� �HB��)                                    BvWpq�  |          Aj�R���
A\���  �
=B¨����
A=������B�                                    BvWp��  �          Af�R����AE���Q����B�(�����A
=�!p��2�
B�(�                                    BvWp�8  �          Aj{�H��AZ�H�333�4(�B��f�H��A8����33�  B�u�                                    BvWp��  �          Am��
=qAj=q=u>W
=B�Ǯ�
=qAX�����\���B�#�                                    BvWp��  �          Al���Q�Ag33>�G�?ٙ�BƳ3�Q�AX(���z���ffB���                                    BvWp�*  �          Anff��33A`z���;ǮB����33AN�R��
=���HB��                                    BvWp��  �          Ap  �^{Ag\)����p�B����^{AR�\��  ��ffBъ=                                    BvWp�v  �          Ap  ��(�An{��R�Q�B�aH��(�AXQ���  ���
B�Q�                                    BvWp�  �          Ap�ÿ�z�An=q�0���(Q�B{��z�AX  ����ƣ�B�\                                    BvWp��  �          Apz��G�Anff��  �p��B��=��G�AZ�H��z���G�B��\                                    BvWqh  �          Ao���
AlQ�>�33?��B��H��
A\���������
B���                                    BvWq  �          Ap�Ϳ�p�An{?J=q@AG�B�B���p�Aa��������RB�                                    BvWq!�  �          Ap���z�Al��?��H@��\B��H�z�Ad(���  ��\)B�z�                                    BvWq0Z  �          Ap���
=qAlQ�?�Q�@�{Bģ��
=qAd����Q��x  B�(�                                    BvWq?   �          Ao\)��Ai@�@�G�B��f��Ad���hQ��`��B�L�                                    BvWqM�  �          An{�*=qAfff@#33AB��f�*=qAd���C33�=B�
=                                    BvWq\L  �          Ak33��A_\)@�  A|Q�Bƅ��Ag
=�����  B��f                                    BvWqj�  �          Ai��E�A^=q@QG�AO33B����E�Aa���
�H���B̙�                                    BvWqy�  �          Ajff��p�AW�@uAs�
B�k���p�A^�R��(���G�B�W
                                    BvWq�>  �          Ag�
����AI�@�=qA��B�������A[�
>�?�33Bأ�                                   BvWq��  �          Aa�uAN�R@��A���B�{�uAX(���  ���\BӮ                                   BvWq��  �          Aa�����AJff@�  A��
B�L�����AV�R���	��B�ff                                    BvWq�0  �          Ac�
�\)AF{@�\)Aʏ\Bʳ3�\)A[\)?s33@z�HBȊ=                                    BvWq��  �          Ab�H��=qAH  @��HA���BĨ���=qA_\)?�  @��HB��                                    BvWq�|  �          Ab�H��AJ=q@��A�z�BƳ3��A_�?u@w�B��                                    BvWq�"  �          Ad���eAMG�@�33A���B�L��eA\��<#�
<�B�.                                    BvWq��  �          Ac���  AMG�@�G�A�33B֙���  AY����\�33BԽq                                    BvWq�n  �          Ab{��Q�AIG�@�(�A�ffB�u���Q�AS��J=q�Mp�B۞�                                    BvWr  �          A`����ffAI��@�ffA���B��)��ffAT(��5�;�B�\                                    BvWr�  �          A]��
AI@
=A&�HB���
AI����H�+33B�Ǯ                                    BvWr)`  �          A`�׾8Q�A_33?���@��
B�p��8Q�AU�������\B��                                     BvWr8  �          AZ�H���HAA@w
=A��Bߏ\���HAK
=�Tz��_\)B�                                    BvWrF�  �          A\���mp�AHQ�@�(�A�ffB����mp�AR�\�5�>{B�p�                                    BvWrUR  �          Ab{�L(�AF=q@��A���B��H�L(�AZ�R?u@y��B�G�                                    BvWrc�  �          Aap��`  AAp�@�Q�A�\)B�G��`  AX��?�Q�@���B���                                    BvWrr�  �          Aa�G
=AC\)@��A��HBЊ=�G
=AZ�\?�(�@�
=B͙�                                    BvWr�D  �          Ab�H�Y��ADz�@�\)A�z�B����Y��A[33?�\)@��B��H                                    BvWr��  �          AaG��\(�AI�@�A��RBҀ �\(�AZ=q>�\)?���B�Q�                                    BvWr��  �          A`���^{AO�@���A�G�B��f�^{AX�ÿk��p��BЮ                                    BvWr�6  �          A_33�EAJ{@�G�A��Bϊ=�EAYp�>.{?333Bͨ�                                    BvWr��  �          AY������A0  @ۅA���B�#�����AK�@p�A'
=B�
=                                    BvWrʂ  �          AV=q�w�A�@��B
=B�ff�w�AB�H@y��A��B�B�                                    BvWr�(  �          AUG��vffA�A{BffB��)�vffA>�H@��A�G�B�Ǯ                                    BvWr��  �          AXQ����A (�A ��B
=B�����AC\)@|��A�  B�G�                                    BvWr�t  �          AW\)�o\)AAB�\B݀ �o\)AC
=@���A�G�B�{                                    BvWs  �          AVff�UA��A�B*\)Bۅ�UA>ff@�{A�(�B�Q�                                    BvWs�  �          AU������A6�\@�p�A���B�=����AC�=�Q�>���B߳3                                   BvWs"f  �          AV�R��{A4Q�@���A���B�G���{AF�\?s33@�=qB�\)                                   BvWs1  �          AY��\)A(��@�G�B�B�\��\)AF�H@FffAS�B۞�                                    BvWs?�  �          AY��s�
A+�@�B�B�#��s�
AJ�R@O\)A\Q�B�u�                                    BvWsNX  �          AX���]p�A&=q@���B\)B��)�]p�AH  @p  A��B��                                    BvWs\�  �          AU���33A-G�@���A�G�B�z���33AF�H@z�A ��B؅                                   BvWsk�  �          AUG��N{A/
=@�z�A�33B��N{AJff@(Q�A6=qBЅ                                   BvWszJ  h          AO���\)A1�@$z�A;\)B�k���\)A5���(���B��                                    BvWs��  �          APz��w�A4Q�@���A���B��H�w�AFff?��\@�
=B֣�                                    BvWs��  �          AI��|(�A'\)@��A���B�=q�|(�A=?�33A
�RBس3                                    BvWs�<  �          AF{�j�HA  Ap�B*�B���j�HA)�@��RA�ffB�\                                    BvWs��  �          AI����@�Q�A'�Ba�B�k����A�@�=qB=qBϨ�                                    BvWsÈ  �          A@���,(�@���AffBP�B�G��,(�A@�
=B�B�G�                                    BvWs�.  �          AEp���=qA  A�B<
=B�=q��=qA-p�@�=qA�=qB��                                    BvWs��  �          AG�
����A	p�A\)B7B{����A2ff@�ffAυB�B�                                    BvWs�z  �          AF{�Y��A�
A
=B,Q�B��ͿY��A5p�@��HA��\B��{                                    BvWs�   �          AD�Ϳ�@�A4��B�ǮB��Ϳ�A z�A��B?(�B���                                    BvWt�  �          AC��@��A1�B�� B�\)�A�\A��B9(�Bнq                                    BvWtl  �          AC
=�(��@��A.�RBp�B�\�(��AA
�RB5�B�{                                    BvWt*  �          A@  ��ff@�p�A'�BsBͽq��ffAff@��B%\)Bď\                                    BvWt8�  �          A?�
��(�@�\)A�Bc(�B����(�A�
@��B33B�\                                   BvWtG^  �          A@�ÿ�z�@�Q�A=qB`=qB�aH��z�A�@�33B(�B��H                                   BvWtV  �          A9��!�@��@��RB+ffB׊=�!�A ��@�=qA�z�B�Q�                                    BvWtd�  �          A9p����@�=qA(�BZ�\BӅ���AG�@ҏ\B��B�=q                                    BvWtsP  �          A1p����@��@�{B��B��H���@��@8��A�(�B��                                    BvWt��  �          A+\)��z�@���A (�BC��Bυ��z�AG�@�Q�A�p�BȸR                                    BvWt��  �          A4Q���Q�@�(�@أ�B�B����Q�A
=@n�RA�z�B��                                    BvWt�B  �          A9��\)A=q@���A��B�L���\)A��@ ��AI��B�p�                                    BvWt��  �          A;���Q�Ap�@���A���B�Q���Q�A+�?��
@�\)Bᙚ                                    BvWt��  �          A;����A(  ?ٙ�AQ�B��\���A'���33�z�B�3                                    BvWt�4  �          A2�\��33A��?   @'
=B�u���33A�H�-p��d��B�u�                                    BvWt��  �          A1��ffAff@\)AP��B����ffA"�R�p����(�B��)                                    BvWt�  �          AF=q����A5G�?���A	��Bߊ=����A4��� ���=qBߣ�                                    BvWt�&  �          A8Q���\)A��@�{A�z�B�W
��\)A&�R?�=q@�ffB�z�                                    BvWu�  �          A4�����
A�\@W
=A���B�3���
A�
=u>���B���                                    BvWur  �          A5p�����AG�@dz�A�G�B�.����A#�>W
=?���B�G�                                    BvWu#  �          A<(���Q�A   @(��APQ�B��3��Q�A$�ÿJ=q�xQ�B�=q                                    BvWu1�  �          A>�\����A&ff?�Q�A�\B�(�����A%녿��(�B�=q                                    BvWu@d  �          A;
=����A%G�?�A\)B�
=����A$�ÿ���\B�#�                                    BvWuO
  �          A2�H���A�H?�=q@��B�#����A��{�8��B�                                    BvWu]�  �          A4Q����
A!p�?��H@�z�B�z����
A�H�	���/�
B�33                                    BvWulV  �          A*�H��{A  >�@�RB�z���{A��.�R�n�RB�(�                                    BvWuz�  �          A,���c�
A"{>u?�  Bڳ3�c�
Aff�C�
����B�p�                                    BvWu��  �          A"�\�S33A�ͿW
=��
=B���S33AQ��xQ���{B�B�                                    BvWu�H  �          A
=q����@��@@��A�{C+�����@��?�G�A�
CQ�                                    BvWu��  �          A �����H�<��@�Q�B'(�CR����H����@�BB�HC@33                                    BvWu��  �          A33��33?��@��RBz�C%p���33@0  @qG�B \)C�\                                    BvWu�:  �          A"{��
=Aff@>�RA�33B���
=A�\>�?=p�B�=q                                    BvWu��  �          A z���\)@�\)@/\)A~{B�{��\)A
==�?+�B��H                                    BvWu�  �          A#�����A��@j�HA�{B�(�����AQ�?@  @�{B�                                    BvWu�,  �          A�����@�Q�@�A�B��f����A�@�AIG�B���                                    BvWu��  �          A�
���@��@1�A�33B�#����A=q>L��?�B���                                    BvWvx  �          A  ���A��?��HA8��B�\���A��\(���G�B虚                                    BvWv  �          A���@��?�\)A0��B�G���A �Ϳ8Q���  B�                                    BvWv*�  �          A�R��ff@�=q����c�
C &f��ff@�z��"�\�tQ�C�\                                    BvWv9j  �          AQ����H@��?
=@b�\C
���H@�33��z��!G�C��                                    BvWvH  �          A����\)@�\)����   C����\)@�=q�
=�Q�C��                                    BvWvV�  �          A���G�@�G���G��/\)C�3��G�@�(����Pz�C�                                    BvWve\  �          AQ�����@�  ��p��33C\)����@���z��P  C^�                                    BvWvt  �          A����\@�(��8Q����RCz���\@��
�(��t��C\                                    BvWv��  �          A����{@�
=�n{��  C@ ��{@�{�
=�k\)C#�                                    BvWv�N  �          A����  @��\��p��{C@ ��  @���I�C5�                                    BvWv��  �          A���z�@��ÿ���G�C����z�@���*�H����C�q                                    BvWv��  �          AQ���z�@�  ?:�H@��C�3��z�@��ÿ����p�CǮ                                    BvWv�@  �          A\)��z�@�
=@mp�A�p�C����z�@�(�@�
AP��C��                                    BvWv��  �          AQ���z�@j�H@l��A�ffC
=��z�@�(�@��Aj{C��                                    BvWvڌ  �          A�����@e�@�\)A�(�CaH����@��R@;�A��\C�f                                    BvWv�2  �          A�H�=q@��R@o\)A���C�f�=q@��@G�AS�C�f                                    BvWv��  �          A\)��{@�  @�p�A�
=CJ=��{@��\@/\)A��
CaH                                    BvWw~  �          A���(�@=p�@��B{C+���(�@��@z�HAģ�Cff                                    BvWw$  �          A�\��{@���������{C	���{@�����G����C�f                                   BvWw#�  �          A  ��(�@�����z��33CL���(�@S33��
=�KG�C�                                    BvWw2p  �          A
=�w
=@�ff����F�C��w
=@�����s��C�R                                    BvWwA  �          A\)���
?У��z�C0����
�u�{�3CS�R                                    BvWwO�  �          A���Q�@�����\�G��B���Q�@I����Ru�B�{                                    BvWw^b  �          A\)��33Ap��j=q���BÞ���33@�33��  �#Q�B���                                    BvWwm  �          A�Ϳ�@��
�����	33B��f��@������LffB�W
                                    BvWw{�  �          A�\����@�������6�B�B�����@����	G��{G�B��                                    BvWw�T  �          A&�H��  @�(��љ��(�B����  @���	�_�B��H                                   BvWw��  �          A!�@   A(���p���\)B�Q�@   @��H�����=�\B��                                   BvWw��  �          A"�R@{A�\���R��B�\)@{@����z��D33B�\)                                    BvWw�F  �          A"�R��Q�@�p���33�*��B�zᾸQ�@����  �o�
B�
=                                    BvWw��  �          A'�>W
=@θR�  �O��B�G�>W
=@n{���\)B��=                                    BvWwӒ  �          A%p�?G�A
=��Q�����B�� ?G�@�=q��G��?
=B��=                                    BvWw�8  �          A"ff����A(���
=��ffB�녾���@������H�;  B���                                    BvWw��  �          A�
���HA  �����\B��q���H@ʏ\��{�F{B�                                    BvWw��  �          A �ÿ   A����� {B��   @�������Dp�B�                                    BvWx*  �          A"ff��z�@�p����
�#�B�W
��z�@�z��	G��gffB�(�                                    BvWx�  �          A$z῝p�@߮�����8�RB��H��p�@�Q����{\)B�\)                                    BvWx+v  �          A!G��˅@�  ��
=�H��B�z�˅@mp��\)��B�=q                                    BvWx:  �          A!p�?��@�
=��p��=33B��?��@�Q�����33B���                                    BvWxH�  �          A"{@Dz�@�=q����  B��)@Dz�@�  ��{�NG�BsG�                                    BvWxWh  �          A!p�@$z�@�(����@�B��{@$z�@mp��=q�|ffB]G�                                    BvWxf  �          A (�@P  @������H�N��Bi\)@P  @1G��z�aHB!                                    BvWxt�  �          A ��@���@�����=q�M��B;  @���@����v\)A�Q�                                    BvWx�Z  �          A=q@#33@���� ���\�B|\)@#33@�R�ff�B1
=                                    BvWx�   �          A��?�@�\)���i�B���?�@��ff��Bff                                    BvWx��  �          Az὏\)@��
��
�h�B�uý�\)@"�\���B��                                    BvWx�L  �          A�R�6ff@�
=��ff�NffB�L��6ff@!G�� (�(�C
xR                                    BvWx��  �          A��@��\��p��33C����@P  ��(��=��C�                                    BvWx̘  �          A�����@�G��������C�=���@X������IC)                                    BvWx�>  �          A(����@����z��7p�C����@0����  �cz�C�H                                    BvWx��  �          A�R��p�@��\����1��C����p�@$z���{�Y��C#�                                    BvWx��  �          A(�����@�ff�ҏ\�.C�q����@G������[33CaH                                    BvWy0  �          A��p��@�����{�CQ�C G��p��@'
=�   �q  CE                                    BvWy�  �          Az��%�@~{�����i�B�  �%�?���\)G�Cs3                                    BvWy$|  �          A��'
=@<(�� Q���\C���'
=?\)�Q�8RC'�)                                    BvWy3"  �          A=q�	��@w���ff�s��B�\�	��?�p��\)�RCxR                                    BvWyA�  �          A���{@�����C�3�{    �	�C4{                                    BvWyPn  �          AQ��p  @(����m�
C�R�p  =#�
����HC3Y�                                    BvWy_  �          A	���-p�?�R��z�\C'0��-p������  �CQ�                                    BvWym�  �          @�(��aG��|�������bC����aG���  ����#(�C�z�                                    BvWy|`  �          @�
=��(������
=�qCg#׿�(��h�������JG�Ct��                                    BvWy�  �          @��
�:�H��(���  �$�RC�"��:�H�Ϯ�Dz��ə�C��=                                    BvWy��  �          @�R�u��
=��{�G�C��3�u��G��:�H��  C���                                    BvWy�R  �          @����H��������
��C�����H�������\)C��                                   BvWy��  �          @�z῱���\)�Tz���{C�^�������
���\���C���                                    BvWyŞ  �          @��Ϳ+���33�r�\���C�  �+���z�����]�C�n                                    BvWy�D  �          @�{�(��ָR�I���ȏ\C�ff�(���녿�Q��\)C��q                                    BvWy��  �          @�
=������;���Q�C��Ή����?�
=AT(�C��R                                    BvWy�  �          @�z�n{�'���=q�~
=Czk��n{��G���z��A{C���                                    BvWz 6  �          A\)�s33�(����
=
=Cz5ÿs33��z���ff�Z��C�8R                                    BvWz�  �          @��Ϳ��
��=q�$z����RCQ���
�ə��c�
����C�1�                                    BvWz�  �          @ᙚ    ��33��z��"�H��O�    ��33�5���
��O�                                    BvWz,(  �          @��
?�{���\���H�-�\C��\?�{�����K���G�C��3                                    BvWz:�  �          @�녿��H������
 W
CF�R���H����߮�Cs)                                    BvWzIt  �          @�33�33?�
=�����C!H�33����{aHC@�                                    BvWzX  �          @�z��ff@^{���
�e�
B��f��ff?�Q��ڏ\8RCǮ                                    BvWzf�  �          AG��=q?Q���L�C!5��=q���\����CO�=                                   BvWzuf  �          @����s33���ָR�p�C;�=�s33�33��=q�[��CS&f                                    BvWz�  �          @�G����
�����
�\
=CC����
�1G����\�Az�CU��                                    BvWz��  �          @���Z�H��Q���33�j�CJ�{�Z�H�@������I33C]aH                                    BvWz�X  �          @�\�K���
���H�d�CT���K��b�\���\�;�Cd�                                    BvWz��  �          @�ff�0�׾�(���33�RC<��0����R�Ϯ�uz�CZ�R                                    BvWz��  �          @�\)�\��@z���Q��e�
C��\��?�\��z��|�C+�
                                    BvWz�J  �          A��e@(�����j�C�f�e>�z����~{C/p�                                   BvWz��  �          A�����?&ff�����oG�C+������G�����jCE
                                   BvWz�  �          A���p�@����
=�Q�HCǮ��p�>�33����a��C/��                                    BvWz�<  �          A	����
=@^{��(��I��C����
=?�{�陚�i{C#�                                    BvW{�  �          A	���G�@�G���z��@�
C  ��G�@{��
=�e�
C+�                                    BvW{�  �          A  �u�@�\)��z��0=qC ��u�@A���p��[G�C�)                                    BvW{%.  �          A\)���@��������C�����@|�������0��C\)                                    BvW{3�  �          A
=���R@�(����R��
=C
.���R@g����\���Cs3                                    BvW{Bz  �          AG���Q�@r�\�>{���C�R��Q�@8���vff��
=C�)                                    BvW{Q   �          Aff��Q�@|���A���\)C���Q�@A��|����RCٚ                                    BvW{_�  �          AG�����@�  �7
=����C�f����@fff�{����C�)                                    BvW{nl  �          A(����@��H�G��33C����@fff�S�
���C�{                                    BvW{}  �          A�H�أ�@��R�������C�f�أ�@�G��	���s�
C0�                                    BvW{��  �          @����  @�33�L�;�Q�C����  @�p���{�
=C��                                    BvW{�^  �          @�{���R@��
?��RA3�C!H���R@�=q=u>�(�C{                                    BvW{�  �          @�=q���@�z�?�p�As�B�Q����@�ff>��@G�B��=                                    BvW{��  �          @����dz�@˅?�  AW\)B���dz�@��H=u>��HB��f                                    BvW{�P  �          @���  @�G��\(��B��  @�������(�B�                                     BvW{��  �          @�33?��\��
=���\�C�}q?��\�2�\��  �RG�C�1�                                    BvW{�  �          @��>���?J=q��
=(�B�ff>��þ��R����§�fC�^�                                    BvW{�B  �          @����  @����ff��Q�Bͅ��  @j=q�X���'(�B�p�                                    BvW| �  �          @��>�녿�33��  z�C�� >���K����
�qG�C��H                                    BvW|�  �          @��ÿ+��}p��˅�
Ck��+��#�
�����Ck�                                    BvW|4  �          @�  �\�����Ϯ{C�þ\�X����=q�n�C���                                    BvW|,�  �          @��
���H��G����
33C~ff���H�W
=���R�q\)C�ٚ                                    BvW|;�  �          @�\)�5��=q���H��Cl�\�5�0����33�qC��                                    BvW|J&  �          @��H�
=�����{#�CB�q�
=����33�|p�C`�f                                    BvW|X�  �          @�\)�Q녿�z������Cj�q�Q��,�����\Q�C}�                                    BvW|gr  �          @ָR�W
=������z�¬W
Cr��W
=��\�ʏ\.C�                                      BvW|v  �          @ə���\)��\��\)�=CHk���\)��p���p���CkY�                                    BvW|��  �          @�����{@~{?���AQ�C����{@�>��
@E�C
=                                    BvW|�d  �          @�z��i��@�\)@%�A��\C!H�i��@�\)?��AK33B�k�                                    BvW|�
  �          @Ϯ�4z�@���@'�A��B�4z�@�Q�?�ffA=�B�(�                                    BvW|��  �          @�ff�   @���@3�
Aأ�B���   @�{?\Ac�B�aH                                    BvW|�V  �          @�\)�%�@��@�A�B�z��%�@���?��A"{B�Ǯ                                    BvW|��  �          @�33�+�@�
=@Q�A�p�B�.�+�@�33?h��A
=B�u�                                    BvW|ܢ  �          @�Q��#33@�G�@Q�A�G�B�k��#33@�z�?B�\@�G�B�=                                    BvW|�H  �          @��fff@�{?�\)A�{B�(��fff@ƸR>�Q�@P  B�ff                                    BvW|��  �          @��?=p�@��
?�Ah��B��
?=p�@ҏ\=u?�B�B�                                    BvW}�  �          @�(��`��@�\)?�p�A,  B�Q��`��@���\)��
=B�\                                    BvW}:  *          @ə���33@;�?��A)��CO\��33@G
=>Ǯ@i��C�                                    BvW}%�  �          @�����{?.{?�33A&�RC-����{?p��?s33A	p�C+c�                                   BvW}4�  �          @������>�{?\(�@�  C0����?
=q?@  @أ�C/!H                                    BvW}C,  �          @�33����?�G�>�\)@ ��C#�����?�\�#�
��
=C#�f                                    BvW}Q�  �          @ə���  @ �׾�Q��R�\C\)��  @ff�u�  C�R                                    BvW}`x  �          @�=q��z�@��333�˅C����z�?��������/�
C!��                                   BvW}o  �          @�=q��ff?�Q��=q�g
=C&aH��ff?��\��\)��(�C*E                                    BvW}}�  �          @�=q����@�Ϳ����0(�C(�����?���Q��yC"E                                    BvW}�j  �          @���G�?�녿�\��=qC!(���G�?�z��
�H��  C%�3                                    BvW}�  �          @�{��G�>�z��p���
=C0����G����R�������C7Y�                                    BvW}��  �          @�(�����?�G��
=����C&�H����?8Q�����C,E                                    BvW}�\  �          @ȣ�����@N�R�B�\����C�����@<�Ϳ�G��_�C�f                                    BvW}�  �          @�{����?Tz���H���C+������>��Ϳ�����C/�f                                    BvW}ը  �          @�\)��33�.{��\)��{C5���33������
��(�C:p�                                    BvW}�N  �          @����\)�+���33�D(�C;@ ��\)�k��u�#\)C=�3                                    BvW}��  �          @�����\)�k�����]C=���\)��������2=qC@��                                    BvW~�  �          @��������\)�����z{C7W
�����
=���R�f=qC;                                      BvW~@  �          @����G��#�
�0��� Cg�R�G��H������RCm8R                                    BvW~�  �          @h�ÿ��
��\)�8Q��U��Cq5ÿ��
�\)�
=�$�
Cw�)                                    BvW~-�  �          @��
�w
=>�녿   ���C-��w
=>�\)�z���C/�\                                    BvW~<2  �          @������R>\�W
=�6ffC.�
���R>��
��z��~�RC/��                                    BvW~J�  �          @�33����p��?��HAf�RC?�����!G�?�33A���C;��                                    BvW~Y~  �          @�  ��z�=#�
��  k�C2����z���
��=q{C^�\                                    BvW~h$  �          @��ÿ�
=?k����W
Cc׿�
=�&ff��{#�CF�{                                    BvW~v�  �          @ڏ\�G�>��Ϯ�=C&��G���ff��p�  CO\)                                    BvW~�p  �          @�  ���>\)�θRffC/J=��녿�\)�����C[�                                   BvW~�  �          @�\)�,(�?������3C(k��,(��s33�˅ǮCGs3                                   BvW~��  �          @����(�?�G����
��Ch��(�    ��G���C4�                                    BvW~�b  �          @��H�#33?�Q�����|��C� �#33>�(����H=qC*z�                                    BvW~�  �          @�{��H@
=��
=�C
����H?   ���33C(B�                                    BvW~ή  �          @���p�@�����
\C	\)�p�?!G���ff(�C%�3                                   BvW~�T  �          @�ff�$z�@����  �u�CO\�$z�?c�
��z���C �=                                    BvW~��  �          @��
�Q�?��R����C+��Q�>����{��C*G�                                    BvW~��  �          @�Q��)��@����yffC޸�)��?\)�׮33C((�                                    BvW	F  �          @�33�Vff@#33��\)�[�C�R�Vff?�\)����t�\C!��                                    BvW�  �          @��H�E@33��\)�i33C:��E?Q���33W
C%
=                                    BvW&�  �          @��3�
@����t�C33�3�
?(����  �3C&�q                                    BvW58  �          @��6ff?�=q��\)�y�C^��6ff>��R��\)��C-�)                                    BvWC�  �          @�=q�z=q@5���Q��C
=C��z=q?�G���  �\Q�C�f                                    BvWR�  �          @�=q�C�
@�H��\)�k��C�R�C�
?c�
��33#�C#��                                    BvWa*  �          @�Q��E@-p������c33C
� �E?�(���\)�~�HCk�                                    BvWo�  �          @љ��S33@N{�`����HC� �S33@ff��z��6p�C��                                    BvW~v  �          @����@l�Ϳ����Z�\Cc����@R�\������C�f                                    BvW�  �          @����n�R?�����G��7\)C��n�R?W
=���H�H�
C'aH                                   BvW��  �          @�ff�p��?Y����=q�:�C'Y��p�׽�Q�����?G�C5\)                                    BvW�h  �          @����p  @>{�E��=qC�H�p  @���j�H� ��C��                                    BvW�  �          @��\��Q�@$z���
�ǅC���Q�?�p��5���Q�C�                                    BvWǴ  �          @��H��\)>�ff�h�����C.B���\)��p��h���=qC8                                    BvW�Z  �          @�Q����@#�
�G
=��  CO\���?�ff�fff��C)                                    BvW�   �          @�p��e@7
=�g
=���Cu��e?��R�����5Q�C�                                    BvW�  �          @ȣ���H@'
=�����Z�\C�
��H?�
=��
=�{33Ch�                                    BvW�L  �          @�녿Ǯ?������C  �Ǯ<#�
���\�C3��                                    BvW��  �          @��?��H���=qC���>\����aHC)�                                   BvW��  �          @�(��U�?�\)�[��1p�C!u��U�>����e�<G�C.Y�                                    BvW�.>  �          @�=q��
=?z�?=p�@�
=C-����
=?8Q�?
=@�z�C,)                                    BvW�<�  �          @�\)���?Y��>�33@��C*{���?h��>��?��
C)p�                                    BvW�K�  
�          @�G���\)>��þ�p���C0E��\)>u��(�����C1G�                                    BvW�Z0  �          @�33�|(��=p�?}p�A]�C>���|(��   ?���A}��C;8R                                    BvW�h�  �          @���������?Tz�A ��C5+����=�Q�?Tz�A ��C2��                                    BvW�w|  	h          @�Q�Q�?z��L��=qC�ÿQ녾\)�P  G�C=��                                    BvW��"  T          @�ff>k�>��
��G�«�=B[�\>k��W
=��\)¡C�w
                                   BvW���  	�          @��ÿz�?#�
��p�¢��C.�z�(���p�£\Cb�{                                   BvW��n  "          @��R��R>�G���G�¤� C���R�G���  u�Cgٚ                                    BvW��  �          @�33�>{��z���
=�p�HC9z��>{��z������c33CMu�                                    BvW���  �          @����  �B�\���\�Iz�C6�R��  ���R��p��@�RCE0�                                   BvW��`  �          @����z=q��G����H�L=qC5�=�z=q��33��ff�DQ�CDp�                                    BvW��  L          @�{�~�R��G�����Ep�C:Q��~�R��Q���ff�9��CG�                                    BvW��  �          @�������\�7
=��(�C9�H����\)�+��֏\C@+�                                    BvW��R  �          @��\��33�������4��C>�R��33����aG��
=CA#�                                    BvW�	�  �          @�����n{����;
=C=������33�h���p�C?�3                                    BvW��  �          @�����?�G��!G���  C!n���?�=q�}p��$��C#0�                                    BvW�'D  �          @�33��{?�
=�L����
C'��{?�{��ff��(�C(z�                                    BvW�5�  �          @��\����@��<��
>��C�����@p�������Cc�                                    BvW�D�  �          @����G�@*=q?!G�@�Q�C  ��G�@.�R=#�
>�
=CW
                                    BvW�S6  �          @�ff����@L�Ϳ:�H��  C����@>{��33�g�
C                                    BvW�a�  �          @�\)�h��@|�Ϳ�G��{\)C���h��@a��z�����C��                                    BvW�p�  �          @�����(�?#�
?�p�A��C,�{��(�?��?��A�Q�C'�                                   BvW�(  �          @�z��E@.�R���H�أ�C
�
�E@#�
����l��CaH                                   BvW���  �          @�ff�l��@~{�=p���
=C���l��@n{�Ǯ����C�{                                    BvW��t  �          @��R�hQ�@4z�Ǯ��{C5��hQ�@�H����CT{                                    BvW��  �          @�����@  ?�\)A��C������@"�\?���ALz�C�                                    BvW���  �          @��
��(���?�p�A��RC9�)��(����
?��
A�ffC4��                                   BvW��f  �          @������R?�G�@�\A�{C� ���R@��?�{A�=qC�R                                    BvW��  �          @����tz��U���\��  C]
=�tz��W
=>W
=@�C]O\                                    BvW��  �          @�����H�G�>�?ǮCL�����H����?��@���CL(�                                    BvW��X  �          @�z����;��
?��HAh  C7����ͽu?�  Ao�
C4��                                    BvW��  �          @��\��(�?�=q?�  A��C\)��(�@	��?���ArffC��                                    BvW��  �          @��
����@,(�?�p�A���C�����@?\)?�\)AAC�                                    BvW� J  �          @���p��@,(�?��A�  CaH�p��@A�?��
Am�C�                                    BvW�.�  �          @���\��@J�H?�\)A��C	n�\��@_\)?�z�ATz�C�f                                   BvW�=�  �          @�\)����?�G�?�p�A�p�C������@��?���A��Cp�                                   BvW�L<  �          @������R����?���A�Q�C8z����R=�Q�?�p�A��C2�\                                   BvW�Z�  �          @�G����
�\(�?�ffA��
C>� ���
��?�Q�A��C9��                                    BvW�i�  �          @������(�@
=qA��HC;������\)@�RA��C5�
                                   BvW�x.  �          @�z�����?��R?��HA\)C#
����?�G�?�\)AB=qC 33                                   BvW���  �          @�
=���R@)��?�33A2{C{���R@5�?�@�  C��                                    BvW��z  �          @������@C�
?G�@�
=C����@I��=�?�Q�CQ�                                    BvW��   �          @������@L(�?.{@ϮC�=���@P��        C5�                                    BvW���  �          @�G���G�@e>�
=@���C(���G�@e��{�N{C
                                    BvW��l  �          @�G����R@W�>��H@�(�CǮ���R@Y���k��
�HC��                                    BvW��  �          @�����(�@B�\?@  @�p�CQ���(�@HQ�=���?uC�
                                    BvW�޸  �          @��R���@U=�Q�?k�Cu����@R�\������C��                                    BvW��^  �          @�z����@h�ü���{C����@c33�J=q���CY�                                    BvW��  �          @�  ���@qG��u���C
�=���@h�ÿ��\�#�C��                                    BvW�
�  �          @�33��Q�@dzᾔz��?\)C
=��Q�@[����\�)��C#�                                    BvW�P  �          @�Q���33?��?�p�A�  C'O\��33?���?��RAhQ�C#�R                                    BvW�'�  �          @�
=�,���
=@Q�B/{CY��,�Ϳ���@h��BH��CO{                                    BvW�6�  �          @������ ��@5BQ�CbG������\)@S33B=p�CY��                                    BvW�EB  �          @��L(���{@K�B3  C:{�L(�>��
@K�B3�C.0�                                    BvW�S�  �          @����AG�?�\)@_\)B={C�q�AG�?�@K�B(Q�C\                                    BvW�b�  �          @��
�B�\?�33@EB+33C=q�B�\@ ��@/\)B�HC��                                    BvW�q4  �          @�{�l(�?�@�
A�=qCn�l(�@�R?��A�(�Cٚ                                    BvW��  �          @�����?��?˅A�\)Cu����@
�H?�AYCT{                                    BvW���  �          @��\�}p�@*�H?z�@�C���}p�@.�R<��
>aG�C\)                                    BvW��&  �          @����h��@E��
=����C��h��@;���ff�IC�                                    BvW���  �          @�\)�h��@7��8Q��{C� �h��@1G��E��  C��                                    BvW��r  
R          @�p��Vff@L(��!G���ffCs3�Vff@?\)���\�{�
C
B�                                    BvW��  
b          @���(Q�@b�\�#�
�Q�B�33�(Q�@U�������p�C B�                                    BvW�׾  �          @�Q��   @^�R��\)�j�\B�G��   @K�����
=C &f                                    BvW��d  �          @���o\)@=q>8Q�@z�C+��o\)@�����
���HCQ�                                    BvW��
  �          @�ff�o\)@�����RC��o\)@G��
=���RC�q                                    BvW��  �          @��R�s�
@.{��Q쿌��Cz��s�
@(�ÿ#�
���C=q                                    BvW�V  �          @�����?��?^�RA*�\C"�����?��?�@�C �                                    BvW� �  �          @�p���\)?��?�Q�A�{C%�q��\)?��H?�A�C!�R                                    BvW�/�  �          @�����33?��?��Ax(�C'��33?��?���AI�C$(�                                    BvW�>H  �          @�ff��\)?��?��A8  C(B���\)?�(�?L��A=qC&0�                                    BvW�L�  �          @�  ��?\?k�A!C"�)��?�
=?
=@�
=C!:�                                    BvW�[�  �          @�����\)?���?Q�A�\C"0���\)?�p�>�@�p�C �\                                    BvW�j:  �          @�=q��G�?�G�?@  A�HC#\)��G�?У�>�(�@�C"
                                    BvW�x�  �          @�����?�{?Y��A�RC$����?�  ?��@��RC#p�                                    BvW���  �          @�ff����?p��?xQ�A#�C)�H����?�\)?@  @�
=C(�                                    BvW��,  �          @�  ��=q?�G�?fffA
=C)@ ��=q?�?.{@�=qC'�{                                    BvW���  �          @��H���
?u?�AB�\C)�)���
?�
=?uAC'��                                    BvW��x  �          @�����ff?��?z�HA33C(�q��ff?�G�?:�H@�\)C&��                                    BvW��  �          @�����?:�H?z�HA&�HC,+�����?h��?O\)A
{C*8R                                    BvW���  �          @�  ��(�?8Q�?Y��A(�C,���(�?aG�?.{@�RC*O\                                    BvW��j  �          @������H?�\)?W
=AG�C(�R���H?�G�?
=@�z�C'J=                                    BvW��  �          @��H��{?k�?c�
AC*s3��{?�=q?.{@�  C(��                                    BvW���  �          @����{?^�R?8Q�@�(�C+O\��{?�  ?�@�\)C*�                                    BvW�\  �          @�(���
=?��\?h��AC)���
=?�
=?.{@���C(\)                                    BvW�  *          @����ff?Q�?��A#�
C+�\��ff?�G�?Y��A{C)�                                    BvW�(�  �          @����p�?E�?��
A"�\C,Q���p�?u?Y��AffC*k�                                    BvW�7N  �          @�Q���(�?=p�?uA��C,����(�?k�?J=q@��HC*�q                                    BvW�E�  �          @�����p�?��?J=qA�
C-�q��p�?=p�?&ff@��C,33                                    BvW�T�  �          @�������?�G�>��R@I��C)�q����?�ff=���?��\C)Q�                                    BvW�c@  �          @�\)����?Y��>W
=@��C+)����?^�R<�>�p�C*ٚ                                    BvW�q�  �          @�33��녾�\)���
�Q�C6�{��녾�zἣ�
�k�C6�                                    BvW���  �          @�(������\)>B�\?��C4�������>L��?��RC4Q�                                   BvW��2  �          @��������p�?#�
@�RC8#������k�?333@���C6�
                                    BvW���  �          @�{���
�+�>�Q�@s�
C;\���
�z�>��H@���C:&f                                    BvW��~  �          @�����(����H�#�
�\CAE��(���Q�>W
=@�CA{                                    BvW��$  �          @�����(��^�R>�ff@�z�C=�H��(��B�\?(�@�
=C<s3                                    BvW���  �          @�����=q=�\)?W
=A�C3@ ��=q>u?O\)A
{C1p�                                    BvW��p  �          @�  ����>u?��
A,  C1s3����>�G�?uA (�C/Q�                                    BvW��  �          @������H?�?�{AmG�C.\���H?J=q?�(�AUG�C+&f                                    BvW���  �          @�
=���=�G�?�  AS
=C2޸���>�33?���AK
=C00�                                    BvW�b  �          @���\)?333?�G�AV{C,aH��\)?p��?��A9�C)�{                                    BvW�  �          @���ff?&ff?�\)Ai��C,޸��ff?h��?��HAM�C*\                                    BvW�!�  �          @��R���?��H@ ��A�ffC!J=���@�?�\)A��C��                                   BvW�0T  �          @��R��
=?�33@33A�
=C\��
=@G�?У�A���CaH                                   BvW�>�  �          @�(�����?��H?���A���C@ ����@�
?\A{
=C�                                    BvW�M�  �          @�=q��33?�(�?�Q�A�p�C#����33?��
?�{Ab=qC �q                                    BvW�\F  �          @��H��p�?�\)?���A�G�C%5���p�?�z�?��AV=qC"5�                                    BvW�j�  �          @����?�ff?�ffA��C%����?�=q?�  APQ�C#
=                                    BvW�y�  �          @�ff���
?fff?У�A��HC*����
?��H?�z�Ap(�C&�R                                    BvW��8  �          @�ff���?O\)?�  A�Q�C+����?��?��A^�HC(\                                    BvW���  �          @��R��ff?��?�Q�AIp�C(����ff?��\?s33A ��C&B�                                    BvW���  �          @��R����@#33?ǮA�33C������@3�
?�G�A+�C.                                    BvW��*  �          @�����33@z�>�\)@:�HC���33@��\)��(�C��                                    BvW���  �          @�����?�G�?�\@�
=C!k����?�=q>\)?���C �                                    BvW��v  �          @��H��?�?^�RA(�C �=��?�Q�>��H@���Cp�                                   BvW��  �          @��
��z�@�;����
C�)��z�@��\)����C�                                   BvW���  �          @�����@ ��?   @�C����@#�
���
�#�
CxR                                    BvW��h  �          @�������?��=L��?�C({����?��׾8Q��\)C(5�                                    BvW�  �          @�\)��33?�=q>L��@
=C B���33?�=q�.{����C :�                                    BvW��  �          @����p�@%�?���A��RC\��p�@:�H?��Ab�HC��                                    BvW�)Z  �          @�\)��
=@(Q�?��A��C޸��
=@<��?��AS\)C��                                    BvW�8   �          @����z�@z�?�z�A�(�C����z�@&ff?�33A<��C�R                                    BvW�F�  �          @�����@Q�?���A��RC�����@)��?��A,Q�C�
                                    BvW�UL  �          @�{��
=@�?��AR{C���
=@(��?E�@��\C                                    BvW�c�  �          @�����
@�?���A�=qC�����
@#33?���A5��CL�                                   BvW�r�  �          @��
���H@{?�Ak
=C�����H@-p�?fffA33C�=                                   BvW��>  �          @�(���=q@�R?\Az�\C���=q@/\)?}p�A!�Ck�                                    BvW���  �          @�����\)@��?�G�AxQ�C0���\)@��?��A)G�C�q                                   BvW���  �          @�\)���@
�H?˅A��\C�
���@(�?�\)A3�C@                                    BvW��0  �          @�  ����?�?�\A�C ������@Q�?�\)A\��C��                                   BvW���  �          @�������?�?��HA�  C�=����@{?��
AN=qC��                                   BvW��|  �          @�����{?��?�33A��C 
��{@
�H?��RAF=qCE                                    BvW��"  �          @���(�?У�?�ffA���C"k���(�?���?�
=Ai��C&f                                    BvW���  �          @�
=��(�?ٙ�?�{A�{C!�f��(�@�\?�p�Ap  CJ=                                    BvW��n  �          @�{���\?�p�?�{A��\C!=q���\@�
?�(�Ao�
C��                                    BvW�  �          @�p���\)?�\)?�Q�A��RCxR��\)@{?��
AzffC��                                    BvW��  �          @���33?���?���A���C"���33?�
=?˅A�ffCG�                                    BvW�"`  �          @�����(�?�?�\)A�
=C$����(�?�G�?�ffA~�\C!�                                    BvW�1  �          @�
=��{?�Q�?�(�A�{C"  ��{@   ?��AYp�C�                                    BvW�?�  �          @���z�?�Q�?޸RA���C!ٚ��z�@   ?�{A^{C�R                                   BvW�NR  �          @�����?�?�Q�A��RC"{����?�(�?���AW
=C
=                                   BvW�\�  �          @�����{?�\)?��A}G�C"�3��{?��?�
=AA�C�                                    BvW�k�  �          @�����\)?��H?�ffA~{C$Y���\)?�  ?�(�AF�HC!�                                    BvW�zD  �          @�����?�Q�?���A��\C$�H���?�p�?��RAJ�RC!�                                     BvW���  �          @�33��
=?�p�?�33A�\)C �=��
=@�?�G�A{\)CB�                                    BvW���  �          @��\����?У�?�G�A��\C"&f����?���?��AfffC��                                    BvW��6  �          @�����G�?���?��
A��RC%\��G�?�
=?�(�Aw\)C!�{                                    BvW���  �          @��\���\?�
=?��
A��HC$B����\?�G�?���AqG�C �)                                    BvW�Â  �          @�G�����?�G�?�  A���C#T{����?�=q?�z�Ak�
C                                       BvW��(  �          @�����Q�?z�?��
A��RC-�3��Q�?aG�?���Ag�C*��                                    BvW���  �          @�ff��z�>��?��A��C2aH��z�?�\?�(�A�C.^�                                    BvW��t  �          @��R���R>�\)?�=qA���C0����R?��?��RA}C-xR                                    BvW��  �          @�������<#�
?�\)A���C3������>�{?�=qA��C0O\                                    BvW��  �          @�����\)>k�?޸RA���C1z���\)?z�?�z�A��C-�                                    BvW�f  �          @�����\)>aG�?�  A�C1�f��\)?�?�A��RC-�\                                    BvW�*  �          @�  ��p�>��H?��A��C.����p�?W
=?�33A��
C*�                                    BvW�8�  �          @����{?
=?��HA���C-�\��{?k�?�ffA�33C)�                                    BvW�GX  �          @��\����?#�
?�
=A�z�C-{����?xQ�?�G�A|Q�C)��                                    BvW�U�  �          @�=q���H?
=?�Q�ApQ�C-�q���H?^�R?��AV�RC*�                                    BvW�d�  �          @�����G���\)?�  A}p�C4��G�>u?�p�AzffC1h�                                    BvW�sJ  �          @�
=���Ϳfff?L��A33C=�����Ϳ8Q�?xQ�A(��C;�                                    BvW���  �          @�����?�?�{A�\)C-������?p��?ٙ�A�G�C)k�                                    BvW���  �          @�
=���
>�
=?���A�{C/^����
?G�?�(�A���C+J=                                    BvW��<  �          @�
=���?�R?�p�A���C-����?�G�?�A�ffC(��                                    BvW���  �          @�\)��ff���ÿ�(��O\)C?�
��ff����z�H�%�CA��                                    BvW���  �          @�G���z�?.{>W
=@
=qC,�\��z�?5=u?#�
C,�                                    BvW��.  �          @�����\?��
@{A�=qC'�����\?\@��A��C"�{                                    BvW���  �          @��\��\)?p��@�
A��
C)Q���\)?�33@z�A�{C$\)                                   BvW��z  �          @�����{?�  @G�A���C(�\��{?���@ ��A���C#��                                    BvW��   �          @�����\?+�@
=A�
=C,}q���\?��?�
=A��RC'�H                                    BvW��  �          @����G�?�(�@#33Aڏ\C%� ��G�?�(�@\)A��\C G�                                    BvW�l  �          @�=q����?(�@ ��A�G�C-=q����?�G�?�A�Q�C(�H                                    BvW�#  �          @�G����
���R?��A>�HC7@ ���
�u?�AEp�C4�                                    BvW�1�  �          @��
���R?�?z�@�\)C.ff���R?#�
>�ff@�ffC-J=                                    BvW�@^  �          @������>�Q�?ٙ�A���C0&f���?333?˅A��C,�                                    BvW�O  �          @�{����>�ff?�G�AMG�C/c�����?333?��A9p�C,��                                   BvW�]�  �          @�(���
=?.{@ ��A���C,����
=?�=q?���A�
=C(T{                                    BvW�lP  �          @�33���
>�ff@(�A�=qC.����
?fff@�\A���C*
=                                    BvW�z�  �          @��
���R?�R@$z�AمC,޸���R?��@Q�Aȣ�C'
=                                    BvW���  �          @����  ?:�H@8��A��
C+Q���  ?��@*�HA�C$�{                                   BvW��B  �          @�(����H?.{@333A�Q�C+����H?�  @%A�\)C%z�                                    BvW���  �          @������?��@�A���C(�{����?�Q�?�G�A�  C$aH                                    BvW���  �          @�z����H?�{?�Ah��C(@ ���H?���?�33A<��C%}q                                    BvW��4  �          @�(�����?�33?�Q�An=qC'������?�?�A@z�C$��                                    BvW���  �          @�(�����?��?�=qA[�C%5�����?��?�G�A&{C"�R                                   