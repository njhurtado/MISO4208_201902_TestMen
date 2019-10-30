.class public interface abstract Lorg/apache/jackrabbit/webdav/version/report/Report;
.super Ljava/lang/Object;
.source "Report.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;


# virtual methods
.method public abstract getType()Lorg/apache/jackrabbit/webdav/version/report/ReportType;
.end method

.method public abstract init(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract isMultiStatusReport()Z
.end method
