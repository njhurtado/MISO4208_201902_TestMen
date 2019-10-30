.class public Lorg/gnucash/android/ui/budget/BudgetsActivity;
.super Lorg/gnucash/android/ui/common/BaseDrawerActivity;
.source "BudgetsActivity.java"


# static fields
.field public static final REQUEST_CREATE_BUDGET:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;-><init>()V

    return-void
.end method

.method public static getBudgetProgressColor(D)I
    .locals 6
    .param p0, "value"    # D

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 78
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    double-to-float v2, p0

    const/high16 v3, 0x42f00000    # 120.0f

    mul-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v4, v0, v1

    const/4 v1, 0x2

    aput v4, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    invoke-static {v0}, Lorg/gnucash/android/app/GnuCashApplication;->darken(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getContentView()I
    .locals 1

    .prologue
    .line 39
    const v0, 0x7f0b001f

    return v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 44
    const v0, 0x7f0f01aa

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    if-nez p1, :cond_0

    .line 52
    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 54
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 56
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f0900c8

    new-instance v3, Lorg/gnucash/android/ui/budget/BudgetListFragment;

    invoke-direct {v3}, Lorg/gnucash/android/ui/budget/BudgetListFragment;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 57
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 59
    .end local v0    # "fragmentManager":Landroid/support/v4/app/FragmentManager;
    .end local v1    # "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method public onCreateBudgetClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/gnucash/android/ui/common/FormActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, "addAccountIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v1, "form_type"

    sget-object v2, Lorg/gnucash/android/ui/common/FormActivity$FormType;->BUDGET:Lorg/gnucash/android/ui/common/FormActivity$FormType;

    invoke-virtual {v2}, Lorg/gnucash/android/ui/common/FormActivity$FormType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lorg/gnucash/android/ui/budget/BudgetsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 70
    return-void
.end method
