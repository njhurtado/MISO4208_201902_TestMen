.class public Lorg/gnucash/android/ui/util/dialog/TimePickerDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "TimePickerDialogFragment.java"


# instance fields
.field mCurrentTime:Ljava/util/Calendar;

.field private mListener:Landroid/app/TimePickerDialog$OnTimeSetListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 36
    iput-object v0, p0, Lorg/gnucash/android/ui/util/dialog/TimePickerDialogFragment;->mListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 41
    iput-object v0, p0, Lorg/gnucash/android/ui/util/dialog/TimePickerDialogFragment;->mCurrentTime:Ljava/util/Calendar;

    .line 50
    return-void
.end method

.method public static newInstance(Landroid/app/TimePickerDialog$OnTimeSetListener;J)Lorg/gnucash/android/ui/util/dialog/TimePickerDialogFragment;
    .locals 5
    .param p0, "listener"    # Landroid/app/TimePickerDialog$OnTimeSetListener;
    .param p1, "timeMillis"    # J

    .prologue
    .line 58
    new-instance v0, Lorg/gnucash/android/ui/util/dialog/TimePickerDialogFragment;

    invoke-direct {v0}, Lorg/gnucash/android/ui/util/dialog/TimePickerDialogFragment;-><init>()V

    .line 59
    .local v0, "timePickerDialogFragment":Lorg/gnucash/android/ui/util/dialog/TimePickerDialogFragment;
    iput-object p0, v0, Lorg/gnucash/android/ui/util/dialog/TimePickerDialogFragment;->mListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 60
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 61
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v1, v0, Lorg/gnucash/android/ui/util/dialog/TimePickerDialogFragment;->mCurrentTime:Ljava/util/Calendar;

    .line 62
    iget-object v1, v0, Lorg/gnucash/android/ui/util/dialog/TimePickerDialogFragment;->mCurrentTime:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 64
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    iget-object v0, p0, Lorg/gnucash/android/ui/util/dialog/TimePickerDialogFragment;->mCurrentTime:Ljava/util/Calendar;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 74
    .local v6, "cal":Ljava/util/Calendar;
    :goto_0
    const/16 v0, 0xb

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 75
    .local v3, "hour":I
    const/16 v0, 0xc

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 77
    .local v4, "minute":I
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/util/dialog/TimePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lorg/gnucash/android/ui/util/dialog/TimePickerDialogFragment;->mListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-object v0

    .line 72
    .end local v3    # "hour":I
    .end local v4    # "minute":I
    .end local v6    # "cal":Ljava/util/Calendar;
    :cond_0
    iget-object v6, p0, Lorg/gnucash/android/ui/util/dialog/TimePickerDialogFragment;->mCurrentTime:Ljava/util/Calendar;

    goto :goto_0
.end method
