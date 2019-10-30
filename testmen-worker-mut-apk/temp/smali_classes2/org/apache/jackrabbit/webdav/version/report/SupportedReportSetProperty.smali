.class public Lorg/apache/jackrabbit/webdav/version/report/SupportedReportSetProperty;
.super Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;
.source "SupportedReportSetProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty",
        "<",
        "Ljava/util/Set",
        "<",
        "Lorg/apache/jackrabbit/webdav/version/report/ReportType;",
        ">;>;"
    }
.end annotation


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final reportTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/apache/jackrabbit/webdav/version/report/ReportType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lorg/apache/jackrabbit/webdav/version/report/SupportedReportSetProperty;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/report/SupportedReportSetProperty;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->SUPPORTED_REPORT_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Z)V

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/version/report/SupportedReportSetProperty;->reportTypes:Ljava/util/Set;

    .line 52
    return-void
.end method

.method public constructor <init>([Lorg/apache/jackrabbit/webdav/version/report/ReportType;)V
    .locals 6
    .param p1, "reportTypes"    # [Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    .prologue
    .line 60
    sget-object v4, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->SUPPORTED_REPORT_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Z)V

    .line 45
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lorg/apache/jackrabbit/webdav/version/report/SupportedReportSetProperty;->reportTypes:Ljava/util/Set;

    .line 61
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/jackrabbit/webdav/version/report/ReportType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 62
    .local v3, "reportType":Lorg/apache/jackrabbit/webdav/version/report/ReportType;
    invoke-virtual {p0, v3}, Lorg/apache/jackrabbit/webdav/version/report/SupportedReportSetProperty;->addReportType(Lorg/apache/jackrabbit/webdav/version/report/ReportType;)V

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    .end local v3    # "reportType":Lorg/apache/jackrabbit/webdav/version/report/ReportType;
    :cond_0
    return-void
.end method


# virtual methods
.method public addReportType(Lorg/apache/jackrabbit/webdav/version/report/ReportType;)V
    .locals 1
    .param p1, "reportType"    # Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/version/report/SupportedReportSetProperty;->reportTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/version/report/SupportedReportSetProperty;->getValue()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/jackrabbit/webdav/version/report/ReportType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/version/report/SupportedReportSetProperty;->reportTypes:Ljava/util/Set;

    return-object v0
.end method

.method public isSupportedReport(Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;)Z
    .locals 3
    .param p1, "reqInfo"    # Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;

    .prologue
    .line 83
    iget-object v2, p0, Lorg/apache/jackrabbit/webdav/version/report/SupportedReportSetProperty;->reportTypes:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    .line 84
    .local v1, "reportType":Lorg/apache/jackrabbit/webdav/version/report/ReportType;
    invoke-virtual {v1, p1}, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->isRequestedReportType(Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    const/4 v2, 0x1

    .line 88
    .end local v1    # "reportType":Lorg/apache/jackrabbit/webdav/version/report/ReportType;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 7
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 110
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/version/report/SupportedReportSetProperty;->getName()Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 111
    .local v0, "elem":Lorg/w3c/dom/Element;
    iget-object v5, p0, Lorg/apache/jackrabbit/webdav/version/report/SupportedReportSetProperty;->reportTypes:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    .line 112
    .local v3, "rt":Lorg/apache/jackrabbit/webdav/version/report/ReportType;
    const-string v5, "supported-report"

    sget-object v6, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v5, v6}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 113
    .local v4, "sr":Lorg/w3c/dom/Element;
    const-string v5, "report"

    sget-object v6, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v4, v5, v6}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 114
    .local v2, "r":Lorg/w3c/dom/Element;
    invoke-virtual {v3, p1}, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 116
    .end local v2    # "r":Lorg/w3c/dom/Element;
    .end local v3    # "rt":Lorg/apache/jackrabbit/webdav/version/report/ReportType;
    .end local v4    # "sr":Lorg/w3c/dom/Element;
    :cond_0
    return-object v0
.end method
