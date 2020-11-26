<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ZoneList">
        <div class="row">
            <xsl:apply-templates select="Zone"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="Zone">
        <div class="col-lg-4 col-md-6 col-sm-6 col-12">
            <a class="list-item zoom-out">
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="target">
                    <xsl:value-of select="Target"></xsl:value-of>
                </xsl:attribute>
                <div class="img">
                    <img>
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </div>
                <div class="list-content">
                    <div class="title">
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                    <div class="list-seemore">
                        <span>Xem thêm</span>
                        <span class="lnr lnr-arrow-right"></span>
                    </div>
                </div>
            </a>
        </div>
    </xsl:template>
</xsl:stylesheet>