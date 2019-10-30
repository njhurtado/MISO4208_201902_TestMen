.class public Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "FirstRunWizardActivity.java"

# interfaces
.implements Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;
.implements Lcom/tech/freak/wizardpager/ui/ReviewFragment$Callbacks;
.implements Lcom/tech/freak/wizardpager/model/ModelCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$MyPagerAdapter;
    }
.end annotation


# instance fields
.field private mAccountOptions:Ljava/lang/String;

.field private mConsumePageSelectedEvent:Z

.field private mCurrencyCode:Ljava/lang/String;

.field private mCurrentPageSequence:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tech/freak/wizardpager/model/Page;",
            ">;"
        }
    .end annotation
.end field

.field private mEditingAfterReview:Z

.field mNextButton:Landroid/support/v7/widget/AppCompatButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09003f
    .end annotation
.end field

.field mPager:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090178
    .end annotation
.end field

.field private mPagerAdapter:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$MyPagerAdapter;

.field mPrevButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090038
    .end annotation
.end field

.field mStepPagerStrip:Lcom/tech/freak/wizardpager/ui/StepPagerStrip;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901db
    .end annotation
.end field

.field private mWizardModel:Lcom/tech/freak/wizardpager/model/AbstractWizardModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;)Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$MyPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mPagerAdapter:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$MyPagerAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    .prologue
    .line 65
    iget-boolean v0, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mConsumePageSelectedEvent:Z

    return v0
.end method

.method static synthetic access$102(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mConsumePageSelectedEvent:Z

    return p1
.end method

.method static synthetic access$200(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    .prologue
    .line 65
    iget-boolean v0, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mEditingAfterReview:Z

    return v0
.end method

.method static synthetic access$202(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mEditingAfterReview:Z

    return p1
.end method

.method static synthetic access$300(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->updateBottomBar()V

    return-void
.end method

.method static synthetic access$400(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mCurrentPageSequence:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mCurrencyCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mAccountOptions:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->createAccountsAndFinish()V

    return-void
.end method

.method private createAccountsAndFinish()V
    .locals 3

    .prologue
    .line 216
    invoke-static {}, Lorg/gnucash/android/ui/account/AccountsActivity;->removeFirstRunFlag()V

    .line 218
    iget-object v1, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mAccountOptions:Ljava/lang/String;

    const v2, 0x7f0f0268

    invoke-virtual {p0, v2}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    invoke-static {}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getActiveBookUID()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "bookUID":Ljava/lang/String;
    iget-object v1, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mCurrencyCode:Ljava/lang/String;

    invoke-static {v1, p0}, Lorg/gnucash/android/ui/account/AccountsActivity;->createDefaultAccounts(Ljava/lang/String;Landroid/app/Activity;)V

    .line 222
    invoke-static {}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->deleteBook(Ljava/lang/String;)Z

    .line 223
    invoke-virtual {p0}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->finish()V

    .line 230
    .end local v0    # "bookUID":Ljava/lang/String;
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v1, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mAccountOptions:Ljava/lang/String;

    const v2, 0x7f0f026b

    invoke-virtual {p0, v2}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    invoke-static {p0}, Lorg/gnucash/android/ui/account/AccountsActivity;->startXmlFileChooser(Landroid/app/Activity;)V

    goto :goto_0

    .line 227
    :cond_1
    invoke-static {p0}, Lorg/gnucash/android/ui/account/AccountsActivity;->start(Landroid/content/Context;)V

    .line 228
    invoke-virtual {p0}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->finish()V

    goto :goto_0
.end method

.method private createWizardModel(Landroid/os/Bundle;)Lcom/tech/freak/wizardpager/model/AbstractWizardModel;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 200
    new-instance v0, Lorg/gnucash/android/ui/wizard/FirstRunWizardModel;

    invoke-direct {v0, p0}, Lorg/gnucash/android/ui/wizard/FirstRunWizardModel;-><init>(Landroid/content/Context;)V

    .line 201
    .local v0, "model":Lcom/tech/freak/wizardpager/model/AbstractWizardModel;
    if-eqz p1, :cond_0

    .line 202
    const-string v2, "model"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 203
    .local v1, "wizardModel":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 204
    invoke-virtual {v0, v1}, Lcom/tech/freak/wizardpager/model/AbstractWizardModel;->load(Landroid/os/Bundle;)V

    .line 207
    .end local v1    # "wizardModel":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, p0}, Lcom/tech/freak/wizardpager/model/AbstractWizardModel;->registerListener(Lcom/tech/freak/wizardpager/model/ModelCallbacks;)V

    .line 208
    return-object v0
.end method

.method private recalculateCutOffPage()Z
    .locals 4

    .prologue
    .line 328
    iget-object v3, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mCurrentPageSequence:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    .line 329
    .local v0, "cutOffPage":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mCurrentPageSequence:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 330
    iget-object v3, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mCurrentPageSequence:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tech/freak/wizardpager/model/Page;

    .line 331
    .local v2, "page":Lcom/tech/freak/wizardpager/model/Page;
    invoke-virtual {v2}, Lcom/tech/freak/wizardpager/model/Page;->isRequired()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/tech/freak/wizardpager/model/Page;->isCompleted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 332
    move v0, v1

    .line 337
    .end local v2    # "page":Lcom/tech/freak/wizardpager/model/Page;
    :cond_0
    iget-object v3, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mPagerAdapter:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$MyPagerAdapter;

    invoke-virtual {v3}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$MyPagerAdapter;->getCutOffPage()I

    move-result v3

    if-eq v3, v0, :cond_2

    .line 338
    iget-object v3, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mPagerAdapter:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$MyPagerAdapter;

    invoke-virtual {v3, v0}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$MyPagerAdapter;->setCutOffPage(I)V

    .line 339
    const/4 v3, 0x1

    .line 342
    :goto_1
    return v3

    .line 329
    .restart local v2    # "page":Lcom/tech/freak/wizardpager/model/Page;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    .end local v2    # "page":Lcom/tech/freak/wizardpager/model/Page;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private updateBottomBar()V
    .locals 7

    .prologue
    const v6, 0x7f0600bc

    const/4 v3, 0x0

    .line 244
    iget-object v2, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 245
    .local v0, "position":I
    invoke-virtual {p0}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 246
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mCurrentPageSequence:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 247
    iget-object v2, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mNextButton:Landroid/support/v7/widget/AppCompatButton;

    const v4, 0x7f0f0037

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/AppCompatButton;->setText(I)V

    .line 249
    iget-object v2, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mNextButton:Landroid/support/v7/widget/AppCompatButton;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    .line 250
    invoke-static {p0, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 249
    invoke-virtual {v2, v4}, Landroid/support/v7/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    iget-object v2, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mNextButton:Landroid/support/v7/widget/AppCompatButton;

    const v4, 0x106000b

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/AppCompatButton;->setTextColor(I)V

    .line 261
    :goto_0
    iget-object v2, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mPrevButton:Landroid/widget/Button;

    if-gtz v0, :cond_0

    const/4 v3, 0x4

    .line 262
    :cond_0
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 263
    return-void

    .line 253
    :cond_1
    iget-object v4, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mNextButton:Landroid/support/v7/widget/AppCompatButton;

    iget-boolean v2, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mEditingAfterReview:Z

    if-eqz v2, :cond_2

    const v2, 0x7f0f0167

    :goto_1
    invoke-virtual {v4, v2}, Landroid/support/v7/widget/AppCompatButton;->setText(I)V

    .line 255
    iget-object v2, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mNextButton:Landroid/support/v7/widget/AppCompatButton;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const v5, 0x106000d

    .line 256
    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 255
    invoke-virtual {v2, v4}, Landroid/support/v7/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    iget-object v2, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mNextButton:Landroid/support/v7/widget/AppCompatButton;

    invoke-static {p0, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/AppCompatButton;->setTextColor(I)V

    .line 258
    iget-object v4, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mNextButton:Landroid/support/v7/widget/AppCompatButton;

    iget-object v2, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mPagerAdapter:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$MyPagerAdapter;

    invoke-virtual {v2}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$MyPagerAdapter;->getCutOffPage()I

    move-result v2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v4, v2}, Landroid/support/v7/widget/AppCompatButton;->setEnabled(Z)V

    goto :goto_0

    .line 253
    :cond_2
    const v2, 0x7f0f0038

    goto :goto_1

    :cond_3
    move v2, v3

    .line 258
    goto :goto_2
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 267
    packed-switch p1, :pswitch_data_0

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 269
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 270
    new-instance v0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$5;

    invoke-direct {v0, p0}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$5;-><init>(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;)V

    invoke-static {p0, p3, v0}, Lorg/gnucash/android/ui/account/AccountsActivity;->importXmlFileFromIntent(Landroid/app/Activity;Landroid/content/Intent;Lorg/gnucash/android/ui/util/TaskDelegate;)V

    goto :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->createWizardModel(Landroid/os/Bundle;)Lcom/tech/freak/wizardpager/model/AbstractWizardModel;

    move-result-object v1

    iput-object v1, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mWizardModel:Lcom/tech/freak/wizardpager/model/AbstractWizardModel;

    .line 92
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v1, 0x7f0b0020

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->setContentView(I)V

    .line 94
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 96
    const v1, 0x7f0f01e2

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    new-instance v1, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$MyPagerAdapter;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$MyPagerAdapter;-><init>(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v1, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mPagerAdapter:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$MyPagerAdapter;

    .line 99
    iget-object v1, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mPagerAdapter:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$MyPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 100
    iget-object v1, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mStepPagerStrip:Lcom/tech/freak/wizardpager/ui/StepPagerStrip;

    new-instance v2, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$1;

    invoke-direct {v2, p0}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$1;-><init>(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;)V

    .line 101
    invoke-virtual {v1, v2}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->setOnPageSelectedListener(Lcom/tech/freak/wizardpager/ui/StepPagerStrip$OnPageSelectedListener;)V

    .line 113
    iget-object v1, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$2;

    invoke-direct {v2, p0}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$2;-><init>(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 128
    iget-object v1, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mNextButton:Landroid/support/v7/widget/AppCompatButton;

    new-instance v2, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$3;

    invoke-direct {v2, p0}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$3;-><init>(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v1, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mPrevButton:Landroid/widget/Button;

    const v2, 0x7f0f0266

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 176
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 177
    .local v0, "v":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010041

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 179
    iget-object v1, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mPrevButton:Landroid/widget/Button;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, p0, v2}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 180
    iget-object v1, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mNextButton:Landroid/support/v7/widget/AppCompatButton;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, p0, v2}, Landroid/support/v7/widget/AppCompatButton;->setTextAppearance(Landroid/content/Context;I)V

    .line 182
    iget-object v1, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mPrevButton:Landroid/widget/Button;

    new-instance v2, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$4;

    invoke-direct {v2, p0}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$4;-><init>(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-virtual {p0}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->onPageTreeChanged()V

    .line 190
    invoke-direct {p0}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->updateBottomBar()V

    .line 191
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 283
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 284
    iget-object v0, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mWizardModel:Lcom/tech/freak/wizardpager/model/AbstractWizardModel;

    invoke-virtual {v0, p0}, Lcom/tech/freak/wizardpager/model/AbstractWizardModel;->unregisterListener(Lcom/tech/freak/wizardpager/model/ModelCallbacks;)V

    .line 285
    return-void
.end method

.method public onEditScreenAfterReview(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 300
    iget-object v1, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mCurrentPageSequence:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 301
    iget-object v1, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mCurrentPageSequence:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tech/freak/wizardpager/model/Page;

    invoke-virtual {v1}, Lcom/tech/freak/wizardpager/model/Page;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    iput-boolean v2, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mConsumePageSelectedEvent:Z

    .line 303
    iput-boolean v2, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mEditingAfterReview:Z

    .line 304
    iget-object v1, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 305
    invoke-direct {p0}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->updateBottomBar()V

    .line 309
    :cond_0
    return-void

    .line 300
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public onGetModel()Lcom/tech/freak/wizardpager/model/AbstractWizardModel;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mWizardModel:Lcom/tech/freak/wizardpager/model/AbstractWizardModel;

    return-object v0
.end method

.method public onGetPage(Ljava/lang/String;)Lcom/tech/freak/wizardpager/model/Page;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 323
    iget-object v0, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mWizardModel:Lcom/tech/freak/wizardpager/model/AbstractWizardModel;

    invoke-virtual {v0, p1}, Lcom/tech/freak/wizardpager/model/AbstractWizardModel;->findByKey(Ljava/lang/String;)Lcom/tech/freak/wizardpager/model/Page;

    move-result-object v0

    return-object v0
.end method

.method public onPageDataChanged(Lcom/tech/freak/wizardpager/model/Page;)V
    .locals 1
    .param p1, "page"    # Lcom/tech/freak/wizardpager/model/Page;

    .prologue
    .line 313
    invoke-virtual {p1}, Lcom/tech/freak/wizardpager/model/Page;->isRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-direct {p0}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->recalculateCutOffPage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mPagerAdapter:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$MyPagerAdapter;

    invoke-virtual {v0}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$MyPagerAdapter;->notifyDataSetChanged()V

    .line 316
    invoke-direct {p0}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->updateBottomBar()V

    .line 319
    :cond_0
    return-void
.end method

.method public onPageTreeChanged()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mWizardModel:Lcom/tech/freak/wizardpager/model/AbstractWizardModel;

    invoke-virtual {v0}, Lcom/tech/freak/wizardpager/model/AbstractWizardModel;->getCurrentPageSequence()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mCurrentPageSequence:Ljava/util/List;

    .line 235
    invoke-direct {p0}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->recalculateCutOffPage()Z

    .line 236
    iget-object v0, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mStepPagerStrip:Lcom/tech/freak/wizardpager/ui/StepPagerStrip;

    iget-object v1, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mCurrentPageSequence:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->setPageCount(I)V

    .line 239
    iget-object v0, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mPagerAdapter:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$MyPagerAdapter;

    invoke-virtual {v0}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$MyPagerAdapter;->notifyDataSetChanged()V

    .line 240
    invoke-direct {p0}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->updateBottomBar()V

    .line 241
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 289
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 290
    const-string v0, "model"

    iget-object v1, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mWizardModel:Lcom/tech/freak/wizardpager/model/AbstractWizardModel;

    invoke-virtual {v1}, Lcom/tech/freak/wizardpager/model/AbstractWizardModel;->save()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 291
    return-void
.end method
