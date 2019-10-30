.class Lcom/codetroopers/betterpickers/hmspicker/HmsPicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "HmsPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/codetroopers/betterpickers/hmspicker/HmsPicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAmPmState:I

.field mInput:[I

.field mInputPointer:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 432
    new-instance v0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker$SavedState$1;

    invoke-direct {v0}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 418
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker$SavedState;->mInputPointer:I

    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker$SavedState;->mInput:[I

    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker$SavedState;->mAmPmState:I

    .line 422
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/codetroopers/betterpickers/hmspicker/HmsPicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/codetroopers/betterpickers/hmspicker/HmsPicker$1;

    .prologue
    .line 407
    invoke-direct {p0, p1}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 414
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 415
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 426
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 427
    iget v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker$SavedState;->mInputPointer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    iget-object v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker$SavedState;->mInput:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 429
    iget v0, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker$SavedState;->mAmPmState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    return-void
.end method
