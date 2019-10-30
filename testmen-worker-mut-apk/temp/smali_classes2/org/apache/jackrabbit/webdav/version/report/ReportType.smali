.class public Lorg/apache/jackrabbit/webdav/version/report/ReportType;
.super Ljava/lang/Object;
.source "ReportType.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;
.implements Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;


# static fields
.field public static final EXPAND_PROPERTY:Lorg/apache/jackrabbit/webdav/version/report/ReportType;

.field public static final LOCATE_BY_HISTORY:Lorg/apache/jackrabbit/webdav/version/report/ReportType;

.field public static final VERSION_TREE:Lorg/apache/jackrabbit/webdav/version/report/ReportType;

.field private static log:Lorg/slf4j/Logger;

.field private static final types:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/jackrabbit/webdav/version/report/ReportType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final key:Ljava/lang/String;

.field private final localName:Ljava/lang/String;

.field private final namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

.field private final reportClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/jackrabbit/webdav/version/report/Report;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const-class v0, Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->log:Lorg/slf4j/Logger;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->types:Ljava/util/HashMap;

    .line 42
    const-string v0, "version-tree"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    const-class v2, Lorg/apache/jackrabbit/webdav/version/report/VersionTreeReport;

    invoke-static {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->register(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/Class;)Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->VERSION_TREE:Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    .line 43
    const-string v0, "expand-property"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    const-class v2, Lorg/apache/jackrabbit/webdav/version/report/ExpandPropertyReport;

    invoke-static {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->register(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/Class;)Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->EXPAND_PROPERTY:Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    .line 44
    const-string v0, "locate-by-history"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    const-class v2, Lorg/apache/jackrabbit/webdav/version/report/LocateByHistoryReport;

    invoke-static {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->register(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/Class;)Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->LOCATE_BY_HISTORY:Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/jackrabbit/webdav/xml/Namespace;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/jackrabbit/webdav/version/report/Report;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p4, "reportClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/jackrabbit/webdav/version/report/Report;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->localName:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .line 59
    iput-object p3, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->key:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->reportClass:Ljava/lang/Class;

    .line 61
    return-void
.end method

.method public static getType(Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;)Lorg/apache/jackrabbit/webdav/version/report/ReportType;
    .locals 4
    .param p0, "reportInfo"    # Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;

    .prologue
    .line 180
    if-nez p0, :cond_0

    .line 181
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ReportInfo must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    :cond_0
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->getReportName()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->types:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    sget-object v1, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->types:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    return-object v1

    .line 187
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The request report \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' has not been registered yet."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static register(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/Class;)Lorg/apache/jackrabbit/webdav/version/report/ReportType;
    .locals 7
    .param p0, "localName"    # Ljava/lang/String;
    .param p1, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/jackrabbit/webdav/xml/Namespace;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/jackrabbit/webdav/version/report/Report;",
            ">;)",
            "Lorg/apache/jackrabbit/webdav/version/report/ReportType;"
        }
    .end annotation

    .prologue
    .line 147
    .local p2, "reportClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/jackrabbit/webdav/version/report/Report;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 148
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "A ReportType cannot be registered with a null name, namespace or report class"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 150
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getExpandedName(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "key":Ljava/lang/String;
    sget-object v4, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->types:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 152
    sget-object v4, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->types:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    .line 167
    :goto_0
    return-object v4

    .line 155
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 156
    .local v2, "report":Ljava/lang/Object;
    instance-of v4, v2, Lorg/apache/jackrabbit/webdav/version/report/Report;

    if-nez v4, :cond_3

    .line 157
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to register Report class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not implement the Report interface."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 159
    .end local v2    # "report":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while validating Report class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 161
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while validating Report class.: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 165
    .end local v0    # "e":Ljava/lang/InstantiationException;
    .restart local v2    # "report":Ljava/lang/Object;
    :cond_3
    new-instance v3, Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    invoke-direct {v3, p0, p1, v1, p2}, Lorg/apache/jackrabbit/webdav/version/report/ReportType;-><init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;Ljava/lang/Class;)V

    .line 166
    .local v3, "type":Lorg/apache/jackrabbit/webdav/version/report/ReportType;
    sget-object v4, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->types:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v3

    .line 167
    goto :goto_0
.end method


# virtual methods
.method public createReport(Lorg/apache/jackrabbit/webdav/version/DeltaVResource;Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;)Lorg/apache/jackrabbit/webdav/version/report/Report;
    .locals 6
    .param p1, "resource"    # Lorg/apache/jackrabbit/webdav/version/DeltaVResource;
    .param p2, "info"    # Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x1f4

    .line 71
    :try_start_0
    iget-object v2, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->reportClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/jackrabbit/webdav/version/report/Report;

    .line 72
    .local v1, "report":Lorg/apache/jackrabbit/webdav/version/report/Report;
    invoke-interface {v1, p1, p2}, Lorg/apache/jackrabbit/webdav/version/report/Report;->init(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    return-object v1

    .line 74
    .end local v1    # "report":Lorg/apache/jackrabbit/webdav/version/report/Report;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Lorg/apache/jackrabbit/webdav/DavException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create new report ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->reportClass:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") from class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 77
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v2, Lorg/apache/jackrabbit/webdav/DavException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create new report ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->reportClass:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") from class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->localName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Lorg/apache/jackrabbit/webdav/xml/Namespace;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    return-object v0
.end method

.method public getReportName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->key:Ljava/lang/String;

    return-object v0
.end method

.method public isRequestedReportType(Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;)Z
    .locals 2
    .param p1, "reqInfo"    # Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;

    .prologue
    .line 103
    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->getReportName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->getReportName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 2
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->localName:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v0, v1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method
