.class public Lcom/owncloud/android/lib/common/Quota$$Parcelable;
.super Ljava/lang/Object;
.source "Quota$$Parcelable.java"

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
        "Lcom/owncloud/android/lib/common/Quota;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/owncloud/android/lib/common/Quota$$Parcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private quota$$0:Lcom/owncloud/android/lib/common/Quota;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/owncloud/android/lib/common/Quota$$Parcelable$1;

    invoke-direct {v0}, Lcom/owncloud/android/lib/common/Quota$$Parcelable$1;-><init>()V

    sput-object v0, Lcom/owncloud/android/lib/common/Quota$$Parcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/owncloud/android/lib/common/Quota;)V
    .locals 0
    .param p1, "quota$$2"    # Lcom/owncloud/android/lib/common/Quota;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/owncloud/android/lib/common/Quota$$Parcelable;->quota$$0:Lcom/owncloud/android/lib/common/Quota;

    .line 40
    return-void
.end method

.method public static read(Landroid/os/Parcel;Lorg/parceler/IdentityCollection;)Lcom/owncloud/android/lib/common/Quota;
    .locals 6
    .param p0, "parcel$$3"    # Landroid/os/Parcel;
    .param p1, "identityMap$$1"    # Lorg/parceler/IdentityCollection;

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    .local v0, "identity$$1":I
    invoke-virtual {p1, v0}, Lorg/parceler/IdentityCollection;->containsKey(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 74
    invoke-virtual {p1, v0}, Lorg/parceler/IdentityCollection;->isReserved(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    new-instance v4, Lorg/parceler/ParcelerRuntimeException;

    const-string v5, "An instance loop was detected whild building Parcelable and deseralization cannot continue.  This error is most likely due to using @ParcelConstructor or @ParcelFactory."

    invoke-direct {v4, v5}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 77
    :cond_0
    invoke-virtual {p1, v0}, Lorg/parceler/IdentityCollection;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/owncloud/android/lib/common/Quota;

    .line 90
    :goto_0
    return-object v4

    .line 80
    :cond_1
    invoke-virtual {p1}, Lorg/parceler/IdentityCollection;->reserve()I

    move-result v3

    .line 81
    .local v3, "reservation$$0":I
    new-instance v2, Lcom/owncloud/android/lib/common/Quota;

    invoke-direct {v2}, Lcom/owncloud/android/lib/common/Quota;-><init>()V

    .line 82
    .local v2, "quota$$4":Lcom/owncloud/android/lib/common/Quota;
    invoke-virtual {p1, v3, v2}, Lorg/parceler/IdentityCollection;->put(ILjava/lang/Object;)V

    .line 83
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/owncloud/android/lib/common/Quota;->total:J

    .line 84
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/owncloud/android/lib/common/Quota;->quota:J

    .line 85
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/owncloud/android/lib/common/Quota;->used:J

    .line 86
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/owncloud/android/lib/common/Quota;->free:J

    .line 87
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, v2, Lcom/owncloud/android/lib/common/Quota;->relative:D

    .line 88
    move-object v1, v2

    .line 89
    .local v1, "quota$$3":Lcom/owncloud/android/lib/common/Quota;
    invoke-virtual {p1, v0, v1}, Lorg/parceler/IdentityCollection;->put(ILjava/lang/Object;)V

    move-object v4, v1

    .line 90
    goto :goto_0
.end method

.method public static write(Lcom/owncloud/android/lib/common/Quota;Landroid/os/Parcel;ILorg/parceler/IdentityCollection;)V
    .locals 4
    .param p0, "quota$$1"    # Lcom/owncloud/android/lib/common/Quota;
    .param p1, "parcel$$1"    # Landroid/os/Parcel;
    .param p2, "flags$$0"    # I
    .param p3, "identityMap$$0"    # Lorg/parceler/IdentityCollection;

    .prologue
    .line 48
    invoke-virtual {p3, p0}, Lorg/parceler/IdentityCollection;->getKey(Ljava/lang/Object;)I

    move-result v0

    .line 49
    .local v0, "identity$$0":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-virtual {p3, p0}, Lorg/parceler/IdentityCollection;->put(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-wide v2, p0, Lcom/owncloud/android/lib/common/Quota;->total:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    iget-wide v2, p0, Lcom/owncloud/android/lib/common/Quota;->quota:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 55
    iget-wide v2, p0, Lcom/owncloud/android/lib/common/Quota;->used:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 56
    iget-wide v2, p0, Lcom/owncloud/android/lib/common/Quota;->free:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 57
    iget-wide v2, p0, Lcom/owncloud/android/lib/common/Quota;->relative:D

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/owncloud/android/lib/common/Quota;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/owncloud/android/lib/common/Quota$$Parcelable;->quota$$0:Lcom/owncloud/android/lib/common/Quota;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/owncloud/android/lib/common/Quota$$Parcelable;->getParcel()Lcom/owncloud/android/lib/common/Quota;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel$$0"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/owncloud/android/lib/common/Quota$$Parcelable;->quota$$0:Lcom/owncloud/android/lib/common/Quota;

    new-instance v1, Lorg/parceler/IdentityCollection;

    invoke-direct {v1}, Lorg/parceler/IdentityCollection;-><init>()V

    invoke-static {v0, p1, p2, v1}, Lcom/owncloud/android/lib/common/Quota$$Parcelable;->write(Lcom/owncloud/android/lib/common/Quota;Landroid/os/Parcel;ILorg/parceler/IdentityCollection;)V

    .line 45
    return-void
.end method
