.class public Lcom/owncloud/android/lib/common/network/FileRequestEntity$WriteException;
.super Ljava/lang/Exception;
.source "FileRequestEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/owncloud/android/lib/common/network/FileRequestEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "WriteException"
.end annotation


# instance fields
.field mWrapped:Ljava/io/IOException;


# direct methods
.method constructor <init>(Ljava/io/IOException;)V
    .locals 0
    .param p1, "wrapped"    # Ljava/io/IOException;

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/owncloud/android/lib/common/network/FileRequestEntity$WriteException;->mWrapped:Ljava/io/IOException;

    .line 159
    return-void
.end method


# virtual methods
.method public getWrapped()Ljava/io/IOException;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/FileRequestEntity$WriteException;->mWrapped:Ljava/io/IOException;

    return-object v0
.end method
