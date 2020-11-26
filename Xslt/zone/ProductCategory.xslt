<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ZoneList">
        <div class="zone-title">
            <xsl:value-of select="RootTitle" disable-output-escaping="yes"></xsl:value-of>
        </div>
        <ul class="accordion">
            <xsl:apply-templates select="Zone" mode="LEVEL1"></xsl:apply-templates>
        </ul>
    </xsl:template>
    <xsl:template match="Zone" mode="LEVEL1">
        <li class="item">
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">item active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <div class="accordion-title">
                <a class="nav-link">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="target">
                        <xsl:value-of select="Target"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </a>
                <span class="lnr lnr-chevron-down"></span>
            </div>
            <ul class="inner">
                <xsl:apply-templates select="Zone" mode="LEVEL2"></xsl:apply-templates>
            </ul>
        </li>
    </xsl:template>
    <xsl:template match="Zone" mode="LEVEL2">
        <li>
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="target">
                    <xsl:value-of select="Target"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </a>
        </li>
    </xsl:template>
</xsl:stylesheet>