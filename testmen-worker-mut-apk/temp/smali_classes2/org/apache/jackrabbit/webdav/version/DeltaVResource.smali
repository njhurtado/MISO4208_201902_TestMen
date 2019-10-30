.class public interface abstract Lorg/apache/jackrabbit/webdav/version/DeltaVResource;
.super Ljava/lang/Object;
.source "DeltaVResource.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/DavResource;


# static fields
.field public static final METHODS:Ljava/lang/String; = "REPORT"

.field public static final METHODS_INCL_MKWORKSPACE:Ljava/lang/String; = "REPORT, MKWORKSPACE"


# virtual methods
.method public abstract addWorkspace(Lorg/apache/jackrabbit/webdav/DavResource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract getOptionResponse(Lorg/apache/jackrabbit/webdav/version/OptionsInfo;)Lorg/apache/jackrabbit/webdav/version/OptionsResponse;
.end method

.method public abstract getReferenceResources(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)[Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract getReport(Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;)Lorg/apache/jackrabbit/webdav/version/report/Report;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method
