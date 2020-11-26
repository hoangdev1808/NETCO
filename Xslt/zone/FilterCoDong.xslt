<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ZoneList">
        <div class="caption">
            <div class="title">
                <xsl:apply-templates select="Zone" mode="Title"></xsl:apply-templates>
            </div>
        </div>
        <div class="option">
            <div class="span sub">Sắp xếp theo năm</div>
            <div class="dropdown show">
                <a class="dropdown-toggle" role="button" id="dropdownMenuLink" data-toggle="dropdown">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="target">
                        <xsl:value-of select="Target"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:text disable-output-escaping="yes">Tất cả</xsl:text>
                </a>
                <div class="dropdown-menu">
                    <xsl:apply-templates select="Zone/Zone"></xsl:apply-templates>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Zone">
        <a class="dropdown-item">
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
    </xsl:template>
    <xsl:template match="Zone" mode="Title">
        <xsl:if test="IsActive='true'">
            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>