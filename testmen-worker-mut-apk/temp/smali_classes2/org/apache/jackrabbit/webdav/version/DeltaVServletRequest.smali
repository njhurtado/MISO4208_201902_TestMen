.class public interface abstract Lorg/apache/jackrabbit/webdav/version/DeltaVServletRequest;
.super Ljava/lang/Object;
.source "DeltaVServletRequest.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/DavServletRequest;


# virtual methods
.method public abstract getLabel()Ljava/lang/String;
.end method

.method public abstract getLabelInfo()Lorg/apache/jackrabbit/webdav/version/LabelInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract getMergeInfo()Lorg/apache/jackrabbit/webdav/version/MergeInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract getOptionsInfo()Lorg/apache/jackrabbit/webdav/version/OptionsInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract getReportInfo()Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract getUpdateInfo()Lorg/apache/jackrabbit/webdav/version/UpdateInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method
