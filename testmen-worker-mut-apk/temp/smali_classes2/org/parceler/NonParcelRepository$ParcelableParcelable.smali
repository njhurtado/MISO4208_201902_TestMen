.class public final Lorg/parceler/NonParcelRepository$ParcelableParcelable;
.super Ljava/lang/Object;
.source "NonParcelRepository.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lorg/parceler/ParcelWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/parceler/NonParcelRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParcelableParcelable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/parceler/NonParcelRepository$ParcelableParcelable$ParcelableParcelableCreator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lorg/parceler/ParcelWrapper",
        "<",
        "Landroid/os/Parcelable;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lorg/parceler/NonParcelRepository$ParcelableParcelable$ParcelableParcelableCreator;


# instance fields
.field private parcelable:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1271
    new-instance v0, Lorg/parceler/NonParcelRepository$ParcelableParcelable$ParcelableParcelableCreator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/parceler/NonParcelRepository$ParcelableParcelable$ParcelableParcelableCreator;-><init>(Lorg/parceler/NonParcelRepository$1;)V

    sput-object v0, Lorg/parceler/NonParcelRepository$ParcelableParcelable;->CREATOR:Lorg/parceler/NonParcelRepository$ParcelableParcelable$ParcelableParcelableCreator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1249
    const-class v0, Lorg/parceler/NonParcelRepository$ParcelableParcelable;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lorg/parceler/NonParcelRepository$ParcelableParcelable;->parcelable:Landroid/os/Parcelable;

    .line 1250
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/parceler/NonParcelRepository$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lorg/parceler/NonParcelRepository$1;

    .prologue
    .line 1244
    invoke-direct {p0, p1}, Lorg/parceler/NonParcelRepository$ParcelableParcelable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "parcelable"    # Landroid/os/Parcelable;

    .prologue
    .line 1252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1253
    iput-object p1, p0, Lorg/parceler/NonParcelRepository$ParcelableParcelable;->parcelable:Landroid/os/Parcelable;

    .line 1254
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;Lorg/parceler/NonParcelRepository$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcelable;
    .param p2, "x1"    # Lorg/parceler/NonParcelRepository$1;

    .prologue
    .line 1244
    invoke-direct {p0, p1}, Lorg/parceler/NonParcelRepository$ParcelableParcelable;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1263
    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1268
    iget-object v0, p0, Lorg/parceler/NonParcelRepository$ParcelableParcelable;->parcelable:Landroid/os/Parcelable;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1244
    invoke-virtual {p0}, Lorg/parceler/NonParcelRepository$ParcelableParcelable;->getParcel()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1258
    iget-object v0, p0, Lorg/parceler/NonParcelRepository$ParcelableParcelable;->parcelable:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1259
    return-void
.end method
