.class public Lorg/gnucash/android/ui/util/dialog/DatePickerDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "DatePickerDialogFragment.java"


# instance fields
.field private mDate:Ljava/util/Calendar;

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 52
    return-void
.end method

.method public static newInstance(Landroid/app/DatePickerDialog$OnDateSetListener;J)Lorg/gnucash/android/ui/util/dialog/DatePickerDialogFragment;
    .locals 5
    .param p0, "callback"    # Landroid/app/DatePickerDialog$OnDateSetListener;
    .param p1, "dateMillis"    # J

    .prologue
    .line 60
    new-instance v0, Lorg/gnucash/android/ui/util/dialog/DatePickerDialogFragment;

    invoke-direct {v0}, Lorg/gnucash/android/ui/util/dialog/DatePickerDialogFragment;-><init>()V

    .line 61
    .local v0, "datePickerDialogFragment":Lorg/gnucash/android/ui/util/dialog/DatePickerDialogFragment;
    iput-object p0, v0, Lorg/gnucash/android/ui/util/dialog/DatePickerDialogFragment;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 62
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 63
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v1, v0, Lorg/gnucash/android/ui/util/dialog/DatePickerDialogFragment;->mDate:Ljava/util/Calendar;

    .line 64
    iget-object v1, v0, Lorg/gnucash/android/ui/util/dialog/DatePickerDialogFragment;->mDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 66
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/gnucash/android/ui/util/dialog/DatePickerDialogFragment;->mDate:Ljava/util/Calendar;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 76
    .local v6, "cal":Ljava/util/Calendar;
    :goto_0
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/util/dialog/DatePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lorg/gnucash/android/ui/util/dialog/DatePickerDialogFragment;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    const/4 v3, 0x1

    .line 77
    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    .line 78
    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 76
    return-object v0

    .line 74
    .end local v6    # "cal":Ljava/util/Calendar;
    :cond_0
    iget-object v6, p0, Lorg/gnucash/android/ui/util/dialog/DatePickerDialogFragment;->mDate:Ljava/util/Calendar;

    goto :goto_0
.end method
