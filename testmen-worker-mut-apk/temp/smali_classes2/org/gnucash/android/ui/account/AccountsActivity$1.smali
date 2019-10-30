.class Lorg/gnucash/android/ui/account/AccountsActivity$1;
.super Ljava/lang/Object;
.source "AccountsActivity.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/account/AccountsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/account/AccountsActivity;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/account/AccountsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/account/AccountsActivity;

    .prologue
    .line 241
    iput-object p1, p0, Lorg/gnucash/android/ui/account/AccountsActivity$1;->this$0:Lorg/gnucash/android/ui/account/AccountsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 255
    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 244
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountsActivity$1;->this$0:Lorg/gnucash/android/ui/account/AccountsActivity;

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 245
    return-void
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 250
    return-void
.end method
