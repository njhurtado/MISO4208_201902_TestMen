.class final Lcom/owncloud/android/lib/common/UserInfo$$Parcelable$1;
.super Ljava/lang/Object;
.source "UserInfo$$Parcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/owncloud/android/lib/common/UserInfo$$Parcelable;
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
        "Lcom/owncloud/android/lib/common/UserInfo$$Parcelable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/owncloud/android/lib/common/UserInfo$$Parcelable;
    .locals 2
    .param p1, "parcel$$2"    # Landroid/os/Parcel;

    .prologue
    .line 27
    new-instance v0, Lcom/owncloud/android/lib/common/UserInfo$$Parcelable;

    new-instance v1, Lorg/parceler/IdentityCollection;

    invoke-direct {v1}, Lorg/parceler/IdentityCollection;-><init>()V

    invoke-static {p1, v1}, Lcom/owncloud/android/lib/common/UserInfo$$Parcelable;->read(Landroid/os/Parcel;Lorg/parceler/IdentityCollection;)Lcom/owncloud/android/lib/common/UserInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/owncloud/android/lib/common/UserInfo$$Parcelable;-><init>(Lcom/owncloud/android/lib/common/UserInfo;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/owncloud/android/lib/common/UserInfo$$Parcelable$1;->createFromParcel(Landroid/os/Parcel;)Lcom/owncloud/android/lib/common/UserInfo$$Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/owncloud/android/lib/common/UserInfo$$Parcelable;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 32
    new-array v0, p1, [Lcom/owncloud/android/lib/common/UserInfo$$Parcelable;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/owncloud/android/lib/common/UserInfo$$Parcelable$1;->newArray(I)[Lcom/owncloud/android/lib/common/UserInfo$$Parcelable;

    move-result-object v0

    return-object v0
.end method
