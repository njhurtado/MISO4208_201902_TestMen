.class public abstract Lorg/apache/jackrabbit/webdav/security/report/AbstractSecurityReport;
.super Ljava/lang/Object;
.source "AbstractSecurityReport.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/version/report/Report;


# instance fields
.field protected responses:[Lorg/apache/jackrabbit/webdav/MultiStatusResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 57
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 58
    :cond_0
    new-instance v0, Lorg/apache/jackrabbit/webdav/DavException;

    const-string v1, "Unable to run report: WebDAV Resource and ReportInfo must not be null."

    invoke-direct {v0, v3, v1}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/security/report/AbstractSecurityReport;->getType()Lorg/apache/jackrabbit/webdav/version/report/ReportType;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/jackrabbit/webdav/version/report/ReportType;->isRequestedReportType(Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 61
    new-instance v0, Lorg/apache/jackrabbit/webdav/DavException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected report type: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/security/report/AbstractSecurityReport;->getType()Lorg/apache/jackrabbit/webdav/version/report/ReportType;

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

    .line 63
    :cond_2
    invoke-virtual {p2}, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;->getDepth()I

    move-result v0

    if-lez v0, :cond_3

    .line 64
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

    .line 66
    :cond_3
    return-void
.end method

.method public isMultiStatusReport()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 6
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 73
    new-instance v3, Lorg/apache/jackrabbit/webdav/MultiStatus;

    invoke-direct {v3}, Lorg/apache/jackrabbit/webdav/MultiStatus;-><init>()V

    .line 74
    .local v3, "ms":Lorg/apache/jackrabbit/webdav/MultiStatus;
    iget-object v5, p0, Lorg/apache/jackrabbit/webdav/security/report/AbstractSecurityReport;->responses:[Lorg/apache/jackrabbit/webdav/MultiStatusResponse;

    if-eqz v5, :cond_0

    .line 75
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/security/report/AbstractSecurityReport;->responses:[Lorg/apache/jackrabbit/webdav/MultiStatusResponse;

    .local v0, "arr$":[Lorg/apache/jackrabbit/webdav/MultiStatusResponse;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 76
    .local v4, "response":Lorg/apache/jackrabbit/webdav/MultiStatusResponse;
    invoke-virtual {v3, v4}, Lorg/apache/jackrabbit/webdav/MultiStatus;->addResponse(Lorg/apache/jackrabbit/webdav/MultiStatusResponse;)V

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v0    # "arr$":[Lorg/apache/jackrabbit/webdav/MultiStatusResponse;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "response":Lorg/apache/jackrabbit/webdav/MultiStatusResponse;
    :cond_0
    invoke-virtual {v3, p1}, Lorg/apache/jackrabbit/webdav/MultiStatus;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v5

    return-object v5
.end method
