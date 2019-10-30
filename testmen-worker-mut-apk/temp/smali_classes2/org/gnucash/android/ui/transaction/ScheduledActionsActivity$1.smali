.class Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity$1;
.super Ljava/lang/Object;
.source "ScheduledActionsActivity.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity;

    .prologue
    .line 67
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity$1;->this$0:Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 81
    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity$1;->this$0:Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity;

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 71
    return-void
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 76
    return-void
.end method
