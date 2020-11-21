<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/NewsDetail">
        <section class="kv-section detail-page">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9">
                        <h1 class="title">
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </h1>
                        <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                        <div class="bottom-wrapper">
                            <time>
                                <xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
                            </time>
                            <div class="social">
                                <div class="face">
                                    <a>
                                        <xsl:attribute name="href">
                                            <xsl:text disable-output-escaping="yes">https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
                                            <xsl:value-of select="FullUrl"></xsl:value-of>
                                        </xsl:attribute>
                                        <xsl:attribute name="title">
                                            <xsl:value-of select="Title"></xsl:value-of>
                                        </xsl:attribute>
                                        <xsl:attribute name="target">
                                            <xsl:text disable-output-escaping="yes">_blank</xsl:text>
                                        </xsl:attribute>
                                        <em class="fab fa-facebook-square"></em>Share
                                    
                                    
                                    
                                    
                                    </a>
                                </div>
                                <div class="twitter">
                                    <a>
                                        <xsl:attribute name="href">
                                            <xsl:text disable-output-escaping="yes">https://twitter.com/intent/tweet?url=</xsl:text>
                                            <xsl:value-of select="FullUrl"></xsl:value-of>
                                        </xsl:attribute>
                                        <xsl:attribute name="title">
                                            <xsl:value-of select="Title"></xsl:value-of>
                                        </xsl:attribute>
                                        <xsl:attribute name="target">
                                            <xsl:text disable-output-escaping="yes">_blank</xsl:text>
                                        </xsl:attribute>
                                        <em class="fab fa-twitter"></em>Tweet
                                    
                                    
                                    
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="full-content">
                            <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="other-title">tin tức khác</div>
                        <div class="other-news">
                            <xsl:apply-templates select="NewsOther"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="NewsOther">
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
                <div class="wrapper">
                    <img>
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </div>
                <div class="text">
                    <div class="caption">
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                    <time>
                        <xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
                    </time>
                </div>
            </div>
        </a>
    </xsl:template>
</xsl:stylesheet>