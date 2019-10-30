.class public Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport;
.super Lorg/apache/jackrabbit/webdav/security/report/AbstractSecurityReport;
.source "PrincipalSearchReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport$1;,
        Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport$SearchArgument;
    }
.end annotation


# static fields
.field public static final REPORT_NAME:Ljava/lang/String; = "principal-property-search"

.field public static final REPORT_TYPE:Lorg/apache/jackrabbit/webdav/version/report/ReportType;

.field public static final XML_APPLY_TO_PRINCIPAL_COLLECTION_SET:Ljava/lang/String; = "apply-to-principal-collection-set"

.field public static final XML_MATCH:Ljava/lang/String; = "match"

.field public static final XML_PROPERTY_SEARCH:Ljava/lang/String; = "property-search"

.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private searchArguments:[Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport$SearchArgument;

.field private searchRoots:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    const-class v0, Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport;->log:Lorg/slf4j/Logger;

    .line 81
    const-string v0, "principal-property-search"

    sget-object v1, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    const-class v2, Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport;

    invoke-static {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->register(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/Class;)Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport;->REPORT_TYPE:Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/apache/jackrabbit/webdav/security/report/AbstractSecurityReport;-><init>()V

    .line 158
    return-void
.end method


# virtual methods
.method public getSearchArguments()[Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport$SearchArgument;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport;->searchArguments:[Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport$SearchArgument;

    return-object v0
.end method

.method public getSearchRoots()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport;->searchRoots:[Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/apache/jackrabbit/webdav/version/report/ReportType;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport;->REPORT_TYPE:Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    return-object v0
.end method

.method public init(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;)V
    .locals 10
    .param p1, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .param p2, "info"    # Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 98
    invoke-super {p0, p1, p2}, Lorg/apache/jackrabbit/webdav/security/report/AbstractSecurityReport;->init(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;)V

    .line 100
    const-string v6, "property-search"

    sget-object v7, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {p2, v6, v7}, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->containsContentElement(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 101
    new-instance v6, Lorg/apache/jackrabbit/webdav/DavException;

    const/16 v7, 0x190

    const-string v8, "Request body must contain at least a single DAV:property-search element."

    invoke-direct {v6, v7, v8}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 103
    :cond_0
    const-string v6, "property-search"

    sget-object v7, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {p2, v6, v7}, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->getContentElements(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/util/List;

    move-result-object v5

    .line 104
    .local v5, "psElements":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Element;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport$SearchArgument;

    iput-object v6, p0, Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport;->searchArguments:[Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport$SearchArgument;

    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "i":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 107
    .local v4, "psElement":Lorg/w3c/dom/Element;
    iget-object v6, p0, Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport;->searchArguments:[Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport$SearchArgument;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    new-instance v7, Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport$SearchArgument;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v4, v8}, Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport$SearchArgument;-><init>(Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport;Lorg/w3c/dom/Element;Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport$1;)V

    aput-object v7, v6, v0

    move v0, v1

    .line 108
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 110
    .end local v4    # "psElement":Lorg/w3c/dom/Element;
    :cond_1
    const-string v6, "apply-to-principal-collection-set"

    sget-object v7, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {p2, v6, v7}, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->containsContentElement(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 111
    new-instance v3, Lorg/apache/jackrabbit/webdav/property/HrefProperty;

    sget-object v6, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->PRINCIPAL_COLLECTION_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-interface {p1, v6}, Lorg/apache/jackrabbit/webdav/DavResource;->getProperty(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Lorg/apache/jackrabbit/webdav/property/DavProperty;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/apache/jackrabbit/webdav/property/HrefProperty;-><init>(Lorg/apache/jackrabbit/webdav/property/DavProperty;)V

    .line 112
    .local v3, "p":Lorg/apache/jackrabbit/webdav/property/HrefProperty;
    invoke-virtual {v3}, Lorg/apache/jackrabbit/webdav/property/HrefProperty;->getHrefs()Ljava/util/List;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iput-object v6, p0, Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport;->searchRoots:[Ljava/lang/String;

    .line 116
    .end local v3    # "p":Lorg/apache/jackrabbit/webdav/property/HrefProperty;
    :goto_1
    return-void

    .line 114
    :cond_2
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/DavResource;->getHref()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    iput-object v6, p0, Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport;->searchRoots:[Ljava/lang/String;

    goto :goto_1
.end method

.method public setResponses([Lorg/apache/jackrabbit/webdav/MultiStatusResponse;)V
    .locals 0
    .param p1, "responses"    # [Lorg/apache/jackrabbit/webdav/MultiStatusResponse;

    .prologue
    .line 150
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport;->responses:[Lorg/apache/jackrabbit/webdav/MultiStatusResponse;

    .line 151
    return-void
.end method
