.class public Lcom/owncloud/android/lib/common/ExternalLink$$Parcelable;
.super Ljava/lang/Object;
.source "ExternalLink$$Parcelable.java"

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
        "Lcom/owncloud/android/lib/common/ExternalLink;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/owncloud/android/lib/common/ExternalLink$$Parcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private externalLink$$0:Lcom/owncloud/android/lib/common/ExternalLink;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/owncloud/android/lib/common/ExternalLink$$Parcelable$1;

    invoke-direct {v0}, Lcom/owncloud/android/lib/common/ExternalLink$$Parcelable$1;-><init>()V

    sput-object v0, Lcom/owncloud/android/lib/common/ExternalLink$$Parcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/owncloud/android/lib/common/ExternalLink;)V
    .locals 0
    .param p1, "externalLink$$2"    # Lcom/owncloud/android/lib/common/ExternalLink;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/owncloud/android/lib/common/ExternalLink$$Parcelable;->externalLink$$0:Lcom/owncloud/android/lib/common/ExternalLink;

    .line 40
    return-void
.end method

.method public static read(Landroid/os/Parcel;Lorg/parceler/IdentityCollection;)Lcom/owncloud/android/lib/common/ExternalLink;
    .locals 9
    .param p0, "parcel$$3"    # Landroid/os/Parcel;
    .param p1, "identityMap$$1"    # Lorg/parceler/IdentityCollection;

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 80
    .local v3, "identity$$1":I
    invoke-virtual {p1, v3}, Lorg/parceler/IdentityCollection;->containsKey(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 81
    invoke-virtual {p1, v3}, Lorg/parceler/IdentityCollection;->isReserved(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 82
    new-instance v7, Lorg/parceler/ParcelerRuntimeException;

    const-string v8, "An instance loop was detected whild building Parcelable and deseralization cannot continue.  This error is most likely due to using @ParcelConstructor or @ParcelFactory."

    invoke-direct {v7, v8}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 84
    :cond_0
    invoke-virtual {p1, v3}, Lorg/parceler/IdentityCollection;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/owncloud/android/lib/common/ExternalLink;

    .line 106
    :goto_0
    return-object v7

    .line 87
    :cond_1
    invoke-virtual {p1}, Lorg/parceler/IdentityCollection;->reserve()I

    move-result v6

    .line 88
    .local v6, "reservation$$0":I
    new-instance v1, Lcom/owncloud/android/lib/common/ExternalLink;

    invoke-direct {v1}, Lcom/owncloud/android/lib/common/ExternalLink;-><init>()V

    .line 89
    .local v1, "externalLink$$4":Lcom/owncloud/android/lib/common/ExternalLink;
    invoke-virtual {p1, v6, v1}, Lorg/parceler/IdentityCollection;->put(ILjava/lang/Object;)V

    .line 90
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/owncloud/android/lib/common/ExternalLink;->name:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/owncloud/android/lib/common/ExternalLink;->language:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 94
    .local v4, "int$$0":I
    if-gez v4, :cond_2

    .line 95
    const/4 v5, 0x0

    .line 99
    .local v5, "integer$$0":Ljava/lang/Integer;
    :goto_1
    iput-object v5, v1, Lcom/owncloud/android/lib/common/ExternalLink;->id:Ljava/lang/Integer;

    .line 100
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/owncloud/android/lib/common/ExternalLink;->iconUrl:Ljava/lang/String;

    .line 101
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "externalLinkType$$1":Ljava/lang/String;
    if-nez v2, :cond_3

    const/4 v7, 0x0

    :goto_2
    iput-object v7, v1, Lcom/owncloud/android/lib/common/ExternalLink;->type:Lcom/owncloud/android/lib/common/ExternalLinkType;

    .line 103
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/owncloud/android/lib/common/ExternalLink;->url:Ljava/lang/String;

    .line 104
    move-object v0, v1

    .line 105
    .local v0, "externalLink$$3":Lcom/owncloud/android/lib/common/ExternalLink;
    invoke-virtual {p1, v3, v0}, Lorg/parceler/IdentityCollection;->put(ILjava/lang/Object;)V

    move-object v7, v0

    .line 106
    goto :goto_0

    .line 97
    .end local v0    # "externalLink$$3":Lcom/owncloud/android/lib/common/ExternalLink;
    .end local v2    # "externalLinkType$$1":Ljava/lang/String;
    .end local v5    # "integer$$0":Ljava/lang/Integer;
    :cond_2
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .restart local v5    # "integer$$0":Ljava/lang/Integer;
    goto :goto_1

    .line 102
    .restart local v2    # "externalLinkType$$1":Ljava/lang/String;
    :cond_3
    const-class v7, Lcom/owncloud/android/lib/common/ExternalLinkType;

    invoke-static {v7, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v7

    check-cast v7, Lcom/owncloud/android/lib/common/ExternalLinkType;

    goto :goto_2
.end method

.method public static write(Lcom/owncloud/android/lib/common/ExternalLink;Landroid/os/Parcel;ILorg/parceler/IdentityCollection;)V
    .locals 4
    .param p0, "externalLink$$1"    # Lcom/owncloud/android/lib/common/ExternalLink;
    .param p1, "parcel$$1"    # Landroid/os/Parcel;
    .param p2, "flags$$0"    # I
    .param p3, "identityMap$$0"    # Lorg/parceler/IdentityCollection;

    .prologue
    const/4 v3, -0x1

    .line 48
    invoke-virtual {p3, p0}, Lorg/parceler/IdentityCollection;->getKey(Ljava/lang/Object;)I

    move-result v1

    .line 49
    .local v1, "identity$$0":I
    if-eq v1, v3, :cond_0

    .line 50
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-virtual {p3, p0}, Lorg/parceler/IdentityCollection;->put(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-object v2, p0, Lcom/owncloud/android/lib/common/ExternalLink;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lcom/owncloud/android/lib/common/ExternalLink;->language:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lcom/owncloud/android/lib/common/ExternalLink;->id:Ljava/lang/Integer;

    if-nez v2, :cond_1

    .line 56
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    :goto_1
    iget-object v2, p0, Lcom/owncloud/android/lib/common/ExternalLink;->iconUrl:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/owncloud/android/lib/common/ExternalLink;->type:Lcom/owncloud/android/lib/common/ExternalLinkType;

    .line 63
    .local v0, "externalLinkType$$0":Lcom/owncloud/android/lib/common/ExternalLinkType;
    if-nez v0, :cond_2

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v2, p0, Lcom/owncloud/android/lib/common/ExternalLink;->url:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    .end local v0    # "externalLinkType$$0":Lcom/owncloud/android/lib/common/ExternalLinkType;
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object v2, p0, Lcom/owncloud/android/lib/common/ExternalLink;->id:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 63
    .restart local v0    # "externalLinkType$$0":Lcom/owncloud/android/lib/common/ExternalLinkType;
    :cond_2
    invoke-virtual {v0}, Lcom/owncloud/android/lib/common/ExternalLinkType;->name()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/owncloud/android/lib/common/ExternalLink;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/owncloud/android/lib/common/ExternalLink$$Parcelable;->externalLink$$0:Lcom/owncloud/android/lib/common/ExternalLink;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/owncloud/android/lib/common/ExternalLink$$Parcelable;->getParcel()Lcom/owncloud/android/lib/common/ExternalLink;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel$$0"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/owncloud/android/lib/common/ExternalLink$$Parcelable;->externalLink$$0:Lcom/owncloud/android/lib/common/ExternalLink;

    new-instance v1, Lorg/parceler/IdentityCollection;

    invoke-direct {v1}, Lorg/parceler/IdentityCollection;-><init>()V

    invoke-static {v0, p1, p2, v1}, Lcom/owncloud/android/lib/common/ExternalLink$$Parcelable;->write(Lcom/owncloud/android/lib/common/ExternalLink;Landroid/os/Parcel;ILorg/parceler/IdentityCollection;)V

    .line 45
    return-void
.end method
