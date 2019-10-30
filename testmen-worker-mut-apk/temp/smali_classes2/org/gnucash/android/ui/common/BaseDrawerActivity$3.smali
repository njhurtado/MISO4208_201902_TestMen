.class Lorg/gnucash/android/ui/common/BaseDrawerActivity$3;
.super Landroid/support/v7/app/ActionBarDrawerToggle;
.source "BaseDrawerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/common/BaseDrawerActivity;->setUpNavigationDrawer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/common/BaseDrawerActivity;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/common/BaseDrawerActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/common/BaseDrawerActivity;
    .param p2, "arg0"    # Landroid/app/Activity;
    .param p3, "arg1"    # Landroid/support/v4/widget/DrawerLayout;
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I

    .prologue
    .line 182
    iput-object p1, p0, Lorg/gnucash/android/ui/common/BaseDrawerActivity$3;->this$0:Lorg/gnucash/android/ui/common/BaseDrawerActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 186
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onDrawerClosed(Landroid/view/View;)V

    .line 187
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 0
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 191
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onDrawerOpened(Landroid/view/View;)V

    .line 192
    return-void
.end method
