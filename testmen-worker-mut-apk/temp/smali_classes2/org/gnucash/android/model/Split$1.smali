.class final Lorg/gnucash/android/model/Split$1;
.super Ljava/lang/Object;
.source "Split.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/model/Split;
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
        "Lorg/gnucash/android/model/Split;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 594
    invoke-virtual {p0, p1}, Lorg/gnucash/android/model/Split$1;->createFromParcel(Landroid/os/Parcel;)Lorg/gnucash/android/model/Split;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/gnucash/android/model/Split;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 598
    new-instance v0, Lorg/gnucash/android/model/Split;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/gnucash/android/model/Split;-><init>(Landroid/os/Parcel;Lorg/gnucash/android/model/Split$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 594
    invoke-virtual {p0, p1}, Lorg/gnucash/android/model/Split$1;->newArray(I)[Lorg/gnucash/android/model/Split;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lorg/gnucash/android/model/Split;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 603
    new-array v0, p1, [Lorg/gnucash/android/model/Split;

    return-object v0
.end method
