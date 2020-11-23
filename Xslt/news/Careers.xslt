<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/NewsList">
        <section class="kv-section tuyendung">
            <div class="container">
                <div class="caption">
                    <div class="title">
                        <xsl:value-of select="ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                </div>
                <table class="table">
                    <thead>
                        <tr>
                            <th>stt</th>
                            <th>Vị trí tuyển dụng</th>
                            <th>số lượng</th>
                            <th>địa điểm</th>
                            <th>hạn nộp hồ sơ</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:apply-templates select="News" mode="DeskTop"></xsl:apply-templates>
                    </tbody>
                </table>
                <div class="list-mobile row">
                    <xsl:apply-templates select="News" mode="Mobile"></xsl:apply-templates>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="News" mode="DeskTop">
        <tr>
            <td>
                <xsl:if test="position() &lt; 10">
                    <xsl:text>0</xsl:text>
                </xsl:if>
                <xsl:value-of select="position()" />
            </td>
            <td>
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
            </td>
            <td>
                <xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
            </td>
            <td>
                <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
            </td>
            <td>
                <xsl:value-of select="EndDate" disable-output-escaping="yes"></xsl:value-of>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="News" mode="Mobile">
        <div class="col-md-6">
            <div class="list-item">
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
                <p>
                    <xsl:text disable-output-escaping="yes">Số lượng: </xsl:text>
                    <xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
                </p>
                <p>
                    <xsl:text disable-output-escaping="yes">Địa điểm: </xsl:text>
                    <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                </p>
                <p>
                    <xsl:text disable-output-escaping="yes">Hạn nộp hồ sơ: </xsl:text>
                    <xsl:value-of select="EndDate" disable-output-escaping="yes"></xsl:value-of>
                </p>
                <a class="btn-mob">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="target">
                        <xsl:value-of select="Target"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:text disable-output-escaping="yes">Xem chi tiết</xsl:text>
                </a>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>