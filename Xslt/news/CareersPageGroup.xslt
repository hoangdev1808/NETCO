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
            <section class="kv-section tuyendung-1">
                <div class="container">
                    <div class="caption">
                        <div class="title">
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                    </div>
                    <div class="row">
                        <xsl:apply-templates select="News" mode="QuyTrinh"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=2">
            <section class="kv-section tuyendung-2">
                <div class="container">
                    <div class="caption">
                        <div class="title">
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                    </div>
                    <div class="row position-relative">
                        <xsl:apply-templates select="News" mode="MoiTruong"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=3">
            <section class="kv-section tuyendung-3">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-6 col-sm-12">
                            <div class="item-bg">
                                <div class="title-sub">
                                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                                </div>
                            </div>
                        </div>
                        <xsl:apply-templates select="News" mode="CungNetCo"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=4">
            <section class="kv-section tuyendung-4">
                <div class="container">
                    <div class="caption">
                        <div class="title">
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                    </div>
                    <div class="on-row">
                        <xsl:apply-templates select="News" mode="DaoTao"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="QuyTrinh">
        <div class="col-lg-3 col-md-6 col-sm-12">
            <div class="step-item">
                <div class="step-ellipse">
                    <div class="number">
                        <div class="item">
                            <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                    </div>
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
                    <div class="title">
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                </div>
                <div class="step-parent">
                    <p class="content">
                        <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                    </p>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="MoiTruong">
        <div class="col-lg-8 col-md-12">
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
        <div class="col-lg-4 col-md-12">
            <div class="over-col">
                <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="CungNetCo">
        <xsl:if test="position()&gt;0 and position()&lt;5">
            <div class="col-lg-4 col-md-6 col-sm-12">
                <div class="item">
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
                    <div class="title">
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                    <span class="material-icons">arrow_forward</span>
                    <div class="content">
                        <div class="content-title">
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                        <div class="desc">
                            <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
                        </div>
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
        </xsl:if>
        <xsl:if test="position()=5">
            <div class="col-lg-4 col-md-6 col-sm-12">
                <div class="popup">
                    <div class="img-popup">
                        <img>
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </div>
                    <div class="popup-title">
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="data-fancybox">
                            <xsl:text disable-output-escaping="yes">video</xsl:text>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="target">
                            <xsl:value-of select="Target"></xsl:value-of>
                        </xsl:attribute>
                        <em class="material-icons">play_circle_outline</em>
                    </a>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="DaoTao">
        <div class="box">
            <div class="title">
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </div>
            <div class="box-content">
                <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
            </div>
            <div class="fade-red"></div>
        </div>
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
    </xsl:template>
</xsl:stylesheet>