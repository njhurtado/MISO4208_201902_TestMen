.class Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;
.super Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;
.source "RenameRemoteFileOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalMoveMethod"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation;


# direct methods
.method public constructor <init>(Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "dest"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;->this$0:Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation;

    .line 143
    invoke-direct {p0, p2}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;-><init>(Ljava/lang/String;)V

    .line 144
    new-instance v0, Lorg/apache/commons/httpclient/Header;

    const-string v1, "Destination"

    invoke-direct {v0, v1, p3}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/owncloud/android/lib/resources/files/RenameRemoteFileOperation$LocalMoveMethod;->addRequestHeader(Lorg/apache/commons/httpclient/Header;)V

    .line 145
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    const-string v0, "MOVE"

    return-object v0
.end method

.method protected isSuccess(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 154
    const/16 v0, 0xc9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcc

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
