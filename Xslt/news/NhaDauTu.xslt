<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ZoneList">
        <xsl:apply-templates select="Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <xsl:if test="position()=1">
            <section class="kv-section investor">
                <div class="container">
                    <div class="row">
                        <xsl:apply-templates select="News" mode="ListSection1"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=2">
            <section class="kv-section investor-report">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-md-12">
                            <div class="reports">
                                <div class="title">
                                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                                </div>
                                <xsl:apply-templates select="News" mode="BaoCao"></xsl:apply-templates>
                                <a class="btn-seemore">
                                    <xsl:attribute name="href">
                                        <xsl:text disable-output-escaping="yes">~/quan-he-co-dong</xsl:text>
                                    </xsl:attribute>
                                    <xsl:attribute name="title">
                                        <xsl:value-of select="Title"></xsl:value-of>
                                    </xsl:attribute>
                                    <xsl:attribute name="target">
                                        <xsl:value-of select="Target"></xsl:value-of>
                                    </xsl:attribute>
                                    <span class="text">xem tất cả</span>
                                    <span class="lnr lnr-arrow-right"></span>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12">
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
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="ListSection1">
        <div class="col-lg-3 col-md-6 col-sm-12">
            <div class="investor-item">
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
                <div class="content">
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="BaoCao">
        <a class="report-item">
            <xsl:attribute name="href">
                <xsl:value-of select="FileUrl"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="title">
                <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="target">
                <xsl:value-of select="Target"></xsl:value-of>
            </xsl:attribute>
            <span class="material-icons">get_app</span>
            <span class="content">
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </span>
        </a>
    </xsl:template>
</xsl:stylesheet>