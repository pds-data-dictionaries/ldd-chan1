PDS4 Chandrayaan-1 Mission Data Dictionary User's Guide  
[Last edited](#edit-history): 2025-11-24  
  
# Introduction  
1. Purpose of this User's Guide  
    - This User's Guide provides an overview of the Chandrayaan-1 Mission Data Dictionary. The guide details how to include the dictionary in a PDS4 label, describes the organization of the dictionary's classes and attributes, provides definitions for these classes and attributes, and lists example excerpts from labels that use them.  
2. Audience  
    - This User's Guide should be useful to data providers intending to archive Chandrayaan-1 data with PDS as well as PDS Nodes who are working with these data providers.  
  
# Overview of the Chandrayaan-1 Mission Data Dictionary  
The Chandrayaan-1 Mission Data Dictionary contains classes and attributes specific to the Chandrayaan-1 mission and its instruments.  
Steward: Jennifer Ward, PDS Geosciences Node, jgward@wustl.edu  
  
# Document Outline  
1. [How to Include the Chandrayaan-1 Mission Data Dictionary in a PDS4 Label](#how-to-include-the-Chandrayaan-1-Mission-data-dictionary-in-a-pds4-label)  
2. [Organization of Classes and Attributes](#organization-of-classes-and-attributes)  
    1. [Class Organization](#class-organization)  
    2. [Attributes by Class](#attributes-by-class)  
3. [Definitions](#definitions)  
    1. [Classes (in alphabetical order)](#classes-in-alphabetical-order)  
    2. [Attributes (in alphabetical order)](#attributes-in-alphabetical-order)  
4. [Examples](#examples)  
5. [Edit History](#edit-history)  
  
# How to Include the Chandrayaan-1 Mission Data Dictionary in a PDS4 Label  
The dictionary consists of a set of files with names in the form PDS4_CHAN1_xxxx_yyyy.ext, where  
- xxxx = the PDS4 Information Model version, e.g. 1O00  
- yyyy = the Chandrayaan-1 Mission Data Dictionary version, e.g. 1200  
  
and the file extensions are  
  
- .csv = A comma-separated value table of dictionary attributes  
- .JSON = The dictionary contents in JSON format  
- .sch = The dictionary "rules" as an XML Schematron file  
- .txt = The report generated when the dictionary was built  
- .xml = The PDS4 label that describes this set of files  
- .xsd = The dictionary contents as an XML schema file  
  
Only the schema and Schematron files are needed for validating a PDS4 label.  
  
The latest version of this dictionary may be found on the PDS web site at https://pds.nasa.gov/datastandards/dictionaries/index-missions.shtml#chan11.  
  
The following is an example showing the use of this dictionary in a PDS4 label.  
  
```
<?xml version="1.0" encoding="UTF-8"?>
<?xml-model href="https://pds.nasa.gov/pds4/pds/v1/PDS4_PDS_1O00.sch" schematypens="http://purl.oclc.org/dsdl/schematron"?>
<?xml-model href="https://pds.nasa.gov/pds4/mission/chan1/v1/PDS4_CHAN1_1O00_1200.sch" schematypens="http://purl.oclc.org/dsdl/schematron"?>
<Product_Observational xmlns="http://pds.nasa.gov/pds4/pds/v1"
    xmlns:chan1="http://pds.nasa.gov/pds4/mission/chan1/v1"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="https://pds.nasa.gov/pds4/pds/v1/PDS4_PDS_1O00.xsd
                        https://pds.nasa.gov/pds4/mission/chan1/v1/PDS4_CHAN1_1O00_1200.xsd">
```  
  
The following is a schematic example showing the location of every Chandrayaan-1 Mission Data Dictionary class and attribute in a PDS4 label. Note that not all classes and attributes may be mutually compatible, and the example does not include any recursion, even if recursion is allowed.  
```
<Observation_Area>
  ...
  <Mission_Area>
    <chan1:Chandrayaan-1_Parameters>
      <chan1:release_id/>
      <chan1:mission_phase_name/>
      <chan1:orbit_number/>
      <chan1:spacecraft_clock_start_count/>
      <chan1:spacecraft_clock_stop_count/>
      <chan1:instrument_mode_id/>
      <chan1:instrument_mode_desc/>
      <chan1:producer_full_name/>
      <chan1:producer_institution_name/>
      <chan1:spacecraft_yaw_direction/>
      <chan1:orbit_limb_direction/>
      <chan1:orientation_epoch_time/>
      <chan1:spacecraft_rotation_rate/>
      <chan1:Initial_Spacecraft_Orientation>
        <chan1:roll/>
        <chan1:pitch/>
        <chan1:yaw/>
      </chan1:Initial_Spacecraft_Orientation>
      <chan1:Spacecraft_Orientation>
        <chan1:roll/>
        <chan1:pitch/>
        <chan1:yaw/>
      </chan1:Spacecraft_Orientation>
      <chan1:Spacecraft_Orientation_Rates>
        <chan1:roll_rate/>
        <chan1:pitch_rate/>
        <chan1:yaw_rate/>
      </chan1:Spacecraft_Orientation_Rates>
      <chan1:Spacecraft_Orientation_Axis_Vector>
        <chan1:x_unit/>
        <chan1:y_unit/>
        <chan1:z_unit/>
      </chan1:Spacecraft_Orientation_Axis_Vector>
      <chan1:Mini-RF_Parameters>
        <chan1:center_frequency/>
        <chan1:look_direction/>
        <chan1:radar_incidence_angle/>
        <chan1:azimuth_resolution/>
        <chan1:range_resolution/>
        <chan1:line_exposure_duration/>
        <chan1:Bands>
          <chan1:band_number/>
          <chan1:band_name/>
        </chan1:Bands>
        <chan1:Range_Coefficent_Set>
          <chan1:coefficent_time/>
          <chan1:coefficent_1/>
          <chan1:coefficent_2/>
          <chan1:coefficent_3/>
          <chan1:coefficent_4/>
        </chan1:Range_Coefficent_Set>
      </chan1:Mini-RF_Parameters>
    </chan1:Chandrayaan-1_Parameters>
  </Mission_Area>
  ...
</Observation_Area>
```  
  
The namespace for the Chandrayaan-1 Mission Data Dictionary is http://pds.nasa.gov/pds4/mission/chan1/v1, abbreviated "chan1:".  
  
# Organization of Classes and Attributes  
  
## Class Organization  
Below is a structured list showing the organization of classes, ordered by appearance in the PDS4 label. Each class name is linked to its complete definition in the [Definitions](#definitions) section.  
- [Chandrayaan-1_Parameters](#chandrayaan-1_parameters)  
  - [Initial_Spacecraft_Orientation](#initial_spacecraft_orientation)  
  - [Spacecraft_Orientation](#spacecraft_orientation)  
  - [Spacecraft_Orientation_Rates](#spacecraft_orientation_rates)  
  - [Spacecraft_Orientation_Axis_Vector](#spacecraft_orientation_axis_vector)  
  - [Mini-RF_Parameters](#mini-rf_parameters)  
    - [Bands](#bands)  
    - [Range_Coefficent_Set](#range_coefficent_set)  
  
## Attributes by Class  
The attributes immediately under each class (if any) are listed below. Both classes and attributes are ordered by appearance in the PDS4 label; however, each class is listed only once, even if that class can appear in more than one place in a PDS4 label. Each class and attribute name is linked to its complete definition in the [Definitions](#definitions) section.  
  
### [Chandrayaan-1_Parameters](#chandrayaan-1_parameters) (attribute list)  
- [release_id](#release_id)  
- [mission_phase_name](#mission_phase_name)  
- [orbit_number](#orbit_number)  
- [spacecraft_clock_start_count](#spacecraft_clock_start_count)  
- [spacecraft_clock_stop_count](#spacecraft_clock_stop_count)  
- [instrument_mode_id](#instrument_mode_id)  
- [instrument_mode_desc](#instrument_mode_desc)  
- [producer_full_name](#producer_full_name)  
- [producer_institution_name](#producer_institution_name)  
- [spacecraft_yaw_direction](#spacecraft_yaw_direction)  
- [orbit_limb_direction](#orbit_limb_direction)  
- [orientation_epoch_time](#orientation_epoch_time)  
- [spacecraft_rotation_rate](#spacecraft_rotation_rate)  
  
### [Initial_Spacecraft_Orientation](#initial_spacecraft_orientation) (attribute list)  
- [roll](#roll)  
- [pitch](#pitch)  
- [yaw](#yaw)  
  
### [Spacecraft_Orientation](#spacecraft_orientation) (attribute list)  
- [roll](#roll)  
- [pitch](#pitch)  
- [yaw](#yaw)  
  
### [Spacecraft_Orientation_Rates](#spacecraft_orientation_rates) (attribute list)  
- [roll_rate](#roll_rate)  
- [pitch_rate](#pitch_rate)  
- [yaw_rate](#yaw_rate)  
  
### [Spacecraft_Orientation_Axis_Vector](#spacecraft_orientation_axis_vector) (attribute list)  
- [x_unit](#x_unit)  
- [y_unit](#y_unit)  
- [z_unit](#z_unit)  
  
### [Mini-RF_Parameters](#mini-rf_parameters) (attribute list)  
- [center_frequency](#center_frequency)  
- [look_direction](#look_direction)  
- [radar_incidence_angle](#radar_incidence_angle)  
- [azimuth_resolution](#azimuth_resolution)  
- [range_resolution](#range_resolution)  
- [line_exposure_duration](#line_exposure_duration)  
  
### [Bands](#bands) (attribute list)  
- [band_number](#band_number)  
- [band_name](#band_name)  
  
### [Range_Coefficent_Set](#range_coefficent_set) (attribute list)  
- [coefficent_time](#coefficent_time)  
- [coefficent_1](#coefficent_1)  
- [coefficent_2](#coefficent_2)  
- [coefficent_3](#coefficent_3)  
- [coefficent_4](#coefficent_4)  
  
# Definitions  
  
## Classes (in alphabetical order)  
  
### Bands  
 Container class for specifying the order of bands and their name in a multi-band radar image.  
- [go to attribute list](#bands-attribute-list)  
- Minimum occurrences: 0  
- Maximum occurrences: unbounded  
  
### Chandrayaan-1_Parameters  
Container class for general Chandrayaan-1 related parameters.  
- [go to attribute list](#chandrayaan-1_parameters-attribute-list)  
- Minimum occurrences: 1  
- Maximum occurrences: 1  
  
### Initial_Spacecraft_Orientation  
Class for the initial Chandrayaan-1 spacecraft orientation parameters, roll/pitch/yaw in degrees from 'ideal nadir'  
- [go to attribute list](#initial_spacecraft_orientation-attribute-list)  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### Mini-RF_Parameters  
Class for Chandrayaan-1 parameters relating to the Mini-RF (Mini-SAR) instrument.  
- [go to attribute list](#mini-rf_parameters-attribute-list)  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### Range_Coefficent_Set  
 Container class for defining sets of coefficents used for resampling slant range (in meters) to approximate ground range (in meters).  
- [go to attribute list](#range_coefficent_set-attribute-list)  
- Minimum occurrences: 0  
- Maximum occurrences: unbounded  
  
### Spacecraft_Orientation  
Class for Chandrayaan-1 spacecraft orientation parameters, roll/pitch/yaw in degrees from 'ideal nadir'  
- [go to attribute list](#spacecraft_orientation-attribute-list)  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### Spacecraft_Orientation_Axis_Vector  
Class for Chandrayaan-1 spacecraft orientation axis vector, x/y/z unit vector wrt J2000 describing rotation direction since epoch  
- [go to attribute list](#spacecraft_orientation_axis_vector-attribute-list)  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### Spacecraft_Orientation_Rates  
Class for Chandrayaan-1 spacecraft orientation rate parameters, roll/pitch/yaw in degrees/second since epoch  
- [go to attribute list](#spacecraft_orientation_rates-attribute-list)  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
## Attributes (in alphabetical order)  
  
### *azimuth_resolution*  
 The true resolution of the radar image in the azimuth (along track) direction, evaluated at the center of the image for the transmit, receive, and processing parameters used for the sequence.  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: 0.0  
- Maximum value: 1.7976931348623157e+308  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *band_name*  
 The name used to describe a type of band in a multi-band radar image. Examples include "V Receive Intensity" and "Circular Polarization Ratio".  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values: N/A  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 1  
- Maximum occurrences: 1  
  
### *band_number*  
 The sequence number for a band in a multi-band radar image.  
- PDS4 data type: ASCII_Integer  
- Valid values: N/A  
- Minimum value: 1  
- Maximum value: 9223372036854775807  
- Nillable: No  
- Minimum occurrences: 1  
- Maximum occurrences: 1  
  
### *center_frequency*  
 The center_frequency element provides the frequency of maximum transmittance of a filter or the frequency that corresponds to the geometric center of the passband of a filter or a channel.  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: 0.0  
- Maximum value: 1.7976931348623157e+308  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *coefficent_1*  
 The first of a set of 4 polynomial coefficients used for resampling slant range (in meters) to approximate ground range (in meters).  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: -1.7976931348623157e+308  
- Maximum value: 1.7976931348623157e+308  
- Nillable: No  
- Minimum occurrences: 1  
- Maximum occurrences: 1  
  
### *coefficent_2*  
 The second of a set of 4 polynomial coefficients used for resampling slant range (in meters) to approximate ground range (in meters).  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: -1.7976931348623157e+308  
- Maximum value: 1.7976931348623157e+308  
- Nillable: No  
- Minimum occurrences: 1  
- Maximum occurrences: 1  
  
### *coefficent_3*  
 The third of a set of 4 polynomial coefficients used for resampling slant range (in meters) to approximate ground range (in meters).  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: -1.7976931348623157e+308  
- Maximum value: 1.7976931348623157e+308  
- Nillable: No  
- Minimum occurrences: 1  
- Maximum occurrences: 1  
  
### *coefficent_4*  
 The fourth of a set of 4 polynomial coefficients used for resampling slant range (in meters) to approximate ground range (in meters).  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: -1.7976931348623157e+308  
- Maximum value: 1.7976931348623157e+308  
- Nillable: No  
- Minimum occurrences: 1  
- Maximum occurrences: 1  
  
### *coefficent_time*  
 The time associated with a set of 4 polynomial coefficients used for resampling slant range (in meters) to approximate ground range (in meters) at that time.  
- PDS4 data type: ASCII_Date_Time_YMD  
- Valid values: N/A  
- Nillable: No  
- Minimum occurrences: 1  
- Maximum occurrences: 1  
  
### *instrument_mode_desc*  
The instrument_mode_desc element describes the instrument mode that is identified by the instrument_mode_id element.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values: N/A  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *instrument_mode_id*  
 The instrument_mode_id element provides an instrument-dependent designation of operating mode. This may be simply a number, letter, code, or a word.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values: N/A  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *line_exposure_duration*  
 The line_exposure_duration data element indicates the time elapsed during the aquisition of one radar image line of data.  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: 0.0  
- Maximum value: 1.7976931348623157e+308  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *look_direction*  
 The value (Right or Left) indicates the side of the spacecraft groundtrack to which the antenna is pointed for data acquired within a synthetic aperture radar (SAR) image. Most SAR instruments acquire an image on only one side of the ground track at one time. This value also indicates from which side the SAR image is illuminated. If the spacecraft images to the left of its ground track (LOOK_DIRECTION = LEFT), the image will be illuminated from the (viewer's) left side, and, conversely, if the spacecraft looks to the right, the illumination will come from the right in the image file. The direction of illumination is critical to interpretation of features in the image. Mosaicked products may contain various combinations of source imagery. For example, they may combine only left-looking observations (LOOK_DIRECTION = 'LEFT'), only right-looking observations (LOOK_DIRECTION = 'RIGHT'), or a mixture of the two (LOOK_DIRECTION = {'LEFT','RIGHT'}).  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values:  
  - Left  
    - Description: The spacecraft looks to the right, and the illumination was from the right in the image file.  
  - Right  
    - Description: The spacecraft looks to the right, and the illumination was from the right in the image file.  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *mission_phase_name*  
 The mission_phase_name element provides the commonly-used identifier of a mission phase.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values:  
  - Nominal Mission  
    - Description:  This value was used by the mini-RF data providers for all of their archived observational data. Presumably, data from a hypothetical Chandrayaan-1 extended mission, beyond its nominal design life of 2 years, might have been distinguished by other values of this attribute. As it did not survive to the end of this period, other values proved unnecessary.  
  - Primary Mission  
    - Description:  This value was used by the M3 data providers for all of their archived observational data. Presumably, data from a hypothetical Chandrayaan-1 extended mission, beyond its nominal design life of 2 years, might have been distinguished by other values of this attribute. As it did not survive to the end of this period, other values proved unnecessary.  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *orbit_limb_direction*  
 The orbit_limb attribute provides the direction of the spacecraft orbit with respect to the lunar limb. valids: "Ascending", "Descending"  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values:  
  - Ascending  
    - Description: Direction of the spacecraft orbit is ascending with respect to the lunar limb.  
  - Descending  
    - Description: Direction of the spacecraft orbit is descending with respect to the lunar limb.  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *orbit_number*  
 The orbit_number element identifies the number of the orbital revolution of the spacecraft around a target body.  
- PDS4 data type: ASCII_NonNegative_Integer  
- Valid values: N/A  
- Minimum value: 0  
- Maximum value: 18446744073709551615  
- Regex Pattern: [0-9]+  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *orientation_epoch_time*  
orientation_epoch_time indicates time for the recorded orentiation.  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: -1.7976931348623157e+308  
- Maximum value: 1.7976931348623157e+308  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *pitch*  
Rotation about the Y-axis.  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: -1.7976931348623157e+308  
- Maximum value: 1.7976931348623157e+308  
- Nillable: Yes  
- Minimum occurrences: 1  
- Maximum occurrences: 1  
  
### *pitch_rate*  
Rate of rotation about the Y-axis in deg/sec.  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: -1.7976931348623157e+308  
- Maximum value: 1.7976931348623157e+308  
- Nillable: Yes  
- Minimum occurrences: 1  
- Maximum occurrences: 1  
  
### *producer_full_name*  
 The producer_full_name element provides the full_name of the individual mainly responsible for the production of a data set.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values: N/A  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *producer_institution_name*  
 The producer_institution_name element identifies a university, research center, NASA center or other institution associated with the production of a data set. This would generally be an institution associated with the element producer_full_name.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values: N/A  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *radar_incidence_angle*  
 Radar incidence_angle is defined as the value of the angle between the local vertical and the spacecraft direction.  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: 0.0  
- Maximum value: 90.0  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *range_resolution*  
 The true resolution of the radar image in the range (across track) direction, evaluated at the center of the image for the transmit, receive, and processing parameters used for the sequence.  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: 0.0  
- Maximum value: 1.7976931348623157e+308  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *release_id*  
Release_id is the identifier of a scheduled release of data by PDS. The first data release is Release 0001. The release_id for a given product is always the first release in which it appears, and does not change if the product is revised later.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values: N/A  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *roll*  
Rotation about the X-axis.  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: -1.7976931348623157e+308  
- Maximum value: 1.7976931348623157e+308  
- Nillable: Yes  
- Minimum occurrences: 1  
- Maximum occurrences: 1  
  
### *roll_rate*  
Rate of rotation about the X-axis in deg/sec.  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: -1.7976931348623157e+308  
- Maximum value: 1.7976931348623157e+308  
- Nillable: Yes  
- Minimum occurrences: 1  
- Maximum occurrences: 1  
  
### *spacecraft_clock_start_count*  
The spacecraft_clock_start_count attribute provides the value of the spacecraft clock at the beginning of a time period of interest.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values: N/A  
- Minimum Length: 1  
- Maximum Length: 255  
- Regex Pattern: (([0-9]{1,2}\/)[0-9]{1,10}(\.[0-9]{1,5})?)|(UNK)  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *spacecraft_clock_stop_count*  
The spacecraft_clock_stop_count attribute provides the value of the spacecraft clock at the end of a time period of interest.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values: N/A  
- Minimum Length: 1  
- Maximum Length: 255  
- Regex Pattern: (([0-9]{1,2}\/)[0-9]{1,10}(\.[0-9]{1,5})?)|(UNK)  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *spacecraft_rotation_rate*  
Scalar rotation rate in degrees/second since epoch.  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: -1.7976931348623157e+308  
- Maximum value: 1.7976931348623157e+308  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *spacecraft_yaw_direction*  
 The spacecraft_yaw_direction attribute provides the spacecraft yaw (look) mode. valids: "Forward", "Reverse"  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values:  
  - Forward  
    - Description: Defines a forward spacecraft yaw (look) mode.  
  - Reverse  
    - Description: Defines a reverse spacecraft yaw (look) mode.  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *x_unit*  
The x component of a unit Cartesian vector.  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: -1  
- Maximum value: 1  
- Nillable: Yes  
- Minimum occurrences: 1  
- Maximum occurrences: 1  
  
### *y_unit*  
The y component of a unit Cartesian vector.  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: -1  
- Maximum value: 1  
- Nillable: Yes  
- Minimum occurrences: 1  
- Maximum occurrences: 1  
  
### *yaw*  
Rotation about the Z-axis.  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: -1.7976931348623157e+308  
- Maximum value: 1.7976931348623157e+308  
- Nillable: Yes  
- Minimum occurrences: 1  
- Maximum occurrences: 1  
  
### *yaw_rate*  
Rate of rotation about the Z-axis in deg/sec.  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: -1.7976931348623157e+308  
- Maximum value: 1.7976931348623157e+308  
- Nillable: Yes  
- Minimum occurrences: 1  
- Maximum occurrences: 1  
  
### *z_unit*  
The z component of a unit Cartesian vector.  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: -1  
- Maximum value: 1  
- Nillable: Yes  
- Minimum occurrences: 1  
- Maximum occurrences: 1  
  
# Examples  
  
Example PDS4 label snippet from urn:nasa:pds:ch1-orb_mini_rf:data_level1:fsb_00720_1cd_xhu_84n209_v1::1.0:  
```
<Mission_Area>
  <chan1:Chandrayaan-1_Parameters>
    <chan1:release_id>0001</chan1:release_id>
    <chan1:mission_phase_name>Nominal Mission</chan1:mission_phase_name>
    <chan1:orbit_number>720</chan1:orbit_number>
    <chan1:instrument_mode_id>BASELINE_S_STEEP2</chan1:instrument_mode_id>
    <chan1:instrument_mode_desc>SAR</chan1:instrument_mode_desc>
    <chan1:producer_full_name>MINI-RF POC TEAM</chan1:producer_full_name>
    <chan1:producer_institution_name>Johns Hopkins University Applied Physics Laboratory</chan1:producer_institution_name>
    <chan1:Mini-RF_Parameters>
      <chan1:center_frequency unit="Hz">2384150000</chan1:center_frequency>
      <chan1:look_direction>Right</chan1:look_direction>
      <chan1:radar_incidence_angle unit="deg">26.29401082</chan1:radar_incidence_angle>
      <chan1:azimuth_resolution unit="m">216.073269</chan1:azimuth_resolution>
      <chan1:range_resolution unit="m">202.952153</chan1:range_resolution>
      <chan1:line_exposure_duration unit="s">0.048689283086</chan1:line_exposure_duration>
      <chan1:Bands>
        <chan1:band_number>1</chan1:band_number>
        <chan1:band_name>H Receive Intensity</chan1:band_name>
      </chan1:Bands>
      <chan1:Bands>
        <chan1:band_number>2</chan1:band_number>
        <chan1:band_name> V Receive  Intensity</chan1:band_name>
      </chan1:Bands>
      <chan1:Bands>
        <chan1:band_number>3</chan1:band_number>
        <chan1:band_name> Cross Power Intensity (real)</chan1:band_name>
      </chan1:Bands>
      <chan1:Bands>
        <chan1:band_number>4</chan1:band_number>
        <chan1:band_name> Cross Power Intensity  (imaginary)</chan1:band_name>
      </chan1:Bands>
      <chan1:Range_Coefficent_Set>
        <chan1:coefficent_time>2009-01-07T16:35:29.706Z</chan1:coefficent_time>
        <chan1:coefficent_1>110868.442988</chan1:coefficent_1>
        <chan1:coefficent_2>3.810057E-01</chan1:coefficent_2>
        <chan1:coefficent_3>4.124753E-06</chan1:coefficent_3>
        <chan1:coefficent_4>-1.466465E-11</chan1:coefficent_4>
      </chan1:Range_Coefficent_Set>
      <chan1:Range_Coefficent_Set>
        <chan1:coefficent_time>2009-01-07T16:35:40.576Z</chan1:coefficent_time>
        <chan1:coefficent_1>110868.444240</chan1:coefficent_1>
        <chan1:coefficent_2>3.796658E-01</chan1:coefficent_2>
        <chan1:coefficent_3>4.129659E-06</chan1:coefficent_3>
        <chan1:coefficent_4>-1.464468E-11</chan1:coefficent_4>
      </chan1:Range_Coefficent_Set>
      <chan1:Range_Coefficent_Set>
        <chan1:coefficent_time>2009-01-07T16:35:48.082Z</chan1:coefficent_time>
        <chan1:coefficent_1>110868.444490</chan1:coefficent_1>
        <chan1:coefficent_2>3.787289E-01</chan1:coefficent_2>
        <chan1:coefficent_3>4.133130E-06</chan1:coefficent_3>
        <chan1:coefficent_4>-1.463274E-11</chan1:coefficent_4>
      </chan1:Range_Coefficent_Set>
      <chan1:Range_Coefficent_Set>
        <chan1:coefficent_time>2009-01-07T16:35:55.220Z</chan1:coefficent_time>
        <chan1:coefficent_1>110868.445351</chan1:coefficent_1>
        <chan1:coefficent_2>3.778723E-01</chan1:coefficent_2>
        <chan1:coefficent_3>4.136168E-06</chan1:coefficent_3>
        <chan1:coefficent_4>-1.461699E-11</chan1:coefficent_4>
      </chan1:Range_Coefficent_Set>
      <chan1:Range_Coefficent_Set>
        <chan1:coefficent_time>2009-01-07T16:36:02.742Z</chan1:coefficent_time>
        <chan1:coefficent_1>110868.444720</chan1:coefficent_1>
        <chan1:coefficent_2>3.769318E-01</chan1:coefficent_2>
        <chan1:coefficent_3>4.139526E-06</chan1:coefficent_3>
        <chan1:coefficent_4>-1.460099E-11</chan1:coefficent_4>
      </chan1:Range_Coefficent_Set>
      <chan1:Range_Coefficent_Set>
        <chan1:coefficent_time>2009-01-07T16:36:10.272Z</chan1:coefficent_time>
        <chan1:coefficent_1>110868.445533</chan1:coefficent_1>
        <chan1:coefficent_2>3.760293E-01</chan1:coefficent_2>
        <chan1:coefficent_3>4.142824E-06</chan1:coefficent_3>
        <chan1:coefficent_4>-1.458856E-11</chan1:coefficent_4>
      </chan1:Range_Coefficent_Set>
      <chan1:Range_Coefficent_Set>
        <chan1:coefficent_time>2009-01-07T16:36:17.810Z</chan1:coefficent_time>
        <chan1:coefficent_1>110868.445726</chan1:coefficent_1>
        <chan1:coefficent_2>3.750838E-01</chan1:coefficent_2>
        <chan1:coefficent_3>4.146198E-06</chan1:coefficent_3>
        <chan1:coefficent_4>-1.457244E-11</chan1:coefficent_4>
      </chan1:Range_Coefficent_Set>
      <chan1:Range_Coefficent_Set>
        <chan1:coefficent_time>2009-01-07T16:36:25.112Z</chan1:coefficent_time>
        <chan1:coefficent_1>110868.419992</chan1:coefficent_1>
        <chan1:coefficent_2>3.741786E-01</chan1:coefficent_2>
        <chan1:coefficent_3>4.149807E-06</chan1:coefficent_3>
        <chan1:coefficent_4>-1.458329E-11</chan1:coefficent_4>
      </chan1:Range_Coefficent_Set>
      <chan1:Range_Coefficent_Set>
        <chan1:coefficent_time>2009-01-07T16:36:32.873Z</chan1:coefficent_time>
        <chan1:coefficent_1>110868.434485</chan1:coefficent_1>
        <chan1:coefficent_2>3.732243E-01</chan1:coefficent_2>
        <chan1:coefficent_3>4.153561E-06</chan1:coefficent_3>
        <chan1:coefficent_4>-1.457841E-11</chan1:coefficent_4>
      </chan1:Range_Coefficent_Set>
      <chan1:Range_Coefficent_Set>
        <chan1:coefficent_time>2009-01-07T16:36:40.633Z</chan1:coefficent_time>
        <chan1:coefficent_1>110868.443761</chan1:coefficent_1>
        <chan1:coefficent_2>3.722685E-01</chan1:coefficent_2>
        <chan1:coefficent_3>4.157252E-06</chan1:coefficent_3>
        <chan1:coefficent_4>-1.457197E-11</chan1:coefficent_4>
      </chan1:Range_Coefficent_Set>
      <chan1:Range_Coefficent_Set>
        <chan1:coefficent_time>2009-01-07T16:36:48.006Z</chan1:coefficent_time>
        <chan1:coefficent_1>110868.437745</chan1:coefficent_1>
        <chan1:coefficent_2>3.713561E-01</chan1:coefficent_2>
        <chan1:coefficent_3>4.160426E-06</chan1:coefficent_3>
        <chan1:coefficent_4>-1.455643E-11</chan1:coefficent_4>
      </chan1:Range_Coefficent_Set>
      <chan1:Range_Coefficent_Set>
        <chan1:coefficent_time>2009-01-07T16:36:55.766Z</chan1:coefficent_time>
        <chan1:coefficent_1>110868.451259</chan1:coefficent_1>
        <chan1:coefficent_2>3.703950E-01</chan1:coefficent_2>
        <chan1:coefficent_3>4.164122E-06</chan1:coefficent_3>
        <chan1:coefficent_4>-1.454940E-11</chan1:coefficent_4>
      </chan1:Range_Coefficent_Set>
      <chan1:Range_Coefficent_Set>
        <chan1:coefficent_time>2009-01-07T16:37:03.526Z</chan1:coefficent_time>
        <chan1:coefficent_1>110868.463642</chan1:coefficent_1>
        <chan1:coefficent_2>3.693890E-01</chan1:coefficent_2>
        <chan1:coefficent_3>4.168037E-06</chan1:coefficent_3>
        <chan1:coefficent_4>-1.454424E-11</chan1:coefficent_4>
      </chan1:Range_Coefficent_Set>
      <chan1:Range_Coefficent_Set>
        <chan1:coefficent_time>2009-01-07T16:37:10.801Z</chan1:coefficent_time>
        <chan1:coefficent_1>110868.510636</chan1:coefficent_1>
        <chan1:coefficent_2>3.684559E-01</chan1:coefficent_2>
        <chan1:coefficent_3>4.172284E-06</chan1:coefficent_3>
        <chan1:coefficent_4>-1.455555E-11</chan1:coefficent_4>
      </chan1:Range_Coefficent_Set>
      <chan1:Range_Coefficent_Set>
        <chan1:coefficent_time>2009-01-07T16:37:18.529Z</chan1:coefficent_time>
        <chan1:coefficent_1>110868.509186</chan1:coefficent_1>
        <chan1:coefficent_2>3.674905E-01</chan1:coefficent_2>
        <chan1:coefficent_3>4.175738E-06</chan1:coefficent_3>
        <chan1:coefficent_4>-1.454253E-11</chan1:coefficent_4>
      </chan1:Range_Coefficent_Set>
      <chan1:Range_Coefficent_Set>
        <chan1:coefficent_time>2009-01-07T16:37:26.260Z</chan1:coefficent_time>
        <chan1:coefficent_1>110868.510808</chan1:coefficent_1>
        <chan1:coefficent_2>3.665218E-01</chan1:coefficent_2>
        <chan1:coefficent_3>4.179252E-06</chan1:coefficent_3>
        <chan1:coefficent_4>-1.453087E-11</chan1:coefficent_4>
      </chan1:Range_Coefficent_Set>
      <chan1:Range_Coefficent_Set>
        <chan1:coefficent_time>2009-01-07T16:37:33.991Z</chan1:coefficent_time>
        <chan1:coefficent_1>110868.519392</chan1:coefficent_1>
        <chan1:coefficent_2>3.655487E-01</chan1:coefficent_2>
        <chan1:coefficent_3>4.182901E-06</chan1:coefficent_3>
        <chan1:coefficent_4>-1.452212E-11</chan1:coefficent_4>
      </chan1:Range_Coefficent_Set>
      <chan1:Range_Coefficent_Set>
        <chan1:coefficent_time>2009-01-07T16:37:41.338Z</chan1:coefficent_time>
        <chan1:coefficent_1>110868.521945</chan1:coefficent_1>
        <chan1:coefficent_2>3.646167E-01</chan1:coefficent_2>
        <chan1:coefficent_3>4.186284E-06</chan1:coefficent_3>
        <chan1:coefficent_4>-1.451118E-11</chan1:coefficent_4>
      </chan1:Range_Coefficent_Set>
      <chan1:Range_Coefficent_Set>
        <chan1:coefficent_time>2009-01-07T16:37:49.074Z</chan1:coefficent_time>
        <chan1:coefficent_1>110868.537889</chan1:coefficent_1>
        <chan1:coefficent_2>3.636367E-01</chan1:coefficent_2>
        <chan1:coefficent_3>4.190081E-06</chan1:coefficent_3>
        <chan1:coefficent_4>-1.450608E-11</chan1:coefficent_4>
      </chan1:Range_Coefficent_Set>
      <chan1:Range_Coefficent_Set>
        <chan1:coefficent_time>2009-01-07T16:38:00.293Z</chan1:coefficent_time>
        <chan1:coefficent_1>110868.542236</chan1:coefficent_1>
        <chan1:coefficent_2>3.621877E-01</chan1:coefficent_2>
        <chan1:coefficent_3>4.195289E-06</chan1:coefficent_3>
        <chan1:coefficent_4>-1.448781E-11</chan1:coefficent_4>
      </chan1:Range_Coefficent_Set>
    </chan1:Mini-RF_Parameters>
  </chan1:Chandrayaan-1_Parameters>
</Mission_Area>
```  
  
Example PDS4 label snippet from urn:nasa:pds:ch1_m3:data:m3g20090816t045833_l1b::1.0:  
```
<Mission_Area>
  <chan1:Chandrayaan-1_Parameters>
    <chan1:release_id>0003</chan1:release_id>
    <chan1:mission_phase_name>Primary Mission</chan1:mission_phase_name>
    <chan1:orbit_number>3343</chan1:orbit_number>
    <chan1:spacecraft_clock_start_count>15/363693.991</chan1:spacecraft_clock_start_count>
    <chan1:spacecraft_clock_stop_count>15/365336.283</chan1:spacecraft_clock_stop_count>
    <chan1:instrument_mode_id>Global</chan1:instrument_mode_id>
    <chan1:producer_full_name>M3 Team</chan1:producer_full_name>
    <chan1:producer_institution_name>Jet Propulsion Laboratory</chan1:producer_institution_name>
    <chan1:spacecraft_yaw_direction>Forward</chan1:spacecraft_yaw_direction>
    <chan1:orbit_limb_direction>Ascending</chan1:orbit_limb_direction>
    <chan1:orientation_epoch_time unit="s">303668929.303</chan1:orientation_epoch_time>
    <chan1:spacecraft_rotation_rate unit="deg/s">0.047961966541</chan1:spacecraft_rotation_rate>
    <chan1:Initial_Spacecraft_Orientation>
      <chan1:roll unit="deg">1.616524695119</chan1:roll>
      <chan1:pitch unit="deg">1.590361244639</chan1:pitch>
      <chan1:yaw unit="deg">-2.708200638518</chan1:yaw>
    </chan1:Initial_Spacecraft_Orientation>
    <chan1:Spacecraft_Orientation_Axis_Vector>
      <chan1:x_unit>0.091854073635</chan1:x_unit>
      <chan1:y_unit>-0.994808437625</chan1:y_unit>
      <chan1:z_unit>0.043806410341</chan1:z_unit>
    </chan1:Spacecraft_Orientation_Axis_Vector>
  </chan1:Chandrayaan-1_Parameters>
</Mission_Area>
```  
  
Example PDS4 label snippet from urn:nasa:pds:ch1_m3:data:m3g20081118t222604_l1b::1.0:  
```
<Mission_Area>
  <chan1:Chandrayaan-1_Parameters>
    <chan1:release_id>0003</chan1:release_id>
    <chan1:mission_phase_name>Primary Mission</chan1:mission_phase_name>
    <chan1:orbit_number>141</chan1:orbit_number>
    <chan1:spacecraft_clock_start_count>2/599338.975</chan1:spacecraft_clock_start_count>
    <chan1:spacecraft_clock_stop_count>2/599459.153</chan1:spacecraft_clock_stop_count>
    <chan1:instrument_mode_id>Global</chan1:instrument_mode_id>
    <chan1:producer_full_name>M3 Team</chan1:producer_full_name>
    <chan1:producer_institution_name>Jet Propulsion Laboratory</chan1:producer_institution_name>
    <chan1:spacecraft_yaw_direction>Forward</chan1:spacecraft_yaw_direction>
    <chan1:orbit_limb_direction>Descending</chan1:orbit_limb_direction>
    <chan1:Spacecraft_Orientation>
      <chan1:roll unit="deg">0.77044346</chan1:roll>
      <chan1:pitch unit="deg">-0.22931498</chan1:pitch>
      <chan1:yaw unit="deg">0.0</chan1:yaw>
    </chan1:Spacecraft_Orientation>
  </chan1:Chandrayaan-1_Parameters>
</Mission_Area>
```  
  
# Edit History  
*See also: [CHAN1 change log](https://github.com/pds-data-dictionaries/ldd-chan1/blob/main/CHANGELOG.md).*  
2025-11-24  Jennifer Ward