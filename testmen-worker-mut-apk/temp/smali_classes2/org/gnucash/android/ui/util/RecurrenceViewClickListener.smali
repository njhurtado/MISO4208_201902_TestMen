.class public Lorg/gnucash/android/ui/util/RecurrenceViewClickListener;
.super Ljava/lang/Object;
.source "RecurrenceViewClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final FRAGMENT_TAG_RECURRENCE_PICKER:Ljava/lang/String; = "recurrence_picker"


# instance fields
.field mActivity:Landroid/support/v7/app/AppCompatActivity;

.field mRecurrenceRule:Ljava/lang/String;

.field mRecurrenceSetListener:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$OnRecurrenceSetListener;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/AppCompatActivity;Ljava/lang/String;Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$OnRecurrenceSetListener;)V
    .locals 0
    .param p1, "activity"    # Landroid/support/v7/app/AppCompatActivity;
    .param p2, "recurrenceRule"    # Ljava/lang/String;
    .param p3, "recurrenceSetListener"    # Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$OnRecurrenceSetListener;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/gnucash/android/ui/util/RecurrenceViewClickListener;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    .line 41
    iput-object p2, p0, Lorg/gnucash/android/ui/util/RecurrenceViewClickListener;->mRecurrenceRule:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lorg/gnucash/android/ui/util/RecurrenceViewClickListener;->mRecurrenceSetListener:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$OnRecurrenceSetListener;

    .line 43
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 47
    iget-object v4, p0, Lorg/gnucash/android/ui/util/RecurrenceViewClickListener;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 48
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v0, "b":Landroid/os/Bundle;
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 50
    .local v3, "t":Landroid/text/format/Time;
    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 51
    const-string v4, "bundle_event_start_time"

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 52
    const-string v4, "bundle_event_time_zone"

    iget-object v5, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v4, "bundle_event_rrule"

    iget-object v5, p0, Lorg/gnucash/android/ui/util/RecurrenceViewClickListener;->mRecurrenceRule:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v4, "recurrence_picker"

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    .line 59
    .local v2, "rpd":Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;
    if-eqz v2, :cond_0

    .line 60
    invoke-virtual {v2}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->dismiss()V

    .line 62
    :cond_0
    new-instance v2, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    .end local v2    # "rpd":Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;
    invoke-direct {v2}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;-><init>()V

    .line 63
    .restart local v2    # "rpd":Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;
    invoke-virtual {v2, v0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 64
    iget-object v4, p0, Lorg/gnucash/android/ui/util/RecurrenceViewClickListener;->mRecurrenceSetListener:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$OnRecurrenceSetListener;

    invoke-virtual {v2, v4}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->setOnRecurrenceSetListener(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$OnRecurrenceSetListener;)V

    .line 65
    const-string v4, "recurrence_picker"

    invoke-virtual {v2, v1, v4}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 66
    return-void
.end method
