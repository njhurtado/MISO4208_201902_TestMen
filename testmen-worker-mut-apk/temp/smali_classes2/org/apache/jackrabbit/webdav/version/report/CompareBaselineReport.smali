.class public Lorg/apache/jackrabbit/webdav/version/report/CompareBaselineReport;
.super Ljava/lang/Object;
.source "CompareBaselineReport.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/version/report/Report;


# static fields
.field public static final COMPARE_BASELINE:Lorg/apache/jackrabbit/webdav/version/report/ReportType;

.field private static final XML_ADDED_VERSION:Ljava/lang/String; = "added-version"

.field private static final XML_CHANGED_VERSION:Ljava/lang/String; = "changed-version"

.field private static final XML_COMPARE_BASELINE:Ljava/lang/String; = "compare-baseline"

.field private static final XML_COMPARE_BASELINE_REPORT:Ljava/lang/String; = "compare-baseline-report"

.field private static final XML_DELETED_VERSION:Ljava/lang/String; = "deleted-version"

.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private compareBaseline:Lorg/apache/jackrabbit/webdav/version/BaselineResource;

.field private requestBaseline:Lorg/apache/jackrabbit/webdav/version/BaselineResource;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const-class v0, Lorg/apache/jackrabbit/webdav/version/report/CompareBaselineReport;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/report/CompareBaselineReport;->log:Lorg/slf4j/Logger;

    .line 52
    const-string v0, "compare-baseline"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    const-class v2, Lorg/apache/jackrabbit/webdav/version/report/CompareBaselineReport;

    invoke-static {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->register(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/Class;)Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/report/CompareBaselineReport;->COMPARE_BASELINE:Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findChangedVersion(Lorg/apache/jackrabbit/webdav/version/VersionResource;Ljava/util/List;)Lorg/apache/jackrabbit/webdav/version/VersionResource;
    .locals 6
    .param p1, "requestV"    # Lorg/apache/jackrabbit/webdav/version/VersionResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/jackrabbit/webdav/version/VersionResource;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/jackrabbit/webdav/version/VersionResource;",
            ">;)",
            "Lorg/apache/jackrabbit/webdav/version/VersionResource;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 178
    .local p2, "compareVs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/jackrabbit/webdav/version/VersionResource;>;"
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/version/VersionResource;->getVersionHistory()Lorg/apache/jackrabbit/webdav/version/VersionHistoryResource;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/jackrabbit/webdav/version/VersionHistoryResource;->getVersions()[Lorg/apache/jackrabbit/webdav/version/VersionResource;

    move-result-object v4

    .line 179
    .local v4, "vs":[Lorg/apache/jackrabbit/webdav/version/VersionResource;
    move-object v0, v4

    .local v0, "arr$":[Lorg/apache/jackrabbit/webdav/version/VersionResource;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 180
    .local v3, "v":Lorg/apache/jackrabbit/webdav/version/VersionResource;
    invoke-interface {p2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 186
    .end local v3    # "v":Lorg/apache/jackrabbit/webdav/version/VersionResource;
    :goto_1
    return-object v3

    .line 179
    .restart local v3    # "v":Lorg/apache/jackrabbit/webdav/version/VersionResource;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    .end local v3    # "v":Lorg/apache/jackrabbit/webdav/version/VersionResource;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getVersions(Lorg/apache/jackrabbit/webdav/DavResource;Ljava/util/List;)V
    .locals 8
    .param p1, "collection"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/jackrabbit/webdav/DavResource;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/jackrabbit/webdav/version/VersionResource;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 156
    .local p2, "vList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/jackrabbit/webdav/version/VersionResource;>;"
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/DavResource;->getMembers()Lorg/apache/jackrabbit/webdav/DavResourceIterator;

    move-result-object v1

    .line 157
    .local v1, "it":Lorg/apache/jackrabbit/webdav/DavResourceIterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Lorg/apache/jackrabbit/webdav/DavResourceIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 158
    invoke-interface {v1}, Lorg/apache/jackrabbit/webdav/DavResourceIterator;->nextResource()Lorg/apache/jackrabbit/webdav/DavResource;

    move-result-object v3

    .line 159
    .local v3, "member":Lorg/apache/jackrabbit/webdav/DavResource;
    instance-of v6, v3, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;

    if-eqz v6, :cond_1

    .line 160
    new-instance v6, Lorg/apache/jackrabbit/webdav/property/HrefProperty;

    sget-object v7, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;->CHECKED_IN:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-interface {v3, v7}, Lorg/apache/jackrabbit/webdav/DavResource;->getProperty(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Lorg/apache/jackrabbit/webdav/property/DavProperty;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/jackrabbit/webdav/property/HrefProperty;-><init>(Lorg/apache/jackrabbit/webdav/property/DavProperty;)V

    invoke-virtual {v6}, Lorg/apache/jackrabbit/webdav/property/HrefProperty;->getHrefs()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 161
    .local v0, "href":Ljava/lang/String;
    invoke-interface {v3}, Lorg/apache/jackrabbit/webdav/DavResource;->getLocator()Lorg/apache/jackrabbit/webdav/DavResourceLocator;

    move-result-object v2

    .line 162
    .local v2, "locator":Lorg/apache/jackrabbit/webdav/DavResourceLocator;
    invoke-interface {v2}, Lorg/apache/jackrabbit/webdav/DavResourceLocator;->getFactory()Lorg/apache/jackrabbit/webdav/DavLocatorFactory;

    move-result-object v6

    invoke-interface {v2}, Lorg/apache/jackrabbit/webdav/DavResourceLocator;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Lorg/apache/jackrabbit/webdav/DavLocatorFactory;->createResourceLocator(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/DavResourceLocator;

    move-result-object v5

    .line 164
    .local v5, "vLocator":Lorg/apache/jackrabbit/webdav/DavResourceLocator;
    invoke-interface {v3}, Lorg/apache/jackrabbit/webdav/DavResource;->getFactory()Lorg/apache/jackrabbit/webdav/DavResourceFactory;

    move-result-object v6

    invoke-interface {v3}, Lorg/apache/jackrabbit/webdav/DavResource;->getSession()Lorg/apache/jackrabbit/webdav/DavSession;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Lorg/apache/jackrabbit/webdav/DavResourceFactory;->createResource(Lorg/apache/jackrabbit/webdav/DavResourceLocator;Lorg/apache/jackrabbit/webdav/DavSession;)Lorg/apache/jackrabbit/webdav/DavResource;

    move-result-object v4

    .line 165
    .local v4, "v":Lorg/apache/jackrabbit/webdav/DavResource;
    instance-of v6, v4, Lorg/apache/jackrabbit/webdav/version/VersionResource;

    if-eqz v6, :cond_2

    .line 166
    check-cast v4, Lorg/apache/jackrabbit/webdav/version/VersionResource;

    .end local v4    # "v":Lorg/apache/jackrabbit/webdav/DavResource;
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    .end local v0    # "href":Ljava/lang/String;
    .end local v2    # "locator":Lorg/apache/jackrabbit/webdav/DavResourceLocator;
    .end local v5    # "vLocator":Lorg/apache/jackrabbit/webdav/DavResourceLocator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Lorg/apache/jackrabbit/webdav/DavResource;->isCollection()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 172
    invoke-direct {p0, v3, p2}, Lorg/apache/jackrabbit/webdav/version/report/CompareBaselineReport;->getVersions(Lorg/apache/jackrabbit/webdav/DavResource;Ljava/util/List;)V

    goto :goto_0

    .line 168
    .restart local v0    # "href":Ljava/lang/String;
    .restart local v2    # "locator":Lorg/apache/jackrabbit/webdav/DavResourceLocator;
    .restart local v4    # "v":Lorg/apache/jackrabbit/webdav/DavResource;
    .restart local v5    # "vLocator":Lorg/apache/jackrabbit/webdav/DavResourceLocator;
    :cond_2
    sget-object v6, Lorg/apache/jackrabbit/webdav/version/report/CompareBaselineReport;->log:Lorg/slf4j/Logger;

    const-string v7, "Internal error: DAV:checked-in property must point to a VersionResource."

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 175
    .end local v0    # "href":Ljava/lang/String;
    .end local v2    # "locator":Lorg/apache/jackrabbit/webdav/DavResourceLocator;
    .end local v3    # "member":Lorg/apache/jackrabbit/webdav/DavResource;
    .end local v4    # "v":Lorg/apache/jackrabbit/webdav/DavResource;
    .end local v5    # "vLocator":Lorg/apache/jackrabbit/webdav/DavResourceLocator;
    :cond_3
    return-void
.end method


# virtual methods
.method public getType()Lorg/apache/jackrabbit/webdav/version/report/ReportType;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lorg/apache/jackrabbit/webdav/version/report/CompareBaselineReport;->COMPARE_BASELINE:Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    return-object v0
.end method

.method public init(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;)V
    .locals 7
    .param p1, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .param p2, "info"    # Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x190

    .line 85
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/version/report/CompareBaselineReport;->getType()Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    move-result-object v4

    invoke-virtual {v4, p2}, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->isRequestedReportType(Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 86
    new-instance v4, Lorg/apache/jackrabbit/webdav/DavException;

    const-string v5, "DAV:compare-baseline element expected."

    invoke-direct {v4, v6, v5}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 90
    :cond_0
    if-eqz p1, :cond_1

    instance-of v4, p1, Lorg/apache/jackrabbit/webdav/version/BaselineResource;

    if-eqz v4, :cond_1

    move-object v4, p1

    .line 91
    check-cast v4, Lorg/apache/jackrabbit/webdav/version/BaselineResource;

    iput-object v4, p0, Lorg/apache/jackrabbit/webdav/version/report/CompareBaselineReport;->requestBaseline:Lorg/apache/jackrabbit/webdav/version/BaselineResource;

    .line 98
    const-string v4, "href"

    sget-object v5, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {p2, v4, v5}, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->getContentElement(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getText(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "compareHref":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/DavResource;->getLocator()Lorg/apache/jackrabbit/webdav/DavResourceLocator;

    move-result-object v3

    .line 100
    .local v3, "locator":Lorg/apache/jackrabbit/webdav/DavResourceLocator;
    invoke-interface {v3}, Lorg/apache/jackrabbit/webdav/DavResourceLocator;->getFactory()Lorg/apache/jackrabbit/webdav/DavLocatorFactory;

    move-result-object v4

    invoke-interface {v3}, Lorg/apache/jackrabbit/webdav/DavResourceLocator;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lorg/apache/jackrabbit/webdav/DavLocatorFactory;->createResourceLocator(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/DavResourceLocator;

    move-result-object v2

    .line 102
    .local v2, "compareLocator":Lorg/apache/jackrabbit/webdav/DavResourceLocator;
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/DavResource;->getFactory()Lorg/apache/jackrabbit/webdav/DavResourceFactory;

    move-result-object v4

    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/DavResource;->getSession()Lorg/apache/jackrabbit/webdav/DavSession;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lorg/apache/jackrabbit/webdav/DavResourceFactory;->createResource(Lorg/apache/jackrabbit/webdav/DavResourceLocator;Lorg/apache/jackrabbit/webdav/DavSession;)Lorg/apache/jackrabbit/webdav/DavResource;

    move-result-object v0

    .line 103
    .local v0, "compRes":Lorg/apache/jackrabbit/webdav/DavResource;
    instance-of v4, v0, Lorg/apache/jackrabbit/webdav/version/BaselineResource;

    if-eqz v4, :cond_2

    .line 104
    check-cast v0, Lorg/apache/jackrabbit/webdav/version/BaselineResource;

    .end local v0    # "compRes":Lorg/apache/jackrabbit/webdav/DavResource;
    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/version/report/CompareBaselineReport;->compareBaseline:Lorg/apache/jackrabbit/webdav/version/BaselineResource;

    .line 110
    return-void

    .line 93
    .end local v1    # "compareHref":Ljava/lang/String;
    .end local v2    # "compareLocator":Lorg/apache/jackrabbit/webdav/DavResourceLocator;
    .end local v3    # "locator":Lorg/apache/jackrabbit/webdav/DavResourceLocator;
    :cond_1
    new-instance v4, Lorg/apache/jackrabbit/webdav/DavException;

    const-string v5, "DAV:compare-baseline report can only be created for a baseline resource."

    invoke-direct {v4, v6, v5}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 106
    .restart local v0    # "compRes":Lorg/apache/jackrabbit/webdav/DavResource;
    .restart local v1    # "compareHref":Ljava/lang/String;
    .restart local v2    # "compareLocator":Lorg/apache/jackrabbit/webdav/DavResourceLocator;
    .restart local v3    # "locator":Lorg/apache/jackrabbit/webdav/DavResourceLocator;
    :cond_2
    new-instance v4, Lorg/apache/jackrabbit/webdav/DavException;

    const-string v5, "DAV:latest-activity-version report: The DAV:href in the request body MUST identify an activity."

    invoke-direct {v4, v6, v5}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v4
.end method

.method public isMultiStatusReport()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 11
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 116
    const-string v9, "compare-baseline-report"

    sget-object v10, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v9, v10}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 119
    .local v5, "el":Lorg/w3c/dom/Element;
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v8, "requestVs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/jackrabbit/webdav/version/VersionResource;>;"
    iget-object v9, p0, Lorg/apache/jackrabbit/webdav/version/report/CompareBaselineReport;->requestBaseline:Lorg/apache/jackrabbit/webdav/version/BaselineResource;

    invoke-interface {v9}, Lorg/apache/jackrabbit/webdav/version/BaselineResource;->getBaselineCollection()Lorg/apache/jackrabbit/webdav/DavResource;

    move-result-object v9

    invoke-direct {p0, v9, v8}, Lorg/apache/jackrabbit/webdav/version/report/CompareBaselineReport;->getVersions(Lorg/apache/jackrabbit/webdav/DavResource;Ljava/util/List;)V

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v2, "compareVs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/jackrabbit/webdav/version/VersionResource;>;"
    iget-object v9, p0, Lorg/apache/jackrabbit/webdav/version/report/CompareBaselineReport;->compareBaseline:Lorg/apache/jackrabbit/webdav/version/BaselineResource;

    invoke-interface {v9}, Lorg/apache/jackrabbit/webdav/version/BaselineResource;->getBaselineCollection()Lorg/apache/jackrabbit/webdav/DavResource;

    move-result-object v9

    invoke-direct {p0, v9, v2}, Lorg/apache/jackrabbit/webdav/version/report/CompareBaselineReport;->getVersions(Lorg/apache/jackrabbit/webdav/DavResource;Ljava/util/List;)V

    .line 125
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/jackrabbit/webdav/version/VersionResource;

    .line 126
    .local v7, "requestV":Lorg/apache/jackrabbit/webdav/version/VersionResource;
    invoke-interface {v2, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 128
    invoke-direct {p0, v7, v2}, Lorg/apache/jackrabbit/webdav/version/report/CompareBaselineReport;->findChangedVersion(Lorg/apache/jackrabbit/webdav/version/VersionResource;Ljava/util/List;)Lorg/apache/jackrabbit/webdav/version/VersionResource;

    move-result-object v1

    .line 129
    .local v1, "changedV":Lorg/apache/jackrabbit/webdav/version/VersionResource;
    if-eqz v1, :cond_2

    .line 131
    const-string v9, "changed-version"

    sget-object v10, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v5, v9, v10}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 132
    .local v3, "cv":Lorg/w3c/dom/Element;
    invoke-interface {v7}, Lorg/apache/jackrabbit/webdav/version/VersionResource;->getHref()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hrefToXml(Ljava/lang/String;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v9

    invoke-interface {v3, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 133
    invoke-interface {v1}, Lorg/apache/jackrabbit/webdav/version/VersionResource;->getHref()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hrefToXml(Ljava/lang/String;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v9

    invoke-interface {v3, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Lorg/apache/jackrabbit/webdav/DavException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    .end local v1    # "changedV":Lorg/apache/jackrabbit/webdav/version/VersionResource;
    .end local v2    # "compareVs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/jackrabbit/webdav/version/VersionResource;>;"
    .end local v3    # "cv":Lorg/w3c/dom/Element;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "requestV":Lorg/apache/jackrabbit/webdav/version/VersionResource;
    .end local v8    # "requestVs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/jackrabbit/webdav/version/VersionResource;>;"
    :catch_0
    move-exception v4

    .line 150
    .local v4, "e":Lorg/apache/jackrabbit/webdav/DavException;
    sget-object v9, Lorg/apache/jackrabbit/webdav/version/report/CompareBaselineReport;->log:Lorg/slf4j/Logger;

    const-string v10, "Internal error while building report"

    invoke-interface {v9, v10, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    .end local v4    # "e":Lorg/apache/jackrabbit/webdav/DavException;
    :cond_1
    return-object v5

    .line 136
    .restart local v1    # "changedV":Lorg/apache/jackrabbit/webdav/version/VersionResource;
    .restart local v2    # "compareVs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/jackrabbit/webdav/version/VersionResource;>;"
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "requestV":Lorg/apache/jackrabbit/webdav/version/VersionResource;
    .restart local v8    # "requestVs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/jackrabbit/webdav/version/VersionResource;>;"
    :cond_2
    :try_start_1
    const-string v9, "deleted-version"

    sget-object v10, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v5, v9, v10}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 137
    .restart local v3    # "cv":Lorg/w3c/dom/Element;
    invoke-interface {v7}, Lorg/apache/jackrabbit/webdav/version/VersionResource;->getHref()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hrefToXml(Ljava/lang/String;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v9

    invoke-interface {v3, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 145
    .end local v1    # "changedV":Lorg/apache/jackrabbit/webdav/version/VersionResource;
    .end local v3    # "cv":Lorg/w3c/dom/Element;
    .end local v7    # "requestV":Lorg/apache/jackrabbit/webdav/version/VersionResource;
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/jackrabbit/webdav/version/VersionResource;

    .line 146
    .local v0, "addedV":Lorg/apache/jackrabbit/webdav/version/VersionResource;
    const-string v9, "added-version"

    sget-object v10, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v5, v9, v10}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 147
    .restart local v3    # "cv":Lorg/w3c/dom/Element;
    invoke-interface {v0}, Lorg/apache/jackrabbit/webdav/version/VersionResource;->getHref()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hrefToXml(Ljava/lang/String;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v9

    invoke-interface {v3, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1
    .catch Lorg/apache/jackrabbit/webdav/DavException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
