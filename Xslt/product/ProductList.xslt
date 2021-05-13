<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ProductList">
        <div class="product-sort-wrapper ajaxresponse">
            <div class="wrapper-left">
                <div class="root-tile">
                    <xsl:value-of select="ZoneTitle" disable-output-escaping="yes"></xsl:value-of>
                </div>
            </div>
            <div class="wrapper-right">
                <span>
                    <xsl:text disable-output-escaping="yes">Sắp xếp</xsl:text>
                </span>
                <select class="ajaxsort">
                    <xsl:apply-templates select="SortBy"></xsl:apply-templates>
                </select>
            </div>
        </div>
        <div class="product-wrapper ajaxresponsewrap">
            <div class="row">
                <xsl:apply-templates select="Product"></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="SortBy">
        <option>
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="selected">
                    <xsl:text>selected</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:attribute name="value">
                <xsl:value-of select="Url"></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of select="Title"></xsl:value-of>
        </option>
    </xsl:template>
    <xsl:template match="Product">
        <div class="col-lg-4 col-sm-6">
            <div class="item-pro">
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
                    <div class="product-title lcl lcl-2">
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
                    <div class="price-wrapper">
                        <div class="current">
                            <xsl:value-of select="Price" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>