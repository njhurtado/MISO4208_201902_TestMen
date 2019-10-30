.class final Lcom/owncloud/android/lib/resources/files/RemoteFile$1;
.super Ljava/lang/Object;
.source "RemoteFile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/owncloud/android/lib/resources/files/RemoteFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/owncloud/android/lib/resources/files/RemoteFile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/owncloud/android/lib/resources/files/RemoteFile;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 211
    new-instance v0, Lcom/owncloud/android/lib/resources/files/RemoteFile;

    invoke-direct {v0, p1}, Lcom/owncloud/android/lib/resources/files/RemoteFile;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Lcom/owncloud/android/lib/resources/files/RemoteFile$1;->createFromParcel(Landroid/os/Parcel;)Lcom/owncloud/android/lib/resources/files/RemoteFile;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/owncloud/android/lib/resources/files/RemoteFile;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 216
    new-array v0, p1, [Lcom/owncloud/android/lib/resources/files/RemoteFile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Lcom/owncloud/android/lib/resources/files/RemoteFile$1;->newArray(I)[Lcom/owncloud/android/lib/resources/files/RemoteFile;

    move-result-object v0

    return-object v0
.end method
