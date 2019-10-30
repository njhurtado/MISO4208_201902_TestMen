.class public Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$MyPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "FirstRunWizardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field private mCutOffPage:I

.field private mPrimaryItem:Landroid/support/v4/app/Fragment;

.field final synthetic this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 349
    iput-object p1, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$MyPagerAdapter;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    .line 350
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 351
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 382
    iget v0, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$MyPagerAdapter;->mCutOffPage:I

    add-int/lit8 v1, v0, 0x1

    iget-object v0, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$MyPagerAdapter;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    invoke-static {v0}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->access$400(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$MyPagerAdapter;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    .line 383
    invoke-static {v0}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->access$400(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getCutOffPage()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$MyPagerAdapter;->mCutOffPage:I

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 355
    iget-object v0, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$MyPagerAdapter;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    invoke-static {v0}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->access$400(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 356
    new-instance v0, Lcom/tech/freak/wizardpager/ui/ReviewFragment;

    invoke-direct {v0}, Lcom/tech/freak/wizardpager/ui/ReviewFragment;-><init>()V

    .line 359
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$MyPagerAdapter;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    invoke-static {v0}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->access$400(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tech/freak/wizardpager/model/Page;

    invoke-virtual {v0}, Lcom/tech/freak/wizardpager/model/Page;->createFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 365
    iget-object v0, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$MyPagerAdapter;->mPrimaryItem:Landroid/support/v4/app/Fragment;

    if-ne p1, v0, :cond_0

    .line 367
    const/4 v0, -0x1

    .line 370
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public setCutOffPage(I)V
    .locals 0
    .param p1, "cutOffPage"    # I

    .prologue
    .line 387
    if-gez p1, :cond_0

    .line 388
    const p1, 0x7fffffff

    .line 390
    :cond_0
    iput p1, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$MyPagerAdapter;->mCutOffPage:I

    .line 391
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 376
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentStatePagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 377
    check-cast p3, Landroid/support/v4/app/Fragment;

    .end local p3    # "object":Ljava/lang/Object;
    iput-object p3, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$MyPagerAdapter;->mPrimaryItem:Landroid/support/v4/app/Fragment;

    .line 378
    return-void
.end method
