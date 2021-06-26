<?xml version="1.0" encoding="UTF-8"?>
  <!-- PDS4 Schematron for Name Space Id:chan1  Version:1.1.1.0 - Sat Jun 26 19:01:38 UTC 2021 -->
  <!-- Generated from the PDS4 Information Model Version 1.15.0.0 - System Build 11a -->
  <!-- *** This PDS4 schematron file is an operational deliverable. *** -->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">

  <sch:title>Schematron using XPath 2.0</sch:title>

  <sch:ns uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/pds/v1" prefix="pds"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/mission/chan1/v1" prefix="chan1"/>

		   <!-- ================================================ -->
		   <!-- NOTE:  There are two types of schematron rules.  -->
		   <!--        One type includes rules written for       -->
		   <!--        specific situations. The other type are   -->
		   <!--        generated to validate enumerated value    -->
		   <!--        lists. These two types of rules have been -->
		   <!--        merged together in the rules below.       -->
		   <!-- ================================================ -->
  <sch:pattern>
    <sch:rule context="chan1:Chandrayaan-1_Parameters/chan1:mission_phase_name">
      <sch:assert test=". = ('Nominal Mission', 'Primary Mission')">
        <title>chan1:Chandrayaan-1_Parameters/chan1:mission_phase_name/chan1:mission_phase_name</title>
        The attribute chan1:mission_phase_name must be equal to one of the following values 'Nominal Mission', 'Primary Mission'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="chan1:Chandrayaan-1_Parameters/chan1:orbit_limb_direction">
      <sch:assert test=". = ('Ascending', 'Descending')">
        <title>chan1:Chandrayaan-1_Parameters/chan1:orbit_limb_direction/chan1:orbit_limb_direction</title>
        The attribute chan1:orbit_limb_direction must be equal to one of the following values 'Ascending', 'Descending'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="chan1:Chandrayaan-1_Parameters/chan1:orientation_epoch_time">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr')">
        <title>chan1:Chandrayaan-1_Parameters/chan1:orientation_epoch_time/chan1:orientation_epoch_time</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="chan1:Chandrayaan-1_Parameters/chan1:spacecraft_rotation_rate">
      <sch:assert test="@unit = ('deg/day', 'deg/s', 'rad/s')">
        <title>chan1:Chandrayaan-1_Parameters/chan1:spacecraft_rotation_rate/chan1:spacecraft_rotation_rate</title>
        The attribute @unit must be equal to one of the following values 'deg/day', 'deg/s', 'rad/s'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="chan1:Chandrayaan-1_Parameters/chan1:spacecraft_yaw_direction">
      <sch:assert test=". = ('Forward', 'Reverse')">
        <title>chan1:Chandrayaan-1_Parameters/chan1:spacecraft_yaw_direction/chan1:spacecraft_yaw_direction</title>
        The attribute chan1:spacecraft_yaw_direction must be equal to one of the following values 'Forward', 'Reverse'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="chan1:Initial_Spacecraft_Orientation/chan1:pitch">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>chan1:Initial_Spacecraft_Orientation/chan1:pitch/TBD_attrNameSpaceNC:TBD_AttrTitle</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="chan1:Initial_Spacecraft_Orientation/chan1:roll">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>chan1:Initial_Spacecraft_Orientation/chan1:roll/chan1:roll</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="chan1:Initial_Spacecraft_Orientation/chan1:yaw">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>chan1:Initial_Spacecraft_Orientation/chan1:yaw/chan1:yaw</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="chan1:Spacecraft_Orientation/chan1:pitch">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>chan1:Spacecraft_Orientation/chan1:pitch/TBD_attrNameSpaceNC:TBD_AttrTitle</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="chan1:Spacecraft_Orientation/chan1:roll">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>chan1:Spacecraft_Orientation/chan1:roll/chan1:roll</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="chan1:Spacecraft_Orientation/chan1:yaw">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>chan1:Spacecraft_Orientation/chan1:yaw/chan1:yaw</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="chan1:Spacecraft_Orientation_Rates/chan1:pitch_rate">
      <sch:assert test="@unit = ('deg/day', 'deg/s', 'rad/s')">
        <title>chan1:Spacecraft_Orientation_Rates/chan1:pitch_rate/chan1:pitch_rate</title>
        The attribute @unit must be equal to one of the following values 'deg/day', 'deg/s', 'rad/s'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="chan1:Spacecraft_Orientation_Rates/chan1:roll_rate">
      <sch:assert test="@unit = ('deg/day', 'deg/s', 'rad/s')">
        <title>chan1:Spacecraft_Orientation_Rates/chan1:roll_rate/chan1:roll_rate</title>
        The attribute @unit must be equal to one of the following values 'deg/day', 'deg/s', 'rad/s'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="chan1:Spacecraft_Orientation_Rates/chan1:yaw_rate">
      <sch:assert test="@unit = ('deg/day', 'deg/s', 'rad/s')">
        <title>chan1:Spacecraft_Orientation_Rates/chan1:yaw_rate/chan1:yaw_rate</title>
        The attribute @unit must be equal to one of the following values 'deg/day', 'deg/s', 'rad/s'.</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
