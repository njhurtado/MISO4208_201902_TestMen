.class public Lorg/apache/jackrabbit/webdav/version/report/LocateByHistoryReport;
.super Ljava/lang/Object;
.source "LocateByHistoryReport.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/version/report/Report;
.implements Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private info:Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;

.field private resource:Lorg/apache/jackrabbit/webdav/DavResource;

.field private vhHrefSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lorg/apache/jackrabbit/webdav/version/report/LocateByHistoryReport;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/report/LocateByHistoryReport;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/version/report/LocateByHistoryReport;->vhHrefSet:Ljava/util/Set;

    return-void
.end method

.method private buildResponse(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;ILorg/apache/jackrabbit/webdav/MultiStatus;)V
    .locals 7
    .param p1, "res"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .param p2, "propNameSet"    # Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;
    .param p3, "depth"    # I
    .param p4, "ms"    # Lorg/apache/jackrabbit/webdav/MultiStatus;

    .prologue
    .line 152
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/DavResource;->getMembers()Lorg/apache/jackrabbit/webdav/DavResourceIterator;

    move-result-object v3

    .line 153
    .local v3, "it":Lorg/apache/jackrabbit/webdav/DavResourceIterator;
    :cond_0
    :goto_0
    iget-object v5, p0, Lorg/apache/jackrabbit/webdav/version/report/LocateByHistoryReport;->vhHrefSet:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v3}, Lorg/apache/jackrabbit/webdav/DavResourceIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 154
    invoke-interface {v3}, Lorg/apache/jackrabbit/webdav/DavResourceIterator;->nextResource()Lorg/apache/jackrabbit/webdav/DavResource;

    move-result-object v1

    .line 155
    .local v1, "childRes":Lorg/apache/jackrabbit/webdav/DavResource;
    instance-of v5, v1, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;

    if-eqz v5, :cond_1

    .line 157
    :try_start_0
    move-object v0, v1

    check-cast v0, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;

    move-object v5, v0

    invoke-interface {v5}, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;->getVersionHistory()Lorg/apache/jackrabbit/webdav/version/VersionHistoryResource;

    move-result-object v4

    .line 158
    .local v4, "vhr":Lorg/apache/jackrabbit/webdav/version/VersionHistoryResource;
    iget-object v5, p0, Lorg/apache/jackrabbit/webdav/version/report/LocateByHistoryReport;->vhHrefSet:Ljava/util/Set;

    invoke-interface {v4}, Lorg/apache/jackrabbit/webdav/version/VersionHistoryResource;->getHref()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 159
    invoke-virtual {p2}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 160
    const/16 v5, 0xc8

    const/4 v6, 0x0

    invoke-virtual {p4, v1, v5, v6}, Lorg/apache/jackrabbit/webdav/MultiStatus;->addResourceStatus(Lorg/apache/jackrabbit/webdav/DavResource;II)V
    :try_end_0
    .catch Lorg/apache/jackrabbit/webdav/DavException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v4    # "vhr":Lorg/apache/jackrabbit/webdav/version/VersionHistoryResource;
    :cond_1
    :goto_1
    if-lez p3, :cond_0

    .line 171
    invoke-interface {v3}, Lorg/apache/jackrabbit/webdav/DavResourceIterator;->nextResource()Lorg/apache/jackrabbit/webdav/DavResource;

    move-result-object v5

    add-int/lit8 v6, p3, -0x1

    invoke-direct {p0, v5, p2, v6, p4}, Lorg/apache/jackrabbit/webdav/version/report/LocateByHistoryReport;->buildResponse(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;ILorg/apache/jackrabbit/webdav/MultiStatus;)V

    goto :goto_0

    .line 162
    .restart local v4    # "vhr":Lorg/apache/jackrabbit/webdav/version/VersionHistoryResource;
    :cond_2
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p4, v1, p2, v5}, Lorg/apache/jackrabbit/webdav/MultiStatus;->addResourceProperties(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;I)V
    :try_end_1
    .catch Lorg/apache/jackrabbit/webdav/DavException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 165
    .end local v4    # "vhr":Lorg/apache/jackrabbit/webdav/version/VersionHistoryResource;
    :catch_0
    move-exception v2

    .line 166
    .local v2, "e":Lorg/apache/jackrabbit/webdav/DavException;
    sget-object v5, Lorg/apache/jackrabbit/webdav/version/report/LocateByHistoryReport;->log:Lorg/slf4j/Logger;

    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/DavException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 174
    .end local v1    # "childRes":Lorg/apache/jackrabbit/webdav/DavResource;
    .end local v2    # "e":Lorg/apache/jackrabbit/webdav/DavException;
    :cond_3
    return-void
.end method

.method private getMultiStatus()Lorg/apache/jackrabbit/webdav/MultiStatus;
    .locals 4

    .prologue
    .line 134
    new-instance v0, Lorg/apache/jackrabbit/webdav/MultiStatus;

    invoke-direct {v0}, Lorg/apache/jackrabbit/webdav/MultiStatus;-><init>()V

    .line 135
    .local v0, "ms":Lorg/apache/jackrabbit/webdav/MultiStatus;
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/version/report/LocateByHistoryReport;->resource:Lorg/apache/jackrabbit/webdav/DavResource;

    iget-object v2, p0, Lorg/apache/jackrabbit/webdav/version/report/LocateByHistoryReport;->info:Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;

    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->getPropertyNameSet()Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/version/report/LocateByHistoryReport;->info:Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;

    invoke-virtual {v3}, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->getDepth()I

    move-result v3

    invoke-direct {p0, v1, v2, v3, v0}, Lorg/apache/jackrabbit/webdav/version/report/LocateByHistoryReport;->buildResponse(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;ILorg/apache/jackrabbit/webdav/MultiStatus;)V

    .line 136
    return-object v0
.end method

.method private setInfo(Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;)V
    .locals 6
    .param p1, "info"    # Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x190

    .line 87
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/version/report/LocateByHistoryReport;->getType()Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->isRequestedReportType(Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 88
    :cond_0
    new-instance v3, Lorg/apache/jackrabbit/webdav/DavException;

    const-string v4, "DAV:locate-by-history element expected."

    invoke-direct {v3, v5, v4}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 90
    :cond_1
    const-string v3, "version-history-set"

    sget-object v4, Lorg/apache/jackrabbit/webdav/version/report/LocateByHistoryReport;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {p1, v3, v4}, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->getContentElement(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 91
    .local v2, "versionHistorySet":Lorg/w3c/dom/Element;
    if-nez v2, :cond_2

    .line 92
    new-instance v3, Lorg/apache/jackrabbit/webdav/DavException;

    const-string v4, "The DAV:locate-by-history element must contain a DAV:version-history-set child."

    invoke-direct {v3, v5, v4}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 94
    :cond_2
    const-string v3, "href"

    sget-object v4, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v2, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/xml/ElementIterator;

    move-result-object v1

    .line 95
    .local v1, "it":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    :cond_3
    :goto_0
    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 96
    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->nextElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getText(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "href":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 98
    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/version/report/LocateByHistoryReport;->vhHrefSet:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    .end local v0    # "href":Ljava/lang/String;
    :cond_4
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/version/report/LocateByHistoryReport;->info:Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;

    .line 102
    return-void
.end method


# virtual methods
.method public getType()Lorg/apache/jackrabbit/webdav/version/report/ReportType;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->LOCATE_BY_HISTORY:Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    return-object v0
.end method

.method public init(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;)V
    .locals 3
    .param p1, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .param p2, "info"    # Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 72
    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;

    if-nez v0, :cond_1

    .line 73
    :cond_0
    new-instance v0, Lorg/apache/jackrabbit/webdav/DavException;

    const/16 v1, 0x190

    const-string v2, "DAV:version-tree report can only be created for version-controlled resources and version resources."

    invoke-direct {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/version/report/LocateByHistoryReport;->resource:Lorg/apache/jackrabbit/webdav/DavResource;

    .line 76
    invoke-direct {p0, p2}, Lorg/apache/jackrabbit/webdav/version/report/LocateByHistoryReport;->setInfo(Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;)V

    .line 77
    return-void
.end method

.method public isMultiStatusReport()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 1
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 123
    invoke-direct {p0}, Lorg/apache/jackrabbit/webdav/version/report/LocateByHistoryReport;->getMultiStatus()Lorg/apache/jackrabbit/webdav/MultiStatus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/jackrabbit/webdav/MultiStatus;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method
