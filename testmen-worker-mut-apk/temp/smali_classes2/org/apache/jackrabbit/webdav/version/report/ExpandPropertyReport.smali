.class public Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport;
.super Ljava/lang/Object;
.source "ExpandPropertyReport.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/version/report/Report;
.implements Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport$1;,
        Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport$ExpandProperty;
    }
.end annotation


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private info:Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;

.field private propertyElements:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lorg/w3c/dom/Element;",
            ">;"
        }
    .end annotation
.end field

.field private resource:Lorg/apache/jackrabbit/webdav/DavResource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    return-void
.end method

.method static synthetic access$100(Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport;Lorg/apache/jackrabbit/webdav/DavResource;Ljava/util/Iterator;)Lorg/apache/jackrabbit/webdav/MultiStatusResponse;
    .locals 1
    .param p0, "x0"    # Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport;
    .param p1, "x1"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .param p2, "x2"    # Ljava/util/Iterator;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport;->getResponse(Lorg/apache/jackrabbit/webdav/DavResource;Ljava/util/Iterator;)Lorg/apache/jackrabbit/webdav/MultiStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method private addResponses(Lorg/apache/jackrabbit/webdav/DavResource;ILorg/apache/jackrabbit/webdav/MultiStatus;)V
    .locals 4
    .param p1, "res"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .param p2, "depth"    # I
    .param p3, "ms"    # Lorg/apache/jackrabbit/webdav/MultiStatus;

    .prologue
    .line 167
    iget-object v2, p0, Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport;->propertyElements:Ljava/util/Iterator;

    invoke-direct {p0, p1, v2}, Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport;->getResponse(Lorg/apache/jackrabbit/webdav/DavResource;Ljava/util/Iterator;)Lorg/apache/jackrabbit/webdav/MultiStatusResponse;

    move-result-object v1

    .line 168
    .local v1, "response":Lorg/apache/jackrabbit/webdav/MultiStatusResponse;
    invoke-virtual {p3, v1}, Lorg/apache/jackrabbit/webdav/MultiStatus;->addResponse(Lorg/apache/jackrabbit/webdav/MultiStatusResponse;)V

    .line 169
    if-lez p2, :cond_0

    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/DavResource;->isCollection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/DavResource;->getMembers()Lorg/apache/jackrabbit/webdav/DavResourceIterator;

    move-result-object v0

    .line 171
    .local v0, "it":Lorg/apache/jackrabbit/webdav/DavResourceIterator;
    :goto_0
    invoke-interface {v0}, Lorg/apache/jackrabbit/webdav/DavResourceIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    invoke-interface {v0}, Lorg/apache/jackrabbit/webdav/DavResourceIterator;->nextResource()Lorg/apache/jackrabbit/webdav/DavResource;

    move-result-object v2

    add-int/lit8 v3, p2, -0x1

    invoke-direct {p0, v2, v3, p3}, Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport;->addResponses(Lorg/apache/jackrabbit/webdav/DavResource;ILorg/apache/jackrabbit/webdav/MultiStatus;)V

    goto :goto_0

    .line 175
    .end local v0    # "it":Lorg/apache/jackrabbit/webdav/DavResourceIterator;
    :cond_0
    return-void
.end method

.method private getMultiStatus()Lorg/apache/jackrabbit/webdav/MultiStatus;
    .locals 3

    .prologue
    .line 151
    new-instance v0, Lorg/apache/jackrabbit/webdav/MultiStatus;

    invoke-direct {v0}, Lorg/apache/jackrabbit/webdav/MultiStatus;-><init>()V

    .line 152
    .local v0, "ms":Lorg/apache/jackrabbit/webdav/MultiStatus;
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport;->resource:Lorg/apache/jackrabbit/webdav/DavResource;

    iget-object v2, p0, Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport;->info:Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;

    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->getDepth()I

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport;->addResponses(Lorg/apache/jackrabbit/webdav/DavResource;ILorg/apache/jackrabbit/webdav/MultiStatus;)V

    .line 153
    return-object v0
.end method

.method private getResponse(Lorg/apache/jackrabbit/webdav/DavResource;Ljava/util/Iterator;)Lorg/apache/jackrabbit/webdav/MultiStatusResponse;
    .locals 13
    .param p1, "res"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/jackrabbit/webdav/DavResource;",
            "Ljava/util/Iterator",
            "<",
            "Lorg/w3c/dom/Element;",
            ">;)",
            "Lorg/apache/jackrabbit/webdav/MultiStatusResponse;"
        }
    .end annotation

    .prologue
    .local p2, "propertyElements":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/w3c/dom/Element;>;"
    const/4 v5, 0x0

    .line 193
    new-instance v12, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;

    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/DavResource;->getHref()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0, v5}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .local v12, "resp":Lorg/apache/jackrabbit/webdav/MultiStatusResponse;
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 195
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    .line 197
    .local v11, "propertyElem":Lorg/w3c/dom/Element;
    const-string v0, "name"

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 198
    .local v6, "nameAttr":Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v0, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    const-string v0, "namespace"

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 205
    .local v8, "namespaceAttr":Ljava/lang/String;
    if-eqz v8, :cond_1

    invoke-static {v8}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getNamespace(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v7

    .line 207
    .local v7, "namespace":Lorg/apache/jackrabbit/webdav/xml/Namespace;
    :goto_1
    invoke-static {v6, v7}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v10

    .line 208
    .local v10, "propName":Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    invoke-interface {p1, v10}, Lorg/apache/jackrabbit/webdav/DavResource;->getProperty(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Lorg/apache/jackrabbit/webdav/property/DavProperty;

    move-result-object v9

    .line 209
    .local v9, "p":Lorg/apache/jackrabbit/webdav/property/DavProperty;, "Lorg/apache/jackrabbit/webdav/property/DavProperty<*>;"
    if-eqz v9, :cond_3

    .line 210
    instance-of v0, v9, Lorg/apache/jackrabbit/webdav/property/HrefProperty;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lorg/apache/jackrabbit/webdav/version/DeltaVResource;

    if-eqz v0, :cond_2

    .line 211
    const-string v0, "property"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v11, v0, v1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/xml/ElementIterator;

    move-result-object v4

    .line 212
    .local v4, "it":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    new-instance v0, Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport$ExpandProperty;

    move-object v2, p1

    check-cast v2, Lorg/apache/jackrabbit/webdav/version/DeltaVResource;

    move-object v3, v9

    check-cast v3, Lorg/apache/jackrabbit/webdav/property/HrefProperty;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport$ExpandProperty;-><init>(Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport;Lorg/apache/jackrabbit/webdav/version/DeltaVResource;Lorg/apache/jackrabbit/webdav/property/HrefProperty;Lorg/apache/jackrabbit/webdav/xml/ElementIterator;Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport$1;)V

    invoke-virtual {v12, v0}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->add(Lorg/apache/jackrabbit/webdav/property/DavProperty;)V

    goto :goto_0

    .line 205
    .end local v4    # "it":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    .end local v7    # "namespace":Lorg/apache/jackrabbit/webdav/xml/Namespace;
    .end local v9    # "p":Lorg/apache/jackrabbit/webdav/property/DavProperty;, "Lorg/apache/jackrabbit/webdav/property/DavProperty<*>;"
    .end local v10    # "propName":Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    :cond_1
    sget-object v7, Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    goto :goto_1

    .line 214
    .restart local v7    # "namespace":Lorg/apache/jackrabbit/webdav/xml/Namespace;
    .restart local v9    # "p":Lorg/apache/jackrabbit/webdav/property/DavProperty;, "Lorg/apache/jackrabbit/webdav/property/DavProperty<*>;"
    .restart local v10    # "propName":Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    :cond_2
    invoke-virtual {v12, v9}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->add(Lorg/apache/jackrabbit/webdav/property/DavProperty;)V

    goto :goto_0

    .line 217
    :cond_3
    const/16 v0, 0x194

    invoke-virtual {v12, v10, v0}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->add(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;I)V

    goto :goto_0

    .line 220
    .end local v6    # "nameAttr":Ljava/lang/String;
    .end local v7    # "namespace":Lorg/apache/jackrabbit/webdav/xml/Namespace;
    .end local v8    # "namespaceAttr":Ljava/lang/String;
    .end local v9    # "p":Lorg/apache/jackrabbit/webdav/property/DavProperty;, "Lorg/apache/jackrabbit/webdav/property/DavProperty<*>;"
    .end local v10    # "propName":Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    .end local v11    # "propertyElem":Lorg/w3c/dom/Element;
    :cond_4
    return-object v12
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
    const/16 v2, 0x190

    .line 121
    if-nez p1, :cond_0

    .line 122
    new-instance v0, Lorg/apache/jackrabbit/webdav/DavException;

    const-string v1, "The report info specified must not be null."

    invoke-direct {v0, v2, v1}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport;->getType()Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->isRequestedReportType(Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    new-instance v0, Lorg/apache/jackrabbit/webdav/DavException;

    const-string v1, "DAV:expand-property element expected."

    invoke-direct {v0, v2, v1}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 127
    :cond_1
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport;->info:Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;

    .line 128
    const-string v0, "property"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {p1, v0, v1}, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->getContentElements(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport;->propertyElements:Ljava/util/Iterator;

    .line 129
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
    .line 107
    if-nez p1, :cond_0

    .line 108
    new-instance v0, Lorg/apache/jackrabbit/webdav/DavException;

    const/16 v1, 0x190

    const-string v2, "The resource specified must not be null."

    invoke-direct {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport;->resource:Lorg/apache/jackrabbit/webdav/DavResource;

    .line 111
    return-void
.end method


# virtual methods
.method public getType()Lorg/apache/jackrabbit/webdav/version/report/ReportType;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->EXPAND_PROPERTY:Lorg/apache/jackrabbit/webdav/version/report/ReportType;

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
    .line 96
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport;->setResource(Lorg/apache/jackrabbit/webdav/DavResource;)V

    .line 97
    invoke-direct {p0, p2}, Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport;->setInfo(Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;)V

    .line 98
    return-void
.end method

.method public isMultiStatusReport()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 1
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 140
    invoke-direct {p0}, Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport;->getMultiStatus()Lorg/apache/jackrabbit/webdav/MultiStatus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/jackrabbit/webdav/MultiStatus;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method
