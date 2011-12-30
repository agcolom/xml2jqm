<!--
* jQuery Mobile Framework : xml2jqm plugin
* Copyright (c) Anne-Gaelle Colom
* Authored by Anne-Gaelle Colom, coloma@wmin.ac.uk
* Dual licensed under the MIT or GPL Version 2 licenses.
-->

<?xml version="1.0" encoding="UTF-8"?>
<!-- DWXMLSource="page_jqm.xml" -->
<!DOCTYPE xsl:stylesheet  [
  <!ENTITY nbsp   "&#160;">
	<!ENTITY copy   "&#169;">
	<!ENTITY reg    "&#174;">
	<!ENTITY trade  "&#8482;">
	<!ENTITY mdash  "&#8212;">
	<!ENTITY ldquo  "&#8220;">
	<!ENTITY rdquo  "&#8221;"> 
	<!ENTITY pound  "&#163;">
	<!ENTITY yen    "&#165;">
	<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1" /> 
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.0/jquery.mobile-1.0.min.css"/>
    <script src="http://code.jquery.com/jquery-1.6.4.min.js"/>
	<script src="http://code.jquery.com/mobile/1.0/jquery.mobile-1.0.min.js"/>
    <title><xsl:value-of select="pages_all/doc_title" /></title>
    </head>
    
    <body>
    <xsl:for-each select="pages_all/page">
      <div data-role="page">
      <xsl:if test="page_theme!=''">
      <xsl:attribute name="data-theme"><xsl:value-of select="page_theme" /></xsl:attribute>
	  </xsl:if>
      <xsl:attribute name="id"> <xsl:value-of select="page_id" /> </xsl:attribute>
      <div data-role="header">
        <xsl:if test="header_theme!=''">
          <xsl:attribute name="data-theme"><xsl:value-of select="header_theme" /></xsl:attribute>
        </xsl:if>
        <xsl:if test="position() != 1" >
          <a>
          <xsl:attribute name="href"> #<xsl:value-of select="preceding-sibling::page[1]/page_id" /></xsl:attribute>
          <xsl:attribute name="data-direction">reverse</xsl:attribute>
          <xsl:attribute name="class">ui-btn-left</xsl:attribute>
          <xsl:attribute name="data-icon">arrow-l</xsl:attribute>
          <xsl:attribute name="data-iconpos">left</xsl:attribute>
          Previous</a>
        </xsl:if>
        <h1><xsl:value-of select="header" /></h1>
        <xsl:if test="position() != last()" >
          <a>
          <xsl:attribute name="href">#<xsl:value-of select="following-sibling::page/page_id" /></xsl:attribute>
          <xsl:attribute name="class">ui-btn-right</xsl:attribute>
          <xsl:attribute name="data-icon">arrow-r</xsl:attribute>
          <xsl:attribute name="data-iconpos">right</xsl:attribute>
          Next</a>
        </xsl:if>
      </div>
      <!-- /header -->
      <div data-role="content">
        <xsl:if test="content_theme!=''">
          <xsl:attribute name="data-theme"><xsl:value-of select="content_theme" /></xsl:attribute>
        </xsl:if>
		 <xsl:copy-of select="child::content/node()" /></div>
      <!-- /content -->
	  <xsl:if test="footer!=''">
      <div data-role="footer">
        <xsl:if test="footer_theme!=''">
          <xsl:attribute name="data-theme"><xsl:value-of select="footer_theme" /></xsl:attribute>
        </xsl:if>
        <xsl:if test="footer_position!=''">
          <xsl:attribute name="data-position"><xsl:value-of select="footer_position" /></xsl:attribute>
        </xsl:if>
        <h4><xsl:value-of select="footer" /></h4>
      </div></xsl:if>
      <!-- /footer -->
      </div><!-- page -->
    </xsl:for-each>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>