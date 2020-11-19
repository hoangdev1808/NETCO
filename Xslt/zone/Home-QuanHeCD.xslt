<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ZoneList">
        <div class="section-image">
            <img>
                <xsl:attribute name="src">
                    <xsl:value-of select="Zone/ImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
            </img>
        </div>
        <article>
            <div class="kv-title animation-left text-uppercase">
                <p class="text-left">
                    <xsl:value-of select="Zone/Title" disable-output-escaping="yes"></xsl:value-of>
                </p>
            </div>
            <div class="desc while animation-right">
                <xsl:value-of select="Zone/Description" disable-output-escaping="yes"></xsl:value-of>
            </div>
            <div class="list-item animation-left">
                <xsl:apply-templates select="Zone/Zone"></xsl:apply-templates>
            </div>
        </article>
    </xsl:template>
    <xsl:template match="Zone">
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
            <div class="item">
                <div class="title">
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </div>
                <span class="lnr lnr-arrow-right"></span>
            </div>
        </a>
    </xsl:template>
</xsl:stylesheet>