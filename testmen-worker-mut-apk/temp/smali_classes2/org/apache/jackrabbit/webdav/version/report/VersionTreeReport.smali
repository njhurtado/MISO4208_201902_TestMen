.class public Lorg/apache/jackrabbit/webdav/version/report/VersionTreeReport;
.super Ljava/lang/Object;
.source "VersionTreeReport.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/version/report/Report;
.implements Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private info:Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;

.field private resource:Lorg/apache/jackrabbit/webdav/DavResource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/apache/jackrabbit/webdav/version/report/VersionTreeReport;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/report/VersionTreeReport;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildResponse(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;ILorg/apache/jackrabbit/webdav/MultiStatus;)V
    .locals 8
    .param p1, "res"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .param p2, "propNameSet"    # Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;
    .param p3, "depth"    # I
    .param p4, "ms"    # Lorg/apache/jackrabbit/webdav/MultiStatus;

    .prologue
    .line 148
    :try_start_0
    invoke-static {p1}, Lorg/apache/jackrabbit/webdav/version/report/VersionTreeReport;->getVersions(Lorg/apache/jackrabbit/webdav/DavResource;)[Lorg/apache/jackrabbit/webdav/version/VersionResource;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/jackrabbit/webdav/version/VersionResource;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v0, v2

    .line 149
    .local v5, "version":Lorg/apache/jackrabbit/webdav/version/VersionResource;
    invoke-virtual {p2}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 150
    const/16 v6, 0xc8

    const/4 v7, 0x0

    invoke-virtual {p4, v5, v6, v7}, Lorg/apache/jackrabbit/webdav/MultiStatus;->addResourceStatus(Lorg/apache/jackrabbit/webdav/DavResource;II)V

    .line 148
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {p4, v5, p2, v6}, Lorg/apache/jackrabbit/webdav/MultiStatus;->addResourceProperties(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;I)V
    :try_end_0
    .catch Lorg/apache/jackrabbit/webdav/DavException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 155
    .end local v0    # "arr$":[Lorg/apache/jackrabbit/webdav/version/VersionResource;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "version":Lorg/apache/jackrabbit/webdav/version/VersionResource;
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Lorg/apache/jackrabbit/webdav/DavException;
    sget-object v6, Lorg/apache/jackrabbit/webdav/version/report/VersionTreeReport;->log:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/DavException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 158
    .end local v1    # "e":Lorg/apache/jackrabbit/webdav/DavException;
    :cond_1
    if-lez p3, :cond_2

    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/DavResource;->isCollection()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 159
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/DavResource;->getMembers()Lorg/apache/jackrabbit/webdav/DavResourceIterator;

    move-result-object v3

    .line 160
    .local v3, "it":Lorg/apache/jackrabbit/webdav/DavResourceIterator;
    :goto_2
    invoke-interface {v3}, Lorg/apache/jackrabbit/webdav/DavResourceIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 161
    invoke-interface {v3}, Lorg/apache/jackrabbit/webdav/DavResourceIterator;->nextResource()Lorg/apache/jackrabbit/webdav/DavResource;

    move-result-object v6

    add-int/lit8 v7, p3, -0x1

    invoke-direct {p0, v6, p2, v7, p4}, Lorg/apache/jackrabbit/webdav/version/report/VersionTreeReport;->buildResponse(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;ILorg/apache/jackrabbit/webdav/MultiStatus;)V

    goto :goto_2

    .line 164
    .end local v3    # "it":Lorg/apache/jackrabbit/webdav/DavResourceIterator;
    :cond_2
    return-void
.end method

.method private getMultiStatus()Lorg/apache/jackrabbit/webdav/MultiStatus;
    .locals 4

    .prologue
    .line 129
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/version/report/VersionTreeReport;->info:Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/version/report/VersionTreeReport;->resource:Lorg/apache/jackrabbit/webdav/DavResource;

    if-nez v1, :cond_1

    .line 130
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Error while running DAV:version-tree report"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_1
    new-instance v0, Lorg/apache/jackrabbit/webdav/MultiStatus;

    invoke-direct {v0}, Lorg/apache/jackrabbit/webdav/MultiStatus;-><init>()V

    .line 134
    .local v0, "ms":Lorg/apache/jackrabbit/webdav/MultiStatus;
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/version/report/VersionTreeReport;->resource:Lorg/apache/jackrabbit/webdav/DavResource;

    iget-object v2, p0, Lorg/apache/jackrabbit/webdav/version/report/VersionTreeReport;->info:Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;

    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->getPropertyNameSet()Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/version/report/VersionTreeReport;->info:Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;

    invoke-virtual {v3}, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->getDepth()I

    move-result v3

    invoke-direct {p0, v1, v2, v3, v0}, Lorg/apache/jackrabbit/webdav/version/report/VersionTreeReport;->buildResponse(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;ILorg/apache/jackrabbit/webdav/MultiStatus;)V

    .line 135
    return-object v0
.end method

.method private static getVersions(Lorg/apache/jackrabbit/webdav/DavResource;)[Lorg/apache/jackrabbit/webdav/version/VersionResource;
    .locals 2
    .param p0, "res"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 179
    const/4 v1, 0x0

    new-array v0, v1, [Lorg/apache/jackrabbit/webdav/version/VersionResource;

    .line 180
    .local v0, "versions":[Lorg/apache/jackrabbit/webdav/version/VersionResource;
    instance-of v1, p0, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;

    if-eqz v1, :cond_1

    .line 181
    check-cast p0, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;

    .end local p0    # "res":Lorg/apache/jackrabbit/webdav/DavResource;
    invoke-interface {p0}, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;->getVersionHistory()Lorg/apache/jackrabbit/webdav/version/VersionHistoryResource;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/jackrabbit/webdav/version/VersionHistoryResource;->getVersions()[Lorg/apache/jackrabbit/webdav/version/VersionResource;

    move-result-object v0

    .line 185
    :cond_0
    :goto_0
    return-object v0

    .line 182
    .restart local p0    # "res":Lorg/apache/jackrabbit/webdav/DavResource;
    :cond_1
    instance-of v1, p0, Lorg/apache/jackrabbit/webdav/version/VersionResource;

    if-eqz v1, :cond_0

    .line 183
    check-cast p0, Lorg/apache/jackrabbit/webdav/version/VersionResource;

    .end local p0    # "res":Lorg/apache/jackrabbit/webdav/DavResource;
    invoke-interface {p0}, Lorg/apache/jackrabbit/webdav/version/VersionResource;->getVersionHistory()Lorg/apache/jackrabbit/webdav/version/VersionHistoryResource;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/jackrabbit/webdav/version/VersionHistoryResource;->getVersions()[Lorg/apache/jackrabbit/webdav/version/VersionResource;

    move-result-object v0

    goto :goto_0
.end method

.method private setInfo(Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;)V
    .locals 3
    .param p1, "info"    # Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/version/report/VersionTreeReport;->getType()Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->isRequestedReportType(Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lorg/apache/jackrabbit/webdav/DavException;

    const/16 v1, 0x190

    const-string v2, "DAV:version-tree element expected."

    invoke-direct {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/version/report/VersionTreeReport;->info:Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;

    .line 107
    return-void
.end method

.method private setResource(Lorg/apache/jackrabbit/webdav/DavResource;)V
    .locals 3
    .param p1, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 87
    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/apache/jackrabbit/webdav/version/VersionResource;

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/version/report/VersionTreeReport;->resource:Lorg/apache/jackrabbit/webdav/DavResource;

    .line 92
    return-void

    .line 90
    :cond_1
    new-instance v0, Lorg/apache/jackrabbit/webdav/DavException;

    const/16 v1, 0x190

    const-string v2, "DAV:version-tree report can only be created for version-controlled resources and version resources."

    invoke-direct {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getType()Lorg/apache/jackrabbit/webdav/version/report/ReportType;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->VERSION_TREE:Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    return-object v0
.end method

.method public init(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;)V
    .locals 0
    .param p1, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .param p2, "info"    # Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/version/report/VersionTreeReport;->setResource(Lorg/apache/jackrabbit/webdav/DavResource;)V

    .line 76
    invoke-direct {p0, p2}, Lorg/apache/jackrabbit/webdav/version/report/VersionTreeReport;->setInfo(Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;)V

    .line 77
    return-void
.end method

.method public isMultiStatusReport()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 1
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 118
    invoke-direct {p0}, Lorg/apache/jackrabbit/webdav/version/report/VersionTreeReport;->getMultiStatus()Lorg/apache/jackrabbit/webdav/MultiStatus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/jackrabbit/webdav/MultiStatus;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method
