.class public Lorg/apache/jackrabbit/webdav/security/report/PrincipalMatchReport;
.super Lorg/apache/jackrabbit/webdav/security/report/AbstractSecurityReport;
.source "PrincipalMatchReport.java"


# static fields
.field public static final REPORT_NAME:Ljava/lang/String; = "principal-match"

.field public static final REPORT_TYPE:Lorg/apache/jackrabbit/webdav/version/report/ReportType;

.field public static final XML_PRINCIPAL_PROPERTY:Ljava/lang/String; = "principal-property"

.field public static final XML_SELF:Ljava/lang/String; = "self"


# instance fields
.field private principalPropertyName:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const-string v0, "principal-match"

    sget-object v1, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    const-class v2, Lorg/apache/jackrabbit/webdav/security/report/PrincipalMatchReport;

    invoke-static {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->register(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/Class;)Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/security/report/PrincipalMatchReport;->REPORT_TYPE:Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/apache/jackrabbit/webdav/security/report/AbstractSecurityReport;-><init>()V

    return-void
.end method


# virtual methods
.method public getPrincipalPropertyName()Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/security/report/PrincipalMatchReport;->principalPropertyName:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    return-object v0
.end method

.method public getType()Lorg/apache/jackrabbit/webdav/version/report/ReportType;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lorg/apache/jackrabbit/webdav/security/report/PrincipalMatchReport;->REPORT_TYPE:Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    return-object v0
.end method

.method public init(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;)V
    .locals 4
    .param p1, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .param p2, "info"    # Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Lorg/apache/jackrabbit/webdav/security/report/AbstractSecurityReport;->init(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;)V

    .line 82
    const-string v1, "principal-property"

    sget-object v2, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {p2, v1, v2}, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->containsContentElement(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    const-string v1, "principal-property"

    sget-object v2, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {p2, v1, v2}, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->getContentElement(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 84
    .local v0, "pp":Lorg/w3c/dom/Element;
    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/jackrabbit/webdav/security/report/PrincipalMatchReport;->principalPropertyName:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 90
    .end local v0    # "pp":Lorg/w3c/dom/Element;
    :goto_0
    return-void

    .line 85
    :cond_0
    const-string v1, "self"

    sget-object v2, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {p2, v1, v2}, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->containsContentElement(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    sget-object v1, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->PRINCIPAL_URL:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    iput-object v1, p0, Lorg/apache/jackrabbit/webdav/security/report/PrincipalMatchReport;->principalPropertyName:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    goto :goto_0

    .line 88
    :cond_1
    new-instance v1, Lorg/apache/jackrabbit/webdav/DavException;

    const/16 v2, 0x190

    const-string v3, "DAV:self or DAV:principal-property element required within report info."

    invoke-direct {v1, v2, v3}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public setResponses([Lorg/apache/jackrabbit/webdav/MultiStatusResponse;)V
    .locals 0
    .param p1, "responses"    # [Lorg/apache/jackrabbit/webdav/MultiStatusResponse;

    .prologue
    .line 113
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/security/report/PrincipalMatchReport;->responses:[Lorg/apache/jackrabbit/webdav/MultiStatusResponse;

    .line 114
    return-void
.end method
