<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/NewsList">
        <div class="caption">
            <div class="title">
                <xsl:value-of select="ZoneTitle" disable-output-escaping="yes"></xsl:value-of>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 col-left">
                <xsl:apply-templates select="News[1]" mode="BigImg"></xsl:apply-templates>
            </div>
            <div class="col-lg-6 col-right">
                <xsl:apply-templates select="News[position()&gt;1 and position()&lt;5]" mode="BigRight"></xsl:apply-templates>
            </div>
            <xsl:apply-templates select="News[position()&gt;4]" mode="SmallImg"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="BigImg">
        <div class="item-big">
            <div class="big-img">
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
                    <img>
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </a>
            </div>
            <div class="content">
                <div class="title lcl lcl-2">
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
                </div>
                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                <time>
                    <xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
                </time>
                <div class="desc">
                    <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="BigRight">
        <div class="item-big">
            <div class="small-img">
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
                    <img>
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </a>
            </div>
            <div class="content">
                <div class="title">
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
                </div>
                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                <time>
                    <xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
                </time>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="SmallImg">
        <div class="col-lg-4">
            <div class="item-small">
                <div class="img">
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
                        <img>
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </a>
                </div>
                <div class="content">
                    <div class="title">
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
                    </div>
                    <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                    <time>
                        <xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
                    </time>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>