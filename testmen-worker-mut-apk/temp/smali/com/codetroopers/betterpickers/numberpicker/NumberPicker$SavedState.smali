.class Lcom/codetroopers/betterpickers/numberpicker/NumberPicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;
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
            "Lcom/codetroopers/betterpickers/numberpicker/NumberPicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mInput:[I

.field mInputPointer:I

.field mSign:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 627
    new-instance v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker$SavedState$1;

    invoke-direct {v0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 603
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 604
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker$SavedState;->mInputPointer:I

    .line 605
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 606
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 607
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker$SavedState;->mInput:[I

    .line 608
    iget-object v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker$SavedState;->mInput:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 610
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker$SavedState;->mSign:I

    .line 611
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/codetroopers/betterpickers/numberpicker/NumberPicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/codetroopers/betterpickers/numberpicker/NumberPicker$1;

    .prologue
    .line 592
    invoke-direct {p0, p1}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 599
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 600
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 616
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 617
    iget v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker$SavedState;->mInputPointer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 618
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker$SavedState;->mInput:[I

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker$SavedState;->mInput:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 620
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker$SavedState;->mInput:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 624
    :goto_0
    iget v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker$SavedState;->mSign:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 625
    return-void

    .line 622
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
