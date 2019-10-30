.class Lorg/gnucash/android/ui/common/BaseDrawerActivity$DrawerItemClickListener;
.super Ljava/lang/Object;
.source "BaseDrawerActivity.java"

# interfaces
.implements Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/common/BaseDrawerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawerItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/common/BaseDrawerActivity;


# direct methods
.method private constructor <init>(Lorg/gnucash/android/ui/common/BaseDrawerActivity;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lorg/gnucash/android/ui/common/BaseDrawerActivity$DrawerItemClickListener;->this$0:Lorg/gnucash/android/ui/common/BaseDrawerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/gnucash/android/ui/common/BaseDrawerActivity;Lorg/gnucash/android/ui/common/BaseDrawerActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/gnucash/android/ui/common/BaseDrawerActivity;
    .param p2, "x1"    # Lorg/gnucash/android/ui/common/BaseDrawerActivity$1;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lorg/gnucash/android/ui/common/BaseDrawerActivity$DrawerItemClickListener;-><init>(Lorg/gnucash/android/ui/common/BaseDrawerActivity;)V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/gnucash/android/ui/common/BaseDrawerActivity$DrawerItemClickListener;->this$0:Lorg/gnucash/android/ui/common/BaseDrawerActivity;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->onDrawerMenuItemClicked(I)V

    .line 95
    const/4 v0, 0x1

    return v0
.end method
