<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/NewsDetail">
        <section class="kv-section recuirement-detail">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9 col-md-12">
                        <h1 class="title">
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </h1>
                        <div class="section-sub">
                            <span class="sub-date">
                                <xsl:value-of select="EndDate" disable-output-escaping="yes"></xsl:value-of>
                            </span>
                            <div class="social">
                                <a class="social-item face">
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
                                    <i class="fab fa-facebook-square"></i>
                                    <span>Share</span>
                                </a>
                                <a class="social-item twitter">
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
                                    <i class="fab fa-twitter"></i>
                                    <span>Tweet</span>
                                </a>
                            </div>
                        </div>
                        <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
                        <div class="list-content">
                            <xsl:apply-templates select="NewsAttributes"></xsl:apply-templates>
                        </div>
                        <div class="section-btn">
                            <a class="btn-item btn-red">
                                <xsl:attribute name="target">
                                    <xsl:text disable-output-escaping="yes">_blank</xsl:text>
                                </xsl:attribute>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="ApplyUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:text disable-output-escaping="yes">ứng tuyển ngay</xsl:text>
                            </a>
                            <a class="btn-item btn-blue">
                                <xsl:attribute name="href">
                                    <xsl:value-of select="FileUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="target">
                                    <xsl:text disable-output-escaping="yes">_blank</xsl:text>
                                </xsl:attribute>
                                <i class="fas fa-download"></i>
                                <span>tải mẫu hồ sơ</span>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-12">
                        <div class="recuirement-other">
                            <div class="recuirement-header">
                                <div class="title">Tuyển dụng khác</div>
                            </div>
                            <xsl:apply-templates select="NewsOther"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="NewsAttributes">
        <div class="item">
            <div class="content-title">
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </div>
            <xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
        </div>
    </xsl:template>
    <xsl:template match="NewsOther">
        <div class="recuirement-body">
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
            <span class="content-sub">
                <xsl:value-of select="EndDate" disable-output-escaping="yes"></xsl:value-of>
            </span>
        </div>
    </xsl:template>
</xsl:stylesheet>