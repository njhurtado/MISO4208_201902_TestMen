.class public interface abstract Lorg/apache/jackrabbit/webdav/security/AclResource;
.super Ljava/lang/Object;
.source "AclResource.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/DavResource;


# static fields
.field public static final METHODS:Ljava/lang/String; = "ACL, REPORT"


# virtual methods
.method public abstract alterAcl(Lorg/apache/jackrabbit/webdav/security/AclProperty;)V
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
