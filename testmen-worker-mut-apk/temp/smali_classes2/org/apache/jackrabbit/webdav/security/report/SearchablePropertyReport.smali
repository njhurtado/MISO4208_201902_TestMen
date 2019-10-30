.class public Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport;
.super Ljava/lang/Object;
.source "SearchablePropertyReport.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/version/report/Report;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport$1;,
        Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport$PrincipalSearchProperty;
    }
.end annotation


# static fields
.field public static final REPORT_NAME:Ljava/lang/String; = "principal-search-property-set"

.field public static final REPORT_TYPE:Lorg/apache/jackrabbit/webdav/version/report/ReportType;

.field public static final XML_PRINCIPAL_SEARCH_PROPERTY_SET:Ljava/lang/String; = "principal-search-property-set"


# instance fields
.field private final searchPropertySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport$PrincipalSearchProperty;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    const-string v0, "principal-search-property-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    const-class v2, Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport;

    invoke-static {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->register(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/Class;)Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport;->REPORT_TYPE:Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport;->searchPropertySet:Ljava/util/Set;

    .line 142
    return-void
.end method


# virtual methods
.method public addPrincipalSearchProperty(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "propName"    # Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "language"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v6, p0, Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport;->searchPropertySet:Ljava/util/Set;

    new-instance v0, Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport$PrincipalSearchProperty;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport$PrincipalSearchProperty;-><init>(Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport;Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Ljava/lang/String;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport$1;)V

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    return-void
.end method

.method public getType()Lorg/apache/jackrabbit/webdav/version/report/ReportType;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport;->REPORT_TYPE:Lorg/apache/jackrabbit/webdav/version/report/ReportType;

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
    const/16 v3, 0x190

    .line 102
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 103
    :cond_0
    new-instance v0, Lorg/apache/jackrabbit/webdav/DavException;

    const-string v1, "Unable to run report: WebDAV Resource and ReportInfo must not be null."

    invoke-direct {v0, v3, v1}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport;->getType()Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->isRequestedReportType(Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    new-instance v0, Lorg/apache/jackrabbit/webdav/DavException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected report type: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport;->getType()Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->getReportName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', found: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->getReportName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 108
    :cond_2
    invoke-virtual {p2}, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->getDepth()I

    move-result v0

    if-lez v0, :cond_3

    .line 109
    new-instance v0, Lorg/apache/jackrabbit/webdav/DavException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Depth header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->getDepth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 111
    :cond_3
    return-void
.end method

.method public isMultiStatusReport()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 5
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 117
    const-string v3, "principal-search-property-set"

    sget-object v4, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 118
    .local v2, "rootElem":Lorg/w3c/dom/Element;
    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport;->searchPropertySet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport$PrincipalSearchProperty;

    .line 119
    .local v1, "psp":Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport$PrincipalSearchProperty;
    invoke-virtual {v1, p1}, Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport$PrincipalSearchProperty;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 121
    .end local v1    # "psp":Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport$PrincipalSearchProperty;
    :cond_0
    return-object v2
.end method
