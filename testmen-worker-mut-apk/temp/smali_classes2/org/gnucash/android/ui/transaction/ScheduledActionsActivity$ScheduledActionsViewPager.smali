.class Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity$ScheduledActionsViewPager;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "ScheduledActionsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScheduledActionsViewPager"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 91
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity$ScheduledActionsViewPager;->this$0:Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity;

    .line 92
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 93
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 109
    packed-switch p1, :pswitch_data_0

    .line 115
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 111
    :pswitch_0
    sget-object v0, Lorg/gnucash/android/model/ScheduledAction$ActionType;->TRANSACTION:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    invoke-static {v0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getInstance(Lorg/gnucash/android/model/ScheduledAction$ActionType;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 113
    :pswitch_1
    sget-object v0, Lorg/gnucash/android/model/ScheduledAction$ActionType;->BACKUP:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    invoke-static {v0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getInstance(Lorg/gnucash/android/model/ScheduledAction$ActionType;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 97
    packed-switch p1, :pswitch_data_0

    .line 103
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    .line 99
    :pswitch_0
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity$ScheduledActionsViewPager;->this$0:Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity;

    const v1, 0x7f0f01db

    invoke-virtual {v0, v1}, Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 101
    :pswitch_1
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity$ScheduledActionsViewPager;->this$0:Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity;

    const v1, 0x7f0f01da

    invoke-virtual {v0, v1}, Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
