.class public Lcom/owncloud/android/lib/common/UserInfo$$Parcelable;
.super Ljava/lang/Object;
.source "UserInfo$$Parcelable.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lorg/parceler/ParcelWrapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lorg/parceler/ParcelWrapper",
        "<",
        "Lcom/owncloud/android/lib/common/UserInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/owncloud/android/lib/common/UserInfo$$Parcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private userInfo$$0:Lcom/owncloud/android/lib/common/UserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/owncloud/android/lib/common/UserInfo$$Parcelable$1;

    invoke-direct {v0}, Lcom/owncloud/android/lib/common/UserInfo$$Parcelable$1;-><init>()V

    sput-object v0, Lcom/owncloud/android/lib/common/UserInfo$$Parcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/owncloud/android/lib/common/UserInfo;)V
    .locals 0
    .param p1, "userInfo$$2"    # Lcom/owncloud/android/lib/common/UserInfo;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/owncloud/android/lib/common/UserInfo$$Parcelable;->userInfo$$0:Lcom/owncloud/android/lib/common/UserInfo;

    .line 40
    return-void
.end method

.method public static read(Landroid/os/Parcel;Lorg/parceler/IdentityCollection;)Lcom/owncloud/android/lib/common/UserInfo;
    .locals 9
    .param p0, "parcel$$3"    # Landroid/os/Parcel;
    .param p1, "identityMap$$1"    # Lorg/parceler/IdentityCollection;

    .prologue
    const/4 v7, 0x1

    .line 81
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 82
    .local v1, "identity$$1":I
    invoke-virtual {p1, v1}, Lorg/parceler/IdentityCollection;->containsKey(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 83
    invoke-virtual {p1, v1}, Lorg/parceler/IdentityCollection;->isReserved(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 84
    new-instance v7, Lorg/parceler/ParcelerRuntimeException;

    const-string v8, "An instance loop was detected whild building Parcelable and deseralization cannot continue.  This error is most likely due to using @ParcelConstructor or @ParcelFactory."

    invoke-direct {v7, v8}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 86
    :cond_0
    invoke-virtual {p1, v1}, Lorg/parceler/IdentityCollection;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/owncloud/android/lib/common/UserInfo;

    .line 111
    :goto_0
    return-object v7

    .line 89
    :cond_1
    invoke-virtual {p1}, Lorg/parceler/IdentityCollection;->reserve()I

    move-result v4

    .line 90
    .local v4, "reservation$$0":I
    new-instance v6, Lcom/owncloud/android/lib/common/UserInfo;

    invoke-direct {v6}, Lcom/owncloud/android/lib/common/UserInfo;-><init>()V

    .line 91
    .local v6, "userInfo$$4":Lcom/owncloud/android/lib/common/UserInfo;
    invoke-virtual {p1, v4, v6}, Lorg/parceler/IdentityCollection;->put(ILjava/lang/Object;)V

    .line 92
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/owncloud/android/lib/common/UserInfo;->twitter:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/owncloud/android/lib/common/UserInfo;->address:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/owncloud/android/lib/common/UserInfo;->phone:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/owncloud/android/lib/common/UserInfo;->displayName:Ljava/lang/String;

    .line 96
    invoke-static {p0, p1}, Lcom/owncloud/android/lib/common/Quota$$Parcelable;->read(Landroid/os/Parcel;Lorg/parceler/IdentityCollection;)Lcom/owncloud/android/lib/common/Quota;

    move-result-object v3

    .line 97
    .local v3, "quota$$0":Lcom/owncloud/android/lib/common/Quota;
    iput-object v3, v6, Lcom/owncloud/android/lib/common/UserInfo;->quota:Lcom/owncloud/android/lib/common/Quota;

    .line 98
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/owncloud/android/lib/common/UserInfo;->id:Ljava/lang/String;

    .line 99
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/owncloud/android/lib/common/UserInfo;->webpage:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 102
    .local v2, "int$$0":I
    if-gez v2, :cond_2

    .line 103
    const/4 v0, 0x0

    .line 107
    .local v0, "boolean$$0":Ljava/lang/Boolean;
    :goto_1
    iput-object v0, v6, Lcom/owncloud/android/lib/common/UserInfo;->enabled:Ljava/lang/Boolean;

    .line 108
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/owncloud/android/lib/common/UserInfo;->email:Ljava/lang/String;

    .line 109
    move-object v5, v6

    .line 110
    .local v5, "userInfo$$3":Lcom/owncloud/android/lib/common/UserInfo;
    invoke-virtual {p1, v1, v5}, Lorg/parceler/IdentityCollection;->put(ILjava/lang/Object;)V

    move-object v7, v5

    .line 111
    goto :goto_0

    .line 105
    .end local v0    # "boolean$$0":Ljava/lang/Boolean;
    .end local v5    # "userInfo$$3":Lcom/owncloud/android/lib/common/UserInfo;
    :cond_2
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-ne v8, v7, :cond_3

    :goto_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .restart local v0    # "boolean$$0":Ljava/lang/Boolean;
    goto :goto_1

    .end local v0    # "boolean$$0":Ljava/lang/Boolean;
    :cond_3
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public static write(Lcom/owncloud/android/lib/common/UserInfo;Landroid/os/Parcel;ILorg/parceler/IdentityCollection;)V
    .locals 4
    .param p0, "userInfo$$1"    # Lcom/owncloud/android/lib/common/UserInfo;
    .param p1, "parcel$$1"    # Landroid/os/Parcel;
    .param p2, "flags$$0"    # I
    .param p3, "identityMap$$0"    # Lorg/parceler/IdentityCollection;

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 48
    invoke-virtual {p3, p0}, Lorg/parceler/IdentityCollection;->getKey(Ljava/lang/Object;)I

    move-result v0

    .line 49
    .local v0, "identity$$0":I
    if-eq v0, v3, :cond_0

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-virtual {p3, p0}, Lorg/parceler/IdentityCollection;->put(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-object v2, p0, Lcom/owncloud/android/lib/common/UserInfo;->twitter:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lcom/owncloud/android/lib/common/UserInfo;->address:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lcom/owncloud/android/lib/common/UserInfo;->phone:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v2, p0, Lcom/owncloud/android/lib/common/UserInfo;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v2, p0, Lcom/owncloud/android/lib/common/UserInfo;->quota:Lcom/owncloud/android/lib/common/Quota;

    invoke-static {v2, p1, p2, p3}, Lcom/owncloud/android/lib/common/Quota$$Parcelable;->write(Lcom/owncloud/android/lib/common/Quota;Landroid/os/Parcel;ILorg/parceler/IdentityCollection;)V

    .line 58
    iget-object v2, p0, Lcom/owncloud/android/lib/common/UserInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v2, p0, Lcom/owncloud/android/lib/common/UserInfo;->webpage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v2, p0, Lcom/owncloud/android/lib/common/UserInfo;->enabled:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    .line 61
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    :goto_1
    iget-object v1, p0, Lcom/owncloud/android/lib/common/UserInfo;->email:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-object v2, p0, Lcom/owncloud/android/lib/common/UserInfo;->enabled:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/owncloud/android/lib/common/UserInfo;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/owncloud/android/lib/common/UserInfo$$Parcelable;->userInfo$$0:Lcom/owncloud/android/lib/common/UserInfo;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/owncloud/android/lib/common/UserInfo$$Parcelable;->getParcel()Lcom/owncloud/android/lib/common/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel$$0"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/owncloud/android/lib/common/UserInfo$$Parcelable;->userInfo$$0:Lcom/owncloud/android/lib/common/UserInfo;

    new-instance v1, Lorg/parceler/IdentityCollection;

    invoke-direct {v1}, Lorg/parceler/IdentityCollection;-><init>()V

    invoke-static {v0, p1, p2, v1}, Lcom/owncloud/android/lib/common/UserInfo$$Parcelable;->write(Lcom/owncloud/android/lib/common/UserInfo;Landroid/os/Parcel;ILorg/parceler/IdentityCollection;)V

    .line 45
    return-void
.end method
