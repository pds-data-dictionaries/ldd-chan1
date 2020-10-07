<?xml version="1.0" encoding="UTF-8"?>
  <!-- PDS4 Schematron for Name Space Id:chan1  Version:1.0.0.0 - Fri Feb 07 14:23:50 CST 2020 -->
  <!-- Generated from the PDS4 Information Model Version 1.13.0.0 - System Build 10a -->
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
      <sch:assert test=". = ('Nominal Mission')">
        The attribute chan1:mission_phase_name must be equal to the value 'Nominal Mission'.</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
