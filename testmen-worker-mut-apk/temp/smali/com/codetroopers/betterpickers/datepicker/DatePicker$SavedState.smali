.class Lcom/codetroopers/betterpickers/datepicker/DatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codetroopers/betterpickers/datepicker/DatePicker;
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
            "Lcom/codetroopers/betterpickers/datepicker/DatePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mDateInput:[I

.field mDateInputPointer:I

.field mMonthInput:I

.field mYearInput:[I

.field mYearInputPointer:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 914
    new-instance v0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$SavedState$1;

    invoke-direct {v0}, Lcom/codetroopers/betterpickers/datepicker/DatePicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 896
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 897
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$SavedState;->mDateInputPointer:I

    .line 898
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$SavedState;->mYearInputPointer:I

    .line 899
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$SavedState;->mDateInput:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 900
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$SavedState;->mYearInput:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 901
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$SavedState;->mMonthInput:I

    .line 902
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/codetroopers/betterpickers/datepicker/DatePicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/codetroopers/betterpickers/datepicker/DatePicker$1;

    .prologue
    .line 883
    invoke-direct {p0, p1}, Lcom/codetroopers/betterpickers/datepicker/DatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 892
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 893
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 906
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 907
    iget v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$SavedState;->mDateInputPointer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 908
    iget v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$SavedState;->mYearInputPointer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 909
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$SavedState;->mDateInput:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 910
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$SavedState;->mYearInput:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 911
    iget v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$SavedState;->mMonthInput:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 912
    return-void
.end method
