.class public Lorg/apache/jackrabbit/webdav/security/report/AclPrincipalReport;
.super Lorg/apache/jackrabbit/webdav/security/report/AbstractSecurityReport;
.source "AclPrincipalReport.java"


# static fields
.field public static final REPORT_NAME:Ljava/lang/String; = "acl-principal-prop-set"

.field public static final REPORT_TYPE:Lorg/apache/jackrabbit/webdav/version/report/ReportType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const-string v0, "acl-principal-prop-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    const-class v2, Lorg/apache/jackrabbit/webdav/security/report/AclPrincipalReport;

    invoke-static {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->register(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/Class;)Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/security/report/AclPrincipalReport;->REPORT_TYPE:Lorg/apache/jackrabbit/webdav/version/report/ReportType;

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
.method public getType()Lorg/apache/jackrabbit/webdav/version/report/ReportType;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lorg/apache/jackrabbit/webdav/security/report/AclPrincipalReport;->REPORT_TYPE:Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    return-object v0
.end method

.method public init(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;)V
    .locals 12
    .param p1, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .param p2, "info"    # Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Lorg/apache/jackrabbit/webdav/security/report/AbstractSecurityReport;->init(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;)V

    .line 75
    sget-object v9, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->ACL:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-interface {p1, v9}, Lorg/apache/jackrabbit/webdav/DavResource;->getProperty(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Lorg/apache/jackrabbit/webdav/property/DavProperty;

    move-result-object v1

    .line 76
    .local v1, "acl":Lorg/apache/jackrabbit/webdav/property/DavProperty;, "Lorg/apache/jackrabbit/webdav/property/DavProperty<*>;"
    instance-of v9, v1, Lorg/apache/jackrabbit/webdav/security/AclProperty;

    if-nez v9, :cond_0

    .line 77
    new-instance v9, Lorg/apache/jackrabbit/webdav/DavException;

    const/16 v10, 0x1f4

    const-string v11, "DAV:acl property expected."

    invoke-direct {v9, v10, v11}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v9

    .line 80
    :cond_0
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/DavResource;->getLocator()Lorg/apache/jackrabbit/webdav/DavResourceLocator;

    move-result-object v5

    .line 81
    .local v5, "loc":Lorg/apache/jackrabbit/webdav/DavResourceLocator;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 82
    .local v8, "respMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/jackrabbit/webdav/MultiStatusResponse;>;"
    check-cast v1, Lorg/apache/jackrabbit/webdav/security/AclProperty;

    .end local v1    # "acl":Lorg/apache/jackrabbit/webdav/property/DavProperty;, "Lorg/apache/jackrabbit/webdav/property/DavProperty<*>;"
    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/security/AclProperty;->getValue()Ljava/util/List;

    move-result-object v4

    .line 83
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;

    .line 84
    .local v0, "ace":Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;
    invoke-virtual {v0}, Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;->getPrincipal()Lorg/apache/jackrabbit/webdav/security/Principal;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/jackrabbit/webdav/security/Principal;->getHref()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "href":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-interface {v8, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 90
    invoke-interface {v5}, Lorg/apache/jackrabbit/webdav/DavResourceLocator;->getFactory()Lorg/apache/jackrabbit/webdav/DavLocatorFactory;

    move-result-object v9

    invoke-interface {v5}, Lorg/apache/jackrabbit/webdav/DavResourceLocator;->getPrefix()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v2}, Lorg/apache/jackrabbit/webdav/DavLocatorFactory;->createResourceLocator(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/DavResourceLocator;

    move-result-object v6

    .line 91
    .local v6, "princLocator":Lorg/apache/jackrabbit/webdav/DavResourceLocator;
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/DavResource;->getFactory()Lorg/apache/jackrabbit/webdav/DavResourceFactory;

    move-result-object v9

    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/DavResource;->getSession()Lorg/apache/jackrabbit/webdav/DavSession;

    move-result-object v10

    invoke-interface {v9, v6, v10}, Lorg/apache/jackrabbit/webdav/DavResourceFactory;->createResource(Lorg/apache/jackrabbit/webdav/DavResourceLocator;Lorg/apache/jackrabbit/webdav/DavSession;)Lorg/apache/jackrabbit/webdav/DavResource;

    move-result-object v7

    .line 92
    .local v7, "principalResource":Lorg/apache/jackrabbit/webdav/DavResource;
    new-instance v9, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;

    invoke-virtual {p2}, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->getPropertyNameSet()Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    move-result-object v10

    invoke-direct {v9, v7, v10}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;-><init>(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;)V

    invoke-interface {v8, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 94
    .end local v0    # "ace":Lorg/apache/jackrabbit/webdav/security/AclProperty$Ace;
    .end local v2    # "href":Ljava/lang/String;
    .end local v6    # "princLocator":Lorg/apache/jackrabbit/webdav/DavResourceLocator;
    .end local v7    # "principalResource":Lorg/apache/jackrabbit/webdav/DavResource;
    :cond_2
    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v10

    new-array v10, v10, [Lorg/apache/jackrabbit/webdav/MultiStatusResponse;

    invoke-interface {v9, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lorg/apache/jackrabbit/webdav/MultiStatusResponse;

    iput-object v9, p0, Lorg/apache/jackrabbit/webdav/security/report/AclPrincipalReport;->responses:[Lorg/apache/jackrabbit/webdav/MultiStatusResponse;

    .line 95
    return-void
.end method
