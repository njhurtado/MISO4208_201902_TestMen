.class public Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity;
.super Lorg/gnucash/android/ui/common/BaseDrawerActivity;
.source "ScheduledActionsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity$ScheduledActionsViewPager;
    }
.end annotation


# static fields
.field public static final INDEX_SCHEDULED_EXPORTS:I = 0x1

.field public static final INDEX_SCHEDULED_TRANSACTIONS:I


# instance fields
.field mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentView()I
    .locals 1

    .prologue
    .line 43
    const v0, 0x7f0b0023

    return v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 48
    const v0, 0x7f0f0141

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v2, 0x7f0901e1

    invoke-virtual {p0, v2}, Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TabLayout;

    .line 56
    .local v1, "tabLayout":Landroid/support/design/widget/TabLayout;
    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    const v3, 0x7f0f01db

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 57
    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    const v3, 0x7f0f01da

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 58
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->setTabGravity(I)V

    .line 60
    const v2, 0x7f090178

    invoke-virtual {p0, v2}, Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 63
    new-instance v0, Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity$ScheduledActionsViewPager;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity$ScheduledActionsViewPager;-><init>(Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity;Landroid/support/v4/app/FragmentManager;)V

    .line 64
    .local v0, "mPagerAdapter":Landroid/support/v4/view/PagerAdapter;
    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 66
    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v3, v1}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 67
    new-instance v2, Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity$1;

    invoke-direct {v2, p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity$1;-><init>(Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity;)V

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 83
    return-void
.end method
