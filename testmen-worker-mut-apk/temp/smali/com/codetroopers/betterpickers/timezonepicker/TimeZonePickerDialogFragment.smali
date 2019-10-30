.class public Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "TimeZonePickerDialogFragment.java"

# interfaces
.implements Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView$OnTimeZoneSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerDialogFragment$OnTimeZoneSetListener;
    }
.end annotation


# static fields
.field public static final BUNDLE_START_TIME_MILLIS:Ljava/lang/String; = "bundle_event_start_time"

.field public static final BUNDLE_TIME_ZONE:Ljava/lang/String; = "bundle_event_time_zone"

.field private static final KEY_HAS_RESULTS:Ljava/lang/String; = "has_results"

.field private static final KEY_HIDE_FILTER_SEARCH:Ljava/lang/String; = "hide_filter_search"

.field private static final KEY_LAST_FILTER_STRING:Ljava/lang/String; = "last_filter_string"

.field private static final KEY_LAST_FILTER_TIME:Ljava/lang/String; = "last_filter_time"

.field private static final KEY_LAST_FILTER_TYPE:Ljava/lang/String; = "last_filter_type"


# instance fields
.field private mDismissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

.field private mHasCachedResults:Z

.field private mTimeZoneSetListener:Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerDialogFragment$OnTimeZoneSetListener;

.field private mView:Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerDialogFragment;->mHasCachedResults:Z

    .line 57
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 100
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 101
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 102
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    const-wide/16 v4, 0x0

    .line 63
    .local v4, "timeMillis":J
    const/4 v3, 0x0

    .line 64
    .local v3, "timeZone":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    .line 65
    .local v8, "b":Landroid/os/Bundle;
    if-eqz v8, :cond_0

    .line 66
    const-string v0, "bundle_event_start_time"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 67
    const-string v0, "bundle_event_time_zone"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    :cond_0
    const/4 v7, 0x0

    .line 71
    .local v7, "hideFilterSearch":Z
    if-eqz p3, :cond_1

    .line 72
    const-string v0, "hide_filter_search"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 74
    :cond_1
    new-instance v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;JLcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView$OnTimeZoneSetListener;Z)V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerDialogFragment;->mView:Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;

    .line 76
    if-eqz p3, :cond_2

    const-string v0, "has_results"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerDialogFragment;->mView:Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;

    const-string v1, "last_filter_type"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "last_filter_string"

    .line 78
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "last_filter_time"

    .line 79
    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 77
    invoke-virtual {v0, v1, v2, v6}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->showFilterResults(ILjava/lang/String;I)V

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerDialogFragment;->mView:Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialoginterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 117
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerDialogFragment;->mDismissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerDialogFragment;->mDismissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    invoke-interface {v0, p1}, Lcom/codetroopers/betterpickers/OnDialogDismissListener;->onDialogDismiss(Landroid/content/DialogInterface;)V

    .line 120
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 87
    const-string v1, "has_results"

    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerDialogFragment;->mView:Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerDialogFragment;->mView:Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->hasResults()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerDialogFragment;->mView:Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "last_filter_type"

    iget-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerDialogFragment;->mView:Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->getLastFilterType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    const-string v0, "last_filter_string"

    iget-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerDialogFragment;->mView:Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->getLastFilterString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "last_filter_time"

    iget-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerDialogFragment;->mView:Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->getLastFilterTime()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    const-string v0, "hide_filter_search"

    iget-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerDialogFragment;->mView:Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->getHideFilterSearchOnStart()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 94
    :cond_0
    return-void

    .line 87
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTimeZoneSet(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;)V
    .locals 1
    .param p1, "tzi"    # Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerDialogFragment;->mTimeZoneSetListener:Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerDialogFragment$OnTimeZoneSetListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerDialogFragment;->mTimeZoneSetListener:Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerDialogFragment$OnTimeZoneSetListener;

    invoke-interface {v0, p1}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerDialogFragment$OnTimeZoneSetListener;->onTimeZoneSet(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;)V

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerDialogFragment;->dismiss()V

    .line 111
    return-void
.end method

.method public setOnDismissListener(Lcom/codetroopers/betterpickers/OnDialogDismissListener;)Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerDialogFragment;
    .locals 0
    .param p1, "ondialogdismisslistener"    # Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerDialogFragment;->mDismissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    .line 124
    return-object p0
.end method

.method public setOnTimeZoneSetListener(Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerDialogFragment$OnTimeZoneSetListener;)V
    .locals 0
    .param p1, "l"    # Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerDialogFragment$OnTimeZoneSetListener;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerDialogFragment;->mTimeZoneSetListener:Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerDialogFragment$OnTimeZoneSetListener;

    .line 53
    return-void
.end method
