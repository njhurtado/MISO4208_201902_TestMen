.class public Lorg/apache/jackrabbit/webdav/version/report/LatestActivityVersionReport;
.super Ljava/lang/Object;
.source "LatestActivityVersionReport.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/version/report/Report;


# static fields
.field public static final LATEST_ACTIVITY_VERSION:Lorg/apache/jackrabbit/webdav/version/report/ReportType;

.field private static final XML_LATEST_ACTIVITY_VERSION:Ljava/lang/String; = "latest-activity-version"

.field private static final XML_LATEST_ACTIVITY_VERSION_REPORT:Ljava/lang/String; = "latest-activity-version-report"

.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private activity:Lorg/apache/jackrabbit/webdav/DavResource;

.field private vhResource:Lorg/apache/jackrabbit/webdav/version/VersionHistoryResource;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const-class v0, Lorg/apache/jackrabbit/webdav/version/report/LatestActivityVersionReport;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/report/LatestActivityVersionReport;->log:Lorg/slf4j/Logger;

    .line 49
    const-string v0, "latest-activity-version"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    const-class v2, Lorg/apache/jackrabbit/webdav/version/report/LatestActivityVersionReport;

    invoke-static {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->register(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/Class;)Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/report/LatestActivityVersionReport;->LATEST_ACTIVITY_VERSION:Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getLatestVersionHref()Ljava/lang/String;
    .locals 12

    .prologue
    .line 125
    const-string v4, ""

    .line 127
    .local v4, "latestVersionHref":Ljava/lang/String;
    :try_start_0
    new-instance v9, Lorg/apache/jackrabbit/webdav/property/HrefProperty;

    iget-object v10, p0, Lorg/apache/jackrabbit/webdav/version/report/LatestActivityVersionReport;->activity:Lorg/apache/jackrabbit/webdav/DavResource;

    sget-object v11, Lorg/apache/jackrabbit/webdav/version/ActivityResource;->ACTIVITY_VERSION_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-interface {v10, v11}, Lorg/apache/jackrabbit/webdav/DavResource;->getProperty(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Lorg/apache/jackrabbit/webdav/property/DavProperty;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/jackrabbit/webdav/property/HrefProperty;-><init>(Lorg/apache/jackrabbit/webdav/property/DavProperty;)V

    invoke-virtual {v9}, Lorg/apache/jackrabbit/webdav/property/HrefProperty;->getHrefs()Ljava/util/List;

    move-result-object v7

    .line 129
    .local v7, "versionHrefs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, p0, Lorg/apache/jackrabbit/webdav/version/report/LatestActivityVersionReport;->vhResource:Lorg/apache/jackrabbit/webdav/version/VersionHistoryResource;

    invoke-interface {v9}, Lorg/apache/jackrabbit/webdav/version/VersionHistoryResource;->getVersions()[Lorg/apache/jackrabbit/webdav/version/VersionResource;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/jackrabbit/webdav/version/VersionResource;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v8, v0, v3

    .line 130
    .local v8, "vr":Lorg/apache/jackrabbit/webdav/version/VersionResource;
    invoke-interface {v8}, Lorg/apache/jackrabbit/webdav/version/VersionResource;->getHref()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "href":Ljava/lang/String;
    invoke-interface {v7, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 132
    const-string v9, ""

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 134
    move-object v4, v2

    .line 129
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 137
    :cond_1
    new-instance v9, Lorg/apache/jackrabbit/webdav/property/HrefProperty;

    sget-object v10, Lorg/apache/jackrabbit/webdav/version/VersionResource;->PREDECESSOR_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-interface {v8, v10}, Lorg/apache/jackrabbit/webdav/version/VersionResource;->getProperty(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Lorg/apache/jackrabbit/webdav/property/DavProperty;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/jackrabbit/webdav/property/HrefProperty;-><init>(Lorg/apache/jackrabbit/webdav/property/DavProperty;)V

    invoke-virtual {v9}, Lorg/apache/jackrabbit/webdav/property/HrefProperty;->getHrefs()Ljava/util/List;

    move-result-object v6

    .line 138
    .local v6, "predecessors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/jackrabbit/webdav/DavException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_0

    .line 140
    move-object v4, v2

    goto :goto_1

    .line 146
    .end local v0    # "arr$":[Lorg/apache/jackrabbit/webdav/version/VersionResource;
    .end local v2    # "href":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "predecessors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "versionHrefs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "vr":Lorg/apache/jackrabbit/webdav/version/VersionResource;
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Lorg/apache/jackrabbit/webdav/DavException;
    sget-object v9, Lorg/apache/jackrabbit/webdav/version/report/LatestActivityVersionReport;->log:Lorg/slf4j/Logger;

    const-string v10, "Unexpected error while retrieving href of latest version."

    invoke-interface {v9, v10, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    .end local v1    # "e":Lorg/apache/jackrabbit/webdav/DavException;
    :cond_2
    return-object v4
.end method


# virtual methods
.method public getType()Lorg/apache/jackrabbit/webdav/version/report/ReportType;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lorg/apache/jackrabbit/webdav/version/report/LatestActivityVersionReport;->LATEST_ACTIVITY_VERSION:Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    return-object v0
.end method

.method public init(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;)V
    .locals 6
    .param p1, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .param p2, "info"    # Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x190

    .line 81
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/version/report/LatestActivityVersionReport;->getType()Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->isRequestedReportType(Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 82
    new-instance v3, Lorg/apache/jackrabbit/webdav/DavException;

    const-string v4, "DAV:latest-activity-version element expected."

    invoke-direct {v3, v5, v4}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 86
    :cond_0
    if-eqz p1, :cond_1

    instance-of v3, p1, Lorg/apache/jackrabbit/webdav/version/VersionHistoryResource;

    if-eqz v3, :cond_1

    move-object v3, p1

    .line 87
    check-cast v3, Lorg/apache/jackrabbit/webdav/version/VersionHistoryResource;

    iput-object v3, p0, Lorg/apache/jackrabbit/webdav/version/report/LatestActivityVersionReport;->vhResource:Lorg/apache/jackrabbit/webdav/version/VersionHistoryResource;

    .line 94
    const-string v3, "href"

    sget-object v4, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {p2, v3, v4}, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->getContentElement(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getText(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "activityHref":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/DavResource;->getLocator()Lorg/apache/jackrabbit/webdav/DavResourceLocator;

    move-result-object v2

    .line 96
    .local v2, "vhLocator":Lorg/apache/jackrabbit/webdav/DavResourceLocator;
    invoke-interface {v2}, Lorg/apache/jackrabbit/webdav/DavResourceLocator;->getFactory()Lorg/apache/jackrabbit/webdav/DavLocatorFactory;

    move-result-object v3

    invoke-interface {v2}, Lorg/apache/jackrabbit/webdav/DavResourceLocator;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lorg/apache/jackrabbit/webdav/DavLocatorFactory;->createResourceLocator(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/DavResourceLocator;

    move-result-object v1

    .line 98
    .local v1, "activityLocator":Lorg/apache/jackrabbit/webdav/DavResourceLocator;
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/DavResource;->getFactory()Lorg/apache/jackrabbit/webdav/DavResourceFactory;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/DavResource;->getSession()Lorg/apache/jackrabbit/webdav/DavSession;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lorg/apache/jackrabbit/webdav/DavResourceFactory;->createResource(Lorg/apache/jackrabbit/webdav/DavResourceLocator;Lorg/apache/jackrabbit/webdav/DavSession;)Lorg/apache/jackrabbit/webdav/DavResource;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/jackrabbit/webdav/version/report/LatestActivityVersionReport;->activity:Lorg/apache/jackrabbit/webdav/DavResource;

    .line 99
    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/version/report/LatestActivityVersionReport;->activity:Lorg/apache/jackrabbit/webdav/DavResource;

    instance-of v3, v3, Lorg/apache/jackrabbit/webdav/version/ActivityResource;

    if-nez v3, :cond_2

    .line 100
    new-instance v3, Lorg/apache/jackrabbit/webdav/DavException;

    const-string v4, "DAV:latest-activity-version report: The DAV:href in the request body MUST identify an activity."

    invoke-direct {v3, v5, v4}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 89
    .end local v0    # "activityHref":Ljava/lang/String;
    .end local v1    # "activityLocator":Lorg/apache/jackrabbit/webdav/DavResourceLocator;
    .end local v2    # "vhLocator":Lorg/apache/jackrabbit/webdav/DavResourceLocator;
    :cond_1
    new-instance v3, Lorg/apache/jackrabbit/webdav/DavException;

    const-string v4, "DAV:latest-activity-version report can only be created for a version history resource."

    invoke-direct {v3, v5, v4}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 102
    .restart local v0    # "activityHref":Ljava/lang/String;
    .restart local v1    # "activityLocator":Lorg/apache/jackrabbit/webdav/DavResourceLocator;
    .restart local v2    # "vhLocator":Lorg/apache/jackrabbit/webdav/DavResourceLocator;
    :cond_2
    return-void
.end method

.method public isMultiStatusReport()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 4
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/apache/jackrabbit/webdav/version/report/LatestActivityVersionReport;->getLatestVersionHref()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "latestVersionHref":Ljava/lang/String;
    const-string v2, "latest-activity-version-report"

    sget-object v3, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v2, v3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 112
    .local v0, "el":Lorg/w3c/dom/Element;
    invoke-static {v1, p1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hrefToXml(Ljava/lang/String;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 113
    return-object v0
.end method
