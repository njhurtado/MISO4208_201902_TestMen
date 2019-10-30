.class public Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;
.super Lorg/apache/commons/httpclient/methods/PostMethod;
.source "HttpDeleteWithBody.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/methods/PostMethod;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "DELETE"

    return-object v0
.end method
