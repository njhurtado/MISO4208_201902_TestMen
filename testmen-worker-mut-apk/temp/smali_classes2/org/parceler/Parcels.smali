.class public final Lorg/parceler/Parcels;
.super Ljava/lang/Object;
.source "Parcels.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/parceler/Parcels$ParcelCodeRepository;,
        Lorg/parceler/Parcels$ParcelableFactoryReflectionProxy;,
        Lorg/parceler/Parcels$ParcelableFactory;
    }
.end annotation


# static fields
.field public static final IMPL_EXT:Ljava/lang/String; = "Parcelable"

.field private static final REPOSITORY:Lorg/parceler/Parcels$ParcelCodeRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lorg/parceler/Parcels$ParcelCodeRepository;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/parceler/Parcels$ParcelCodeRepository;-><init>(Lorg/parceler/Parcels$1;)V

    sput-object v0, Lorg/parceler/Parcels;->REPOSITORY:Lorg/parceler/Parcels$ParcelCodeRepository;

    .line 37
    sget-object v0, Lorg/parceler/Parcels;->REPOSITORY:Lorg/parceler/Parcels$ParcelCodeRepository;

    invoke-static {}, Lorg/parceler/NonParcelRepository;->getInstance()Lorg/parceler/NonParcelRepository;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/parceler/Parcels$ParcelCodeRepository;->loadRepository(Lorg/parceler/Repository;)V

    .line 38
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static unwrap(Landroid/os/Parcelable;)Ljava/lang/Object;
    .locals 2
    .param p0, "input"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 87
    if-nez p0, :cond_0

    .line 88
    const/4 v1, 0x0

    .line 91
    :goto_0
    return-object v1

    :cond_0
    move-object v0, p0

    .line 90
    check-cast v0, Lorg/parceler/ParcelWrapper;

    .line 91
    .local v0, "wrapper":Lorg/parceler/ParcelWrapper;, "Lorg/parceler/ParcelWrapper<TT;>;"
    invoke-interface {v0}, Lorg/parceler/ParcelWrapper;->getParcel()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public static wrap(Ljava/lang/Class;Ljava/lang/Object;)Landroid/os/Parcelable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;TT;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "inputType":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    .local p1, "input":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 70
    const/4 v1, 0x0

    .line 74
    :goto_0
    return-object v1

    .line 72
    :cond_0
    sget-object v1, Lorg/parceler/Parcels;->REPOSITORY:Lorg/parceler/Parcels$ParcelCodeRepository;

    invoke-virtual {v1, p0}, Lorg/parceler/Parcels$ParcelCodeRepository;->get(Ljava/lang/Class;)Lorg/parceler/Parcels$ParcelableFactory;

    move-result-object v0

    .line 74
    .local v0, "parcelableFactory":Lorg/parceler/Parcels$ParcelableFactory;
    invoke-interface {v0, p1}, Lorg/parceler/Parcels$ParcelableFactory;->buildParcelable(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v1

    goto :goto_0
.end method

.method public static wrap(Ljava/lang/Object;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "input":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 56
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/parceler/Parcels;->wrap(Ljava/lang/Class;Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0
.end method
