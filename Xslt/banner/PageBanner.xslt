<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/BannerList">
        <div class="img">
            <img>
                <xsl:attribute name="src">
                    <xsl:value-of select="Banner/ImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
            </img>
        </div>
        <div class="content">
            <div class="container">
                <div class="zone-title"><xsl:value-of select="ZoneTitle" disable-output-escaping="yes"></xsl:value-of></div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>