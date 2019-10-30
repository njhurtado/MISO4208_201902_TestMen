.class Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$3;
.super Ljava/lang/Object;
.source "FirstRunWizardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    .prologue
    .line 128
    iput-object p1, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$3;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v10, 0x7f0f00a7

    .line 131
    iget-object v7, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$3;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    iget-object v7, v7, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v7

    iget-object v8, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$3;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    invoke-static {v8}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->access$400(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ne v7, v8, :cond_7

    .line 132
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v5, "reviewItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tech/freak/wizardpager/model/ReviewItem;>;"
    iget-object v7, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$3;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    invoke-static {v7}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->access$400(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tech/freak/wizardpager/model/Page;

    .line 134
    .local v1, "page":Lcom/tech/freak/wizardpager/model/Page;
    invoke-virtual {v1, v5}, Lcom/tech/freak/wizardpager/model/Page;->getReviewItems(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 137
    .end local v1    # "page":Lcom/tech/freak/wizardpager/model/Page;
    :cond_0
    iget-object v7, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$3;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getDefaultCurrencyCode()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->access$502(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    iget-object v7, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$3;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    iget-object v8, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$3;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    const v9, 0x7f0f026c

    invoke-virtual {v8, v9}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->access$602(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    iget-object v7, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$3;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    const v8, 0x7f0f026a

    invoke-virtual {v7, v8}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "feedbackOption":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tech/freak/wizardpager/model/ReviewItem;

    .line 141
    .local v4, "reviewItem":Lcom/tech/freak/wizardpager/model/ReviewItem;
    invoke-virtual {v4}, Lcom/tech/freak/wizardpager/model/ReviewItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 142
    .local v6, "title":Ljava/lang/String;
    iget-object v8, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$3;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    const v9, 0x7f0f026e

    invoke-virtual {v8, v9}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 143
    iget-object v8, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$3;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    invoke-virtual {v4}, Lcom/tech/freak/wizardpager/model/ReviewItem;->getDisplayValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->access$502(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 144
    :cond_2
    iget-object v8, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$3;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    const v9, 0x7f0f0270

    invoke-virtual {v8, v9}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 145
    iget-object v8, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$3;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    invoke-virtual {v4}, Lcom/tech/freak/wizardpager/model/ReviewItem;->getDisplayValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->access$502(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 146
    :cond_3
    iget-object v8, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$3;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    const v9, 0x7f0f026d

    invoke-virtual {v8, v9}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 147
    iget-object v8, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$3;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    invoke-virtual {v4}, Lcom/tech/freak/wizardpager/model/ReviewItem;->getDisplayValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->access$602(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 148
    :cond_4
    iget-object v8, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$3;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    const v9, 0x7f0f026f

    invoke-virtual {v8, v9}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 149
    invoke-virtual {v4}, Lcom/tech/freak/wizardpager/model/ReviewItem;->getDisplayValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 153
    .end local v4    # "reviewItem":Lcom/tech/freak/wizardpager/model/ReviewItem;
    .end local v6    # "title":Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$3;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    invoke-static {v7}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->access$500(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/gnucash/android/app/GnuCashApplication;->setDefaultCurrencyCode(Ljava/lang/String;)V

    .line 154
    iget-object v7, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$3;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 155
    .local v3, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 157
    .local v2, "preferenceEditor":Landroid/content/SharedPreferences$Editor;
    iget-object v7, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$3;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    const v8, 0x7f0f0267

    invoke-virtual {v7, v8}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 158
    iget-object v7, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$3;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    invoke-virtual {v7, v10}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 162
    :goto_2
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 164
    iget-object v7, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$3;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    invoke-static {v7}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->access$700(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;)V

    .line 172
    .end local v0    # "feedbackOption":Ljava/lang/String;
    .end local v2    # "preferenceEditor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    .end local v5    # "reviewItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tech/freak/wizardpager/model/ReviewItem;>;"
    :goto_3
    return-void

    .line 160
    .restart local v0    # "feedbackOption":Ljava/lang/String;
    .restart local v2    # "preferenceEditor":Landroid/content/SharedPreferences$Editor;
    .restart local v3    # "preferences":Landroid/content/SharedPreferences;
    .restart local v5    # "reviewItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tech/freak/wizardpager/model/ReviewItem;>;"
    :cond_6
    iget-object v7, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$3;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    invoke-virtual {v7, v10}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 166
    .end local v0    # "feedbackOption":Ljava/lang/String;
    .end local v2    # "preferenceEditor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    .end local v5    # "reviewItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tech/freak/wizardpager/model/ReviewItem;>;"
    :cond_7
    iget-object v7, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$3;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    invoke-static {v7}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->access$200(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 167
    iget-object v7, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$3;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    iget-object v7, v7, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v8, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$3;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    invoke-static {v8}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->access$000(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;)Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$MyPagerAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$MyPagerAdapter;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_3

    .line 169
    :cond_8
    iget-object v7, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$3;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    iget-object v7, v7, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v8, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$3;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    iget-object v8, v8, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v8}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_3
.end method
